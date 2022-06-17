import { useState } from 'react'
import './App.css'
import HomeScreen from './components/homeScreen/HomeScreen'

function App() {
  const [count, setCount] = useState(0)

  return (
    <div className="App">
      <HomeScreen/>
    </div>
  )
}

export default App