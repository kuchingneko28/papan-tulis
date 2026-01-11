-- RUN THIS IN SUPABASE SQL EDITOR
-- ⚠️ WARNING: This will DELETE all existing data to switch to UUIDs!

-- 1. Reset/Drop Table (Clean Slate)
DROP TABLE IF EXISTS public.trucks;

-- 2. Create the Table with UUID
create table public.trucks (
  id uuid default gen_random_uuid() primary key, -- <--- CHANGED TO UUID
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  plat text not null,
  status text default 'WAITING',
  remarks text,

  -- Timestamps
  tgl_berangkat date,
  jam_berangkat text,
  tgl_tiba date,
  jam_tiba text,
  jam_bongkar text,
  jam_selesai text,
  is_archived boolean default false
);

-- 3. Enable Realtime
alter publication supabase_realtime add table public.trucks;

-- 4. Policy (Public Access)
alter table public.trucks enable row level security;

create policy "Enable access for all users"
on public.trucks
for all
using (true)
with check (true);

-- 5. Archive Index
create index idx_trucks_archived on public.trucks(is_archived);
