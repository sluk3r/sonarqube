CREATE TABLE "SNAPSHOTS"(
    "UUID" CHARACTER VARYING(50) NOT NULL,
    "ROOT_COMPONENT_UUID" CHARACTER VARYING(50) NOT NULL,
    "STATUS" CHARACTER VARYING(4) DEFAULT 'U' NOT NULL,
    "ISLAST" BOOLEAN DEFAULT FALSE NOT NULL,
    "VERSION" CHARACTER VARYING(500),
    "PURGE_STATUS" INTEGER,
    "BUILD_STRING" CHARACTER VARYING(100),
    "REVISION" CHARACTER VARYING(100),
    "BUILD_DATE" BIGINT,
    "PERIOD1_MODE" CHARACTER VARYING(100),
    "PERIOD1_PARAM" CHARACTER VARYING(100),
    "PERIOD1_DATE" BIGINT,
    "CREATED_AT" BIGINT
);
ALTER TABLE "SNAPSHOTS" ADD CONSTRAINT "PK_SNAPSHOTS" PRIMARY KEY("UUID");
CREATE INDEX "SNAPSHOTS_ROOT_COMPONENT_UUID" ON "SNAPSHOTS"("ROOT_COMPONENT_UUID" NULLS FIRST);
