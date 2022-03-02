/*
  Warnings:

  - The primary key for the `dailies` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Changed the type of `received_at` on the `dailies` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "dailies" DROP CONSTRAINT "dailies_pkey",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "received_at",
ADD COLUMN     "received_at" DOUBLE PRECISION NOT NULL,
ADD CONSTRAINT "dailies_pkey" PRIMARY KEY ("id");
