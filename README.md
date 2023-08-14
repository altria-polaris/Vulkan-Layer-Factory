# Vulkan Layer Factory

This project provides the source code for the Vulkan Layer Factory (VLF) and its tests.
Because VLF has been deprecated, it has been moved to this repo for archiving.
If you desire to make changes to code in this repo, please fork this repo and make changes in your own copy. No contributions are being acceped for this project.


## CI Testing

Since this project is deprecated, no Continuous Intergration tests are run agains the source in this project. There do exists several tests in the test directory that you can run to test basic functionalty after you have made a source change.

## How to Build and Run

[BUILD.md](BUILD.md) includes directions for building all the components and running the tests.

## Version Tagging Scheme

Updates to the `LunarG-VulkanTools` repository which correspond to a new Vulkan specification release are tagged using the following format: `v<`_`version`_`>` (e.g., `v1.1.96`).

**Note**: Marked version releases have undergone thorough testing but do not imply the same quality level as SDK tags. SDK tags follow the `sdk-<`_`version`_`>.<`_`patch`_`>` format (e.g., `sdk-1.1.92.0`).

This scheme was adopted following the 1.1.96 Vulkan specification release.

## License
This work is released as open source under a [Apache-style license](LICENSE.txt) from Khronos including a Khronos copyright.

## Acknowledgements
While this project has been developed primarily by LunarG, Inc., there are many other companies and individuals making this possible: Valve Corporation, funding project development.
