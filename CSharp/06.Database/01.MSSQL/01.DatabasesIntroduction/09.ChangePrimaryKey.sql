ALTER TABLE [Users]
	DROP CONSTRAINT [PK__Users__3214EC07F443EF74]

ALTER TABLE [Users]
	ADD CONSTRAINT [PK__Users__3214EC07F443EF74]
	PRIMARY KEY (Id, Username)