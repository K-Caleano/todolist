-- Create the todos table
CREATE TABLE todos (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  text TEXT NOT NULL,
  difficulty TEXT CHECK (difficulty IN ('쉬움', '중간', '어려움')),
  completed BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Enable Row Level Security (RLS)
ALTER TABLE todos ENABLE ROW LEVEL SECURITY;

-- Create a policy that allows all users to read/write (for this demo/lab)
-- In a real app, you would restrict this to authenticated users.
CREATE POLICY "Public access" ON todos
  FOR ALL
  USING (true)
  WITH CHECK (true);
