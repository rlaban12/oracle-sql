-- 문제 1. 피카츄의 모든 것**
-- USERS 테이블에서 username이 'pikachu'인 사용자의 모든 정보를 조회해주세요.

SELECT *
FROM USERS
WHERE username = 'pikachu';

-- 문제 2. 2023년의 추억**
-- POSTS 테이블에서 2023년 1월 1일부터 2023년 12월 31일 사이에 작성된 모든 게시물을 찾아주세요. 
-- (BETWEEN 사용)

SELECT *
FROM POSTS
WHERE creation_date BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD') AND TO_DATE('2023-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');

-- 문제 3. 카카오프렌즈 총출동!**
-- USERS 테이블에서 카카오프렌즈 소속인 사용자들
--(라이언(1), 춘식이(2), 어피치(3), 리틀어피치(4), 무지(5), 콘(6), 프로도(7), 네오(8))의 
-- username과 email만 조회해주세요. (IN 사용)

SELECT username, email
FROM USERS
WHERE user_id IN (1, 2, 3, 4, 5, 6, 7, 8);

-- 문제 4. '#먹스타그램' 게시물 검색**
-- POSTS 테이블에서 내용(content)에 '#먹스타그램' 이라는 글자가 포함된 
-- 모든 게시물의 post_id와 content를 조회해주세요. (LIKE 사용)

SELECT post_id, content
FROM POSTS
WHERE content LIKE '%#먹스타그램%';

-- 문제 5. 라이언의 사진첩**
-- POSTS 테이블에서 작성자 ID(user_id)가 1번인 '라이언'이 올린 게시물 중, 종류(post_type)가 
-- 'photo'인 것만 모두 조회해주세요. (AND 사용)

SELECT *
FROM POSTS
WHERE user_id = 1 AND post_type = 'photo';

-- 문제 6. 산리오 친구들은 빼고!**
-- USERS 테이블에서 산리오 소속 사용자들(user_id 9번부터 20번까지)을 
-- 제외한 나머지 모든 사용자들의 username을 조회해주세요. (NOT BETWEEN 또는 < 와 > 사용)

-- 방법 1: NOT BETWEEN 사용
SELECT username
FROM USERS
WHERE user_id NOT BETWEEN 9 AND 20;

-- 방법 2: < 와 > 사용
SELECT username
FROM USERS
WHERE user_id < 9 OR user_id > 20;
