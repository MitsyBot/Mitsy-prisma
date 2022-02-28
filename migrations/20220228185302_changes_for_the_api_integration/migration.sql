/*
  Warnings:

  - Added the required column `id` to the `premium_keys` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `expires_at` on the `premium_keys` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `expire_at` on the `user_donations` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `enabled_at` on the `user_donations` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "premium_keys" ADD COLUMN     "id" TEXT NOT NULL,
ALTER COLUMN "active_in" DROP NOT NULL,
DROP COLUMN "expires_at",
ADD COLUMN     "expires_at" DOUBLE PRECISION NOT NULL;

-- AlterTable
ALTER TABLE "user_donations" DROP COLUMN "expire_at",
ADD COLUMN     "expire_at" DOUBLE PRECISION NOT NULL,
DROP COLUMN "enabled_at",
ADD COLUMN     "enabled_at" DOUBLE PRECISION NOT NULL;

-- AddForeignKey
ALTER TABLE "premium_keys" ADD CONSTRAINT "premium_keys_user_fkey" FOREIGN KEY ("user") REFERENCES "user_donations"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
