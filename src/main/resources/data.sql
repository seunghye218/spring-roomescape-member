SET REFERENTIAL_INTEGRITY FALSE;
truncate table reservation_time;
truncate table reservation;
SET REFERENTIAL_INTEGRITY TRUE;

INSERT INTO reservation_time (start_at) VALUES ('10:00');
INSERT INTO reservation_time (start_at) VALUES ('12:00');
INSERT INTO reservation_time (start_at) VALUES ('14:00');
INSERT INTO reservation_time (start_at) VALUES ('16:00');
INSERT INTO reservation_time (start_at) VALUES ('18:00');
INSERT INTO reservation_time (start_at) VALUES ('20:00');

INSERT INTO theme (name, description, thumbnail) VALUES ('공포', '무서워', 'https://sherlock-holmes.co.kr/attach/theme/16956118601.jpg');
INSERT INTO theme (name, description, thumbnail) VALUES ('액션', '신나', 'https://sherlock-holmes.co.kr/attach/theme/17000394031.jpg');
INSERT INTO theme (name, description, thumbnail) VALUES ('SF', '신기해', 'https://sherlock-holmes.co.kr/attach/theme/16941579841.jpg');
INSERT INTO theme (name, description, thumbnail) VALUES ('로맨스', '달달해', 'https://sherlock-holmes.co.kr/attach/theme/16941579841.jpg');
INSERT INTO theme (name, description, thumbnail) VALUES ('코미디', '웃기다', 'https://sherlock-holmes.co.kr/attach/theme/16956118601.jpg');
INSERT INTO theme (name, description, thumbnail) VALUES ('드라마', '반전', 'https://sherlock-holmes.co.kr/attach/theme/16941579841.jpg');
INSERT INTO theme (name, description, thumbnail) VALUES ('잠입', '스릴있어', 'https://search.pstatic.net/sunny/?src=https%3A%2F%2Ffile.miricanvas.com%2Ftemplate_thumb%2F2022%2F05%2F15%2F13%2F50%2Fk2nje40j0jwztqza%2Fthumb.jpg&type=sc960_832');
INSERT INTO theme (name, description, thumbnail) VALUES ('오락', '재밌어', 'http://jamsil.cubeescape.co.kr/theme/basic_room2/img/rain/room15.jpg');
INSERT INTO theme (name, description, thumbnail) VALUES ('판타지', '말이 안돼', 'https://sherlock-holmes.co.kr/attach/theme/16956118601.jpg');
INSERT INTO theme (name, description, thumbnail) VALUES ('감성', '감동적', 'https://sherlock-holmes.co.kr/attach/theme/16788523411.jpg');

INSERT INTO reservation (name, date, time_id, theme_id) values ( '아서', '2024-04-23', 1, 1);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '몰리', '2024-04-24', 2, 1);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '마크', '2024-04-25', 3, 1);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '비밥', '2024-04-26', 4, 1);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '러너덕', '2024-04-27', 5, 2);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '현구막', '2024-04-28', 1, 2);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '찰리', '2024-04-29', 2, 2);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '네오', '2024-04-30', 3, 3);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '포비', '2024-05-01', 4, 3);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '솔라', '2024-05-02', 5, 4);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '브리', '2024-05-03', 1, 4);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '리사', '2024-05-04', 2, 5);
INSERT INTO reservation (name, date, time_id, theme_id) values ( '왼손', '2024-05-05', 3, 6);
