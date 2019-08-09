ALTER TABLE "public"."blade_user"
    ADD COLUMN "avatar" varchar(500);

COMMENT ON COLUMN "public"."blade_user"."avatar" IS '头像';
