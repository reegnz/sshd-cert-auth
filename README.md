# SSH Certificate based authentication

## tl;dr

Run the following command:

```
00_all_in_one.sh
```

Then examine the script contents.

## Detailed tutorial

### Generate the CA 

```
./00_gen_ca.sh
```

We generated a key pair to act as a CA we sign user certificates with.

### Start sshd server

```
./01_start.sh
```

We started an sshd server where the root user is trusting user keys signed with CA.
The authorized_keys file it is using can be found under `ssh/authorized_keys`.

### Generate a user key

```
./02_gen_key.sh
```

We generated an ssh key pair we will be using to connect to the ssh server.
This key is however not trusted yet, it's unknown to the server.

### Sign the key so we have a valid certificate (lasts for 1 minute only!):
 
```
./03_sign_key.sh
```

We signed the ssh key with the CA private key. This means that our keypair
plus the certificate together can now be used to connect to the server.

### Connect

```
./04_connect.sh
```

We connected to the server, it accepted our key+certificate combo.
To exit run `exit`.

### Cleanup

To clean up the project, run the following script:

```
./05_cleanup.sh
```
