/*
  Warnings:

  - The primary key for the `mitsy_fanarts` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "mitsy_fanarts" DROP CONSTRAINT "mitsy_fanarts_pkey",
ADD CONSTRAINT "mitsy_fanarts_pkey" PRIMARY KEY ("id");
