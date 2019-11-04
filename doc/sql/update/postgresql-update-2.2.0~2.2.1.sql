ALTER TABLE "public"."blade_log_error"
    ADD COLUMN "remote_ip" varchar(500);

COMMENT ON COLUMN "public"."blade_dict"."remote_ip" IS '操作IP地址';


ALTER TABLE "public"."blade_log_usual"
    ADD COLUMN "remote_ip" varchar(500),
    ADD COLUMN "method_class" varchar(500),
    ADD COLUMN "method_name" varchar(500);

COMMENT ON COLUMN "public"."blade_dict"."remote_ip" IS '操作IP地址';
COMMENT ON COLUMN "public"."blade_dict"."method_class" IS '方法类';
COMMENT ON COLUMN "public"."blade_dict"."method_name" IS '方法名';
