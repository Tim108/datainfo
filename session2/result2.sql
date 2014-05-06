-- Taak a
INSERT INTO "f" VALUES ('ABC', 'EF', false, 'ABC een super key'),
('E', 'D', true, 'Dit is geen key'),
('D', 'A', true, 'Dit is geen key');

-- Taak b
INSERT INTO "f1" VALUES ('ABC', 'EF', false, 'ABC is nog steeds een key'),
('E', 'A', true, 'E is geen key');
INSERT INTO "f2" VALUES ('D', 'E', false, 'D is hier key');

-- Taak c
INSERT INTO "f3" VALUES ('E', 'A', false, 'E is key');
INSERT INTO "f4" VALUES ('BC', 'EF', false, 'EC is key');