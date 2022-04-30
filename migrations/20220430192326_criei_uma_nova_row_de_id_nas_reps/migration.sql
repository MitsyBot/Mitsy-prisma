/*
  Warnings:

  - The primary key for the `reputations` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "reputations" DROP CONSTRAINT "reputations_pkey",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "reputations_pkey" PRIMARY KEY ("id");
