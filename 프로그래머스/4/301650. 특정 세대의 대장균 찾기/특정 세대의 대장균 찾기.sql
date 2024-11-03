SELECT A.ID
FROM ECOLI_DATA A
    LEFT JOIN ECOLI_DATA B
    ON A.PARENT_ID = B.ID   -- B의 ID가 자식개체(2세대)
    LEFT JOIN ECOLI_DATA C
    ON B.PARENT_ID = C.ID   -- C의 ID가 자식개체(3세대)
WHERE B.PARENT_ID IS NOT NULL AND C.PARENT_ID IS NULL
ORDER BY A.ID;

/*
A.ID = B.PARENT_ID
B.ID = C.PARENT_ID

| A.ID  | A.PARENT_ID   | B.ID  | B.PARENT_ID  | C.ID   | C.PARENT_ID   |
|   1   |     NULL      |   3   |       1      |  NULL  |       1       |
|   2   |     NULL      |   4   |       2      |  NULL  |       2       |
|   2   |     NULL      |   5   |       2      |  NULL  |       2       |
|   3   |       1       |   7   |       3      |   7    |       3       |
|   4   |       2       |   6   |       4      |   6    |       4       |
|   5   |       2       |  NULL |       5      |  NULL  |       5       |
|   6   |       4       |   8   |       6      |   8    |       6       |
|   7   |       3       |  NULL |       7      |  NULL  |       7       |
|   8   |       6       |  NULL |       8      |  NULL  |       8       |

뭔가 이상한데...?
*/

/*
A.PARENT_ID = B.ID
B.PARENT_ID = C.ID

| A.ID  | A.PARENT_ID   | B.ID  | B.PARENT_ID  | C.ID   | C.PARENT_ID   |
|   1   |     NULL      |  NULL |     NULL     |  NULL  |      NULL     |
|   2   |     NULL      |  NULL |     NULL     |  NULL  |      NULL     |
|   3   |       1       |   1   |     NULL     |  NULL  |      NULL     |
|   4   |       2       |   2   |     NULL     |  NULL  |      NULL     |
|   5   |       2       |   2   |     NULL     |  NULL  |      NULL     |
|   6   |       4       |   4   |       2      |   2    |      NULL     |
|   7   |       3       |   3   |       1      |   1    |      NULL     |
|   8   |       6       |   6   |       4      |   4    |       2       |
  A.PARENT_ID IS NULL ~> 1세대: ID_1, ID_2
  -------
  A.PARENT_ID IS NOT NULL
        AND B.PARENT_ID IS NULL ~> 2세대: ID_3, ID_4, ID_5
  -------
  A.PARENT_ID IS NOT NULL
        AND B.PARENT_ID IS NOT NULL
            AND C.PARENT_ID IS NULL ~> 3세대: ID_6, ID_7
 * ID_8이 3세대가 아닌 이유: PARENT_ID가 NULL이 아닌 경우, 부모 개체가 또 있다는 말이 되므로
    4세대 이상이다.
*/