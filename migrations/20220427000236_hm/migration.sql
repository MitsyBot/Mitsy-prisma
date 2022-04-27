/*
  Warnings:

  - You are about to drop the column `starts` on the `starboards` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "starboards" DROP COLUMN "starts",
ADD COLUMN     "stars" INTEGER NOT NULL DEFAULT 0;
