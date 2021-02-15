# sovbox

**sovbox** is a collection of Ansible scripts to easily set
up a Groestlcoin full node on a headless server, that is able to serve
many different wallets without any of the configuration based on a
specific wallet (such as xpubs) and provide as much financial privacy
and sovereignty as possible.

*Note sovbox is still early stage. Use this at your own risk. Don't
trust, verify.*

[Wanna help?](https://github.com/Groestlcoin/sovbox/issues/new)

## Why?

It is born out of the personal need to set up a box for more
sovereignty over store of value.  Many highly knowledgeable people
talk about the importance of running a full node, but actually setting
up a full node and connecting it to a Groestlcoin wallet is still far from
straightforward.

It's a bit like [Node
Launcher](https://github.com/lightning-power-users/node-launcher)
without the GUI/desktop stuff.

`ansible` is
[easy](https://www.ansible.com/overview/how-ansible-works) to read and
understand if you have basic Unix knowledge. We aim to document our
code well.


## How to run this?

1. make sure you have a box you can `ssh` into, this can be an old
  laptop, Raspberry Pi with external drive or a server you're renting,
  you will need at least 20GB of storage space

2. install `ansible` on your laptop or desktop

3. copy hosts.example to /etc/ansible/hosts and add your hostname

4. run `ansible-playbook -v sovbox.yml` from `sovbox/`


## How we create sovbox

- build from source as much as possible, to reduce the need
to trust third parties
- pinpoint specific versions of software, we will not just clone master
- step by step, put different components in Ansible rules


## Status

- [x] role: Groestlcoin full node
- [x] role: ElectrumX
- [x] mostly works on Ubuntu 18 LTS
- [x] randomly generate RPC user/pass
- [ ] testing on different machines
- [ ] Vagrant, to set up a virtual machine
- [ ] travis-ci.org
- [ ] checksums? verify code?
- [ ] more tor https://github.com/bitcoin/bitcoin/blob/master/doc/tor.md
- [ ] role: [grspayserver](https://github.com/Groestlcoin/btcpayserver)
- [ ] noob-friendly docs


## FAQ

### What do I need to run this?

A machine running Linux and has enough disk space, that you can `ssh`
into.


### How is this different from Node Launcher?

Node Launcher is a GUI for a desktop or laptop. It needs a screen.

Sovbox works on any Linux machine with enough disk space, no need for
a screen.  No need to run this in your own house even, as you can rent
a dedicated or cloud server.


### Who may want to use it?

Someone who wants a full node but doesn't want to keep it running at
home, e.g. nomads or students living in a dorm.

Someone who wants to know more precisely what software is running.


### Will there be a GUI?

Maybe later.
