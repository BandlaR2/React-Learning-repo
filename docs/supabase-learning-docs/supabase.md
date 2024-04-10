# Installing Supabase

To install Supabase in your project, you can use npm or yarn.

## Using npm

### npm install --save @supabase/supabase-js



After installing Supabase, you can import it into your project and start using it to interact with your Supabase project.

## Example Usage
Here's an example of how you might import and use Supabase in a JavaScript file:

import { createClient } from '@supabase/supabase-js';

// Initialize Supabase client

const supabaseUrl = 'YOUR_SUPABASE_URL';

const supabaseKey = 'YOUR_SUPABASE_KEY';

const supabase = createClient(supabaseUrl, supabaseKey);


// Example: Fetch data from a table

async function fetchData() {

  try {

    const { data, error } = await supabase.from('your_table').select('*');

    if (error) {
      throw error;
    }
    console.log('Data:', data);
  } catch (error) {

    console.error('Error fetching data:', error.message);
  }
}

fetchData();

Replace 'YOUR_SUPABASE_URL' and 'YOUR_SUPABASE_KEY' with your actual Supabase project URL and API key, respectively.
