/*
  Warnings:

  - The `warn_message` column on the `guild_invite_blocker` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "guild_invite_blocker" DROP COLUMN "warn_message",
ADD COLUMN     "warn_message" JSONB;
