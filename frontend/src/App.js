import './App.css';
import {useEffect, useState} from 'react'

function App() {
  const [drinks, setDrinks] = useState()
  const [customers, setCustomers] = useState

  useEffect(() => {
    fetch("http://localhost:3000/drinks")
    .then(res => res.json())
    .then(drinkData => setDrinks(drinkData)
    
    )
  }, [])

  return (
    <div className="App">
      
    </div>
  );
}

export default App;
