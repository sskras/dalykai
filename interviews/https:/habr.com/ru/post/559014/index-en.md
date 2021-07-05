(translated by https://www.deepl.com/translator)

BratSinot | May 24 at 21:27

The second interview with Reiser4 developer Edward Shishkin

Recently I was contacted by Edward Shishkin and asked to publish the interview (which I am happy to do) in a Q&A format.

The first interview (from 2010) is available here.

- First, please remind our readers where and who you work.

I work as a Principal Storage Architect at Huawei Technologies, German Research Center. In virtualization, I work on different aspects of storage. My work is not related to a specific operating system.

- Do you currently commit to the main branch of the kernel?

Very rarely, and only if my employer requires it. Last time, about three years ago, I sent patches to improve the throughput of 9p hosted storage (also called VirtFS). Here is an important note: although I've been working with Linux for a long time, I've never been a Linux fan, that is, I "breathe easy", as well as to everything else. In particular, if I notice any flaw, I can point it out once at most. And so that then to go after someone and persuade - this will not happen.

- I remember the last time, ten years ago, you were quite critical of the style of kernel development. Has anything changed from your (or perhaps corporate) point of view, has the community become more responsive or not? If not, who do you think is to blame?

I still haven't seen any shifts for the better. The community's main problem is the substitution of science for political technology, personal attitudes, majority opinion, populism, advice from "inner voices," rotten compromises, anything but science. Computer science, as it were, is first and foremost an exact science. And if someone starts proclaiming a different meaning for 2x2 than 4, under the flag of "Linux way" or under some other, it will hardly do any harm. All misfortunes are first and foremost from the incompetence and uneducation of those who make decisions. If the manager is incompetent, he is not able to make an objective and adequate decision. If he is also uncultured, he cannot find a competent person to give him the right advice. It is very likely that the choice will fall on a crook who says the "seemingly right thing". A corrupt environment always develops around incompetent single leaders. Moreover, history knows no exceptions to this, and the community is the clearest example of this.

- What do you think of the progress of the Btrfs development? Has it got rid of its childhood diseases? How do you see it for yourself - as an FS "for home" or for corporate use too?

No, it hasn't. Everything I mentioned 11 years ago is still relevant today. One of the problems with Btrfs that makes it unusable for serious applications is the space problem. I am not even talking about running to the store to buy a new disk when any other FS would show a lot of free space. Not being able to complete an operation on a logical volume due to lack of free space is not the worst part either. The worst thing is that an unprivileged user can almost always make everyone run out of free space in a fairly short time, bypassing any disk quotas. This looks like this (tested with Linux kernel 5.12). On a freshly installed system, a script is started which loops to create files with certain names in the home directory, writes data to them at certain offsets and then removes those files. After a minute of running this script, nothing unusual happens. After five minutes, the amount of occupied space on the partition increases slightly. After two or three hours, it reaches 50% (the initial value is 15%). After 5-6 hours the script crashes with "no free space" error. After that you will not be able to write even a 4K file to your partition. What happens is an interesting situation: you have not written anything to the partition, but all the free space (about 85%) has disappeared. The analysis of a partition attacked in this way will show many tree nodes, containing just one single byte-sized object (keyed object). That is, the content which used to occupy 15% of disk space has turned out to be evenly "smeared" on the whole partition, so that there is nowhere to write a new file since its key is larger than all existing ones and there are no more free blocks on the partition. Moreover, all this already happens in basic Btrfs configuration (without any snapshots, subvolumes, etc.) and it does not matter how you decide to store file bodies in that FS (as "fragments" in the tree or as extents of unformatted blocks) - the end result will be the same.

You will not be able to expose the rest of the upstream filesystems to such an attack (no matter what they tell you). I explained the reason for the problem a long time ago: it is a complete perversion of the B-tree concept in Btrfs, which makes it possible to spontaneously or

Translated with www.DeepL.com/Translator (free version)
