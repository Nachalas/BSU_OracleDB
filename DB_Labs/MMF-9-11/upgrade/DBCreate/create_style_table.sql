CREATE TABLE Style(
  ID Number NOT NULL,
  Style Varchar2(30 ) NOT NULL,
  Rating Float
);

COMMENT ON COLUMN Style.ID IS 'Style''s ID (PK)';
COMMENT ON COLUMN Style.Style IS 'Style''s name';
COMMENT ON COLUMN Style.Rating IS 'Style''s rating';