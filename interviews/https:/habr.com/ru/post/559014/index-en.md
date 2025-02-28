(machine translation from the [original in Russian](https://habr.com/ru/post/559014/))

[BratSinot](https://habr.com/ru/users/BratSinot/) | 2021 May 24 at 21:27

<div align="center">

## The second interview with Reiser4 developer Edward Shishkin

&nbsp;

<a href="https://habrastorage.org/r/w1560/getpro/habr/upload_files/f84/598/7ca/f845987ca932cdfbf5ce95914f94ec33.jpg">
  <img src="f845987ca932cdfbf5ce95914f94ec33.jpg" />
</a>

&NewLine;

</div>

Recently I was contacted by Edward Shishkin and asked to publish the interview (which I am happy to do) in a Q&A format.

The first interview (from 2010) is available [here](https://habr.com/ru/post/108629/).

**– First, please remind our readers where and in what position do you work.**

I work as a Principal Storage Architect at Huawei Technologies, German Research Center.
In the virtualization department, I work on different aspects of storage.
My work is not tied to a specific operating system.

**– Do you currently commit to the main branch of the kernel?**

Very rarely, and only if my employer requires it.
Last time, about three years ago, I sent patches to improve the throughput of 9p hosted storage (also called VirtFS).
Here is an important note: although I've been working with Linux for a long time, I've never been a Linux fan, that is, I "breathe calmly" with regard to it, as well as to everything else.
In particular, if I notice any flaw, I can point it out at most once.
But for me to go after someone and try persuading, this will not happen.

**– I remember the last time, ten years ago, you were quite critical of the style of kernel development.
    Has anything changed from your (or perhaps corporate) point of view, has the community become more responsive or not?
    If not, who do you think is to blame?**

I still haven't seen any shifts for the better.
The community's main problem is the substitution of science for political technology, personal attitudes, majority opinion, populism, advice from "inner voices," rotten compromises, anything but science.
As it were, Computer science first and foremost is an exact science.
So if someone starts proclaiming a different meaning for 2x2 than 4, under the flag of "the Linux way" or under some other, it will hardly do anything except harm.
All misfortunes first and foremost come from the incompetence and uneducation of those who make decisions.
If the manager is incompetent, he will not able to make an objective and adequate decision.
If he is also uncultured, he cannot find a competent person to give him the right advice.
It is very likely that the choice will fall on a crook who speaks the "seemingly right thing".
A corrupt environment always develops around incompetent lone leaders.
Moreover, history knows no exceptions to this, and the community is the clearest example of this.

**– What do you think of the progress of the Btrfs development?
    Has it got rid of its childhood diseases?
    How do you see it for yourself – as an FS "for home" or for corporate use too?**

No, it hasn't.
Everything I mentioned 11 years ago is still relevant today.
One of the problems with Btrfs that makes it unusable for serious applications is the space problem.
I am not even talking about an advice of running to the store to buy a new disk in situations when any other FS would still show a lot of free space.
And not being able to complete an operation on a logical volume due to lack of free space is not the worst part either.
The worst thing is that an unprivileged user can almost always make everyone run out of free space in a fairly short time, bypassing any disk quotas.
This goes like following (tested with Linux kernel 5.12).
On a freshly installed system, a script is started which loops to create files with certain names in the home directory, writes data to them at certain offsets and then removes those files.
After a minute of running this script, nothing unusual happens.
After five minutes, the amount of occupied space on the partition increases slightly.
After two or three hours, it reaches 50% (the initial value is 15%).
After 5-6 hours the script crashes with "no free space" error.
After that you will not be able to write even a 4K file to your partition.
What happens is an interesting situation:
 you have not written anything to the partition, but all the free space (about 85%) has disappeared.
The analysis of a partition attacked in this way will show many tree nodes, containing just one single byte-sized object (keyed object).
That is, the content which used to occupy 15% of disk space has turned out to be evenly "smeared" on the whole partition, so that there is nowhere to write a new file since its key is larger than all existing ones and there are no more free blocks on the partition.
Moreover, all this already happens in basic Btrfs configuration (without any snapshots, subvolumes, etc.) and it does not matter how you decide to store file bodies in that FS (as "fragments" in the tree or as extents of unformatted blocks) – the end result will be the same.

You will not be able to expose any other upstream filesystem to such an attack (no matter what they tell you).
I explained the reason for the problem a long time ago:
 it is a complete perversion of the B-tree concept in Btrfs, which makes its spontaneous or intentional degeneration possible.
In particular, under some loads, your FS will continually "fall apart" on its own, without any help.
It is clear that all sorts of "nudging" background processes will save the day only on individual desktops.
On multi-user, multi-tenant servers, however, the intruder will always be able to "outrun" them.
The system administrator will not even be able to determine who exactly was messing with it.
The fastest way to fix this problem in Btrfs is to rebuild the structure of the regular B-tree, i.e. to redesign the disk format and to rewrite a substantial part of the Btrfs code.
This will take 8-10 years together with debugging, provided that the developers clearly followed the original articles on the corresponding algorithms and data structures, and not played "spoiled phone", as is customary (and encouraged) in the "Linux way".
You have to add to that the time it takes for developers to figure it all out.
That's where it gets tricky.
At least they did not have 10 years to figure it out.
Well, before that you can not count on a miracle.
It will not come in the form of a mounting option "which you and I did not know about", or in the form of a patch, which to prepare "no big deal".
For each such hasty "fix," I will present a new degeneration scenario.
B-trees are one of my favorite topics, and I must say that these structures do not tolerate any liberties with themselves!

How do I position Btrfs for myself?
As something that cannot be called a file system, let alone used.
For by definition a FS is a subsystem of the operating system, responsible for the efficient management of the "disk space" resource, which in the case of Btrfs we do not observe.
Well, imagine that you came to t
he store to buy a watch, so you won't be late for work, but instead of a watch you were sold an electric grill with a timer for 30 minutes maximum.
The situation with Btrfs is even worse.

Looking through the mailing lists, I often come across the statement that effectively managing disk space is no longer relevant due to the cheapness of drives.
This is utter nonsense.
Without an efficient disk space manager the OS will become vulnerable and unusable.
No matter what capacity disks you have on your machine.

**– I would like to ask you to comment on the discontinuation of Btrfs support in RHEL.**

There's not much to comment on, it's very clear.
It was a "technology preview".
So, it didn't pass this very "preview".
This label must not hang forever!
And they can't launch a flawed by-design product with full support.
RHEL is an entreprenuership, i.e. a prescribed commodity-money relationship.
Red Hat can't bully users like the Btrfs mailing list does.
Just imagine the situation:
 a customer who paid his money for a disk and your support wants to know where his disk space went after he didn't write anything.
What do you tell him?
Next. Red Hat's clients include major banks and stock exchanges.
Imagine what would happen if they were subjected to a DoS attack based on the mentioned Btrfs vulnerability.
Who do you think would be responsible?
For those who are going to point their fingers at the line in the GPL license where it says the author is not responsible for anything,
 I'll tell you right now: "hide it away!", Red Hat will answer, and in a big way!
I know that Red Hat isn't facing these kinds of problems, considering their particularly strong team of QA engineers with whom I worked closely in my time.

**– Why do some companies continue to support Btrfs in their enterprise products?**

Note that the prefix "enterprise" in the product name does not say much.
Enterprise is a measure of responsibility embedded in the contractual relationship with the customer.
I only know of one GNU/Linux based Enterprise, and that is RHEL.
Everything else to my mind just pretends to be an enterprise, but is not.
Finally, if there is a demand for something, there will always be a supply (in this case the "support" mentioned).
Demand happens for absolutely everything, including unusable software.
How this demand is generated and who feeds it is another topic.

So, I would not draw any conclusions after Facebook is rumored to have deployed Btrfs on its servers.
Moreover, I would recommend that the addresses of those servers be carefully kept secret for the reasons mentioned above.

**– Why has a lot of effort been put into cleaning up the XFS code recently?
    It was originally a third-party FS and ext4 has long been stable and has continuity from previous similarly stable versions.
    What is Red Hat's interest in XFS?
    Does it make sense to actively develop two FSs similar in purpose – ext4 and XFS?**

I don't remember what motivated that.
It is quite possible that the initiative came from Red Hat customers.
I remember that there were some studies of this kind:
 some upstream file systems were used to create a huge number of objects on new generation high end drives.
The results showed that XFS behaved better than ext4.
So it was promoted as the most promising.
In any case, I would not look for anything sensational here.
Seems to me that it was a shake-up.
It makes no sense to develop ext4 and XFS.
Either in parallel or with either one to choose from.
Nothing good will come out of it.
Although, in nature there are often situations where there are a lot of potencies to grow, but no capacity to grow.
In this case, various freakishly ugly neoplasms arise, which everyone points the finger at ("Oh, look what you don't see in this life!").

**– Do you consider the issue of layer violation exhausted (in the negative sense) with the advent of encryption features in ext4, F2FS
    (not even mentioning RAID in Btrfs)?**

In general, introduction of any levels and decision making about their non-breaking is usually a question of politics and I won't comment anything here.
Few people are interested in objective aspects of the violation of levels, but we can consider some of them on the example of violation "from above", namely the implementation in the FS of the functionality already available in the block layer.
Such a "violation" is justified only with rare exceptions.
For each such case, you must first prove two things:
 that it is really necessary, and that the system design will not be harmed by it.
Say, mirroring, which has traditionally been a block layer thing, makes sense at the filesystem level.
For a variety of reasons.
For example, bit rot occurs on disk drives.
This is when the device works properly, but the block data is suddenly corrupted by a hard gamma quantum emitted by a distant quasar, etc.
The worst thing is if the block happens to be a FS system block (superblock, bitmap block, storage tree node, etc.), because this will certainly lead to a kernel panic.
Note that the mirrors offered by block layer (so called RAID 1) will not save you from this problem.
Well, really: someone has to check the checksums and read the replica if it fails, right?
Also, it makes sense to mirror only the metadata, not everything.
Some important data (e.g., executables of critical applications) can be stored as metadata.
In this case, they will also receive the same security guarantees.
The protection of the rest of the data makes sense to be entrusted to other subsystems (perhaps even to user applications) – we have provided all the necessary conditions for this.
Such "economical" mirrors have a right to exist and they can be efficiently organized only at the file system level.
As for the rest, layering violation is a cluttering of subsystem with redundant code for the sake of some microscopic benefits.
A vivid example of this is the implementation of RAID-5 by means of a file system.
Such solutions (own RAID / LVM in the file system) kill the latter architecturally.
Here we should also note that layering violation is "put on stream" by all sorts of marketing scammers.
In the absence of any ideas, some functionality is added into subsystems which have already been implemented in neighboring layers and this is presented as a new extremely useful feature and is actively pushed through.

Reiser4 was accused of violating the levels "from below".
Based on the fact that the file system is not monolithic like all the others, but modular, an unreasonable assumption was made that it does what the level above (VFS) should do.

**– Can we talk about the death of ReiserFS v3.6 and, for example, JFS?
    They have hardly been given any attention in the kernel lately.
    Are they obsolete?**

Here we have to define what the death of a software product means.
On the one hand they are successfully used (that's what they were created for, after all) – so they live.
On the other hand, I won't say for JFS (I don't know much), but ReiserFS (v3) is very difficult to adapt to new trends (tested in practice).
So, developers in the future will not pay attention to it, but to those which are easier to adapt.
On this side it turns out that, alas, it is architecturally dead.
I wouldn't manipulate the notion of "obsolete" at all.
It applies well to closet, for example, but not to software products.
There is a concept of inferior and superior.
I can say for sure that ReserFS v3 is inferior to Reiser4 in everything, but in some types of workload it is superior to all other FS from the upstream.

**– Are you aware of the development of [Tux3](https://git.kernel.org/cgit/linux/kernel/git/daniel/linux-tux3.git/) and [HAMMER/HAMMER2](https://www.dragonflybsd.org/hammer/) (DragonFly BSD FS)?**

Yes, I am aware of it.
In Tux3 I was once interested in their snapshot technology (so called "versioned pointers"), but in Reiser4 we will probably go a different way.
I've been thinking about snapshot support for a long time and haven't yet figured out how to implement it for simple Reiser4 volumes.
The thing is, the newfangled "lazy" reference counters technique proposed by Ohad Rodeh only works for B-trees.
We don't have them.
For those data structures used in Reiser4, "lazy" counters are not defined – to introduce them, you need to solve certain algorithmic problems, which no one has attempted yet.

On HAMMER: read the article from the creator.
Not interested.
Again, B-trees.
This data structure is hopelessly outdated.
We gave it up last century.

**– What do you think of the growing demand for CephFS/GlusterFS/etc clustered network FS?
    Does this demand mean a shift in developers' priorities towards network FS and a lack of attention to local FS?**

Yes, this shift in priorities has occurred.
The development of local FS has stagnated.
Unfortunately, it is quite difficult to do something significant for local volumes, and not everyone is able to do it.
No one wants to invest in their development.
It is about the same as to ask a commercial structure to allocate money for mathematical research – you will be asked without enthusiasm how you can make money on the new theorem.
Now, a local FS is something that magically appears "out of the box" and "should always work", and if it doesn't, causes unaddressed grumbling like, "yeah, what are they thinking!" Hence the lack of attention to local FS, although there is still a lot of work to be done in that area.
And yes, everyone has turned to distributed storages, which are built on top of existing local FS.
This is very fashionable now.
The phrase "Big Data" causes adrenaline rush in many people, being associated with conferences, workshops, big paychecks, etc.

**– How reasonable in principle does the approach look, where a network FS is implemented in kernel space rather than in user space?**

A very reasonable approach, which has not yet been implemented anywhere.
In general, the question of which space should be used for network FS implementation is a double-edged sword.
Well, let's look at an example.
A client writes data to a remote machine.
They fell into its page cache as dirty pages.
This works for the "thin gateway" network FS in kernel space.
The operating system will then, sooner or later, ask to write those pages to disk to free them.
At this point the network FS IO-forwarding (sending) module comes into play.
He determines which server machine (server node) will receive these pages.
Then the network stack takes over (which, as we know, is implemented in kernel space).
Then, the server node takes that data or metadata packet and instructs the backend storage module (i.e. the local FS that runs in kernel space) to write it all down.
So, we've reduced the question to where the "sending" and "receiving" modules should work.
If any of those modules run in user space, it will inevitably lead to context switching (because of the need to use kernel services).
The number of such switches depends on implementation details.
If there are a lot of such switches, storage throughput (I/O performance) will suffer.
If your backend storage consists of slow disks you will not notice a significant drop.
But if your disks are fast (SSD, NVRAM, etc.), context switching becomes a "bottle neck" and by saving on context switching you can increase performance many times over.
The standard way to do this is to move modules into kernel space.
For example, we found that moving the 9p server from QEMU to the kernel on a host machine results in a threefold performance gain in VirtFS.
This, of course, is not a network FS, but the essence of things is quite reflective.
The downside of this optimization is portability problems.
For some people, the latter may be critical.
For example, GlusterFS has no kernel modules at all.
Because of this, it now runs on many platforms, including NetBSD.

**– What concepts could local FS adopt from network FS and vice versa?**

Now network FSs tend to be superstructures over local FSs, so I don't quite see how you can borrow anything from the latter.
Well, really, consider a company of 4 employees, where each does his own thing:
 one distributes, another sends, the third receives, the fourth stores.
And the question, what can the company borrow from its employee, who stores, sounds somehow incorrect (what can be borrowed from him, she has long ago).

But local FSs have a lot to learn from network FSs.
First, they should learn how to aggregate logical volumes at a high level.
At present, so called "advanced" local FSs aggregate logical volumes exclusively using "virtual devices" technology, borrowed from LVM (the same infectious layering violation, which was first implemented in ZFS).
In other words, virtual addresses (block numbers) are translated into real addresses and back at a low level (i.e., after the file system has issued an I/O request).
Note that adding and removing devices to logical volumes (not mirrors) compiled on a block layer leads to problems that vendors of such "features" are modestly silent about.
I am talking about fragmentation on real devices, which can reach monstrous values, while on a virtual device you are doing fine.
But nobody cares about virtual devices:
 nobody cares about what's going on on your real devices.
But the ZFS-like FS (as well as any other FS in tandem with LVM) only operates on virtual disk devices (allocating virtual disk addresses from free space, defragmenting those virtual devices, etc.)
What happens on real devices they have no idea!
Now imagine that you have zero fragmentation on your virtual device (that is, you only have one giant extents living there), you add a disk to your logical volume, and then you remove another random disk from your logical volume, followed by a rebalance.
And so it goes many times.
It's not hard to figure out that you'll still have that single extent living on your virtual device, but you won't see anything good on your real devices.
The worst thing is that you are not even able to fix this situation!
The only thing you can do here is to ask the file system to defragment the virtual device.
But it will tell you that everything is fine there – there is only one extent, the fragmentation is zero, and it couldn't be better!
So, block-level logical volumes are not designed to add/remove devices repeatedly.
Ideally, you should only link a block-level logical volume once, give it to the file system, and then do nothing more with it.

Moreover, the linkage of independent FS+LVM subsystems does not allow for the different nature of the drives from which logical volumes are aggregated.
Indeed, suppose you have compiled a logical volume from HDD and SSD.
But then the former will require defragmentation and the latter will not.
For the latter you need to issue discard requests, but not for the former, etc.
However, this selectivity is quite difficult to achieve in this bunch.
Note that by creating your own LVM on the filesystem, the situation is not much better.
Furthermore, by doing so, you have effectively put a stop to the possibility of ever improving it in the future.
This is very bad.
You can have different kinds of drives in the same machine.
And if it is not the filesystem which distinguishes them, who will?

Another problem is posed by "Write-Anywhere" filesystems (this includes Reiser4, if you have set the appropriate transactional model at the time of mount).
Such filesystems should have unprecedentedly powerful defragmentation tools.
And a low-level volume manager does not help here, it only hinders it.
The fact is that with such a manager your FS will store a map of free blocks of only one device, the virtual one.
Accordingly, you can defragment only the virtual device.
This means that your defragmenter will take a long time to work on a huge single space of virtual addresses.
And if you have a lot of users doing random overwrites, the useful effect of such a defragmenter will be null and void.
Your system will inevitably start to slow down, and you will be left with a disappointing diagnosis of "broken design".
Several defragmenters working on the same address space will only interfere with each other.
It is quite another matter if you maintain your own free block map for each real device.
This allows you to effectively parallelize the defragmentation process.
But this can only be done if you have a high-level logical volume manager.
Local FS with such managers did not exist before (at least, I am not aware of them).
Only network FSs (e.g. GlusterFS) had such managers.
Another very important example is the volume integrity check (fsck) utility.
If you keep an independent free block map for each subvolume, you can effectively parallelize the logical volume check procedure.
In other words, logical volumes with high-level managers scale better.

Also, with low-level volume managers, you cannot organize full snapshots.
With LVM and ZFS-like persistent storage you can only do local snapshots, not global snapshots.
Local snapshots allow you to instantly rollback only regular file operations.
A logical volume operations (addition/removal of devices) will not be rolled back for you there.
Let's look at this with an example.
At some point in time, when you have a logical volume of two devices A and B containing 100 files, you take a snapshot S of the system and then create another hundred files.
You then add device C to your volume, and finally roll your system back to snapshot S.
Question: how many files and devices does your logical volume contain after rolling back to S?
The files, as you have already guessed, will be 100, but the devices will be 3 – the same devices A, B and C, even though there were only two devices (A and B) in the system at the time of the snapshot.
The operation to add device C has not rolled back, and if you remove device C from your computer now, it will corrupt your data, so before you remove it, you will need to first perform a costly operation to remove the device from the logical volume with rebalancing, which will spread all the data from device C to devices A and B.
But if your FS supported global snapshots, this rebalancing would not be necessary and you could safely remove device C from your computer after a momentary rollback to S.
So, global snapshots are good because they avoid expensive deletion (addition) of a device from a logical volume (into a logical volume) with a lot of data (unless you forget to "photograph" your system at the right moment, of course).
Let me remind you that creating snapshots and rolling back the file system to those are momentary operations.
You may wonder: how is it possible to instantly rollback a logical volume operation that took you three days?
But it is possible!
Provided your FS is properly designed.
I had the idea of such "3D snapshots" three years ago, and last year I patented the technique.

The next thing local FSs should learn from network FSs is to store metadata on separate devices in the same way that network FSs store metadata on separate machines (called metadata servers).
There are applications that work primarily with metadata, and these applications can be significantly accelerated by putting metadata on expensive high-performance storage devices.
You will not be able to be that selective with FS+LVM:
 LVM does not know what is on the block you pass it (the data or the metadata).
Implementing your own low-level LVM in the FS will not give you a big advantage over FS+LVM, but what you will succeed at is cluttering the FS so that it becomes impossible to work with its code later.
ZFS and Btrfs, the rush to virtual devices, are all clear examples of how layering violation kills the system architecturally.So, what's my point?
Well, the point is that you should not build your own low-level LVM in the file system.
Instead, you need to aggregate the devices into high-level logical volumes, like some network FSs do with different machines (storage nodes).
Admittedly, they do this abysmally, due to bad algorithms.
Examples of absolutely terrible algorithms are the DHT translator in the GlusterFS file system and the so-called CRUSH map in the Ceph file system.
None of the algorithms I've seen have satisfied me in terms of simplicity and good scalability.
So I had to remember algebra and invent everything myself.
In 2015, experimenting with stratifications over hash functions, I came up with and patented something that suited me.
I can tell you now that trying to put it all into practice has been successful.
I don't see any scalability issues with the new approach.
Yes, each subvolume will require a separate superblock type structure in memory.
Is that very scary?
In general, I don't know who is going to "boil the ocean" and create logical volumes of hundreds of thousands or more devices on one local machine.
If someone could explain this to me, I would be very grateful.
In the meantime, it's marketing bullshit for me.

**– How have changes in the block device subsystem of the kernel (e.g., the appearance of blk-mq) affected the FS implementation requirements?**

No, they haven't.
I don't know what should happen on the block layer that would require a new FS design.
The interface between these subsystems is very poor.
From drivers side the FS should be influenced only by appearance of new type of drives, to which block layer will be adjusted first, and then the FS (for reiser4 it will mean the appearance of new plugins).

**– Does the emergence of new media types (e.g. SMR, or ubiquitous SSDs) mean fundamentally new challenges for FS design?**

Yes. And these are normal stimuli for FS development.
Challenges can be different and completely unexpected.
For example, I've heard of drives where the I/O operation speed is highly dependent on the size of a chunk of data and its offset.
In Linux, where the size of the FS chunk cannot exceed the size of the page, such a drive will not, by default, show its full potential.
However, if your FS is properly designed, there is a chance to "squeeze" a lot more out of it.

**– How many people are working with the Reiser4 code now, besides you?**

Fewer than I would like, but I am not experiencing an acute shortage of resources either.
The pace of development of Reiser4 is more than satisfying.
"I am not going to race horses" – this is not the field.
Here "ride slowly, ride farther"!
Modern FS is the most complex subsystem of the kernel, the wrong decisions in the design of which can ruin the subsequent work of many years of people.
When I offer volunteers to implement something, I always guarantee that their efforts will surely lead to the correct result, which can be used for serious needs.
As you understand, there cannot be many such guarantees at once.
At the same time I can't stand those "figures" who brazenly promote "features" of obviously unusable software, deceiving hundreds of users and developers and all the while sitting and smiling at kernel summits.

**– Has any company expressed willingness to support the development of Reiser4?**

Yes, there were such offers, including from a major vendor.
But I had to move to another country for that.
Unfortunately I am not 30 years old anymore, I can not just up and leave at the first whistle.

**– What features are missing in Reiser4 now?**

What is missing is a resize feature for simple volumes, similar to what is available in ReiserFS(v3).
In addition, file operations with the DIRECT_IO flag would be helpful.
Further, I would like to be able to segregate the volume into "semantic subvolumes" that have no fixed size, and which can be mounted as independent volumes.
These tasks are good for beginners who want to try their hand at the "real deal".
And finally, I would like to have networked logical volumes with easy implementation and administration (modern algorithms already allow this).
What Reiser4 will never have is RAID-Z, scrubs, free space caches, 128-bit variables and other marketing stuff, which appeared due to the lack of ideas of some FS developers.

**– Can all the things you might need be implemented with plugins?**

If we speak only in terms of interfaces and plugins (modules) that implement them, not everything.
But if you also introduce relations on those interfaces, you'll have, among other things, notions of higher polymorphisms, which you can already get along with.
Imagine that you hypothetically froze an object-oriented runtime system, changed the instruction pointer to point to another plugin that implements the same interface X, and then unfroze the system so that it continued execution.
If the end user does not notice this "swap", we say that the system has zero-order polymorphism in interface X (or the system is heterogeneous in interface X, which is the same thing).
If now you have not just a set of interfaces, but also relations on them (interface graph), you can introduce polymorphisms of higher orders, which will characterize the heterogeneity of the system already in the "neighborhood" of any interface.
I introduced such a classification some time ago, but, unfortunately, I haven't managed to publish it.
So, with plugins and such higher polymorphisms you can describe any known feature, as well as "predict" those which have never even been mentioned.
I haven't managed to prove this rigorously, but I don't know a counter-example yet either.
In general, this question reminded me of Felix Klein's Erlangen Program.
He once tried to represent all geometry as a section of algebra (specifically, group theory).

**– Now to the main question – how are things going with the promotion of Reiser4 to the mainline kernel?
    Have there been any publications on the architecture of this FS that you mentioned in the last interview?
    How relevant is this issue from your point of view?**

In fact, we've been asking for three years for inclusion in the official kernel branch.
Reiser's last comment in the public thread requesting inclusion went unanswered.
So all further questions are not for us.
Personally, I don't understand why we need to get involved in a particular operating system.
Linux is not the world's only operating system.
So, there is a separate repository, which will have several branches of ports for different operating systems.
If you want, you can clone the corresponding port and do whatever you want with it (within the license, of course).
Well, if someone doesn't need it, it's not my problem.
At this point I propose to consider the question on "moving into the main Linux kernel" as closed.

Publications on FS architecture are relevant, but so far I have only found time for my new results, which I consider a higher priority.
Another thing is that I am a mathematician, and in mathematics any publication is a summary of theorems and their proofs.
To publish something there without a proof is a sign of bad form.
If I rigorously prove or disprove any statement on the architecture of FS, then there is such a pile-up that it would be pretty hard to wade through.
Who needs it?
Probably, that's why everything remains in its old form – the source code and comments to it.

**– What's new in Reiser4 in the last few years?**

The long-awaited stability has finally materialized.
One of the last to give up was a bug that led to "undeleteable" directories.
The problem was that it only showed up on the background of name hash collisions and on a certain layout of the director entries in the tree node.
However, I still can't recommend Reiser4 for production:
 you need to do some work in active collaboration with the administrators of production systems.

I finally managed to implement my long-standing idea – different transactional models.
Before that, only one hard-coded McDonald-Reiser model worked in Reiser4.
This created design problems.
In particular, snapshots were impossible in such a transaction model – they would be spoiled by an atom component called "OVERWRITE SET".
Now Reiser4 supports three transactional models.
In one of them (Write-Anywhere) atomic component OVERWRITE SET includes only system pages (disk bitmap images, etc.) which are not subject to "snapshots" (chicken and egg problem).
So snapshots can now be implemented at their best.
In the other transactional model, all modified pages only go to OVERWRITE SET (that is, it's essentially pure journaling).
This model is for those who complained about the fast fragmentation of Reiser4 partitions.
With this model, your partition will now fragment no faster than with ReiserFS (v3).
All three existing models guarantee atomic operations with some reservations, but there are also models which lose atomic operations and only keep the integrity of the partition.
Such models can be useful for all sorts of applications (databases, etc.), which have already taken on some of these functions.
Adding these models to Reiser4 is very easy, but I have not done it, because no one asked me to, and I personally do not need it.

Checksums of metadata have appeared and I recently added "economy" mirrors" (unstable stuff so far).
If the checksum of any block fails, Reiser4 immediately reads the corresponding block from the replica device.
Note that ZFS and Btrfs can't do that: the design doesn't allow it.
There, you have to run a special background scanning process called "scrub" and wait for it to get to the problem block.
Such activities are figuratively called "crutches" by programmers.

Finally, heterogeneous logical volumes have emerged, offering everything that ZFS, Btrfs, block layer, and FS+LVM bundles cannot offer in principle:
 parallel scaling, O(1)-allocation of disk addresses, and transparent migration of data between subvolumes.
There is also a user interface for the latter.
Now you can easily move the hottest data to the highest-performing drive on your volume.
In addition, it is possible to urgently dump any dirty pages to such a drive, and thereby significantly speed up applications that often cause fsync(2).
Note that the block layer functionality, called bcache, does not offer such freedom of action at all.
The new logical volumes are based on my algorithms (I have the patents for them).
The software is already stable enough, you can try it and measure the performance.
The only inconvenience – for now I have to manually update the configuration of the volume and store it somewhere.

So far I have managed to implement my ideas by about 10%.
However, I have succeeded in what I considered the most difficult – to "friend" the logical volumes with a flush procedure that performs all the pending actions in reiser4.
That's all in the experimental "format41" branch for now.

**– Does reiser4 pass the xfstests?**

At least, it passed when I was preparing the last release.

**– Is it possible in principle to make Reiser4 a network (cluster) FS with the help of plugins?**

It is possible, and even necessary!
If you create network FS on the basis of correctly designed local one, the result will be very impressive!
What I don't like about modern network FS is that they have a backend storage layer, which can be implemented with any local FS.
The existence of this layer is completely unjustified.
Network FS should directly interact with block layer, and not ask local FS to create some other service files there!
In general, the division of file systems into local and network is a fallacy.
It arose from the imperfection of the algorithms that were used thirty years ago, instead of which nothing has been proposed so far.
This is also the reason for the appearance of masses of unnecessary software components (various services, etc.)
Ideally, there should be only one FS in the form of a kernel module and a set of user utilities to be installed on each machine, the cluster node.
This FS is both local and network.
Nothing extra!

**– If this does not work out for Reiser4 on Linux, I would like suggesting the FS to FreeBSD
    (to quote from a previous interview:
    "...FreeBSD ...has academic roots... Which means that it is very likely that we will find a common language with the developers")**

Well, as we just found out, everything already works fine with Linux:
there's a separate working port for it in the form of the Reiser4 master branch in our repository.
I haven't forgotten about FreeBSD either! Suggestions!
Ready to work closely with people who know the insides of FreeBSD.
By the way: One thing I really like about their community is that decisions are made by an updated board of independent experts,
with nothing to do with the self-significance/cockyness of one permanent person.

**– What do you think of the Linux user community today?
    Has it become more generic?**

In my line of work it is quite difficult to assess this.
Users come to me mostly with bug reports and requests to fix the partition.
They are ordinary users.
Someone is more knowledgeable, someone less.
My attitude to all them is same.
Well, if a user ignores my instructions, then excuse me please:
 the ignore will be introduced and on my part too.

**– Is it possible to predict the development of file systems over the next five to ten years?
    What do you think are the main challenges facing FS developers?**

Yes, it is not difficult to make such a prediction.
In upstream there has long been no development of file systems.
There is only a semblance of it.
The developers of local FS are faced with problems related to unsuccessful design.
Here it is necessary to make a caveat.
I do not consider so called "storage", "licking" and porting of code as a development.
I do not consider the misunderstanding called "Btrfs" to be a development for the reasons I have already explained.
Each patch only aggravates its problems.
Well, and there are always all kinds of "evangelists" who have "everything works".
Most of them are schoolchildren and students who skip lectures.
Just imagine: it works for him, but not for the professor.
What an adrenaline rush!
The greatest harm from my point of view is caused by "handymen" who enthusiastically "screw" miracle-features of Btrfs to all kinds of layers like systemd, docker, etc. – it already looks like metastases.

Now let's try to make a prediction for five to ten years.
What we will do in Reiser4 I have already briefly listed.
The main challenge for upstream local FS developers will be (yes, it already has become) the inability to do a decent job for a paycheck.
Without any storage ideas, they will continue to try to patch those poor VFS, XFS and ext4.
Especially comical against this background looks the situation with VFS, reminiscent of frenzied modernization of the restaurant that has no cooks and is not expected.
The VFS code now unconditionally locks several memory pages simultaneously and offers the underlying FS to operate on them.
This was introduced to improve Ext4 performance on deletion operations, but as it is easy to understand, such simultaneous locking is completely incompatible with advanced transactional models.
That is, you just can't add some smart FS support in kernel anymore.
I don't know about the rest of Linux, but as for filesystems, any development here is hardly compatible with Torvalds' de facto policy (academic projects are driven out, and endless trust credits are given to crooks who have no idea what a B-tree is).
So here was a course of slow rot.
It will, of course, be tried hard to pass off as "development".
Further, the "keepers" of file systems, realizing that they will not make much money on "storage" alone, will try their hand at a more profitable business.
As a rule, these are distributed file systems and virtualization.
Perhaps somewhere else they will port the fashionable ZFS where it does not yet exist.
But it, like all upstream FS, is like a Christmas tree: if you can still hang some small things on top, then you can't go any deeper.
I admit that it is possible to build a serious enterprise system based on ZFS, but as we are now discussing the future, I have to say that ZFS is hopeless in this respect: with its virtual devices the guys have cut off the oxygen for further development to future generations.
ZFS is yesterday's day.
And ext4 and XFS are not even the day before yesterday.

So, "the future of filesystems in Linux" seems to be just another hyped up, but not very usable piece of software.
After Btrfs it is very likely that the place of this "future" will be taken by Bcachefs, which is another attempt to cross-connect Linux block layer with a file system (bad examples are contagious).
And remarkably: it has the same problems as Btrfs.
I suspected that for a long time, and then I've looked into the code and it's true!
The authors of Bcachefs and Btrfs, creating their FS, actively used other people's sources, with little understanding of them.
The situation is very reminiscent of the children's game "spoiled phone".
And I have an approximate idea how this code will be included into kernel.
Actually "rake" nobody will see (all will step on them later).
After numerous criticisms of the code style, accusations of non-existent errors, etc., it will be concluded that the author is "loyal", that he "cooperates" well with the other developers and how successfully it can be sold to corporations.
No one will be interested in the end result.
Twenty years ago, maybe, and would be interested, but now the questions are put differently: whether it will be promoted so that the next ten years certain people were employed.
And the question of the end result, alas, is not accepted.

And in general, I would strongly advise against starting to invent your own file system from scratch.
For even a substantial financial investment would not be enough to get something competitive in ten years.
Of course, I'm talking about serious projects, not ones that are meant to be "pushed" into the kernel.
So, a more effective way to make yourself known is to join real developments, such as ours.
It's not easy to do this, of course – but that's the case with any high-level project.
First you will have to solve the task I propose on your own.
Then, convinced of the seriousness of your intentions, I will begin to help.
Traditionally, we only use our own developments.
The exceptions are compression algorithms and some hash functions.
We do not send developers on conference tours, and then do not sit around and combine someone else's ideas ("just in case something might turn up"), as is the case with most startups.
We develop all the algorithms ourselves.
At the moment I am interested in algebraic and combinatorial aspects of data storage science.
In particular, finite fields, asymptotics, proving inequalities.
For simple programmers there will also be work, but I must warn at once: all suggestions "look at another FS and do the same" are ignored.
Patches aimed at closer integration with Linux via VFS will also go there.
So, we have no rake, but an understanding of where we need to go, and there is confidence that this direction is the right one.
This understanding did not come in the form of manna from heaven.
Let me remind you that I have 29 years of development experience behind me, two file systems written from scratch.
And the same number of data recovery tools.
Which is a lot!

https://sourceforge.net/projects/reiser4/files/  
https://github.com/edward6/reiser4

Translated with www.DeepL.com/Translator (free version)
