-- CreateTable
CREATE TABLE "daily_shops" (
    "id" SERIAL NOT NULL,
    "day" TEXT NOT NULL,
    "items" JSONB[],

    CONSTRAINT "daily_shops_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "daily_shops_day_key" ON "daily_shops"("day");
