 ### useEffect 
 The useEffect hook runs the fetchData function when the component mounts. Since the dependency array is empty, this effect runs only once after the component mounts.

 ### Fetch Data:
  Inside the fetchData function, an HTTP request is made to fetch data from an API. If the request is successful, the data is stored in the data state variable.

  ### Cleanup Function: 
  Optionally, you can provide a cleanup function that runs when the component unmounts or before running the effect again. This can be useful for cleaning up resources like event listeners or canceling pending requests.

  ### Rendering:
   The fetched data is rendered in the component's JSX if it exists.

   #### Example
    useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch('https://api.example.com/data');
        if (!response.ok) {
          throw new Error('Failed to fetch data');
        }
        const jsonData = await response.json();
        setData(jsonData);
      } catch (error) {
        console.error('Error fetching data:', error.message);
      }
    };

    fetchData();

    // Cleanup function
    return () => {
      // Perform cleanup tasks if necessary
    };
  }, []); // Dependency array is empty, so this effect only runs once after the component mounts

