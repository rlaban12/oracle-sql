-- 전체 조회수 총합 집계
-- 사용자별 조회수 총합 집계
-- 사용자>피드타입별 조회수 총합 집계

-- user_id, post_type을 기준으로 계층적 집계를 수행합니다.
SELECT
    user_id,
    post_type,
    SUM(view_count) AS total_views
FROM
    POSTS
GROUP BY
    ROLLUP(user_id, post_type)
ORDER BY user_id, post_type
;

SELECT
    null,
    null,
    SUM(view_count) AS total_views
FROM
    POSTS
;

SELECT
    user_id,
    null,
    SUM(view_count) AS total_views
FROM
    POSTS
GROUP BY user_id
;

SELECT
    user_id,
    POST_TYPE,
    SUM(view_count) AS total_views
FROM
    POSTS
GROUP BY user_id, post_type
;
