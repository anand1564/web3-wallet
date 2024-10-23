
import { useState } from 'react'
import { generateMnemonic } from 'bip39';
import './App.css'

function App() {
const [menomic,setMnemonic] = useState<string>('');
const handleGenerate=async ()=>{
  const mn = await generateMnemonic();
  setMnemonic(mn);
}
  return (
    <div className='flex items-center justify-center w-full min-h-screen flex-col'>
      <button className='text-xl bg-slate-900 text-white p-4 rounded-lg' onClick={handleGenerate} >Generate</button>
      <input className='text-xl bg-slate-900 text-white p-4 rounded-lg' value={menomic} />
    </div>
  )
}

export default App
