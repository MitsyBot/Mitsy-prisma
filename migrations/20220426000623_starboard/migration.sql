/*
  Warnings:

  - You are about to drop the `Starboards` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Starboards";

-- CreateTable
CREATE TABLE "starboards" (
    "message" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "channel" TEXT NOT NULL,
    "guild" TEXT NOT NULL,
    "user" TEXT NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "starts" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "starboards_pkey" PRIMARY KEY ("id")
);
