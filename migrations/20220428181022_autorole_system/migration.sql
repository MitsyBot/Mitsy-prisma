-- CreateTable
CREATE TABLE "guild_autorole" (
    "id" TEXT NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT false,
    "roles" TEXT[],
    "give_after" INTEGER NOT NULL DEFAULT 0,
    "give_after_message" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "guild_autorole_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "guild_autorole" ADD CONSTRAINT "guild_autorole_id_fkey" FOREIGN KEY ("id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
