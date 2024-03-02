async function main(){
    const MyToken = await ethers.getContractFactory( "MyToken" );


    //start deployment, returning a promise that resolves to a contract object
    const mytoken = await MyToken.deploy();
    console.log("ERC20 cONTRACT DEPLOYED TO THE ADDRESS" , mytoken.address);

}

main()
.then(()=>process.exit(0))
.catch((error)=>{
  console.error(error);
  process.exit(1);
});