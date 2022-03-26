/*
  Warnings:

  - The `blacklisted_warning` column on the `guild_general` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "guild_general" DROP COLUMN "blacklisted_warning",
ADD COLUMN     "blacklisted_warning" JSONB;
