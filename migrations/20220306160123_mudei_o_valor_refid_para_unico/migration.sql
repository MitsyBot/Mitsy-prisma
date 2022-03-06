/*
  Warnings:

  - A unique constraint covering the columns `[reference_id]` on the table `premium_payments` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "premium_payments_reference_id_key" ON "premium_payments"("reference_id");
