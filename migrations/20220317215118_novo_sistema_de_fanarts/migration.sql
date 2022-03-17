/*
  Warnings:

  - The primary key for the `mitsy_fanarts` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `name` on the `mitsy_fanarts` table. All the data in the column will be lost.
  - You are about to drop the column `user` on the `mitsy_fanarts` table. All the data in the column will be lost.
  - Added the required column `artist` to the `mitsy_fanarts` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `mitsy_fanarts` table without a default value. This is not possible if the table is not empty.
  - Added the required column `file` to the `mitsy_fanarts` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title` to the `mitsy_fanarts` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
CREATE SEQUENCE "mitsy_fanarts_id_seq";
ALTER TABLE "mitsy_fanarts" DROP CONSTRAINT "mitsy_fanarts_pkey",
DROP COLUMN "name",
DROP COLUMN "user",
ADD COLUMN     "artist" VARCHAR(255) NOT NULL,
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "file" TEXT NOT NULL,
ADD COLUMN     "title" TEXT NOT NULL,
ALTER COLUMN "id" SET DEFAULT nextval('mitsy_fanarts_id_seq'),
ADD CONSTRAINT "mitsy_fanarts_pkey" PRIMARY KEY ("artist");
ALTER SEQUENCE "mitsy_fanarts_id_seq" OWNED BY "mitsy_fanarts"."id";
