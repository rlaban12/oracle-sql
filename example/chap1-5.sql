-- 1. POSTS 테이블에 숫자 타입의 view_count 컬럼을 추가합니다.
ALTER TABLE POSTS ADD (view_count NUMBER);

-- 2. 모든 게시물에 100 ~ 50000 사이의 임의의 조회수 데이터를 넣어줍니다.
UPDATE POSTS
SET view_count = TRUNC(DBMS_RANDOM.VALUE(100, 50000));

-- 3. 변경사항을 최종 저장합니다.
COMMIT;

SELECT * FROM POSTS;

SELECT COUNT(*) FROM USERS;

SELECT username FROM USERS;

SELECT COUNT(username) FROM USERS;

-- 모든 집계함수는 NULL 값을 무시합니다.
SELECT COUNT(manager_id) FROM USERS;

-- POSTS 테이블에서 view_count의 최솟값과 최댓값을 찾습니다.
SELECT
    MIN(view_count) AS "최저 조회수",
    MAX(view_count) AS "최고 조회수"
FROM
    POSTS;

-- 모든 게시물의 view_count를 합산합니다.
SELECT SUM(view_count) AS "총 조회수"
FROM POSTS;

SELECT view_count
FROM POSTS;

UPDATE POSTS
SET view_count = null
WHERE post_id = 2;

SELECT * FROM POSTS
WHERE post_id BETWEEN 1 AND 3
;

--
SELECT
    user_id
FROM
    POSTS
;
-- HAVING 절
SELECT
    user_id,
    COUNT(*) AS post_count
FROM
    POSTS
GROUP BY
    user_id
HAVING
    COUNT(*) >= 10; -- 그룹화된 결과(COUNT(*))에 조건을 겁니다.
