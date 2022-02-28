/*
  Warnings:

  - The primary key for the `premium_keys` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[user]` on the table `premium_keys` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "premium_keys" DROP CONSTRAINT "premium_keys_pkey",
ADD CONSTRAINT "premium_keys_pkey" PRIMARY KEY ("id");

-- CreateIndex
CREATE UNIQUE INDEX "premium_keys_user_key" ON "premium_keys"("user");
