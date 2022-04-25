-- CreateTable
CREATE TABLE "guild_starboard" (
    "id" TEXT NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT false,
    "starboard_channel" TEXT,
    "required_stars" INTEGER NOT NULL DEFAULT 5,
    "emoji" TEXT NOT NULL DEFAULT E'⭐',

    CONSTRAINT "guild_starboard_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "guild_starboard" ADD CONSTRAINT "guild_starboard_id_fkey" FOREIGN KEY ("id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
