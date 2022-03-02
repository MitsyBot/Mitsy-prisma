/*
  Warnings:

  - The `tokens` column on the `user_connections` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `config` column on the `user_connections` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "user_connections" DROP COLUMN "tokens",
ADD COLUMN     "tokens" JSONB,
DROP COLUMN "config",
ADD COLUMN     "config" JSONB;
