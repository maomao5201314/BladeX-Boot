ALTER TABLE "public"."blade_dict"
    ADD COLUMN "is_sealed" int4 DEFAULT 0;

COMMENT ON COLUMN "public"."blade_dict"."is_seal" IS '是否已封存';
