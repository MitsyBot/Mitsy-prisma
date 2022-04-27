-- CreateTable
CREATE TABLE "Starboards" (
    "message" TEXT NOT NULL,
    "id" TEXT NOT NULL,
    "channel" TEXT NOT NULL,
    "guild" TEXT NOT NULL,
    "user" TEXT NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "starts" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "Starboards_pkey" PRIMARY KEY ("id")
);
