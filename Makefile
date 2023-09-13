include .env
include .env.local

# Before:
#	Fill in "increment" function
# 	Create a .env.local and store PRIVATE_KEY=XXX
# 	Fill in your address in .env
# Run with `make deploy-base-goerli`
# See more forge create options here: https://book.getfoundry.sh/reference/forge/forge-create
deploy-base-goerli:
	forge create Increment --private-key $(PRIVATE_KEY) \
	--rpc-url $(BASE_GOERLI_RPC) --verify \
	--constructor-args $(OWNER_ADDRESS)

# Before:
# 	In .env, fill in the contract address deployed in the previous step
# Run with `make increment`
increment:
	cast send $(DEPLOYED_CONTRACT_ADDRESS) "increment()" \
	--rpc-url $(BASE_GOERLI_RPC) --private-key $(PRIVATE_KEY)