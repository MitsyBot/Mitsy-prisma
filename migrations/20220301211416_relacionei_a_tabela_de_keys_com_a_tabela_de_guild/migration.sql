/*
  Warnings:

  - A unique constraint covering the columns `[active_in]` on the table `premium_keys` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "premium_keys_active_in_key" ON "premium_keys"("active_in");

-- AddForeignKey
ALTER TABLE "premium_keys" ADD CONSTRAINT "premium_keys_active_in_fkey" FOREIGN KEY ("active_in") REFERENCES "guild_general"("id") ON DELETE SET NULL ON UPDATE CASCADE;
