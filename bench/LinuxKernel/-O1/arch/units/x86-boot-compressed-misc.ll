; ModuleID = 'arch/x86/boot/compressed/misc.c'
source_filename = "arch/x86/boot/compressed/misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.code = type { i8, i8, i16 }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }
%struct.boot_params_to_save = type { i32, i32 }
%union.uu = type { i16 }
%struct.z_stream_s = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.inflate_workspace = type { %struct.inflate_state, [32768 x i8] }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }

@malloc_ptr = internal global i64 0, align 8, !dbg !0
@free_mem_ptr = hidden global i64 0, align 8, !dbg !737
@free_mem_end_ptr = hidden global i64 0, align 8, !dbg !739
@malloc_count = internal global i32 0, align 4, !dbg !389
@zlib_inflate_table.lbase = internal constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 16, !dbg !147
@zlib_inflate_table.lext = internal constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 201, i16 196], align 16, !dbg !192
@zlib_inflate_table.dbase = internal constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 16, !dbg !194
@zlib_inflate_table.dext = internal constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 16, !dbg !199
@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1, !dbg !201
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1, !dbg !207
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1, !dbg !212
@zlib_inflate.order = internal constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16, !dbg !217
@.str.3 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1, !dbg !270
@.str.4 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1, !dbg !275
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1, !dbg !280
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1, !dbg !285
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1, !dbg !288
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1, !dbg !293
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1, !dbg !298
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1, !dbg !303
@.str.11 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1, !dbg !308
@.str.12 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1, !dbg !310
@.str.13 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1, !dbg !312
@early_serial_base = external hidden global i32, align 4
@lines = internal global i32 0, section ".data", align 4, !dbg !745
@cols = internal global i32 0, section ".data", align 4, !dbg !747
@boot_params_ptr = hidden global ptr null, align 8, !dbg !392
@vidmem = internal global ptr null, align 8, !dbg !741
@pio_ops = hidden global %struct.port_io_ops zeroinitializer, align 8, !dbg !718
@vidport = internal global i32 0, align 4, !dbg !743
@__const.__puthex.alpha = private unnamed_addr constant [2 x i8] c"0\00", align 1
@kernel_text_size = hidden constant i64 18874368, align 8, !dbg !317
@kernel_total_size = hidden constant i64 40042496, align 8, !dbg !320
@boot_heap = internal global [65536 x i8] zeroinitializer, align 4, !dbg !749
@input_data = external hidden global [0 x i8], align 1
@input_len = external hidden global i32, align 4
@output_len = external hidden global i32, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"early console in extract_kernel\0A\00", align 1, !dbg !322
@.str.15 = private unnamed_addr constant [15 x i8] c"input_data: 0x\00", align 1, !dbg !327
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !332
@.str.17 = private unnamed_addr constant [14 x i8] c"input_len: 0x\00", align 1, !dbg !337
@.str.18 = private unnamed_addr constant [11 x i8] c"output: 0x\00", align 1, !dbg !342
@.str.19 = private unnamed_addr constant [15 x i8] c"output_len: 0x\00", align 1, !dbg !347
@.str.20 = private unnamed_addr constant [22 x i8] c"kernel_total_size: 0x\00", align 1, !dbg !349
@.str.21 = private unnamed_addr constant [16 x i8] c"needed_size: 0x\00", align 1, !dbg !351
@.str.22 = private unnamed_addr constant [21 x i8] c"trampoline_32bit: 0x\00", align 1, !dbg !354
@trampoline_32bit = external hidden global ptr, align 8
@.str.23 = private unnamed_addr constant [53 x i8] c"Destination physical address inappropriately aligned\00", align 1, !dbg !356
@.str.24 = private unnamed_addr constant [52 x i8] c"Destination virtual address inappropriately aligned\00", align 1, !dbg !361
@.str.25 = private unnamed_addr constant [30 x i8] c"Destination address too large\00", align 1, !dbg !366
@.str.26 = private unnamed_addr constant [62 x i8] c"Destination virtual address is beyond the kernel mapping area\00", align 1, !dbg !368
@.str.27 = private unnamed_addr constant [25 x i8] c"\0ADecompressing Linux... \00", align 1, !dbg !373
@.str.28 = private unnamed_addr constant [21 x i8] c"Accepting memory... \00", align 1, !dbg !375
@.str.29 = private unnamed_addr constant [43 x i8] c"done.\0ABooting the kernel (entry_offset: 0x\00", align 1, !dbg !377
@.str.30 = private unnamed_addr constant [4 x i8] c").\0A\00", align 1, !dbg !382
@.str.31 = private unnamed_addr constant [25 x i8] c"detected buffer overflow\00", align 1, !dbg !387
@zlib_fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16, !dbg !754
@zlib_fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 16, !dbg !765
@.str.32 = private unnamed_addr constant [45 x i8] c"Out of memory while allocating output buffer\00", align 1, !dbg !768
@.str.33 = private unnamed_addr constant [44 x i8] c"Out of memory while allocating input buffer\00", align 1, !dbg !774
@.str.34 = private unnamed_addr constant [40 x i8] c"Out of memory while allocating z_stream\00", align 1, !dbg !779
@.str.35 = private unnamed_addr constant [41 x i8] c"Out of memory while allocating workspace\00", align 1, !dbg !784
@.str.36 = private unnamed_addr constant [16 x i8] c"Not a gzip file\00", align 1, !dbg !789
@.str.37 = private unnamed_addr constant [13 x i8] c"header error\00", align 1, !dbg !791
@.str.38 = private unnamed_addr constant [11 x i8] c"read error\00", align 1, !dbg !796
@.str.39 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !798
@.str.40 = private unnamed_addr constant [20 x i8] c"uncompression error\00", align 1, !dbg !803
@.str.41 = private unnamed_addr constant [31 x i8] c"Kernel is not a valid ELF file\00", align 1, !dbg !805
@.str.42 = private unnamed_addr constant [16 x i8] c"Parsing ELF... \00", align 1, !dbg !808
@.str.43 = private unnamed_addr constant [35 x i8] c"Failed to allocate space for phdrs\00", align 1, !dbg !810
@.str.44 = private unnamed_addr constant [48 x i8] c"Alignment of LOAD segment isn't multiple of 2MB\00", align 1, !dbg !815
@.str.45 = private unnamed_addr constant [25 x i8] c"No relocation needed... \00", align 1, !dbg !818
@.str.46 = private unnamed_addr constant [27 x i8] c"Performing relocations... \00", align 1, !dbg !820
@.str.47 = private unnamed_addr constant [38 x i8] c"32-bit relocation outside of kernel!\0A\00", align 1, !dbg !822
@.str.48 = private unnamed_addr constant [46 x i8] c"inverse 32-bit relocation outside of kernel!\0A\00", align 1, !dbg !827
@.str.49 = private unnamed_addr constant [38 x i8] c"64-bit relocation outside of kernel!\0A\00", align 1, !dbg !832
@.str.50 = private unnamed_addr constant [15 x i8] c"mem_encrypt=on\00", align 1, !dbg !834
@.str.51 = private unnamed_addr constant [16 x i8] c"mem_encrypt=off\00", align 1, !dbg !836
@sanitize_boot_params.scratch = internal global %struct.boot_params zeroinitializer, align 1, !dbg !838
@__const.sanitize_boot_params.to_save = private unnamed_addr constant [20 x %struct.boot_params_to_save] [%struct.boot_params_to_save { i32 0, i32 64 }, %struct.boot_params_to_save { i32 64, i32 20 }, %struct.boot_params_to_save { i32 88, i32 8 }, %struct.boot_params_to_save { i32 96, i32 16 }, %struct.boot_params_to_save { i32 128, i32 16 }, %struct.boot_params_to_save { i32 144, i32 16 }, %struct.boot_params_to_save { i32 160, i32 16 }, %struct.boot_params_to_save { i32 176, i32 16 }, %struct.boot_params_to_save { i32 448, i32 32 }, %struct.boot_params_to_save { i32 480, i32 4 }, %struct.boot_params_to_save { i32 484, i32 4 }, %struct.boot_params_to_save { i32 488, i32 1 }, %struct.boot_params_to_save { i32 489, i32 1 }, %struct.boot_params_to_save { i32 490, i32 1 }, %struct.boot_params_to_save { i32 656, i32 64 }, %struct.boot_params_to_save { i32 492, i32 1 }, %struct.boot_params_to_save { i32 497, i32 123 }, %struct.boot_params_to_save { i32 720, i32 2560 }, %struct.boot_params_to_save { i32 3328, i32 492 }, %struct.boot_params_to_save { i32 316, i32 4 }], align 16

; Function Attrs: noredzone nounwind
define hidden ptr @malloc(i32 noundef %size) #0 !dbg !865 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !869, metadata !DIExpression()), !dbg !871
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !872
  call void @llvm.dbg.declare(metadata ptr %p, metadata !870, metadata !DIExpression()), !dbg !873
  %0 = load i32, ptr %size.addr, align 4, !dbg !874
  %cmp = icmp slt i32 %0, 0, !dbg !876
  br i1 %cmp, label %if.then, label %if.end, !dbg !877

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !878

if.end:                                           ; preds = %entry
  %1 = load i64, ptr @malloc_ptr, align 8, !dbg !879
  %tobool = icmp ne i64 %1, 0, !dbg !879
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !881

if.then1:                                         ; preds = %if.end
  %2 = load i64, ptr @free_mem_ptr, align 8, !dbg !882
  store i64 %2, ptr @malloc_ptr, align 8, !dbg !883
  br label %if.end2, !dbg !884

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = load i64, ptr @malloc_ptr, align 8, !dbg !885
  %add = add i64 %3, 7, !dbg !886
  %and = and i64 %add, -8, !dbg !887
  store i64 %and, ptr @malloc_ptr, align 8, !dbg !888
  %4 = load i64, ptr @malloc_ptr, align 8, !dbg !889
  %5 = inttoptr i64 %4 to ptr, !dbg !890
  store ptr %5, ptr %p, align 8, !dbg !891
  %6 = load i32, ptr %size.addr, align 4, !dbg !892
  %conv = sext i32 %6 to i64, !dbg !892
  %7 = load i64, ptr @malloc_ptr, align 8, !dbg !893
  %add3 = add i64 %7, %conv, !dbg !893
  store i64 %add3, ptr @malloc_ptr, align 8, !dbg !893
  %8 = load i64, ptr @free_mem_end_ptr, align 8, !dbg !894
  %tobool4 = icmp ne i64 %8, 0, !dbg !894
  br i1 %tobool4, label %land.lhs.true, label %if.end8, !dbg !896

land.lhs.true:                                    ; preds = %if.end2
  %9 = load i64, ptr @malloc_ptr, align 8, !dbg !897
  %10 = load i64, ptr @free_mem_end_ptr, align 8, !dbg !898
  %cmp5 = icmp uge i64 %9, %10, !dbg !899
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !900

if.then7:                                         ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8, !dbg !901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !901

if.end8:                                          ; preds = %land.lhs.true, %if.end2
  %11 = load i32, ptr @malloc_count, align 4, !dbg !902
  %inc = add nsw i32 %11, 1, !dbg !902
  store i32 %inc, ptr @malloc_count, align 4, !dbg !902
  %12 = load ptr, ptr %p, align 8, !dbg !903
  store ptr %12, ptr %retval, align 8, !dbg !904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !904

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !905
  %13 = load ptr, ptr %retval, align 8, !dbg !905
  ret ptr %13, !dbg !905
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define hidden void @free(ptr noundef %where) #0 !dbg !906 {
entry:
  %where.addr = alloca ptr, align 8
  store ptr %where, ptr %where.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %where.addr, metadata !910, metadata !DIExpression()), !dbg !911
  %0 = load i32, ptr @malloc_count, align 4, !dbg !912
  %dec = add nsw i32 %0, -1, !dbg !912
  store i32 %dec, ptr @malloc_count, align 4, !dbg !912
  %1 = load i32, ptr @malloc_count, align 4, !dbg !913
  %tobool = icmp ne i32 %1, 0, !dbg !913
  br i1 %tobool, label %if.end, label %if.then, !dbg !915

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @free_mem_ptr, align 8, !dbg !916
  store i64 %2, ptr @malloc_ptr, align 8, !dbg !917
  br label %if.end, !dbg !918

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !919
}

; Function Attrs: noredzone nounwind
define hidden i32 @zlib_inflate_table(i32 noundef %type, ptr noundef %lens, i32 noundef %codes, ptr noundef %table, ptr noundef %bits, ptr noundef %work) #0 !dbg !149 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %lens.addr = alloca ptr, align 8
  %codes.addr = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %bits.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %sym = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %root = alloca i32, align 4
  %curr = alloca i32, align 4
  %drop = alloca i32, align 4
  %left = alloca i32, align 4
  %used = alloca i32, align 4
  %huff = alloca i32, align 4
  %incr = alloca i32, align 4
  %fill = alloca i32, align 4
  %low = alloca i32, align 4
  %mask = alloca i32, align 4
  %this = alloca %struct.code, align 2
  %next = alloca ptr, align 8
  %base = alloca ptr, align 8
  %extra = alloca ptr, align 8
  %end = alloca i32, align 4
  %count = alloca [16 x i16], align 16
  %offs = alloca [16 x i16], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !157, metadata !DIExpression()), !dbg !920
  store ptr %lens, ptr %lens.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lens.addr, metadata !158, metadata !DIExpression()), !dbg !921
  store i32 %codes, ptr %codes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %codes.addr, metadata !159, metadata !DIExpression()), !dbg !922
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !160, metadata !DIExpression()), !dbg !923
  store ptr %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !161, metadata !DIExpression()), !dbg !924
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !162, metadata !DIExpression()), !dbg !925
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %len, metadata !163, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 4, ptr %sym) #9, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !164, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #9, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %min, metadata !165, metadata !DIExpression()), !dbg !931
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #9, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %max, metadata !166, metadata !DIExpression()), !dbg !932
  call void @llvm.lifetime.start.p0(i64 4, ptr %root) #9, !dbg !933
  call void @llvm.dbg.declare(metadata ptr %root, metadata !167, metadata !DIExpression()), !dbg !934
  call void @llvm.lifetime.start.p0(i64 4, ptr %curr) #9, !dbg !935
  call void @llvm.dbg.declare(metadata ptr %curr, metadata !168, metadata !DIExpression()), !dbg !936
  call void @llvm.lifetime.start.p0(i64 4, ptr %drop) #9, !dbg !937
  call void @llvm.dbg.declare(metadata ptr %drop, metadata !169, metadata !DIExpression()), !dbg !938
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #9, !dbg !939
  call void @llvm.dbg.declare(metadata ptr %left, metadata !170, metadata !DIExpression()), !dbg !940
  call void @llvm.lifetime.start.p0(i64 4, ptr %used) #9, !dbg !941
  call void @llvm.dbg.declare(metadata ptr %used, metadata !171, metadata !DIExpression()), !dbg !942
  call void @llvm.lifetime.start.p0(i64 4, ptr %huff) #9, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %huff, metadata !172, metadata !DIExpression()), !dbg !944
  call void @llvm.lifetime.start.p0(i64 4, ptr %incr) #9, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %incr, metadata !173, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 4, ptr %fill) #9, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %fill, metadata !174, metadata !DIExpression()), !dbg !948
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #9, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %low, metadata !175, metadata !DIExpression()), !dbg !950
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #9, !dbg !951
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !176, metadata !DIExpression()), !dbg !952
  call void @llvm.lifetime.start.p0(i64 4, ptr %this) #9, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %this, metadata !177, metadata !DIExpression()), !dbg !954
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %next, metadata !178, metadata !DIExpression()), !dbg !956
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #9, !dbg !957
  call void @llvm.dbg.declare(metadata ptr %base, metadata !179, metadata !DIExpression()), !dbg !958
  call void @llvm.lifetime.start.p0(i64 8, ptr %extra) #9, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %extra, metadata !182, metadata !DIExpression()), !dbg !960
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #9, !dbg !961
  call void @llvm.dbg.declare(metadata ptr %end, metadata !183, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 32, ptr %count) #9, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %count, metadata !184, metadata !DIExpression()), !dbg !964
  call void @llvm.lifetime.start.p0(i64 32, ptr %offs) #9, !dbg !965
  call void @llvm.dbg.declare(metadata ptr %offs, metadata !188, metadata !DIExpression()), !dbg !966
  store i32 0, ptr %len, align 4, !dbg !967
  br label %for.cond, !dbg !969

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %len, align 4, !dbg !970
  %cmp = icmp ule i32 %0, 15, !dbg !972
  br i1 %cmp, label %for.body, label %for.end, !dbg !973

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %len, align 4, !dbg !974
  %idxprom = zext i32 %1 to i64, !dbg !975
  %arrayidx = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom, !dbg !975
  store i16 0, ptr %arrayidx, align 2, !dbg !976
  br label %for.inc, !dbg !975

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %len, align 4, !dbg !977
  %inc = add i32 %2, 1, !dbg !977
  store i32 %inc, ptr %len, align 4, !dbg !977
  br label %for.cond, !dbg !978, !llvm.loop !979

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %sym, align 4, !dbg !983
  br label %for.cond1, !dbg !985

for.cond1:                                        ; preds = %for.inc9, %for.end
  %3 = load i32, ptr %sym, align 4, !dbg !986
  %4 = load i32, ptr %codes.addr, align 4, !dbg !988
  %cmp2 = icmp ult i32 %3, %4, !dbg !989
  br i1 %cmp2, label %for.body3, label %for.end11, !dbg !990

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %lens.addr, align 8, !dbg !991
  %6 = load i32, ptr %sym, align 4, !dbg !992
  %idxprom4 = zext i32 %6 to i64, !dbg !991
  %arrayidx5 = getelementptr inbounds i16, ptr %5, i64 %idxprom4, !dbg !991
  %7 = load i16, ptr %arrayidx5, align 2, !dbg !991
  %idxprom6 = zext i16 %7 to i64, !dbg !993
  %arrayidx7 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom6, !dbg !993
  %8 = load i16, ptr %arrayidx7, align 2, !dbg !994
  %inc8 = add i16 %8, 1, !dbg !994
  store i16 %inc8, ptr %arrayidx7, align 2, !dbg !994
  br label %for.inc9, !dbg !993

for.inc9:                                         ; preds = %for.body3
  %9 = load i32, ptr %sym, align 4, !dbg !995
  %inc10 = add i32 %9, 1, !dbg !995
  store i32 %inc10, ptr %sym, align 4, !dbg !995
  br label %for.cond1, !dbg !996, !llvm.loop !997

for.end11:                                        ; preds = %for.cond1
  %10 = load ptr, ptr %bits.addr, align 8, !dbg !999
  %11 = load i32, ptr %10, align 4, !dbg !1000
  store i32 %11, ptr %root, align 4, !dbg !1001
  store i32 15, ptr %max, align 4, !dbg !1002
  br label %for.cond12, !dbg !1004

for.cond12:                                       ; preds = %for.inc19, %for.end11
  %12 = load i32, ptr %max, align 4, !dbg !1005
  %cmp13 = icmp uge i32 %12, 1, !dbg !1007
  br i1 %cmp13, label %for.body14, label %for.end20, !dbg !1008

for.body14:                                       ; preds = %for.cond12
  %13 = load i32, ptr %max, align 4, !dbg !1009
  %idxprom15 = zext i32 %13 to i64, !dbg !1011
  %arrayidx16 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom15, !dbg !1011
  %14 = load i16, ptr %arrayidx16, align 2, !dbg !1011
  %conv = zext i16 %14 to i32, !dbg !1011
  %cmp17 = icmp ne i32 %conv, 0, !dbg !1012
  br i1 %cmp17, label %if.then, label %if.end, !dbg !1013

if.then:                                          ; preds = %for.body14
  br label %for.end20, !dbg !1014

if.end:                                           ; preds = %for.body14
  br label %for.inc19, !dbg !1015

for.inc19:                                        ; preds = %if.end
  %15 = load i32, ptr %max, align 4, !dbg !1016
  %dec = add i32 %15, -1, !dbg !1016
  store i32 %dec, ptr %max, align 4, !dbg !1016
  br label %for.cond12, !dbg !1017, !llvm.loop !1018

for.end20:                                        ; preds = %if.then, %for.cond12
  %16 = load i32, ptr %root, align 4, !dbg !1020
  %17 = load i32, ptr %max, align 4, !dbg !1022
  %cmp21 = icmp ugt i32 %16, %17, !dbg !1023
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1024

if.then23:                                        ; preds = %for.end20
  %18 = load i32, ptr %max, align 4, !dbg !1025
  store i32 %18, ptr %root, align 4, !dbg !1026
  br label %if.end24, !dbg !1027

if.end24:                                         ; preds = %if.then23, %for.end20
  %19 = load i32, ptr %max, align 4, !dbg !1028
  %cmp25 = icmp eq i32 %19, 0, !dbg !1030
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !1031

if.then27:                                        ; preds = %if.end24
  %op = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1032
  store i8 64, ptr %op, align 2, !dbg !1034
  %bits28 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1035
  store i8 1, ptr %bits28, align 1, !dbg !1036
  %val = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1037
  store i16 0, ptr %val, align 2, !dbg !1038
  %20 = load ptr, ptr %table.addr, align 8, !dbg !1039
  %21 = load ptr, ptr %20, align 8, !dbg !1040
  %incdec.ptr = getelementptr inbounds %struct.code, ptr %21, i32 1, !dbg !1040
  store ptr %incdec.ptr, ptr %20, align 8, !dbg !1040
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %this, i64 4, i1 false), !dbg !1041
  %22 = load ptr, ptr %table.addr, align 8, !dbg !1042
  %23 = load ptr, ptr %22, align 8, !dbg !1043
  %incdec.ptr29 = getelementptr inbounds %struct.code, ptr %23, i32 1, !dbg !1043
  store ptr %incdec.ptr29, ptr %22, align 8, !dbg !1043
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %23, ptr align 2 %this, i64 4, i1 false), !dbg !1044
  %24 = load ptr, ptr %bits.addr, align 8, !dbg !1045
  store i32 1, ptr %24, align 4, !dbg !1046
  store i32 0, ptr %retval, align 4, !dbg !1047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1047

if.end30:                                         ; preds = %if.end24
  store i32 1, ptr %min, align 4, !dbg !1048
  br label %for.cond31, !dbg !1050

for.cond31:                                       ; preds = %for.inc42, %if.end30
  %25 = load i32, ptr %min, align 4, !dbg !1051
  %cmp32 = icmp ult i32 %25, 15, !dbg !1053
  br i1 %cmp32, label %for.body34, label %for.end44, !dbg !1054

for.body34:                                       ; preds = %for.cond31
  %26 = load i32, ptr %min, align 4, !dbg !1055
  %idxprom35 = zext i32 %26 to i64, !dbg !1057
  %arrayidx36 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom35, !dbg !1057
  %27 = load i16, ptr %arrayidx36, align 2, !dbg !1057
  %conv37 = zext i16 %27 to i32, !dbg !1057
  %cmp38 = icmp ne i32 %conv37, 0, !dbg !1058
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !1059

if.then40:                                        ; preds = %for.body34
  br label %for.end44, !dbg !1060

if.end41:                                         ; preds = %for.body34
  br label %for.inc42, !dbg !1061

for.inc42:                                        ; preds = %if.end41
  %28 = load i32, ptr %min, align 4, !dbg !1062
  %inc43 = add i32 %28, 1, !dbg !1062
  store i32 %inc43, ptr %min, align 4, !dbg !1062
  br label %for.cond31, !dbg !1063, !llvm.loop !1064

for.end44:                                        ; preds = %if.then40, %for.cond31
  %29 = load i32, ptr %root, align 4, !dbg !1066
  %30 = load i32, ptr %min, align 4, !dbg !1068
  %cmp45 = icmp ult i32 %29, %30, !dbg !1069
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !1070

if.then47:                                        ; preds = %for.end44
  %31 = load i32, ptr %min, align 4, !dbg !1071
  store i32 %31, ptr %root, align 4, !dbg !1072
  br label %if.end48, !dbg !1073

if.end48:                                         ; preds = %if.then47, %for.end44
  store i32 1, ptr %left, align 4, !dbg !1074
  store i32 1, ptr %len, align 4, !dbg !1075
  br label %for.cond49, !dbg !1077

for.cond49:                                       ; preds = %for.inc60, %if.end48
  %32 = load i32, ptr %len, align 4, !dbg !1078
  %cmp50 = icmp ule i32 %32, 15, !dbg !1080
  br i1 %cmp50, label %for.body52, label %for.end62, !dbg !1081

for.body52:                                       ; preds = %for.cond49
  %33 = load i32, ptr %left, align 4, !dbg !1082
  %shl = shl i32 %33, 1, !dbg !1082
  store i32 %shl, ptr %left, align 4, !dbg !1082
  %34 = load i32, ptr %len, align 4, !dbg !1084
  %idxprom53 = zext i32 %34 to i64, !dbg !1085
  %arrayidx54 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom53, !dbg !1085
  %35 = load i16, ptr %arrayidx54, align 2, !dbg !1085
  %conv55 = zext i16 %35 to i32, !dbg !1085
  %36 = load i32, ptr %left, align 4, !dbg !1086
  %sub = sub nsw i32 %36, %conv55, !dbg !1086
  store i32 %sub, ptr %left, align 4, !dbg !1086
  %37 = load i32, ptr %left, align 4, !dbg !1087
  %cmp56 = icmp slt i32 %37, 0, !dbg !1089
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !1090

if.then58:                                        ; preds = %for.body52
  store i32 -1, ptr %retval, align 4, !dbg !1091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1091

if.end59:                                         ; preds = %for.body52
  br label %for.inc60, !dbg !1092

for.inc60:                                        ; preds = %if.end59
  %38 = load i32, ptr %len, align 4, !dbg !1093
  %inc61 = add i32 %38, 1, !dbg !1093
  store i32 %inc61, ptr %len, align 4, !dbg !1093
  br label %for.cond49, !dbg !1094, !llvm.loop !1095

for.end62:                                        ; preds = %for.cond49
  %39 = load i32, ptr %left, align 4, !dbg !1097
  %cmp63 = icmp sgt i32 %39, 0, !dbg !1099
  br i1 %cmp63, label %land.lhs.true, label %if.end70, !dbg !1100

land.lhs.true:                                    ; preds = %for.end62
  %40 = load i32, ptr %type.addr, align 4, !dbg !1101
  %cmp65 = icmp eq i32 %40, 0, !dbg !1102
  br i1 %cmp65, label %if.then69, label %lor.lhs.false, !dbg !1103

lor.lhs.false:                                    ; preds = %land.lhs.true
  %41 = load i32, ptr %max, align 4, !dbg !1104
  %cmp67 = icmp ne i32 %41, 1, !dbg !1105
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !1106

if.then69:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !1107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1107

if.end70:                                         ; preds = %lor.lhs.false, %for.end62
  %arrayidx71 = getelementptr inbounds [16 x i16], ptr %offs, i64 0, i64 1, !dbg !1108
  store i16 0, ptr %arrayidx71, align 2, !dbg !1109
  store i32 1, ptr %len, align 4, !dbg !1110
  br label %for.cond72, !dbg !1112

for.cond72:                                       ; preds = %for.inc86, %if.end70
  %42 = load i32, ptr %len, align 4, !dbg !1113
  %cmp73 = icmp ult i32 %42, 15, !dbg !1115
  br i1 %cmp73, label %for.body75, label %for.end88, !dbg !1116

for.body75:                                       ; preds = %for.cond72
  %43 = load i32, ptr %len, align 4, !dbg !1117
  %idxprom76 = zext i32 %43 to i64, !dbg !1118
  %arrayidx77 = getelementptr inbounds [16 x i16], ptr %offs, i64 0, i64 %idxprom76, !dbg !1118
  %44 = load i16, ptr %arrayidx77, align 2, !dbg !1118
  %conv78 = zext i16 %44 to i32, !dbg !1118
  %45 = load i32, ptr %len, align 4, !dbg !1119
  %idxprom79 = zext i32 %45 to i64, !dbg !1120
  %arrayidx80 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom79, !dbg !1120
  %46 = load i16, ptr %arrayidx80, align 2, !dbg !1120
  %conv81 = zext i16 %46 to i32, !dbg !1120
  %add = add nsw i32 %conv78, %conv81, !dbg !1121
  %conv82 = trunc i32 %add to i16, !dbg !1118
  %47 = load i32, ptr %len, align 4, !dbg !1122
  %add83 = add i32 %47, 1, !dbg !1123
  %idxprom84 = zext i32 %add83 to i64, !dbg !1124
  %arrayidx85 = getelementptr inbounds [16 x i16], ptr %offs, i64 0, i64 %idxprom84, !dbg !1124
  store i16 %conv82, ptr %arrayidx85, align 2, !dbg !1125
  br label %for.inc86, !dbg !1124

for.inc86:                                        ; preds = %for.body75
  %48 = load i32, ptr %len, align 4, !dbg !1126
  %inc87 = add i32 %48, 1, !dbg !1126
  store i32 %inc87, ptr %len, align 4, !dbg !1126
  br label %for.cond72, !dbg !1127, !llvm.loop !1128

for.end88:                                        ; preds = %for.cond72
  store i32 0, ptr %sym, align 4, !dbg !1130
  br label %for.cond89, !dbg !1132

for.cond89:                                       ; preds = %for.inc108, %for.end88
  %49 = load i32, ptr %sym, align 4, !dbg !1133
  %50 = load i32, ptr %codes.addr, align 4, !dbg !1135
  %cmp90 = icmp ult i32 %49, %50, !dbg !1136
  br i1 %cmp90, label %for.body92, label %for.end110, !dbg !1137

for.body92:                                       ; preds = %for.cond89
  %51 = load ptr, ptr %lens.addr, align 8, !dbg !1138
  %52 = load i32, ptr %sym, align 4, !dbg !1140
  %idxprom93 = zext i32 %52 to i64, !dbg !1138
  %arrayidx94 = getelementptr inbounds i16, ptr %51, i64 %idxprom93, !dbg !1138
  %53 = load i16, ptr %arrayidx94, align 2, !dbg !1138
  %conv95 = zext i16 %53 to i32, !dbg !1138
  %cmp96 = icmp ne i32 %conv95, 0, !dbg !1141
  br i1 %cmp96, label %if.then98, label %if.end107, !dbg !1142

if.then98:                                        ; preds = %for.body92
  %54 = load i32, ptr %sym, align 4, !dbg !1143
  %conv99 = trunc i32 %54 to i16, !dbg !1144
  %55 = load ptr, ptr %work.addr, align 8, !dbg !1145
  %56 = load ptr, ptr %lens.addr, align 8, !dbg !1146
  %57 = load i32, ptr %sym, align 4, !dbg !1147
  %idxprom100 = zext i32 %57 to i64, !dbg !1146
  %arrayidx101 = getelementptr inbounds i16, ptr %56, i64 %idxprom100, !dbg !1146
  %58 = load i16, ptr %arrayidx101, align 2, !dbg !1146
  %idxprom102 = zext i16 %58 to i64, !dbg !1148
  %arrayidx103 = getelementptr inbounds [16 x i16], ptr %offs, i64 0, i64 %idxprom102, !dbg !1148
  %59 = load i16, ptr %arrayidx103, align 2, !dbg !1149
  %inc104 = add i16 %59, 1, !dbg !1149
  store i16 %inc104, ptr %arrayidx103, align 2, !dbg !1149
  %idxprom105 = zext i16 %59 to i64, !dbg !1145
  %arrayidx106 = getelementptr inbounds i16, ptr %55, i64 %idxprom105, !dbg !1145
  store i16 %conv99, ptr %arrayidx106, align 2, !dbg !1150
  br label %if.end107, !dbg !1145

if.end107:                                        ; preds = %if.then98, %for.body92
  br label %for.inc108, !dbg !1151

for.inc108:                                       ; preds = %if.end107
  %60 = load i32, ptr %sym, align 4, !dbg !1152
  %inc109 = add i32 %60, 1, !dbg !1152
  store i32 %inc109, ptr %sym, align 4, !dbg !1152
  br label %for.cond89, !dbg !1153, !llvm.loop !1154

for.end110:                                       ; preds = %for.cond89
  %61 = load i32, ptr %type.addr, align 4, !dbg !1156
  switch i32 %61, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb111
  ], !dbg !1157

sw.bb:                                            ; preds = %for.end110
  %62 = load ptr, ptr %work.addr, align 8, !dbg !1158
  store ptr %62, ptr %extra, align 8, !dbg !1160
  store ptr %62, ptr %base, align 8, !dbg !1161
  store i32 19, ptr %end, align 4, !dbg !1162
  br label %sw.epilog, !dbg !1163

sw.bb111:                                         ; preds = %for.end110
  store ptr @zlib_inflate_table.lbase, ptr %base, align 8, !dbg !1164
  %63 = load ptr, ptr %base, align 8, !dbg !1165
  %add.ptr = getelementptr inbounds i16, ptr %63, i64 -257, !dbg !1165
  store ptr %add.ptr, ptr %base, align 8, !dbg !1165
  store ptr @zlib_inflate_table.lext, ptr %extra, align 8, !dbg !1166
  %64 = load ptr, ptr %extra, align 8, !dbg !1167
  %add.ptr112 = getelementptr inbounds i16, ptr %64, i64 -257, !dbg !1167
  store ptr %add.ptr112, ptr %extra, align 8, !dbg !1167
  store i32 256, ptr %end, align 4, !dbg !1168
  br label %sw.epilog, !dbg !1169

sw.default:                                       ; preds = %for.end110
  store ptr @zlib_inflate_table.dbase, ptr %base, align 8, !dbg !1170
  store ptr @zlib_inflate_table.dext, ptr %extra, align 8, !dbg !1171
  store i32 -1, ptr %end, align 4, !dbg !1172
  br label %sw.epilog, !dbg !1173

sw.epilog:                                        ; preds = %sw.default, %sw.bb111, %sw.bb
  store i32 0, ptr %huff, align 4, !dbg !1174
  store i32 0, ptr %sym, align 4, !dbg !1175
  %65 = load i32, ptr %min, align 4, !dbg !1176
  store i32 %65, ptr %len, align 4, !dbg !1177
  %66 = load ptr, ptr %table.addr, align 8, !dbg !1178
  %67 = load ptr, ptr %66, align 8, !dbg !1179
  store ptr %67, ptr %next, align 8, !dbg !1180
  %68 = load i32, ptr %root, align 4, !dbg !1181
  store i32 %68, ptr %curr, align 4, !dbg !1182
  store i32 0, ptr %drop, align 4, !dbg !1183
  store i32 -1, ptr %low, align 4, !dbg !1184
  %69 = load i32, ptr %root, align 4, !dbg !1185
  %shl113 = shl i32 1, %69, !dbg !1186
  store i32 %shl113, ptr %used, align 4, !dbg !1187
  %70 = load i32, ptr %used, align 4, !dbg !1188
  %sub114 = sub i32 %70, 1, !dbg !1189
  store i32 %sub114, ptr %mask, align 4, !dbg !1190
  %71 = load i32, ptr %type.addr, align 4, !dbg !1191
  %cmp115 = icmp eq i32 %71, 1, !dbg !1193
  br i1 %cmp115, label %land.lhs.true117, label %if.end121, !dbg !1194

land.lhs.true117:                                 ; preds = %sw.epilog
  %72 = load i32, ptr %used, align 4, !dbg !1195
  %cmp118 = icmp uge i32 %72, 1456, !dbg !1196
  br i1 %cmp118, label %if.then120, label %if.end121, !dbg !1197

if.then120:                                       ; preds = %land.lhs.true117
  store i32 1, ptr %retval, align 4, !dbg !1198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1198

if.end121:                                        ; preds = %land.lhs.true117, %sw.epilog
  br label %for.cond122, !dbg !1199

for.cond122:                                      ; preds = %if.end249, %if.end121
  %73 = load i32, ptr %len, align 4, !dbg !1200
  %74 = load i32, ptr %drop, align 4, !dbg !1204
  %sub123 = sub i32 %73, %74, !dbg !1205
  %conv124 = trunc i32 %sub123 to i8, !dbg !1206
  %bits125 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1207
  store i8 %conv124, ptr %bits125, align 1, !dbg !1208
  %75 = load ptr, ptr %work.addr, align 8, !dbg !1209
  %76 = load i32, ptr %sym, align 4, !dbg !1211
  %idxprom126 = zext i32 %76 to i64, !dbg !1209
  %arrayidx127 = getelementptr inbounds i16, ptr %75, i64 %idxprom126, !dbg !1209
  %77 = load i16, ptr %arrayidx127, align 2, !dbg !1209
  %conv128 = zext i16 %77 to i32, !dbg !1212
  %78 = load i32, ptr %end, align 4, !dbg !1213
  %cmp129 = icmp slt i32 %conv128, %78, !dbg !1214
  br i1 %cmp129, label %if.then131, label %if.else, !dbg !1215

if.then131:                                       ; preds = %for.cond122
  %op132 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1216
  store i8 0, ptr %op132, align 2, !dbg !1218
  %79 = load ptr, ptr %work.addr, align 8, !dbg !1219
  %80 = load i32, ptr %sym, align 4, !dbg !1220
  %idxprom133 = zext i32 %80 to i64, !dbg !1219
  %arrayidx134 = getelementptr inbounds i16, ptr %79, i64 %idxprom133, !dbg !1219
  %81 = load i16, ptr %arrayidx134, align 2, !dbg !1219
  %val135 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1221
  store i16 %81, ptr %val135, align 2, !dbg !1222
  br label %if.end157, !dbg !1223

if.else:                                          ; preds = %for.cond122
  %82 = load ptr, ptr %work.addr, align 8, !dbg !1224
  %83 = load i32, ptr %sym, align 4, !dbg !1226
  %idxprom136 = zext i32 %83 to i64, !dbg !1224
  %arrayidx137 = getelementptr inbounds i16, ptr %82, i64 %idxprom136, !dbg !1224
  %84 = load i16, ptr %arrayidx137, align 2, !dbg !1224
  %conv138 = zext i16 %84 to i32, !dbg !1227
  %85 = load i32, ptr %end, align 4, !dbg !1228
  %cmp139 = icmp sgt i32 %conv138, %85, !dbg !1229
  br i1 %cmp139, label %if.then141, label %if.else153, !dbg !1230

if.then141:                                       ; preds = %if.else
  %86 = load ptr, ptr %extra, align 8, !dbg !1231
  %87 = load ptr, ptr %work.addr, align 8, !dbg !1233
  %88 = load i32, ptr %sym, align 4, !dbg !1234
  %idxprom142 = zext i32 %88 to i64, !dbg !1233
  %arrayidx143 = getelementptr inbounds i16, ptr %87, i64 %idxprom142, !dbg !1233
  %89 = load i16, ptr %arrayidx143, align 2, !dbg !1233
  %idxprom144 = zext i16 %89 to i64, !dbg !1231
  %arrayidx145 = getelementptr inbounds i16, ptr %86, i64 %idxprom144, !dbg !1231
  %90 = load i16, ptr %arrayidx145, align 2, !dbg !1231
  %conv146 = trunc i16 %90 to i8, !dbg !1235
  %op147 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1236
  store i8 %conv146, ptr %op147, align 2, !dbg !1237
  %91 = load ptr, ptr %base, align 8, !dbg !1238
  %92 = load ptr, ptr %work.addr, align 8, !dbg !1239
  %93 = load i32, ptr %sym, align 4, !dbg !1240
  %idxprom148 = zext i32 %93 to i64, !dbg !1239
  %arrayidx149 = getelementptr inbounds i16, ptr %92, i64 %idxprom148, !dbg !1239
  %94 = load i16, ptr %arrayidx149, align 2, !dbg !1239
  %idxprom150 = zext i16 %94 to i64, !dbg !1238
  %arrayidx151 = getelementptr inbounds i16, ptr %91, i64 %idxprom150, !dbg !1238
  %95 = load i16, ptr %arrayidx151, align 2, !dbg !1238
  %val152 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1241
  store i16 %95, ptr %val152, align 2, !dbg !1242
  br label %if.end156, !dbg !1243

if.else153:                                       ; preds = %if.else
  %op154 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1244
  store i8 96, ptr %op154, align 2, !dbg !1246
  %val155 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1247
  store i16 0, ptr %val155, align 2, !dbg !1248
  br label %if.end156

if.end156:                                        ; preds = %if.else153, %if.then141
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.then131
  %96 = load i32, ptr %len, align 4, !dbg !1249
  %97 = load i32, ptr %drop, align 4, !dbg !1250
  %sub158 = sub i32 %96, %97, !dbg !1251
  %shl159 = shl i32 1, %sub158, !dbg !1252
  store i32 %shl159, ptr %incr, align 4, !dbg !1253
  %98 = load i32, ptr %curr, align 4, !dbg !1254
  %shl160 = shl i32 1, %98, !dbg !1255
  store i32 %shl160, ptr %fill, align 4, !dbg !1256
  %99 = load i32, ptr %fill, align 4, !dbg !1257
  store i32 %99, ptr %min, align 4, !dbg !1258
  br label %do.body, !dbg !1259

do.body:                                          ; preds = %do.cond, %if.end157
  %100 = load i32, ptr %incr, align 4, !dbg !1260
  %101 = load i32, ptr %fill, align 4, !dbg !1262
  %sub161 = sub i32 %101, %100, !dbg !1262
  store i32 %sub161, ptr %fill, align 4, !dbg !1262
  %102 = load ptr, ptr %next, align 8, !dbg !1263
  %103 = load i32, ptr %huff, align 4, !dbg !1264
  %104 = load i32, ptr %drop, align 4, !dbg !1265
  %shr = lshr i32 %103, %104, !dbg !1266
  %105 = load i32, ptr %fill, align 4, !dbg !1267
  %add162 = add i32 %shr, %105, !dbg !1268
  %idxprom163 = zext i32 %add162 to i64, !dbg !1263
  %arrayidx164 = getelementptr inbounds %struct.code, ptr %102, i64 %idxprom163, !dbg !1263
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx164, ptr align 2 %this, i64 4, i1 false), !dbg !1269
  br label %do.cond, !dbg !1270

do.cond:                                          ; preds = %do.body
  %106 = load i32, ptr %fill, align 4, !dbg !1271
  %cmp165 = icmp ne i32 %106, 0, !dbg !1272
  br i1 %cmp165, label %do.body, label %do.end, !dbg !1270, !llvm.loop !1273

do.end:                                           ; preds = %do.cond
  %107 = load i32, ptr %len, align 4, !dbg !1275
  %sub167 = sub i32 %107, 1, !dbg !1276
  %shl168 = shl i32 1, %sub167, !dbg !1277
  store i32 %shl168, ptr %incr, align 4, !dbg !1278
  br label %while.cond, !dbg !1279

while.cond:                                       ; preds = %while.body, %do.end
  %108 = load i32, ptr %huff, align 4, !dbg !1280
  %109 = load i32, ptr %incr, align 4, !dbg !1281
  %and = and i32 %108, %109, !dbg !1282
  %tobool = icmp ne i32 %and, 0, !dbg !1279
  br i1 %tobool, label %while.body, label %while.end, !dbg !1279

while.body:                                       ; preds = %while.cond
  %110 = load i32, ptr %incr, align 4, !dbg !1283
  %shr169 = lshr i32 %110, 1, !dbg !1283
  store i32 %shr169, ptr %incr, align 4, !dbg !1283
  br label %while.cond, !dbg !1279, !llvm.loop !1284

while.end:                                        ; preds = %while.cond
  %111 = load i32, ptr %incr, align 4, !dbg !1286
  %cmp170 = icmp ne i32 %111, 0, !dbg !1288
  br i1 %cmp170, label %if.then172, label %if.else176, !dbg !1289

if.then172:                                       ; preds = %while.end
  %112 = load i32, ptr %incr, align 4, !dbg !1290
  %sub173 = sub i32 %112, 1, !dbg !1292
  %113 = load i32, ptr %huff, align 4, !dbg !1293
  %and174 = and i32 %113, %sub173, !dbg !1293
  store i32 %and174, ptr %huff, align 4, !dbg !1293
  %114 = load i32, ptr %incr, align 4, !dbg !1294
  %115 = load i32, ptr %huff, align 4, !dbg !1295
  %add175 = add i32 %115, %114, !dbg !1295
  store i32 %add175, ptr %huff, align 4, !dbg !1295
  br label %if.end177, !dbg !1296

if.else176:                                       ; preds = %while.end
  store i32 0, ptr %huff, align 4, !dbg !1297
  br label %if.end177

if.end177:                                        ; preds = %if.else176, %if.then172
  %116 = load i32, ptr %sym, align 4, !dbg !1298
  %inc178 = add i32 %116, 1, !dbg !1298
  store i32 %inc178, ptr %sym, align 4, !dbg !1298
  %117 = load i32, ptr %len, align 4, !dbg !1299
  %idxprom179 = zext i32 %117 to i64, !dbg !1301
  %arrayidx180 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom179, !dbg !1301
  %118 = load i16, ptr %arrayidx180, align 2, !dbg !1302
  %dec181 = add i16 %118, -1, !dbg !1302
  store i16 %dec181, ptr %arrayidx180, align 2, !dbg !1302
  %conv182 = zext i16 %dec181 to i32, !dbg !1302
  %cmp183 = icmp eq i32 %conv182, 0, !dbg !1303
  br i1 %cmp183, label %if.then185, label %if.end195, !dbg !1304

if.then185:                                       ; preds = %if.end177
  %119 = load i32, ptr %len, align 4, !dbg !1305
  %120 = load i32, ptr %max, align 4, !dbg !1308
  %cmp186 = icmp eq i32 %119, %120, !dbg !1309
  br i1 %cmp186, label %if.then188, label %if.end189, !dbg !1310

if.then188:                                       ; preds = %if.then185
  br label %for.end250, !dbg !1311

if.end189:                                        ; preds = %if.then185
  %121 = load ptr, ptr %lens.addr, align 8, !dbg !1312
  %122 = load ptr, ptr %work.addr, align 8, !dbg !1313
  %123 = load i32, ptr %sym, align 4, !dbg !1314
  %idxprom190 = zext i32 %123 to i64, !dbg !1313
  %arrayidx191 = getelementptr inbounds i16, ptr %122, i64 %idxprom190, !dbg !1313
  %124 = load i16, ptr %arrayidx191, align 2, !dbg !1313
  %idxprom192 = zext i16 %124 to i64, !dbg !1312
  %arrayidx193 = getelementptr inbounds i16, ptr %121, i64 %idxprom192, !dbg !1312
  %125 = load i16, ptr %arrayidx193, align 2, !dbg !1312
  %conv194 = zext i16 %125 to i32, !dbg !1312
  store i32 %conv194, ptr %len, align 4, !dbg !1315
  br label %if.end195, !dbg !1316

if.end195:                                        ; preds = %if.end189, %if.end177
  %126 = load i32, ptr %len, align 4, !dbg !1317
  %127 = load i32, ptr %root, align 4, !dbg !1319
  %cmp196 = icmp ugt i32 %126, %127, !dbg !1320
  br i1 %cmp196, label %land.lhs.true198, label %if.end249, !dbg !1321

land.lhs.true198:                                 ; preds = %if.end195
  %128 = load i32, ptr %huff, align 4, !dbg !1322
  %129 = load i32, ptr %mask, align 4, !dbg !1323
  %and199 = and i32 %128, %129, !dbg !1324
  %130 = load i32, ptr %low, align 4, !dbg !1325
  %cmp200 = icmp ne i32 %and199, %130, !dbg !1326
  br i1 %cmp200, label %if.then202, label %if.end249, !dbg !1327

if.then202:                                       ; preds = %land.lhs.true198
  %131 = load i32, ptr %drop, align 4, !dbg !1328
  %cmp203 = icmp eq i32 %131, 0, !dbg !1331
  br i1 %cmp203, label %if.then205, label %if.end206, !dbg !1332

if.then205:                                       ; preds = %if.then202
  %132 = load i32, ptr %root, align 4, !dbg !1333
  store i32 %132, ptr %drop, align 4, !dbg !1334
  br label %if.end206, !dbg !1335

if.end206:                                        ; preds = %if.then205, %if.then202
  %133 = load i32, ptr %min, align 4, !dbg !1336
  %134 = load ptr, ptr %next, align 8, !dbg !1337
  %idx.ext = zext i32 %133 to i64, !dbg !1337
  %add.ptr207 = getelementptr inbounds %struct.code, ptr %134, i64 %idx.ext, !dbg !1337
  store ptr %add.ptr207, ptr %next, align 8, !dbg !1337
  %135 = load i32, ptr %len, align 4, !dbg !1338
  %136 = load i32, ptr %drop, align 4, !dbg !1339
  %sub208 = sub i32 %135, %136, !dbg !1340
  store i32 %sub208, ptr %curr, align 4, !dbg !1341
  %137 = load i32, ptr %curr, align 4, !dbg !1342
  %shl209 = shl i32 1, %137, !dbg !1343
  store i32 %shl209, ptr %left, align 4, !dbg !1344
  br label %while.cond210, !dbg !1345

while.cond210:                                    ; preds = %if.end223, %if.end206
  %138 = load i32, ptr %curr, align 4, !dbg !1346
  %139 = load i32, ptr %drop, align 4, !dbg !1347
  %add211 = add i32 %138, %139, !dbg !1348
  %140 = load i32, ptr %max, align 4, !dbg !1349
  %cmp212 = icmp ult i32 %add211, %140, !dbg !1350
  br i1 %cmp212, label %while.body214, label %while.end226, !dbg !1345

while.body214:                                    ; preds = %while.cond210
  %141 = load i32, ptr %curr, align 4, !dbg !1351
  %142 = load i32, ptr %drop, align 4, !dbg !1353
  %add215 = add i32 %141, %142, !dbg !1354
  %idxprom216 = zext i32 %add215 to i64, !dbg !1355
  %arrayidx217 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom216, !dbg !1355
  %143 = load i16, ptr %arrayidx217, align 2, !dbg !1355
  %conv218 = zext i16 %143 to i32, !dbg !1355
  %144 = load i32, ptr %left, align 4, !dbg !1356
  %sub219 = sub nsw i32 %144, %conv218, !dbg !1356
  store i32 %sub219, ptr %left, align 4, !dbg !1356
  %145 = load i32, ptr %left, align 4, !dbg !1357
  %cmp220 = icmp sle i32 %145, 0, !dbg !1359
  br i1 %cmp220, label %if.then222, label %if.end223, !dbg !1360

if.then222:                                       ; preds = %while.body214
  br label %while.end226, !dbg !1361

if.end223:                                        ; preds = %while.body214
  %146 = load i32, ptr %curr, align 4, !dbg !1362
  %inc224 = add i32 %146, 1, !dbg !1362
  store i32 %inc224, ptr %curr, align 4, !dbg !1362
  %147 = load i32, ptr %left, align 4, !dbg !1363
  %shl225 = shl i32 %147, 1, !dbg !1363
  store i32 %shl225, ptr %left, align 4, !dbg !1363
  br label %while.cond210, !dbg !1345, !llvm.loop !1364

while.end226:                                     ; preds = %if.then222, %while.cond210
  %148 = load i32, ptr %curr, align 4, !dbg !1366
  %shl227 = shl i32 1, %148, !dbg !1367
  %149 = load i32, ptr %used, align 4, !dbg !1368
  %add228 = add i32 %149, %shl227, !dbg !1368
  store i32 %add228, ptr %used, align 4, !dbg !1368
  %150 = load i32, ptr %type.addr, align 4, !dbg !1369
  %cmp229 = icmp eq i32 %150, 1, !dbg !1371
  br i1 %cmp229, label %land.lhs.true231, label %if.end235, !dbg !1372

land.lhs.true231:                                 ; preds = %while.end226
  %151 = load i32, ptr %used, align 4, !dbg !1373
  %cmp232 = icmp uge i32 %151, 1456, !dbg !1374
  br i1 %cmp232, label %if.then234, label %if.end235, !dbg !1375

if.then234:                                       ; preds = %land.lhs.true231
  store i32 1, ptr %retval, align 4, !dbg !1376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1376

if.end235:                                        ; preds = %land.lhs.true231, %while.end226
  %152 = load i32, ptr %huff, align 4, !dbg !1377
  %153 = load i32, ptr %mask, align 4, !dbg !1378
  %and236 = and i32 %152, %153, !dbg !1379
  store i32 %and236, ptr %low, align 4, !dbg !1380
  %154 = load i32, ptr %curr, align 4, !dbg !1381
  %conv237 = trunc i32 %154 to i8, !dbg !1382
  %155 = load ptr, ptr %table.addr, align 8, !dbg !1383
  %156 = load ptr, ptr %155, align 8, !dbg !1384
  %157 = load i32, ptr %low, align 4, !dbg !1385
  %idxprom238 = zext i32 %157 to i64, !dbg !1386
  %arrayidx239 = getelementptr inbounds %struct.code, ptr %156, i64 %idxprom238, !dbg !1386
  %op240 = getelementptr inbounds %struct.code, ptr %arrayidx239, i32 0, i32 0, !dbg !1387
  store i8 %conv237, ptr %op240, align 2, !dbg !1388
  %158 = load i32, ptr %root, align 4, !dbg !1389
  %conv241 = trunc i32 %158 to i8, !dbg !1390
  %159 = load ptr, ptr %table.addr, align 8, !dbg !1391
  %160 = load ptr, ptr %159, align 8, !dbg !1392
  %161 = load i32, ptr %low, align 4, !dbg !1393
  %idxprom242 = zext i32 %161 to i64, !dbg !1394
  %arrayidx243 = getelementptr inbounds %struct.code, ptr %160, i64 %idxprom242, !dbg !1394
  %bits244 = getelementptr inbounds %struct.code, ptr %arrayidx243, i32 0, i32 1, !dbg !1395
  store i8 %conv241, ptr %bits244, align 1, !dbg !1396
  %162 = load ptr, ptr %next, align 8, !dbg !1397
  %163 = load ptr, ptr %table.addr, align 8, !dbg !1398
  %164 = load ptr, ptr %163, align 8, !dbg !1399
  %sub.ptr.lhs.cast = ptrtoint ptr %162 to i64, !dbg !1400
  %sub.ptr.rhs.cast = ptrtoint ptr %164 to i64, !dbg !1400
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1400
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4, !dbg !1400
  %conv245 = trunc i64 %sub.ptr.div to i16, !dbg !1401
  %165 = load ptr, ptr %table.addr, align 8, !dbg !1402
  %166 = load ptr, ptr %165, align 8, !dbg !1403
  %167 = load i32, ptr %low, align 4, !dbg !1404
  %idxprom246 = zext i32 %167 to i64, !dbg !1405
  %arrayidx247 = getelementptr inbounds %struct.code, ptr %166, i64 %idxprom246, !dbg !1405
  %val248 = getelementptr inbounds %struct.code, ptr %arrayidx247, i32 0, i32 2, !dbg !1406
  store i16 %conv245, ptr %val248, align 2, !dbg !1407
  br label %if.end249, !dbg !1408

if.end249:                                        ; preds = %if.end235, %land.lhs.true198, %if.end195
  br label %for.cond122, !dbg !1409, !llvm.loop !1410

for.end250:                                       ; preds = %if.then188
  %op251 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1413
  store i8 64, ptr %op251, align 2, !dbg !1414
  %168 = load i32, ptr %len, align 4, !dbg !1415
  %169 = load i32, ptr %drop, align 4, !dbg !1416
  %sub252 = sub i32 %168, %169, !dbg !1417
  %conv253 = trunc i32 %sub252 to i8, !dbg !1418
  %bits254 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1419
  store i8 %conv253, ptr %bits254, align 1, !dbg !1420
  %val255 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1421
  store i16 0, ptr %val255, align 2, !dbg !1422
  br label %while.cond256, !dbg !1423

while.cond256:                                    ; preds = %if.end288, %for.end250
  %170 = load i32, ptr %huff, align 4, !dbg !1424
  %cmp257 = icmp ne i32 %170, 0, !dbg !1425
  br i1 %cmp257, label %while.body259, label %while.end289, !dbg !1423

while.body259:                                    ; preds = %while.cond256
  %171 = load i32, ptr %drop, align 4, !dbg !1426
  %cmp260 = icmp ne i32 %171, 0, !dbg !1429
  br i1 %cmp260, label %land.lhs.true262, label %if.end269, !dbg !1430

land.lhs.true262:                                 ; preds = %while.body259
  %172 = load i32, ptr %huff, align 4, !dbg !1431
  %173 = load i32, ptr %mask, align 4, !dbg !1432
  %and263 = and i32 %172, %173, !dbg !1433
  %174 = load i32, ptr %low, align 4, !dbg !1434
  %cmp264 = icmp ne i32 %and263, %174, !dbg !1435
  br i1 %cmp264, label %if.then266, label %if.end269, !dbg !1436

if.then266:                                       ; preds = %land.lhs.true262
  store i32 0, ptr %drop, align 4, !dbg !1437
  %175 = load i32, ptr %root, align 4, !dbg !1439
  store i32 %175, ptr %len, align 4, !dbg !1440
  %176 = load ptr, ptr %table.addr, align 8, !dbg !1441
  %177 = load ptr, ptr %176, align 8, !dbg !1442
  store ptr %177, ptr %next, align 8, !dbg !1443
  %178 = load i32, ptr %len, align 4, !dbg !1444
  %conv267 = trunc i32 %178 to i8, !dbg !1445
  %bits268 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1446
  store i8 %conv267, ptr %bits268, align 1, !dbg !1447
  br label %if.end269, !dbg !1448

if.end269:                                        ; preds = %if.then266, %land.lhs.true262, %while.body259
  %179 = load ptr, ptr %next, align 8, !dbg !1449
  %180 = load i32, ptr %huff, align 4, !dbg !1450
  %181 = load i32, ptr %drop, align 4, !dbg !1451
  %shr270 = lshr i32 %180, %181, !dbg !1452
  %idxprom271 = zext i32 %shr270 to i64, !dbg !1449
  %arrayidx272 = getelementptr inbounds %struct.code, ptr %179, i64 %idxprom271, !dbg !1449
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx272, ptr align 2 %this, i64 4, i1 false), !dbg !1453
  %182 = load i32, ptr %len, align 4, !dbg !1454
  %sub273 = sub i32 %182, 1, !dbg !1455
  %shl274 = shl i32 1, %sub273, !dbg !1456
  store i32 %shl274, ptr %incr, align 4, !dbg !1457
  br label %while.cond275, !dbg !1458

while.cond275:                                    ; preds = %while.body278, %if.end269
  %183 = load i32, ptr %huff, align 4, !dbg !1459
  %184 = load i32, ptr %incr, align 4, !dbg !1460
  %and276 = and i32 %183, %184, !dbg !1461
  %tobool277 = icmp ne i32 %and276, 0, !dbg !1458
  br i1 %tobool277, label %while.body278, label %while.end280, !dbg !1458

while.body278:                                    ; preds = %while.cond275
  %185 = load i32, ptr %incr, align 4, !dbg !1462
  %shr279 = lshr i32 %185, 1, !dbg !1462
  store i32 %shr279, ptr %incr, align 4, !dbg !1462
  br label %while.cond275, !dbg !1458, !llvm.loop !1463

while.end280:                                     ; preds = %while.cond275
  %186 = load i32, ptr %incr, align 4, !dbg !1465
  %cmp281 = icmp ne i32 %186, 0, !dbg !1467
  br i1 %cmp281, label %if.then283, label %if.else287, !dbg !1468

if.then283:                                       ; preds = %while.end280
  %187 = load i32, ptr %incr, align 4, !dbg !1469
  %sub284 = sub i32 %187, 1, !dbg !1471
  %188 = load i32, ptr %huff, align 4, !dbg !1472
  %and285 = and i32 %188, %sub284, !dbg !1472
  store i32 %and285, ptr %huff, align 4, !dbg !1472
  %189 = load i32, ptr %incr, align 4, !dbg !1473
  %190 = load i32, ptr %huff, align 4, !dbg !1474
  %add286 = add i32 %190, %189, !dbg !1474
  store i32 %add286, ptr %huff, align 4, !dbg !1474
  br label %if.end288, !dbg !1475

if.else287:                                       ; preds = %while.end280
  store i32 0, ptr %huff, align 4, !dbg !1476
  br label %if.end288

if.end288:                                        ; preds = %if.else287, %if.then283
  br label %while.cond256, !dbg !1423, !llvm.loop !1477

while.end289:                                     ; preds = %while.cond256
  %191 = load i32, ptr %used, align 4, !dbg !1479
  %192 = load ptr, ptr %table.addr, align 8, !dbg !1480
  %193 = load ptr, ptr %192, align 8, !dbg !1481
  %idx.ext290 = zext i32 %191 to i64, !dbg !1481
  %add.ptr291 = getelementptr inbounds %struct.code, ptr %193, i64 %idx.ext290, !dbg !1481
  store ptr %add.ptr291, ptr %192, align 8, !dbg !1481
  %194 = load i32, ptr %root, align 4, !dbg !1482
  %195 = load ptr, ptr %bits.addr, align 8, !dbg !1483
  store i32 %194, ptr %195, align 4, !dbg !1484
  store i32 0, ptr %retval, align 4, !dbg !1485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1485

cleanup:                                          ; preds = %while.end289, %if.then234, %if.then120, %if.then69, %if.then58, %if.then27
  call void @llvm.lifetime.end.p0(i64 32, ptr %offs) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 32, ptr %count) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 8, ptr %extra) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %this) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %fill) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %incr) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %huff) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %used) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %drop) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %curr) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %root) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %sym) #9, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !1486
  %196 = load i32, ptr %retval, align 4, !dbg !1486
  ret i32 %196, !dbg !1486
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone nounwind
define hidden void @inflate_fast(ptr noundef %strm, i32 noundef %start) #0 !dbg !1487 {
entry:
  %strm.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %in = alloca ptr, align 8
  %last = alloca ptr, align 8
  %out = alloca ptr, align 8
  %beg = alloca ptr, align 8
  %end = alloca ptr, align 8
  %wsize = alloca i32, align 4
  %whave = alloca i32, align 4
  %write = alloca i32, align 4
  %window = alloca ptr, align 8
  %hold = alloca i64, align 8
  %bits = alloca i32, align 4
  %lcode = alloca ptr, align 8
  %dcode = alloca ptr, align 8
  %lmask = alloca i32, align 4
  %dmask = alloca i32, align 4
  %this = alloca %struct.code, align 2
  %op = alloca i32, align 4
  %len = alloca i32, align 4
  %dist = alloca i32, align 4
  %from = alloca ptr, align 8
  %sout = alloca ptr, align 8
  %loops = alloca i64, align 8
  %sfrom = alloca ptr, align 8
  %pat16 = alloca i16, align 2
  %mm = alloca %union.uu, align 2
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !1491, metadata !DIExpression()), !dbg !1539
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1492, metadata !DIExpression()), !dbg !1540
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #9, !dbg !1541
  call void @llvm.dbg.declare(metadata ptr %state, metadata !1493, metadata !DIExpression()), !dbg !1542
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #9, !dbg !1543
  call void @llvm.dbg.declare(metadata ptr %in, metadata !1494, metadata !DIExpression()), !dbg !1544
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #9, !dbg !1545
  call void @llvm.dbg.declare(metadata ptr %last, metadata !1495, metadata !DIExpression()), !dbg !1546
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #9, !dbg !1547
  call void @llvm.dbg.declare(metadata ptr %out, metadata !1496, metadata !DIExpression()), !dbg !1548
  call void @llvm.lifetime.start.p0(i64 8, ptr %beg) #9, !dbg !1549
  call void @llvm.dbg.declare(metadata ptr %beg, metadata !1497, metadata !DIExpression()), !dbg !1550
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #9, !dbg !1551
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1498, metadata !DIExpression()), !dbg !1552
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #9, !dbg !1553
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !1499, metadata !DIExpression()), !dbg !1554
  call void @llvm.lifetime.start.p0(i64 4, ptr %whave) #9, !dbg !1555
  call void @llvm.dbg.declare(metadata ptr %whave, metadata !1500, metadata !DIExpression()), !dbg !1556
  call void @llvm.lifetime.start.p0(i64 4, ptr %write) #9, !dbg !1557
  call void @llvm.dbg.declare(metadata ptr %write, metadata !1501, metadata !DIExpression()), !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr %window) #9, !dbg !1559
  call void @llvm.dbg.declare(metadata ptr %window, metadata !1502, metadata !DIExpression()), !dbg !1560
  call void @llvm.lifetime.start.p0(i64 8, ptr %hold) #9, !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %hold, metadata !1503, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #9, !dbg !1563
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !1504, metadata !DIExpression()), !dbg !1564
  call void @llvm.lifetime.start.p0(i64 8, ptr %lcode) #9, !dbg !1565
  call void @llvm.dbg.declare(metadata ptr %lcode, metadata !1505, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.start.p0(i64 8, ptr %dcode) #9, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %dcode, metadata !1506, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.start.p0(i64 4, ptr %lmask) #9, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %lmask, metadata !1507, metadata !DIExpression()), !dbg !1570
  call void @llvm.lifetime.start.p0(i64 4, ptr %dmask) #9, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %dmask, metadata !1508, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.start.p0(i64 4, ptr %this) #9, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %this, metadata !1509, metadata !DIExpression()), !dbg !1574
  call void @llvm.lifetime.start.p0(i64 4, ptr %op) #9, !dbg !1575
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1510, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !1577
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1511, metadata !DIExpression()), !dbg !1578
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #9, !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %dist, metadata !1512, metadata !DIExpression()), !dbg !1580
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #9, !dbg !1581
  call void @llvm.dbg.declare(metadata ptr %from, metadata !1513, metadata !DIExpression()), !dbg !1582
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !1583
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7, !dbg !1584
  %1 = load ptr, ptr %state1, align 8, !dbg !1584
  store ptr %1, ptr %state, align 8, !dbg !1585
  %2 = load ptr, ptr %strm.addr, align 8, !dbg !1586
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 0, !dbg !1587
  %3 = load ptr, ptr %next_in, align 8, !dbg !1587
  store ptr %3, ptr %in, align 8, !dbg !1588
  %4 = load ptr, ptr %in, align 8, !dbg !1589
  %5 = load ptr, ptr %strm.addr, align 8, !dbg !1590
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 1, !dbg !1591
  %6 = load i64, ptr %avail_in, align 8, !dbg !1591
  %sub = sub i64 %6, 5, !dbg !1592
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %sub, !dbg !1593
  store ptr %add.ptr, ptr %last, align 8, !dbg !1594
  %7 = load ptr, ptr %strm.addr, align 8, !dbg !1595
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 3, !dbg !1596
  %8 = load ptr, ptr %next_out, align 8, !dbg !1596
  store ptr %8, ptr %out, align 8, !dbg !1597
  %9 = load ptr, ptr %out, align 8, !dbg !1598
  %10 = load i32, ptr %start.addr, align 4, !dbg !1599
  %conv = zext i32 %10 to i64, !dbg !1599
  %11 = load ptr, ptr %strm.addr, align 8, !dbg !1600
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4, !dbg !1601
  %12 = load i64, ptr %avail_out, align 8, !dbg !1601
  %sub2 = sub i64 %conv, %12, !dbg !1602
  %idx.neg = sub i64 0, %sub2, !dbg !1603
  %add.ptr3 = getelementptr inbounds i8, ptr %9, i64 %idx.neg, !dbg !1603
  store ptr %add.ptr3, ptr %beg, align 8, !dbg !1604
  %13 = load ptr, ptr %out, align 8, !dbg !1605
  %14 = load ptr, ptr %strm.addr, align 8, !dbg !1606
  %avail_out4 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 4, !dbg !1607
  %15 = load i64, ptr %avail_out4, align 8, !dbg !1607
  %sub5 = sub i64 %15, 257, !dbg !1608
  %add.ptr6 = getelementptr inbounds i8, ptr %13, i64 %sub5, !dbg !1609
  store ptr %add.ptr6, ptr %end, align 8, !dbg !1610
  %16 = load ptr, ptr %state, align 8, !dbg !1611
  %wsize7 = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 9, !dbg !1612
  %17 = load i32, ptr %wsize7, align 4, !dbg !1612
  store i32 %17, ptr %wsize, align 4, !dbg !1613
  %18 = load ptr, ptr %state, align 8, !dbg !1614
  %whave8 = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 10, !dbg !1615
  %19 = load i32, ptr %whave8, align 8, !dbg !1615
  store i32 %19, ptr %whave, align 4, !dbg !1616
  %20 = load ptr, ptr %state, align 8, !dbg !1617
  %write9 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 11, !dbg !1618
  %21 = load i32, ptr %write9, align 4, !dbg !1618
  store i32 %21, ptr %write, align 4, !dbg !1619
  %22 = load ptr, ptr %state, align 8, !dbg !1620
  %window10 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 12, !dbg !1621
  %23 = load ptr, ptr %window10, align 8, !dbg !1621
  store ptr %23, ptr %window, align 8, !dbg !1622
  %24 = load ptr, ptr %state, align 8, !dbg !1623
  %hold11 = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 13, !dbg !1624
  %25 = load i64, ptr %hold11, align 8, !dbg !1624
  store i64 %25, ptr %hold, align 8, !dbg !1625
  %26 = load ptr, ptr %state, align 8, !dbg !1626
  %bits12 = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 14, !dbg !1627
  %27 = load i32, ptr %bits12, align 8, !dbg !1627
  store i32 %27, ptr %bits, align 4, !dbg !1628
  %28 = load ptr, ptr %state, align 8, !dbg !1629
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 18, !dbg !1630
  %29 = load ptr, ptr %lencode, align 8, !dbg !1630
  store ptr %29, ptr %lcode, align 8, !dbg !1631
  %30 = load ptr, ptr %state, align 8, !dbg !1632
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 19, !dbg !1633
  %31 = load ptr, ptr %distcode, align 8, !dbg !1633
  store ptr %31, ptr %dcode, align 8, !dbg !1634
  %32 = load ptr, ptr %state, align 8, !dbg !1635
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %32, i32 0, i32 20, !dbg !1636
  %33 = load i32, ptr %lenbits, align 8, !dbg !1636
  %shl = shl i32 1, %33, !dbg !1637
  %sub13 = sub i32 %shl, 1, !dbg !1638
  store i32 %sub13, ptr %lmask, align 4, !dbg !1639
  %34 = load ptr, ptr %state, align 8, !dbg !1640
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %34, i32 0, i32 21, !dbg !1641
  %35 = load i32, ptr %distbits, align 4, !dbg !1641
  %shl14 = shl i32 1, %35, !dbg !1642
  %sub15 = sub i32 %shl14, 1, !dbg !1643
  store i32 %sub15, ptr %dmask, align 4, !dbg !1644
  br label %do.body, !dbg !1645

do.body:                                          ; preds = %land.end, %entry
  %36 = load i32, ptr %bits, align 4, !dbg !1646
  %cmp = icmp ult i32 %36, 15, !dbg !1648
  br i1 %cmp, label %if.then, label %if.end, !dbg !1649

if.then:                                          ; preds = %do.body
  %37 = load ptr, ptr %in, align 8, !dbg !1650
  %incdec.ptr = getelementptr inbounds i8, ptr %37, i32 1, !dbg !1650
  store ptr %incdec.ptr, ptr %in, align 8, !dbg !1650
  %38 = load i8, ptr %37, align 1, !dbg !1652
  %conv17 = zext i8 %38 to i64, !dbg !1653
  %39 = load i32, ptr %bits, align 4, !dbg !1654
  %sh_prom = zext i32 %39 to i64, !dbg !1655
  %shl18 = shl i64 %conv17, %sh_prom, !dbg !1655
  %40 = load i64, ptr %hold, align 8, !dbg !1656
  %add = add i64 %40, %shl18, !dbg !1656
  store i64 %add, ptr %hold, align 8, !dbg !1656
  %41 = load i32, ptr %bits, align 4, !dbg !1657
  %add19 = add i32 %41, 8, !dbg !1657
  store i32 %add19, ptr %bits, align 4, !dbg !1657
  %42 = load ptr, ptr %in, align 8, !dbg !1658
  %incdec.ptr20 = getelementptr inbounds i8, ptr %42, i32 1, !dbg !1658
  store ptr %incdec.ptr20, ptr %in, align 8, !dbg !1658
  %43 = load i8, ptr %42, align 1, !dbg !1659
  %conv21 = zext i8 %43 to i64, !dbg !1660
  %44 = load i32, ptr %bits, align 4, !dbg !1661
  %sh_prom22 = zext i32 %44 to i64, !dbg !1662
  %shl23 = shl i64 %conv21, %sh_prom22, !dbg !1662
  %45 = load i64, ptr %hold, align 8, !dbg !1663
  %add24 = add i64 %45, %shl23, !dbg !1663
  store i64 %add24, ptr %hold, align 8, !dbg !1663
  %46 = load i32, ptr %bits, align 4, !dbg !1664
  %add25 = add i32 %46, 8, !dbg !1664
  store i32 %add25, ptr %bits, align 4, !dbg !1664
  br label %if.end, !dbg !1665

if.end:                                           ; preds = %if.then, %do.body
  %47 = load ptr, ptr %lcode, align 8, !dbg !1666
  %48 = load i64, ptr %hold, align 8, !dbg !1667
  %49 = load i32, ptr %lmask, align 4, !dbg !1668
  %conv26 = zext i32 %49 to i64, !dbg !1668
  %and = and i64 %48, %conv26, !dbg !1669
  %arrayidx = getelementptr inbounds %struct.code, ptr %47, i64 %and, !dbg !1666
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx, i64 4, i1 false), !dbg !1666
  br label %dolen, !dbg !1670

dolen:                                            ; preds = %if.then296, %if.end
  call void @llvm.dbg.label(metadata !1514), !dbg !1671
  %bits27 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1672
  %50 = load i8, ptr %bits27, align 1, !dbg !1672
  %conv28 = zext i8 %50 to i32, !dbg !1673
  store i32 %conv28, ptr %op, align 4, !dbg !1674
  %51 = load i32, ptr %op, align 4, !dbg !1675
  %52 = load i64, ptr %hold, align 8, !dbg !1676
  %sh_prom29 = zext i32 %51 to i64, !dbg !1676
  %shr = lshr i64 %52, %sh_prom29, !dbg !1676
  store i64 %shr, ptr %hold, align 8, !dbg !1676
  %53 = load i32, ptr %op, align 4, !dbg !1677
  %54 = load i32, ptr %bits, align 4, !dbg !1678
  %sub30 = sub i32 %54, %53, !dbg !1678
  store i32 %sub30, ptr %bits, align 4, !dbg !1678
  %op31 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1679
  %55 = load i8, ptr %op31, align 2, !dbg !1679
  %conv32 = zext i8 %55 to i32, !dbg !1680
  store i32 %conv32, ptr %op, align 4, !dbg !1681
  %56 = load i32, ptr %op, align 4, !dbg !1682
  %cmp33 = icmp eq i32 %56, 0, !dbg !1683
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !1684

if.then35:                                        ; preds = %dolen
  %val = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1685
  %57 = load i16, ptr %val, align 2, !dbg !1685
  %conv36 = trunc i16 %57 to i8, !dbg !1687
  %58 = load ptr, ptr %out, align 8, !dbg !1688
  %incdec.ptr37 = getelementptr inbounds i8, ptr %58, i32 1, !dbg !1688
  store ptr %incdec.ptr37, ptr %out, align 8, !dbg !1688
  store i8 %conv36, ptr %58, align 1, !dbg !1689
  br label %if.end314, !dbg !1690

if.else:                                          ; preds = %dolen
  %59 = load i32, ptr %op, align 4, !dbg !1691
  %and38 = and i32 %59, 16, !dbg !1692
  %tobool = icmp ne i32 %and38, 0, !dbg !1692
  br i1 %tobool, label %if.then39, label %if.else292, !dbg !1693

if.then39:                                        ; preds = %if.else
  %val40 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1694
  %60 = load i16, ptr %val40, align 2, !dbg !1694
  %conv41 = zext i16 %60 to i32, !dbg !1695
  store i32 %conv41, ptr %len, align 4, !dbg !1696
  %61 = load i32, ptr %op, align 4, !dbg !1697
  %and42 = and i32 %61, 15, !dbg !1697
  store i32 %and42, ptr %op, align 4, !dbg !1697
  %62 = load i32, ptr %op, align 4, !dbg !1698
  %tobool43 = icmp ne i32 %62, 0, !dbg !1698
  br i1 %tobool43, label %if.then44, label %if.end63, !dbg !1700

if.then44:                                        ; preds = %if.then39
  %63 = load i32, ptr %bits, align 4, !dbg !1701
  %64 = load i32, ptr %op, align 4, !dbg !1704
  %cmp45 = icmp ult i32 %63, %64, !dbg !1705
  br i1 %cmp45, label %if.then47, label %if.end54, !dbg !1706

if.then47:                                        ; preds = %if.then44
  %65 = load ptr, ptr %in, align 8, !dbg !1707
  %incdec.ptr48 = getelementptr inbounds i8, ptr %65, i32 1, !dbg !1707
  store ptr %incdec.ptr48, ptr %in, align 8, !dbg !1707
  %66 = load i8, ptr %65, align 1, !dbg !1709
  %conv49 = zext i8 %66 to i64, !dbg !1710
  %67 = load i32, ptr %bits, align 4, !dbg !1711
  %sh_prom50 = zext i32 %67 to i64, !dbg !1712
  %shl51 = shl i64 %conv49, %sh_prom50, !dbg !1712
  %68 = load i64, ptr %hold, align 8, !dbg !1713
  %add52 = add i64 %68, %shl51, !dbg !1713
  store i64 %add52, ptr %hold, align 8, !dbg !1713
  %69 = load i32, ptr %bits, align 4, !dbg !1714
  %add53 = add i32 %69, 8, !dbg !1714
  store i32 %add53, ptr %bits, align 4, !dbg !1714
  br label %if.end54, !dbg !1715

if.end54:                                         ; preds = %if.then47, %if.then44
  %70 = load i64, ptr %hold, align 8, !dbg !1716
  %conv55 = trunc i64 %70 to i32, !dbg !1717
  %71 = load i32, ptr %op, align 4, !dbg !1718
  %shl56 = shl i32 1, %71, !dbg !1719
  %sub57 = sub i32 %shl56, 1, !dbg !1720
  %and58 = and i32 %conv55, %sub57, !dbg !1721
  %72 = load i32, ptr %len, align 4, !dbg !1722
  %add59 = add i32 %72, %and58, !dbg !1722
  store i32 %add59, ptr %len, align 4, !dbg !1722
  %73 = load i32, ptr %op, align 4, !dbg !1723
  %74 = load i64, ptr %hold, align 8, !dbg !1724
  %sh_prom60 = zext i32 %73 to i64, !dbg !1724
  %shr61 = lshr i64 %74, %sh_prom60, !dbg !1724
  store i64 %shr61, ptr %hold, align 8, !dbg !1724
  %75 = load i32, ptr %op, align 4, !dbg !1725
  %76 = load i32, ptr %bits, align 4, !dbg !1726
  %sub62 = sub i32 %76, %75, !dbg !1726
  store i32 %sub62, ptr %bits, align 4, !dbg !1726
  br label %if.end63, !dbg !1727

if.end63:                                         ; preds = %if.end54, %if.then39
  %77 = load i32, ptr %bits, align 4, !dbg !1728
  %cmp64 = icmp ult i32 %77, 15, !dbg !1730
  br i1 %cmp64, label %if.then66, label %if.end79, !dbg !1731

if.then66:                                        ; preds = %if.end63
  %78 = load ptr, ptr %in, align 8, !dbg !1732
  %incdec.ptr67 = getelementptr inbounds i8, ptr %78, i32 1, !dbg !1732
  store ptr %incdec.ptr67, ptr %in, align 8, !dbg !1732
  %79 = load i8, ptr %78, align 1, !dbg !1734
  %conv68 = zext i8 %79 to i64, !dbg !1735
  %80 = load i32, ptr %bits, align 4, !dbg !1736
  %sh_prom69 = zext i32 %80 to i64, !dbg !1737
  %shl70 = shl i64 %conv68, %sh_prom69, !dbg !1737
  %81 = load i64, ptr %hold, align 8, !dbg !1738
  %add71 = add i64 %81, %shl70, !dbg !1738
  store i64 %add71, ptr %hold, align 8, !dbg !1738
  %82 = load i32, ptr %bits, align 4, !dbg !1739
  %add72 = add i32 %82, 8, !dbg !1739
  store i32 %add72, ptr %bits, align 4, !dbg !1739
  %83 = load ptr, ptr %in, align 8, !dbg !1740
  %incdec.ptr73 = getelementptr inbounds i8, ptr %83, i32 1, !dbg !1740
  store ptr %incdec.ptr73, ptr %in, align 8, !dbg !1740
  %84 = load i8, ptr %83, align 1, !dbg !1741
  %conv74 = zext i8 %84 to i64, !dbg !1742
  %85 = load i32, ptr %bits, align 4, !dbg !1743
  %sh_prom75 = zext i32 %85 to i64, !dbg !1744
  %shl76 = shl i64 %conv74, %sh_prom75, !dbg !1744
  %86 = load i64, ptr %hold, align 8, !dbg !1745
  %add77 = add i64 %86, %shl76, !dbg !1745
  store i64 %add77, ptr %hold, align 8, !dbg !1745
  %87 = load i32, ptr %bits, align 4, !dbg !1746
  %add78 = add i32 %87, 8, !dbg !1746
  store i32 %add78, ptr %bits, align 4, !dbg !1746
  br label %if.end79, !dbg !1747

if.end79:                                         ; preds = %if.then66, %if.end63
  %88 = load ptr, ptr %dcode, align 8, !dbg !1748
  %89 = load i64, ptr %hold, align 8, !dbg !1749
  %90 = load i32, ptr %dmask, align 4, !dbg !1750
  %conv80 = zext i32 %90 to i64, !dbg !1750
  %and81 = and i64 %89, %conv80, !dbg !1751
  %arrayidx82 = getelementptr inbounds %struct.code, ptr %88, i64 %and81, !dbg !1748
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx82, i64 4, i1 false), !dbg !1748
  br label %dodist, !dbg !1752

dodist:                                           ; preds = %if.then279, %if.end79
  call void @llvm.dbg.label(metadata !1516), !dbg !1753
  %bits83 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1754
  %91 = load i8, ptr %bits83, align 1, !dbg !1754
  %conv84 = zext i8 %91 to i32, !dbg !1755
  store i32 %conv84, ptr %op, align 4, !dbg !1756
  %92 = load i32, ptr %op, align 4, !dbg !1757
  %93 = load i64, ptr %hold, align 8, !dbg !1758
  %sh_prom85 = zext i32 %92 to i64, !dbg !1758
  %shr86 = lshr i64 %93, %sh_prom85, !dbg !1758
  store i64 %shr86, ptr %hold, align 8, !dbg !1758
  %94 = load i32, ptr %op, align 4, !dbg !1759
  %95 = load i32, ptr %bits, align 4, !dbg !1760
  %sub87 = sub i32 %95, %94, !dbg !1760
  store i32 %sub87, ptr %bits, align 4, !dbg !1760
  %op88 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1761
  %96 = load i8, ptr %op88, align 2, !dbg !1761
  %conv89 = zext i8 %96 to i32, !dbg !1762
  store i32 %conv89, ptr %op, align 4, !dbg !1763
  %97 = load i32, ptr %op, align 4, !dbg !1764
  %and90 = and i32 %97, 16, !dbg !1765
  %tobool91 = icmp ne i32 %and90, 0, !dbg !1765
  br i1 %tobool91, label %if.then92, label %if.else275, !dbg !1766

if.then92:                                        ; preds = %dodist
  %val93 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1767
  %98 = load i16, ptr %val93, align 2, !dbg !1767
  %conv94 = zext i16 %98 to i32, !dbg !1768
  store i32 %conv94, ptr %dist, align 4, !dbg !1769
  %99 = load i32, ptr %op, align 4, !dbg !1770
  %and95 = and i32 %99, 15, !dbg !1770
  store i32 %and95, ptr %op, align 4, !dbg !1770
  %100 = load i32, ptr %bits, align 4, !dbg !1771
  %101 = load i32, ptr %op, align 4, !dbg !1773
  %cmp96 = icmp ult i32 %100, %101, !dbg !1774
  br i1 %cmp96, label %if.then98, label %if.end115, !dbg !1775

if.then98:                                        ; preds = %if.then92
  %102 = load ptr, ptr %in, align 8, !dbg !1776
  %incdec.ptr99 = getelementptr inbounds i8, ptr %102, i32 1, !dbg !1776
  store ptr %incdec.ptr99, ptr %in, align 8, !dbg !1776
  %103 = load i8, ptr %102, align 1, !dbg !1778
  %conv100 = zext i8 %103 to i64, !dbg !1779
  %104 = load i32, ptr %bits, align 4, !dbg !1780
  %sh_prom101 = zext i32 %104 to i64, !dbg !1781
  %shl102 = shl i64 %conv100, %sh_prom101, !dbg !1781
  %105 = load i64, ptr %hold, align 8, !dbg !1782
  %add103 = add i64 %105, %shl102, !dbg !1782
  store i64 %add103, ptr %hold, align 8, !dbg !1782
  %106 = load i32, ptr %bits, align 4, !dbg !1783
  %add104 = add i32 %106, 8, !dbg !1783
  store i32 %add104, ptr %bits, align 4, !dbg !1783
  %107 = load i32, ptr %bits, align 4, !dbg !1784
  %108 = load i32, ptr %op, align 4, !dbg !1786
  %cmp105 = icmp ult i32 %107, %108, !dbg !1787
  br i1 %cmp105, label %if.then107, label %if.end114, !dbg !1788

if.then107:                                       ; preds = %if.then98
  %109 = load ptr, ptr %in, align 8, !dbg !1789
  %incdec.ptr108 = getelementptr inbounds i8, ptr %109, i32 1, !dbg !1789
  store ptr %incdec.ptr108, ptr %in, align 8, !dbg !1789
  %110 = load i8, ptr %109, align 1, !dbg !1791
  %conv109 = zext i8 %110 to i64, !dbg !1792
  %111 = load i32, ptr %bits, align 4, !dbg !1793
  %sh_prom110 = zext i32 %111 to i64, !dbg !1794
  %shl111 = shl i64 %conv109, %sh_prom110, !dbg !1794
  %112 = load i64, ptr %hold, align 8, !dbg !1795
  %add112 = add i64 %112, %shl111, !dbg !1795
  store i64 %add112, ptr %hold, align 8, !dbg !1795
  %113 = load i32, ptr %bits, align 4, !dbg !1796
  %add113 = add i32 %113, 8, !dbg !1796
  store i32 %add113, ptr %bits, align 4, !dbg !1796
  br label %if.end114, !dbg !1797

if.end114:                                        ; preds = %if.then107, %if.then98
  br label %if.end115, !dbg !1798

if.end115:                                        ; preds = %if.end114, %if.then92
  %114 = load i64, ptr %hold, align 8, !dbg !1799
  %conv116 = trunc i64 %114 to i32, !dbg !1800
  %115 = load i32, ptr %op, align 4, !dbg !1801
  %shl117 = shl i32 1, %115, !dbg !1802
  %sub118 = sub i32 %shl117, 1, !dbg !1803
  %and119 = and i32 %conv116, %sub118, !dbg !1804
  %116 = load i32, ptr %dist, align 4, !dbg !1805
  %add120 = add i32 %116, %and119, !dbg !1805
  store i32 %add120, ptr %dist, align 4, !dbg !1805
  %117 = load i32, ptr %op, align 4, !dbg !1806
  %118 = load i64, ptr %hold, align 8, !dbg !1807
  %sh_prom121 = zext i32 %117 to i64, !dbg !1807
  %shr122 = lshr i64 %118, %sh_prom121, !dbg !1807
  store i64 %shr122, ptr %hold, align 8, !dbg !1807
  %119 = load i32, ptr %op, align 4, !dbg !1808
  %120 = load i32, ptr %bits, align 4, !dbg !1809
  %sub123 = sub i32 %120, %119, !dbg !1809
  store i32 %sub123, ptr %bits, align 4, !dbg !1809
  %121 = load ptr, ptr %out, align 8, !dbg !1810
  %122 = load ptr, ptr %beg, align 8, !dbg !1811
  %sub.ptr.lhs.cast = ptrtoint ptr %121 to i64, !dbg !1812
  %sub.ptr.rhs.cast = ptrtoint ptr %122 to i64, !dbg !1812
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1812
  %conv124 = trunc i64 %sub.ptr.sub to i32, !dbg !1813
  store i32 %conv124, ptr %op, align 4, !dbg !1814
  %123 = load i32, ptr %dist, align 4, !dbg !1815
  %124 = load i32, ptr %op, align 4, !dbg !1816
  %cmp125 = icmp ugt i32 %123, %124, !dbg !1817
  br i1 %cmp125, label %if.then127, label %if.else227, !dbg !1818

if.then127:                                       ; preds = %if.end115
  %125 = load i32, ptr %dist, align 4, !dbg !1819
  %126 = load i32, ptr %op, align 4, !dbg !1821
  %sub128 = sub i32 %125, %126, !dbg !1822
  store i32 %sub128, ptr %op, align 4, !dbg !1823
  %127 = load i32, ptr %op, align 4, !dbg !1824
  %128 = load i32, ptr %whave, align 4, !dbg !1826
  %cmp129 = icmp ugt i32 %127, %128, !dbg !1827
  br i1 %cmp129, label %if.then131, label %if.end132, !dbg !1828

if.then131:                                       ; preds = %if.then127
  %129 = load ptr, ptr %strm.addr, align 8, !dbg !1829
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %129, i32 0, i32 6, !dbg !1831
  store ptr @.str, ptr %msg, align 8, !dbg !1832
  %130 = load ptr, ptr %state, align 8, !dbg !1833
  %mode = getelementptr inbounds %struct.inflate_state, ptr %130, i32 0, i32 0, !dbg !1834
  store i32 27, ptr %mode, align 8, !dbg !1835
  br label %do.end320, !dbg !1836

if.end132:                                        ; preds = %if.then127
  %131 = load ptr, ptr %window, align 8, !dbg !1837
  store ptr %131, ptr %from, align 8, !dbg !1838
  %132 = load i32, ptr %write, align 4, !dbg !1839
  %cmp133 = icmp eq i32 %132, 0, !dbg !1841
  br i1 %cmp133, label %if.then135, label %if.else150, !dbg !1842

if.then135:                                       ; preds = %if.end132
  %133 = load i32, ptr %wsize, align 4, !dbg !1843
  %134 = load i32, ptr %op, align 4, !dbg !1845
  %sub136 = sub i32 %133, %134, !dbg !1846
  %135 = load ptr, ptr %from, align 8, !dbg !1847
  %idx.ext = zext i32 %sub136 to i64, !dbg !1847
  %add.ptr137 = getelementptr inbounds i8, ptr %135, i64 %idx.ext, !dbg !1847
  store ptr %add.ptr137, ptr %from, align 8, !dbg !1847
  %136 = load i32, ptr %op, align 4, !dbg !1848
  %137 = load i32, ptr %len, align 4, !dbg !1850
  %cmp138 = icmp ult i32 %136, %137, !dbg !1851
  br i1 %cmp138, label %if.then140, label %if.end149, !dbg !1852

if.then140:                                       ; preds = %if.then135
  %138 = load i32, ptr %op, align 4, !dbg !1853
  %139 = load i32, ptr %len, align 4, !dbg !1855
  %sub141 = sub i32 %139, %138, !dbg !1855
  store i32 %sub141, ptr %len, align 4, !dbg !1855
  br label %do.body142, !dbg !1856

do.body142:                                       ; preds = %do.cond, %if.then140
  %140 = load ptr, ptr %from, align 8, !dbg !1857
  %incdec.ptr143 = getelementptr inbounds i8, ptr %140, i32 1, !dbg !1857
  store ptr %incdec.ptr143, ptr %from, align 8, !dbg !1857
  %141 = load i8, ptr %140, align 1, !dbg !1859
  %142 = load ptr, ptr %out, align 8, !dbg !1860
  %incdec.ptr144 = getelementptr inbounds i8, ptr %142, i32 1, !dbg !1860
  store ptr %incdec.ptr144, ptr %out, align 8, !dbg !1860
  store i8 %141, ptr %142, align 1, !dbg !1861
  br label %do.cond, !dbg !1862

do.cond:                                          ; preds = %do.body142
  %143 = load i32, ptr %op, align 4, !dbg !1863
  %dec = add i32 %143, -1, !dbg !1863
  store i32 %dec, ptr %op, align 4, !dbg !1863
  %tobool145 = icmp ne i32 %dec, 0, !dbg !1862
  br i1 %tobool145, label %do.body142, label %do.end, !dbg !1862, !llvm.loop !1864

do.end:                                           ; preds = %do.cond
  %144 = load ptr, ptr %out, align 8, !dbg !1866
  %145 = load i32, ptr %dist, align 4, !dbg !1867
  %idx.ext146 = zext i32 %145 to i64, !dbg !1868
  %idx.neg147 = sub i64 0, %idx.ext146, !dbg !1868
  %add.ptr148 = getelementptr inbounds i8, ptr %144, i64 %idx.neg147, !dbg !1868
  store ptr %add.ptr148, ptr %from, align 8, !dbg !1869
  br label %if.end149, !dbg !1870

if.end149:                                        ; preds = %do.end, %if.then135
  br label %if.end206, !dbg !1871

if.else150:                                       ; preds = %if.end132
  %146 = load i32, ptr %write, align 4, !dbg !1872
  %147 = load i32, ptr %op, align 4, !dbg !1874
  %cmp151 = icmp ult i32 %146, %147, !dbg !1875
  br i1 %cmp151, label %if.then153, label %if.else186, !dbg !1876

if.then153:                                       ; preds = %if.else150
  %148 = load i32, ptr %wsize, align 4, !dbg !1877
  %149 = load i32, ptr %write, align 4, !dbg !1879
  %add154 = add i32 %148, %149, !dbg !1880
  %150 = load i32, ptr %op, align 4, !dbg !1881
  %sub155 = sub i32 %add154, %150, !dbg !1882
  %151 = load ptr, ptr %from, align 8, !dbg !1883
  %idx.ext156 = zext i32 %sub155 to i64, !dbg !1883
  %add.ptr157 = getelementptr inbounds i8, ptr %151, i64 %idx.ext156, !dbg !1883
  store ptr %add.ptr157, ptr %from, align 8, !dbg !1883
  %152 = load i32, ptr %write, align 4, !dbg !1884
  %153 = load i32, ptr %op, align 4, !dbg !1885
  %sub158 = sub i32 %153, %152, !dbg !1885
  store i32 %sub158, ptr %op, align 4, !dbg !1885
  %154 = load i32, ptr %op, align 4, !dbg !1886
  %155 = load i32, ptr %len, align 4, !dbg !1888
  %cmp159 = icmp ult i32 %154, %155, !dbg !1889
  br i1 %cmp159, label %if.then161, label %if.end185, !dbg !1890

if.then161:                                       ; preds = %if.then153
  %156 = load i32, ptr %op, align 4, !dbg !1891
  %157 = load i32, ptr %len, align 4, !dbg !1893
  %sub162 = sub i32 %157, %156, !dbg !1893
  store i32 %sub162, ptr %len, align 4, !dbg !1893
  br label %do.body163, !dbg !1894

do.body163:                                       ; preds = %do.cond166, %if.then161
  %158 = load ptr, ptr %from, align 8, !dbg !1895
  %incdec.ptr164 = getelementptr inbounds i8, ptr %158, i32 1, !dbg !1895
  store ptr %incdec.ptr164, ptr %from, align 8, !dbg !1895
  %159 = load i8, ptr %158, align 1, !dbg !1897
  %160 = load ptr, ptr %out, align 8, !dbg !1898
  %incdec.ptr165 = getelementptr inbounds i8, ptr %160, i32 1, !dbg !1898
  store ptr %incdec.ptr165, ptr %out, align 8, !dbg !1898
  store i8 %159, ptr %160, align 1, !dbg !1899
  br label %do.cond166, !dbg !1900

do.cond166:                                       ; preds = %do.body163
  %161 = load i32, ptr %op, align 4, !dbg !1901
  %dec167 = add i32 %161, -1, !dbg !1901
  store i32 %dec167, ptr %op, align 4, !dbg !1901
  %tobool168 = icmp ne i32 %dec167, 0, !dbg !1900
  br i1 %tobool168, label %do.body163, label %do.end169, !dbg !1900, !llvm.loop !1902

do.end169:                                        ; preds = %do.cond166
  %162 = load ptr, ptr %window, align 8, !dbg !1904
  store ptr %162, ptr %from, align 8, !dbg !1905
  %163 = load i32, ptr %write, align 4, !dbg !1906
  %164 = load i32, ptr %len, align 4, !dbg !1908
  %cmp170 = icmp ult i32 %163, %164, !dbg !1909
  br i1 %cmp170, label %if.then172, label %if.end184, !dbg !1910

if.then172:                                       ; preds = %do.end169
  %165 = load i32, ptr %write, align 4, !dbg !1911
  store i32 %165, ptr %op, align 4, !dbg !1913
  %166 = load i32, ptr %op, align 4, !dbg !1914
  %167 = load i32, ptr %len, align 4, !dbg !1915
  %sub173 = sub i32 %167, %166, !dbg !1915
  store i32 %sub173, ptr %len, align 4, !dbg !1915
  br label %do.body174, !dbg !1916

do.body174:                                       ; preds = %do.cond177, %if.then172
  %168 = load ptr, ptr %from, align 8, !dbg !1917
  %incdec.ptr175 = getelementptr inbounds i8, ptr %168, i32 1, !dbg !1917
  store ptr %incdec.ptr175, ptr %from, align 8, !dbg !1917
  %169 = load i8, ptr %168, align 1, !dbg !1919
  %170 = load ptr, ptr %out, align 8, !dbg !1920
  %incdec.ptr176 = getelementptr inbounds i8, ptr %170, i32 1, !dbg !1920
  store ptr %incdec.ptr176, ptr %out, align 8, !dbg !1920
  store i8 %169, ptr %170, align 1, !dbg !1921
  br label %do.cond177, !dbg !1922

do.cond177:                                       ; preds = %do.body174
  %171 = load i32, ptr %op, align 4, !dbg !1923
  %dec178 = add i32 %171, -1, !dbg !1923
  store i32 %dec178, ptr %op, align 4, !dbg !1923
  %tobool179 = icmp ne i32 %dec178, 0, !dbg !1922
  br i1 %tobool179, label %do.body174, label %do.end180, !dbg !1922, !llvm.loop !1924

do.end180:                                        ; preds = %do.cond177
  %172 = load ptr, ptr %out, align 8, !dbg !1926
  %173 = load i32, ptr %dist, align 4, !dbg !1927
  %idx.ext181 = zext i32 %173 to i64, !dbg !1928
  %idx.neg182 = sub i64 0, %idx.ext181, !dbg !1928
  %add.ptr183 = getelementptr inbounds i8, ptr %172, i64 %idx.neg182, !dbg !1928
  store ptr %add.ptr183, ptr %from, align 8, !dbg !1929
  br label %if.end184, !dbg !1930

if.end184:                                        ; preds = %do.end180, %do.end169
  br label %if.end185, !dbg !1931

if.end185:                                        ; preds = %if.end184, %if.then153
  br label %if.end205, !dbg !1932

if.else186:                                       ; preds = %if.else150
  %174 = load i32, ptr %write, align 4, !dbg !1933
  %175 = load i32, ptr %op, align 4, !dbg !1935
  %sub187 = sub i32 %174, %175, !dbg !1936
  %176 = load ptr, ptr %from, align 8, !dbg !1937
  %idx.ext188 = zext i32 %sub187 to i64, !dbg !1937
  %add.ptr189 = getelementptr inbounds i8, ptr %176, i64 %idx.ext188, !dbg !1937
  store ptr %add.ptr189, ptr %from, align 8, !dbg !1937
  %177 = load i32, ptr %op, align 4, !dbg !1938
  %178 = load i32, ptr %len, align 4, !dbg !1940
  %cmp190 = icmp ult i32 %177, %178, !dbg !1941
  br i1 %cmp190, label %if.then192, label %if.end204, !dbg !1942

if.then192:                                       ; preds = %if.else186
  %179 = load i32, ptr %op, align 4, !dbg !1943
  %180 = load i32, ptr %len, align 4, !dbg !1945
  %sub193 = sub i32 %180, %179, !dbg !1945
  store i32 %sub193, ptr %len, align 4, !dbg !1945
  br label %do.body194, !dbg !1946

do.body194:                                       ; preds = %do.cond197, %if.then192
  %181 = load ptr, ptr %from, align 8, !dbg !1947
  %incdec.ptr195 = getelementptr inbounds i8, ptr %181, i32 1, !dbg !1947
  store ptr %incdec.ptr195, ptr %from, align 8, !dbg !1947
  %182 = load i8, ptr %181, align 1, !dbg !1949
  %183 = load ptr, ptr %out, align 8, !dbg !1950
  %incdec.ptr196 = getelementptr inbounds i8, ptr %183, i32 1, !dbg !1950
  store ptr %incdec.ptr196, ptr %out, align 8, !dbg !1950
  store i8 %182, ptr %183, align 1, !dbg !1951
  br label %do.cond197, !dbg !1952

do.cond197:                                       ; preds = %do.body194
  %184 = load i32, ptr %op, align 4, !dbg !1953
  %dec198 = add i32 %184, -1, !dbg !1953
  store i32 %dec198, ptr %op, align 4, !dbg !1953
  %tobool199 = icmp ne i32 %dec198, 0, !dbg !1952
  br i1 %tobool199, label %do.body194, label %do.end200, !dbg !1952, !llvm.loop !1954

do.end200:                                        ; preds = %do.cond197
  %185 = load ptr, ptr %out, align 8, !dbg !1956
  %186 = load i32, ptr %dist, align 4, !dbg !1957
  %idx.ext201 = zext i32 %186 to i64, !dbg !1958
  %idx.neg202 = sub i64 0, %idx.ext201, !dbg !1958
  %add.ptr203 = getelementptr inbounds i8, ptr %185, i64 %idx.neg202, !dbg !1958
  store ptr %add.ptr203, ptr %from, align 8, !dbg !1959
  br label %if.end204, !dbg !1960

if.end204:                                        ; preds = %do.end200, %if.else186
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.end185
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end149
  br label %while.cond, !dbg !1961

while.cond:                                       ; preds = %while.body, %if.end206
  %187 = load i32, ptr %len, align 4, !dbg !1962
  %cmp207 = icmp ugt i32 %187, 2, !dbg !1963
  br i1 %cmp207, label %while.body, label %while.end, !dbg !1961

while.body:                                       ; preds = %while.cond
  %188 = load ptr, ptr %from, align 8, !dbg !1964
  %incdec.ptr209 = getelementptr inbounds i8, ptr %188, i32 1, !dbg !1964
  store ptr %incdec.ptr209, ptr %from, align 8, !dbg !1964
  %189 = load i8, ptr %188, align 1, !dbg !1966
  %190 = load ptr, ptr %out, align 8, !dbg !1967
  %incdec.ptr210 = getelementptr inbounds i8, ptr %190, i32 1, !dbg !1967
  store ptr %incdec.ptr210, ptr %out, align 8, !dbg !1967
  store i8 %189, ptr %190, align 1, !dbg !1968
  %191 = load ptr, ptr %from, align 8, !dbg !1969
  %incdec.ptr211 = getelementptr inbounds i8, ptr %191, i32 1, !dbg !1969
  store ptr %incdec.ptr211, ptr %from, align 8, !dbg !1969
  %192 = load i8, ptr %191, align 1, !dbg !1970
  %193 = load ptr, ptr %out, align 8, !dbg !1971
  %incdec.ptr212 = getelementptr inbounds i8, ptr %193, i32 1, !dbg !1971
  store ptr %incdec.ptr212, ptr %out, align 8, !dbg !1971
  store i8 %192, ptr %193, align 1, !dbg !1972
  %194 = load ptr, ptr %from, align 8, !dbg !1973
  %incdec.ptr213 = getelementptr inbounds i8, ptr %194, i32 1, !dbg !1973
  store ptr %incdec.ptr213, ptr %from, align 8, !dbg !1973
  %195 = load i8, ptr %194, align 1, !dbg !1974
  %196 = load ptr, ptr %out, align 8, !dbg !1975
  %incdec.ptr214 = getelementptr inbounds i8, ptr %196, i32 1, !dbg !1975
  store ptr %incdec.ptr214, ptr %out, align 8, !dbg !1975
  store i8 %195, ptr %196, align 1, !dbg !1976
  %197 = load i32, ptr %len, align 4, !dbg !1977
  %sub215 = sub i32 %197, 3, !dbg !1977
  store i32 %sub215, ptr %len, align 4, !dbg !1977
  br label %while.cond, !dbg !1961, !llvm.loop !1978

while.end:                                        ; preds = %while.cond
  %198 = load i32, ptr %len, align 4, !dbg !1980
  %tobool216 = icmp ne i32 %198, 0, !dbg !1980
  br i1 %tobool216, label %if.then217, label %if.end226, !dbg !1982

if.then217:                                       ; preds = %while.end
  %199 = load ptr, ptr %from, align 8, !dbg !1983
  %incdec.ptr218 = getelementptr inbounds i8, ptr %199, i32 1, !dbg !1983
  store ptr %incdec.ptr218, ptr %from, align 8, !dbg !1983
  %200 = load i8, ptr %199, align 1, !dbg !1985
  %201 = load ptr, ptr %out, align 8, !dbg !1986
  %incdec.ptr219 = getelementptr inbounds i8, ptr %201, i32 1, !dbg !1986
  store ptr %incdec.ptr219, ptr %out, align 8, !dbg !1986
  store i8 %200, ptr %201, align 1, !dbg !1987
  %202 = load i32, ptr %len, align 4, !dbg !1988
  %cmp220 = icmp ugt i32 %202, 1, !dbg !1990
  br i1 %cmp220, label %if.then222, label %if.end225, !dbg !1991

if.then222:                                       ; preds = %if.then217
  %203 = load ptr, ptr %from, align 8, !dbg !1992
  %incdec.ptr223 = getelementptr inbounds i8, ptr %203, i32 1, !dbg !1992
  store ptr %incdec.ptr223, ptr %from, align 8, !dbg !1992
  %204 = load i8, ptr %203, align 1, !dbg !1993
  %205 = load ptr, ptr %out, align 8, !dbg !1994
  %incdec.ptr224 = getelementptr inbounds i8, ptr %205, i32 1, !dbg !1994
  store ptr %incdec.ptr224, ptr %out, align 8, !dbg !1994
  store i8 %204, ptr %205, align 1, !dbg !1995
  br label %if.end225, !dbg !1996

if.end225:                                        ; preds = %if.then222, %if.then217
  br label %if.end226, !dbg !1997

if.end226:                                        ; preds = %if.end225, %while.end
  br label %if.end274, !dbg !1998

if.else227:                                       ; preds = %if.end115
  call void @llvm.lifetime.start.p0(i64 8, ptr %sout) #9, !dbg !1999
  call void @llvm.dbg.declare(metadata ptr %sout, metadata !1520, metadata !DIExpression()), !dbg !2000
  call void @llvm.lifetime.start.p0(i64 8, ptr %loops) #9, !dbg !2001
  call void @llvm.dbg.declare(metadata ptr %loops, metadata !1525, metadata !DIExpression()), !dbg !2002
  %206 = load ptr, ptr %out, align 8, !dbg !2003
  %207 = load i32, ptr %dist, align 4, !dbg !2004
  %idx.ext228 = zext i32 %207 to i64, !dbg !2005
  %idx.neg229 = sub i64 0, %idx.ext228, !dbg !2005
  %add.ptr230 = getelementptr inbounds i8, ptr %206, i64 %idx.neg229, !dbg !2005
  store ptr %add.ptr230, ptr %from, align 8, !dbg !2006
  %208 = load ptr, ptr %out, align 8, !dbg !2007
  %add.ptr231 = getelementptr inbounds i8, ptr %208, i64 -1, !dbg !2009
  %209 = ptrtoint ptr %add.ptr231 to i64, !dbg !2010
  %and232 = and i64 %209, 1, !dbg !2011
  %tobool233 = icmp ne i64 %and232, 0, !dbg !2011
  br i1 %tobool233, label %if.end238, label %if.then234, !dbg !2012

if.then234:                                       ; preds = %if.else227
  %210 = load ptr, ptr %from, align 8, !dbg !2013
  %incdec.ptr235 = getelementptr inbounds i8, ptr %210, i32 1, !dbg !2013
  store ptr %incdec.ptr235, ptr %from, align 8, !dbg !2013
  %211 = load i8, ptr %210, align 1, !dbg !2015
  %212 = load ptr, ptr %out, align 8, !dbg !2016
  %incdec.ptr236 = getelementptr inbounds i8, ptr %212, i32 1, !dbg !2016
  store ptr %incdec.ptr236, ptr %out, align 8, !dbg !2016
  store i8 %211, ptr %212, align 1, !dbg !2017
  %213 = load i32, ptr %len, align 4, !dbg !2018
  %dec237 = add i32 %213, -1, !dbg !2018
  store i32 %dec237, ptr %len, align 4, !dbg !2018
  br label %if.end238, !dbg !2019

if.end238:                                        ; preds = %if.then234, %if.else227
  %214 = load ptr, ptr %out, align 8, !dbg !2020
  store ptr %214, ptr %sout, align 8, !dbg !2021
  %215 = load i32, ptr %dist, align 4, !dbg !2022
  %cmp239 = icmp ugt i32 %215, 2, !dbg !2023
  br i1 %cmp239, label %if.then241, label %if.else251, !dbg !2024

if.then241:                                       ; preds = %if.end238
  call void @llvm.lifetime.start.p0(i64 8, ptr %sfrom) #9, !dbg !2025
  call void @llvm.dbg.declare(metadata ptr %sfrom, metadata !1526, metadata !DIExpression()), !dbg !2026
  %216 = load ptr, ptr %from, align 8, !dbg !2027
  store ptr %216, ptr %sfrom, align 8, !dbg !2028
  %217 = load i32, ptr %len, align 4, !dbg !2029
  %shr242 = lshr i32 %217, 1, !dbg !2030
  %conv243 = zext i32 %shr242 to i64, !dbg !2029
  store i64 %conv243, ptr %loops, align 8, !dbg !2031
  br label %do.body244, !dbg !2032

do.body244:                                       ; preds = %do.cond247, %if.then241
  %218 = load ptr, ptr %sfrom, align 8, !dbg !2033
  %incdec.ptr245 = getelementptr inbounds i16, ptr %218, i32 1, !dbg !2033
  store ptr %incdec.ptr245, ptr %sfrom, align 8, !dbg !2033
  %219 = load i16, ptr %218, align 2, !dbg !2036
  %220 = load ptr, ptr %sout, align 8, !dbg !2037
  %incdec.ptr246 = getelementptr inbounds i16, ptr %220, i32 1, !dbg !2037
  store ptr %incdec.ptr246, ptr %sout, align 8, !dbg !2037
  store i16 %219, ptr %220, align 2, !dbg !2038
  br label %do.cond247, !dbg !2039

do.cond247:                                       ; preds = %do.body244
  %221 = load i64, ptr %loops, align 8, !dbg !2040
  %dec248 = add i64 %221, -1, !dbg !2040
  store i64 %dec248, ptr %loops, align 8, !dbg !2040
  %tobool249 = icmp ne i64 %dec248, 0, !dbg !2039
  br i1 %tobool249, label %do.body244, label %do.end250, !dbg !2039, !llvm.loop !2041

do.end250:                                        ; preds = %do.cond247
  %222 = load ptr, ptr %sout, align 8, !dbg !2043
  store ptr %222, ptr %out, align 8, !dbg !2044
  %223 = load ptr, ptr %sfrom, align 8, !dbg !2045
  store ptr %223, ptr %from, align 8, !dbg !2046
  call void @llvm.lifetime.end.p0(i64 8, ptr %sfrom) #9, !dbg !2047
  br label %if.end267, !dbg !2048

if.else251:                                       ; preds = %if.end238
  call void @llvm.lifetime.start.p0(i64 2, ptr %pat16) #9, !dbg !2049
  call void @llvm.dbg.declare(metadata ptr %pat16, metadata !1529, metadata !DIExpression()), !dbg !2050
  %224 = load ptr, ptr %sout, align 8, !dbg !2051
  %add.ptr252 = getelementptr inbounds i16, ptr %224, i64 -1, !dbg !2052
  %225 = load i16, ptr %add.ptr252, align 2, !dbg !2053
  store i16 %225, ptr %pat16, align 2, !dbg !2054
  %226 = load i32, ptr %dist, align 4, !dbg !2055
  %cmp253 = icmp eq i32 %226, 1, !dbg !2056
  br i1 %cmp253, label %if.then255, label %if.end258, !dbg !2057

if.then255:                                       ; preds = %if.else251
  call void @llvm.lifetime.start.p0(i64 2, ptr %mm) #9, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !1531, metadata !DIExpression()), !dbg !2059
  %227 = load i16, ptr %pat16, align 2, !dbg !2060
  store i16 %227, ptr %mm, align 2, !dbg !2061
  %arrayidx256 = getelementptr inbounds [2 x i8], ptr %mm, i64 0, i64 1, !dbg !2062
  %228 = load i8, ptr %arrayidx256, align 1, !dbg !2062
  %arrayidx257 = getelementptr inbounds [2 x i8], ptr %mm, i64 0, i64 0, !dbg !2063
  store i8 %228, ptr %arrayidx257, align 2, !dbg !2064
  %229 = load i16, ptr %mm, align 2, !dbg !2065
  store i16 %229, ptr %pat16, align 2, !dbg !2066
  call void @llvm.lifetime.end.p0(i64 2, ptr %mm) #9, !dbg !2067
  br label %if.end258, !dbg !2068

if.end258:                                        ; preds = %if.then255, %if.else251
  %230 = load i32, ptr %len, align 4, !dbg !2069
  %shr259 = lshr i32 %230, 1, !dbg !2070
  %conv260 = zext i32 %shr259 to i64, !dbg !2069
  store i64 %conv260, ptr %loops, align 8, !dbg !2071
  br label %do.body261, !dbg !2072

do.body261:                                       ; preds = %do.cond263, %if.end258
  %231 = load i16, ptr %pat16, align 2, !dbg !2073
  %232 = load ptr, ptr %sout, align 8, !dbg !2074
  %incdec.ptr262 = getelementptr inbounds i16, ptr %232, i32 1, !dbg !2074
  store ptr %incdec.ptr262, ptr %sout, align 8, !dbg !2074
  store i16 %231, ptr %232, align 2, !dbg !2075
  br label %do.cond263, !dbg !2076

do.cond263:                                       ; preds = %do.body261
  %233 = load i64, ptr %loops, align 8, !dbg !2077
  %dec264 = add i64 %233, -1, !dbg !2077
  store i64 %dec264, ptr %loops, align 8, !dbg !2077
  %tobool265 = icmp ne i64 %dec264, 0, !dbg !2076
  br i1 %tobool265, label %do.body261, label %do.end266, !dbg !2076, !llvm.loop !2078

do.end266:                                        ; preds = %do.cond263
  %234 = load ptr, ptr %sout, align 8, !dbg !2080
  store ptr %234, ptr %out, align 8, !dbg !2081
  call void @llvm.lifetime.end.p0(i64 2, ptr %pat16) #9, !dbg !2082
  br label %if.end267

if.end267:                                        ; preds = %do.end266, %do.end250
  %235 = load i32, ptr %len, align 4, !dbg !2083
  %and268 = and i32 %235, 1, !dbg !2085
  %tobool269 = icmp ne i32 %and268, 0, !dbg !2085
  br i1 %tobool269, label %if.then270, label %if.end273, !dbg !2086

if.then270:                                       ; preds = %if.end267
  %236 = load ptr, ptr %from, align 8, !dbg !2087
  %incdec.ptr271 = getelementptr inbounds i8, ptr %236, i32 1, !dbg !2087
  store ptr %incdec.ptr271, ptr %from, align 8, !dbg !2087
  %237 = load i8, ptr %236, align 1, !dbg !2088
  %238 = load ptr, ptr %out, align 8, !dbg !2089
  %incdec.ptr272 = getelementptr inbounds i8, ptr %238, i32 1, !dbg !2089
  store ptr %incdec.ptr272, ptr %out, align 8, !dbg !2089
  store i8 %237, ptr %238, align 1, !dbg !2090
  br label %if.end273, !dbg !2091

if.end273:                                        ; preds = %if.then270, %if.end267
  call void @llvm.lifetime.end.p0(i64 8, ptr %loops) #9, !dbg !2092
  call void @llvm.lifetime.end.p0(i64 8, ptr %sout) #9, !dbg !2092
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.end226
  br label %if.end291, !dbg !2093

if.else275:                                       ; preds = %dodist
  %239 = load i32, ptr %op, align 4, !dbg !2094
  %and276 = and i32 %239, 64, !dbg !2096
  %cmp277 = icmp eq i32 %and276, 0, !dbg !2097
  br i1 %cmp277, label %if.then279, label %if.else288, !dbg !2098

if.then279:                                       ; preds = %if.else275
  %240 = load ptr, ptr %dcode, align 8, !dbg !2099
  %val280 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !2101
  %241 = load i16, ptr %val280, align 2, !dbg !2101
  %conv281 = zext i16 %241 to i64, !dbg !2102
  %242 = load i64, ptr %hold, align 8, !dbg !2103
  %243 = load i32, ptr %op, align 4, !dbg !2104
  %shl282 = shl i32 1, %243, !dbg !2105
  %sub283 = sub i32 %shl282, 1, !dbg !2106
  %conv284 = zext i32 %sub283 to i64, !dbg !2107
  %and285 = and i64 %242, %conv284, !dbg !2108
  %add286 = add i64 %conv281, %and285, !dbg !2109
  %arrayidx287 = getelementptr inbounds %struct.code, ptr %240, i64 %add286, !dbg !2099
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx287, i64 4, i1 false), !dbg !2099
  br label %dodist, !dbg !2110

if.else288:                                       ; preds = %if.else275
  %244 = load ptr, ptr %strm.addr, align 8, !dbg !2111
  %msg289 = getelementptr inbounds %struct.z_stream_s, ptr %244, i32 0, i32 6, !dbg !2113
  store ptr @.str.1, ptr %msg289, align 8, !dbg !2114
  %245 = load ptr, ptr %state, align 8, !dbg !2115
  %mode290 = getelementptr inbounds %struct.inflate_state, ptr %245, i32 0, i32 0, !dbg !2116
  store i32 27, ptr %mode290, align 8, !dbg !2117
  br label %do.end320, !dbg !2118

if.end291:                                        ; preds = %if.end274
  br label %if.end313, !dbg !2119

if.else292:                                       ; preds = %if.else
  %246 = load i32, ptr %op, align 4, !dbg !2120
  %and293 = and i32 %246, 64, !dbg !2122
  %cmp294 = icmp eq i32 %and293, 0, !dbg !2123
  br i1 %cmp294, label %if.then296, label %if.else305, !dbg !2124

if.then296:                                       ; preds = %if.else292
  %247 = load ptr, ptr %lcode, align 8, !dbg !2125
  %val297 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !2127
  %248 = load i16, ptr %val297, align 2, !dbg !2127
  %conv298 = zext i16 %248 to i64, !dbg !2128
  %249 = load i64, ptr %hold, align 8, !dbg !2129
  %250 = load i32, ptr %op, align 4, !dbg !2130
  %shl299 = shl i32 1, %250, !dbg !2131
  %sub300 = sub i32 %shl299, 1, !dbg !2132
  %conv301 = zext i32 %sub300 to i64, !dbg !2133
  %and302 = and i64 %249, %conv301, !dbg !2134
  %add303 = add i64 %conv298, %and302, !dbg !2135
  %arrayidx304 = getelementptr inbounds %struct.code, ptr %247, i64 %add303, !dbg !2125
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx304, i64 4, i1 false), !dbg !2125
  br label %dolen, !dbg !2136

if.else305:                                       ; preds = %if.else292
  %251 = load i32, ptr %op, align 4, !dbg !2137
  %and306 = and i32 %251, 32, !dbg !2139
  %tobool307 = icmp ne i32 %and306, 0, !dbg !2139
  br i1 %tobool307, label %if.then308, label %if.else310, !dbg !2140

if.then308:                                       ; preds = %if.else305
  %252 = load ptr, ptr %state, align 8, !dbg !2141
  %mode309 = getelementptr inbounds %struct.inflate_state, ptr %252, i32 0, i32 0, !dbg !2143
  store i32 11, ptr %mode309, align 8, !dbg !2144
  br label %do.end320, !dbg !2145

if.else310:                                       ; preds = %if.else305
  %253 = load ptr, ptr %strm.addr, align 8, !dbg !2146
  %msg311 = getelementptr inbounds %struct.z_stream_s, ptr %253, i32 0, i32 6, !dbg !2148
  store ptr @.str.2, ptr %msg311, align 8, !dbg !2149
  %254 = load ptr, ptr %state, align 8, !dbg !2150
  %mode312 = getelementptr inbounds %struct.inflate_state, ptr %254, i32 0, i32 0, !dbg !2151
  store i32 27, ptr %mode312, align 8, !dbg !2152
  br label %do.end320, !dbg !2153

if.end313:                                        ; preds = %if.end291
  br label %if.end314

if.end314:                                        ; preds = %if.end313, %if.then35
  br label %do.cond315, !dbg !2154

do.cond315:                                       ; preds = %if.end314
  %255 = load ptr, ptr %in, align 8, !dbg !2155
  %256 = load ptr, ptr %last, align 8, !dbg !2156
  %cmp316 = icmp ult ptr %255, %256, !dbg !2157
  br i1 %cmp316, label %land.rhs, label %land.end, !dbg !2158

land.rhs:                                         ; preds = %do.cond315
  %257 = load ptr, ptr %out, align 8, !dbg !2159
  %258 = load ptr, ptr %end, align 8, !dbg !2160
  %cmp318 = icmp ult ptr %257, %258, !dbg !2161
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond315
  %259 = phi i1 [ false, %do.cond315 ], [ %cmp318, %land.rhs ], !dbg !2162
  br i1 %259, label %do.body, label %do.end320, !dbg !2154, !llvm.loop !2163

do.end320:                                        ; preds = %land.end, %if.else310, %if.then308, %if.else288, %if.then131
  %260 = load i32, ptr %bits, align 4, !dbg !2165
  %shr321 = lshr i32 %260, 3, !dbg !2166
  store i32 %shr321, ptr %len, align 4, !dbg !2167
  %261 = load i32, ptr %len, align 4, !dbg !2168
  %262 = load ptr, ptr %in, align 8, !dbg !2169
  %idx.ext322 = zext i32 %261 to i64, !dbg !2169
  %idx.neg323 = sub i64 0, %idx.ext322, !dbg !2169
  %add.ptr324 = getelementptr inbounds i8, ptr %262, i64 %idx.neg323, !dbg !2169
  store ptr %add.ptr324, ptr %in, align 8, !dbg !2169
  %263 = load i32, ptr %len, align 4, !dbg !2170
  %shl325 = shl i32 %263, 3, !dbg !2171
  %264 = load i32, ptr %bits, align 4, !dbg !2172
  %sub326 = sub i32 %264, %shl325, !dbg !2172
  store i32 %sub326, ptr %bits, align 4, !dbg !2172
  %265 = load i32, ptr %bits, align 4, !dbg !2173
  %shl327 = shl i32 1, %265, !dbg !2174
  %sub328 = sub i32 %shl327, 1, !dbg !2175
  %conv329 = zext i32 %sub328 to i64, !dbg !2176
  %266 = load i64, ptr %hold, align 8, !dbg !2177
  %and330 = and i64 %266, %conv329, !dbg !2177
  store i64 %and330, ptr %hold, align 8, !dbg !2177
  %267 = load ptr, ptr %in, align 8, !dbg !2178
  %268 = load ptr, ptr %strm.addr, align 8, !dbg !2179
  %next_in331 = getelementptr inbounds %struct.z_stream_s, ptr %268, i32 0, i32 0, !dbg !2180
  store ptr %267, ptr %next_in331, align 8, !dbg !2181
  %269 = load ptr, ptr %out, align 8, !dbg !2182
  %270 = load ptr, ptr %strm.addr, align 8, !dbg !2183
  %next_out332 = getelementptr inbounds %struct.z_stream_s, ptr %270, i32 0, i32 3, !dbg !2184
  store ptr %269, ptr %next_out332, align 8, !dbg !2185
  %271 = load ptr, ptr %in, align 8, !dbg !2186
  %272 = load ptr, ptr %last, align 8, !dbg !2187
  %cmp333 = icmp ult ptr %271, %272, !dbg !2188
  br i1 %cmp333, label %cond.true, label %cond.false, !dbg !2186

cond.true:                                        ; preds = %do.end320
  %273 = load ptr, ptr %last, align 8, !dbg !2189
  %274 = load ptr, ptr %in, align 8, !dbg !2190
  %sub.ptr.lhs.cast335 = ptrtoint ptr %273 to i64, !dbg !2191
  %sub.ptr.rhs.cast336 = ptrtoint ptr %274 to i64, !dbg !2191
  %sub.ptr.sub337 = sub i64 %sub.ptr.lhs.cast335, %sub.ptr.rhs.cast336, !dbg !2191
  %add338 = add nsw i64 5, %sub.ptr.sub337, !dbg !2192
  br label %cond.end, !dbg !2186

cond.false:                                       ; preds = %do.end320
  %275 = load ptr, ptr %in, align 8, !dbg !2193
  %276 = load ptr, ptr %last, align 8, !dbg !2194
  %sub.ptr.lhs.cast339 = ptrtoint ptr %275 to i64, !dbg !2195
  %sub.ptr.rhs.cast340 = ptrtoint ptr %276 to i64, !dbg !2195
  %sub.ptr.sub341 = sub i64 %sub.ptr.lhs.cast339, %sub.ptr.rhs.cast340, !dbg !2195
  %sub342 = sub nsw i64 5, %sub.ptr.sub341, !dbg !2196
  br label %cond.end, !dbg !2186

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add338, %cond.true ], [ %sub342, %cond.false ], !dbg !2186
  %conv343 = trunc i64 %cond to i32, !dbg !2197
  %conv344 = zext i32 %conv343 to i64, !dbg !2197
  %277 = load ptr, ptr %strm.addr, align 8, !dbg !2198
  %avail_in345 = getelementptr inbounds %struct.z_stream_s, ptr %277, i32 0, i32 1, !dbg !2199
  store i64 %conv344, ptr %avail_in345, align 8, !dbg !2200
  %278 = load ptr, ptr %out, align 8, !dbg !2201
  %279 = load ptr, ptr %end, align 8, !dbg !2202
  %cmp346 = icmp ult ptr %278, %279, !dbg !2203
  br i1 %cmp346, label %cond.true348, label %cond.false353, !dbg !2201

cond.true348:                                     ; preds = %cond.end
  %280 = load ptr, ptr %end, align 8, !dbg !2204
  %281 = load ptr, ptr %out, align 8, !dbg !2205
  %sub.ptr.lhs.cast349 = ptrtoint ptr %280 to i64, !dbg !2206
  %sub.ptr.rhs.cast350 = ptrtoint ptr %281 to i64, !dbg !2206
  %sub.ptr.sub351 = sub i64 %sub.ptr.lhs.cast349, %sub.ptr.rhs.cast350, !dbg !2206
  %add352 = add nsw i64 257, %sub.ptr.sub351, !dbg !2207
  br label %cond.end358, !dbg !2201

cond.false353:                                    ; preds = %cond.end
  %282 = load ptr, ptr %out, align 8, !dbg !2208
  %283 = load ptr, ptr %end, align 8, !dbg !2209
  %sub.ptr.lhs.cast354 = ptrtoint ptr %282 to i64, !dbg !2210
  %sub.ptr.rhs.cast355 = ptrtoint ptr %283 to i64, !dbg !2210
  %sub.ptr.sub356 = sub i64 %sub.ptr.lhs.cast354, %sub.ptr.rhs.cast355, !dbg !2210
  %sub357 = sub nsw i64 257, %sub.ptr.sub356, !dbg !2211
  br label %cond.end358, !dbg !2201

cond.end358:                                      ; preds = %cond.false353, %cond.true348
  %cond359 = phi i64 [ %add352, %cond.true348 ], [ %sub357, %cond.false353 ], !dbg !2201
  %conv360 = trunc i64 %cond359 to i32, !dbg !2212
  %conv361 = zext i32 %conv360 to i64, !dbg !2212
  %284 = load ptr, ptr %strm.addr, align 8, !dbg !2213
  %avail_out362 = getelementptr inbounds %struct.z_stream_s, ptr %284, i32 0, i32 4, !dbg !2214
  store i64 %conv361, ptr %avail_out362, align 8, !dbg !2215
  %285 = load i64, ptr %hold, align 8, !dbg !2216
  %286 = load ptr, ptr %state, align 8, !dbg !2217
  %hold363 = getelementptr inbounds %struct.inflate_state, ptr %286, i32 0, i32 13, !dbg !2218
  store i64 %285, ptr %hold363, align 8, !dbg !2219
  %287 = load i32, ptr %bits, align 4, !dbg !2220
  %288 = load ptr, ptr %state, align 8, !dbg !2221
  %bits364 = getelementptr inbounds %struct.inflate_state, ptr %288, i32 0, i32 14, !dbg !2222
  store i32 %287, ptr %bits364, align 8, !dbg !2223
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %op) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %this) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %dmask) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %lmask) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %dcode) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %lcode) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %hold) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %window) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %write) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %whave) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %beg) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #9, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #9, !dbg !2224
  ret void, !dbg !2224
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone nounwind
define hidden i32 @zlib_inflate_workspacesize() #0 !dbg !2225 {
entry:
  ret i32 42312, !dbg !2228
}

; Function Attrs: noredzone nounwind
define hidden i32 @zlib_inflateReset(ptr noundef %strm) #0 !dbg !2229 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !2233, metadata !DIExpression()), !dbg !2235
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #9, !dbg !2236
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2234, metadata !DIExpression()), !dbg !2237
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !2238
  %cmp = icmp eq ptr %0, null, !dbg !2240
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2241

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !2242
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !2243
  %2 = load ptr, ptr %state1, align 8, !dbg !2243
  %cmp2 = icmp eq ptr %2, null, !dbg !2244
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2245

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !2246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2246

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !2247
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7, !dbg !2248
  %4 = load ptr, ptr %state3, align 8, !dbg !2248
  store ptr %4, ptr %state, align 8, !dbg !2249
  %5 = load ptr, ptr %state, align 8, !dbg !2250
  %total = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 7, !dbg !2251
  store i64 0, ptr %total, align 8, !dbg !2252
  %6 = load ptr, ptr %strm.addr, align 8, !dbg !2253
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 5, !dbg !2254
  store i64 0, ptr %total_out, align 8, !dbg !2255
  %7 = load ptr, ptr %strm.addr, align 8, !dbg !2256
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 2, !dbg !2257
  store i64 0, ptr %total_in, align 8, !dbg !2258
  %8 = load ptr, ptr %strm.addr, align 8, !dbg !2259
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 6, !dbg !2260
  store ptr null, ptr %msg, align 8, !dbg !2261
  %9 = load ptr, ptr %strm.addr, align 8, !dbg !2262
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 10, !dbg !2263
  store i64 1, ptr %adler, align 8, !dbg !2264
  %10 = load ptr, ptr %state, align 8, !dbg !2265
  %mode = getelementptr inbounds %struct.inflate_state, ptr %10, i32 0, i32 0, !dbg !2266
  store i32 0, ptr %mode, align 8, !dbg !2267
  %11 = load ptr, ptr %state, align 8, !dbg !2268
  %last = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 1, !dbg !2269
  store i32 0, ptr %last, align 4, !dbg !2270
  %12 = load ptr, ptr %state, align 8, !dbg !2271
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %12, i32 0, i32 3, !dbg !2272
  store i32 0, ptr %havedict, align 4, !dbg !2273
  %13 = load ptr, ptr %state, align 8, !dbg !2274
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 5, !dbg !2275
  store i32 32768, ptr %dmax, align 4, !dbg !2276
  %14 = load ptr, ptr %state, align 8, !dbg !2277
  %hold = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 13, !dbg !2278
  store i64 0, ptr %hold, align 8, !dbg !2279
  %15 = load ptr, ptr %state, align 8, !dbg !2280
  %bits = getelementptr inbounds %struct.inflate_state, ptr %15, i32 0, i32 14, !dbg !2281
  store i32 0, ptr %bits, align 8, !dbg !2282
  %16 = load ptr, ptr %state, align 8, !dbg !2283
  %codes = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 29, !dbg !2284
  %arraydecay = getelementptr inbounds [2048 x %struct.code], ptr %codes, i64 0, i64 0, !dbg !2283
  %17 = load ptr, ptr %state, align 8, !dbg !2285
  %next = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 26, !dbg !2286
  store ptr %arraydecay, ptr %next, align 8, !dbg !2287
  %18 = load ptr, ptr %state, align 8, !dbg !2288
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 19, !dbg !2289
  store ptr %arraydecay, ptr %distcode, align 8, !dbg !2290
  %19 = load ptr, ptr %state, align 8, !dbg !2291
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %19, i32 0, i32 18, !dbg !2292
  store ptr %arraydecay, ptr %lencode, align 8, !dbg !2293
  %20 = load ptr, ptr %state, align 8, !dbg !2294
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 8, !dbg !2295
  %21 = load i32, ptr %wbits, align 8, !dbg !2295
  %shl = shl i32 1, %21, !dbg !2296
  %22 = load ptr, ptr %state, align 8, !dbg !2297
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 9, !dbg !2298
  store i32 %shl, ptr %wsize, align 4, !dbg !2299
  %23 = load ptr, ptr %state, align 8, !dbg !2300
  %write = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 11, !dbg !2301
  store i32 0, ptr %write, align 4, !dbg !2302
  %24 = load ptr, ptr %state, align 8, !dbg !2303
  %whave = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 10, !dbg !2304
  store i32 0, ptr %whave, align 8, !dbg !2305
  br label %do.body, !dbg !2306

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !2307

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2307

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !2309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2309

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #9, !dbg !2310
  %25 = load i32, ptr %retval, align 4, !dbg !2310
  ret i32 %25, !dbg !2310
}

; Function Attrs: noredzone nounwind
define hidden i32 @zlib_inflateInit2(ptr noundef %strm, i32 noundef %windowBits) #0 !dbg !2311 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %windowBits.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !2313, metadata !DIExpression()), !dbg !2316
  store i32 %windowBits, ptr %windowBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %windowBits.addr, metadata !2314, metadata !DIExpression()), !dbg !2317
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #9, !dbg !2318
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2315, metadata !DIExpression()), !dbg !2319
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !2320
  %cmp = icmp eq ptr %0, null, !dbg !2322
  br i1 %cmp, label %if.then, label %if.end, !dbg !2323

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !2324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2324

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !2325
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 6, !dbg !2326
  store ptr null, ptr %msg, align 8, !dbg !2327
  %2 = load ptr, ptr %strm.addr, align 8, !dbg !2328
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 8, !dbg !2328
  %3 = load ptr, ptr %workspace, align 8, !dbg !2328
  %inflate_state = getelementptr inbounds %struct.inflate_workspace, ptr %3, i32 0, i32 0, !dbg !2329
  store ptr %inflate_state, ptr %state, align 8, !dbg !2330
  %4 = load ptr, ptr %state, align 8, !dbg !2331
  %5 = load ptr, ptr %strm.addr, align 8, !dbg !2332
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7, !dbg !2333
  store ptr %4, ptr %state1, align 8, !dbg !2334
  %6 = load i32, ptr %windowBits.addr, align 4, !dbg !2335
  %cmp2 = icmp slt i32 %6, 0, !dbg !2337
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !2338

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %state, align 8, !dbg !2339
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 2, !dbg !2341
  store i32 0, ptr %wrap, align 8, !dbg !2342
  %8 = load i32, ptr %windowBits.addr, align 4, !dbg !2343
  %sub = sub nsw i32 0, %8, !dbg !2344
  store i32 %sub, ptr %windowBits.addr, align 4, !dbg !2345
  br label %if.end5, !dbg !2346

if.else:                                          ; preds = %if.end
  %9 = load i32, ptr %windowBits.addr, align 4, !dbg !2347
  %shr = ashr i32 %9, 4, !dbg !2349
  %add = add nsw i32 %shr, 1, !dbg !2350
  %10 = load ptr, ptr %state, align 8, !dbg !2351
  %wrap4 = getelementptr inbounds %struct.inflate_state, ptr %10, i32 0, i32 2, !dbg !2352
  store i32 %add, ptr %wrap4, align 8, !dbg !2353
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %11 = load i32, ptr %windowBits.addr, align 4, !dbg !2354
  %cmp6 = icmp slt i32 %11, 8, !dbg !2356
  br i1 %cmp6, label %if.then8, label %lor.lhs.false, !dbg !2357

lor.lhs.false:                                    ; preds = %if.end5
  %12 = load i32, ptr %windowBits.addr, align 4, !dbg !2358
  %cmp7 = icmp sgt i32 %12, 15, !dbg !2359
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2360

if.then8:                                         ; preds = %lor.lhs.false, %if.end5
  store i32 -2, ptr %retval, align 4, !dbg !2361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2361

if.end9:                                          ; preds = %lor.lhs.false
  %13 = load i32, ptr %windowBits.addr, align 4, !dbg !2363
  %14 = load ptr, ptr %state, align 8, !dbg !2364
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 8, !dbg !2365
  store i32 %13, ptr %wbits, align 8, !dbg !2366
  %15 = load ptr, ptr %strm.addr, align 8, !dbg !2367
  %workspace10 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 8, !dbg !2367
  %16 = load ptr, ptr %workspace10, align 8, !dbg !2367
  %working_window = getelementptr inbounds %struct.inflate_workspace, ptr %16, i32 0, i32 1, !dbg !2368
  %arrayidx = getelementptr inbounds [32768 x i8], ptr %working_window, i64 0, i64 0, !dbg !2367
  %17 = load ptr, ptr %state, align 8, !dbg !2369
  %window = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 12, !dbg !2370
  store ptr %arrayidx, ptr %window, align 8, !dbg !2371
  %18 = load ptr, ptr %strm.addr, align 8, !dbg !2372
  %call = call i32 @zlib_inflateReset(ptr noundef %18) #10, !dbg !2373
  store i32 %call, ptr %retval, align 4, !dbg !2374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2374

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #9, !dbg !2375
  %19 = load i32, ptr %retval, align 4, !dbg !2375
  ret i32 %19, !dbg !2375
}

; Function Attrs: noredzone nounwind
define hidden i32 @zlib_inflate(ptr noundef %strm, i32 noundef %flush) #0 !dbg !219 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %next = alloca ptr, align 8
  %put = alloca ptr, align 8
  %have = alloca i32, align 4
  %left = alloca i32, align 4
  %hold = alloca i64, align 8
  %bits = alloca i32, align 4
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %copy = alloca i32, align 4
  %from = alloca ptr, align 8
  %this = alloca %struct.code, align 2
  %last = alloca %struct.code, align 2
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !247, metadata !DIExpression()), !dbg !2376
  store i32 %flush, ptr %flush.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !248, metadata !DIExpression()), !dbg !2377
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #9, !dbg !2378
  call void @llvm.dbg.declare(metadata ptr %state, metadata !249, metadata !DIExpression()), !dbg !2379
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !2380
  call void @llvm.dbg.declare(metadata ptr %next, metadata !250, metadata !DIExpression()), !dbg !2381
  call void @llvm.lifetime.start.p0(i64 8, ptr %put) #9, !dbg !2382
  call void @llvm.dbg.declare(metadata ptr %put, metadata !253, metadata !DIExpression()), !dbg !2383
  call void @llvm.lifetime.start.p0(i64 4, ptr %have) #9, !dbg !2384
  call void @llvm.dbg.declare(metadata ptr %have, metadata !254, metadata !DIExpression()), !dbg !2385
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #9, !dbg !2384
  call void @llvm.dbg.declare(metadata ptr %left, metadata !255, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.start.p0(i64 8, ptr %hold) #9, !dbg !2387
  call void @llvm.dbg.declare(metadata ptr %hold, metadata !256, metadata !DIExpression()), !dbg !2388
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #9, !dbg !2389
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !257, metadata !DIExpression()), !dbg !2390
  call void @llvm.lifetime.start.p0(i64 4, ptr %in) #9, !dbg !2391
  call void @llvm.dbg.declare(metadata ptr %in, metadata !258, metadata !DIExpression()), !dbg !2392
  call void @llvm.lifetime.start.p0(i64 4, ptr %out) #9, !dbg !2391
  call void @llvm.dbg.declare(metadata ptr %out, metadata !259, metadata !DIExpression()), !dbg !2393
  call void @llvm.lifetime.start.p0(i64 4, ptr %copy) #9, !dbg !2394
  call void @llvm.dbg.declare(metadata ptr %copy, metadata !260, metadata !DIExpression()), !dbg !2395
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #9, !dbg !2396
  call void @llvm.dbg.declare(metadata ptr %from, metadata !261, metadata !DIExpression()), !dbg !2397
  call void @llvm.lifetime.start.p0(i64 4, ptr %this) #9, !dbg !2398
  call void @llvm.dbg.declare(metadata ptr %this, metadata !262, metadata !DIExpression()), !dbg !2399
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #9, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %last, metadata !263, metadata !DIExpression()), !dbg !2401
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !2402
  call void @llvm.dbg.declare(metadata ptr %len, metadata !264, metadata !DIExpression()), !dbg !2403
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !2404
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !265, metadata !DIExpression()), !dbg !2405
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !2406
  %cmp = icmp eq ptr %0, null, !dbg !2408
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2409

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !2410
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !2411
  %2 = load ptr, ptr %state1, align 8, !dbg !2411
  %cmp2 = icmp eq ptr %2, null, !dbg !2412
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !2413

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !2414
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 0, !dbg !2415
  %4 = load ptr, ptr %next_in, align 8, !dbg !2415
  %cmp4 = icmp eq ptr %4, null, !dbg !2416
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !2417

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %5 = load ptr, ptr %strm.addr, align 8, !dbg !2418
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 1, !dbg !2419
  %6 = load i64, ptr %avail_in, align 8, !dbg !2419
  %cmp5 = icmp ne i64 %6, 0, !dbg !2420
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2421

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !2422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2422

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false3
  %7 = load ptr, ptr %strm.addr, align 8, !dbg !2423
  %state6 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 7, !dbg !2424
  %8 = load ptr, ptr %state6, align 8, !dbg !2424
  store ptr %8, ptr %state, align 8, !dbg !2425
  %9 = load ptr, ptr %state, align 8, !dbg !2426
  %mode = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 0, !dbg !2428
  %10 = load i32, ptr %mode, align 8, !dbg !2428
  %cmp7 = icmp eq i32 %10, 11, !dbg !2429
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !2430

if.then8:                                         ; preds = %if.end
  %11 = load ptr, ptr %state, align 8, !dbg !2431
  %mode9 = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 0, !dbg !2432
  store i32 12, ptr %mode9, align 8, !dbg !2433
  br label %if.end10, !dbg !2431

if.end10:                                         ; preds = %if.then8, %if.end
  br label %do.body, !dbg !2434

do.body:                                          ; preds = %if.end10
  %12 = load ptr, ptr %strm.addr, align 8, !dbg !2435
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 3, !dbg !2435
  %13 = load ptr, ptr %next_out, align 8, !dbg !2435
  store ptr %13, ptr %put, align 8, !dbg !2435
  %14 = load ptr, ptr %strm.addr, align 8, !dbg !2435
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 4, !dbg !2435
  %15 = load i64, ptr %avail_out, align 8, !dbg !2435
  %conv = trunc i64 %15 to i32, !dbg !2435
  store i32 %conv, ptr %left, align 4, !dbg !2435
  %16 = load ptr, ptr %strm.addr, align 8, !dbg !2435
  %next_in11 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 0, !dbg !2435
  %17 = load ptr, ptr %next_in11, align 8, !dbg !2435
  store ptr %17, ptr %next, align 8, !dbg !2435
  %18 = load ptr, ptr %strm.addr, align 8, !dbg !2435
  %avail_in12 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 1, !dbg !2435
  %19 = load i64, ptr %avail_in12, align 8, !dbg !2435
  %conv13 = trunc i64 %19 to i32, !dbg !2435
  store i32 %conv13, ptr %have, align 4, !dbg !2435
  %20 = load ptr, ptr %state, align 8, !dbg !2435
  %hold14 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 13, !dbg !2435
  %21 = load i64, ptr %hold14, align 8, !dbg !2435
  store i64 %21, ptr %hold, align 8, !dbg !2435
  %22 = load ptr, ptr %state, align 8, !dbg !2435
  %bits15 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 14, !dbg !2435
  %23 = load i32, ptr %bits15, align 8, !dbg !2435
  store i32 %23, ptr %bits, align 4, !dbg !2435
  br label %do.cond, !dbg !2435

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2435

do.end:                                           ; preds = %do.cond
  %24 = load i32, ptr %have, align 4, !dbg !2437
  store i32 %24, ptr %in, align 4, !dbg !2438
  %25 = load i32, ptr %left, align 4, !dbg !2439
  store i32 %25, ptr %out, align 4, !dbg !2440
  store i32 0, ptr %ret, align 4, !dbg !2441
  br label %for.cond, !dbg !2442

for.cond:                                         ; preds = %sw.epilog1214, %do.end
  %26 = load ptr, ptr %state, align 8, !dbg !2443
  %mode16 = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 0, !dbg !2446
  %27 = load i32, ptr %mode16, align 8, !dbg !2446
  switch i32 %27, label %sw.default [
    i32 0, label %sw.bb
    i32 9, label %sw.bb71
    i32 10, label %sw.bb111
    i32 11, label %sw.bb131
    i32 12, label %sw.bb136
    i32 13, label %sw.bb199
    i32 14, label %sw.bb244
    i32 15, label %sw.bb269
    i32 16, label %sw.bb329
    i32 17, label %sw.bb398
    i32 18, label %sw.bb702
    i32 19, label %sw.bb864
    i32 20, label %sw.bb908
    i32 21, label %sw.bb1024
    i32 22, label %sw.bb1077
    i32 23, label %sw.bb1136
    i32 24, label %sw.bb1146
    i32 26, label %sw.bb1210
    i32 27, label %sw.bb1211
    i32 28, label %sw.bb1212
    i32 29, label %sw.bb1213
  ], !dbg !2447

sw.bb:                                            ; preds = %for.cond
  %28 = load ptr, ptr %state, align 8, !dbg !2448
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 2, !dbg !2451
  %29 = load i32, ptr %wrap, align 8, !dbg !2451
  %cmp17 = icmp eq i32 %29, 0, !dbg !2452
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !2453

if.then19:                                        ; preds = %sw.bb
  %30 = load ptr, ptr %state, align 8, !dbg !2454
  %mode20 = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 0, !dbg !2456
  store i32 12, ptr %mode20, align 8, !dbg !2457
  br label %sw.epilog1214, !dbg !2458

if.end21:                                         ; preds = %sw.bb
  br label %do.body22, !dbg !2459

do.body22:                                        ; preds = %if.end21
  br label %while.cond, !dbg !2460

while.cond:                                       ; preds = %do.end33, %do.body22
  %31 = load i32, ptr %bits, align 4, !dbg !2460
  %cmp23 = icmp ult i32 %31, 16, !dbg !2460
  br i1 %cmp23, label %while.body, label %while.end, !dbg !2460

while.body:                                       ; preds = %while.cond
  br label %do.body25, !dbg !2460

do.body25:                                        ; preds = %while.body
  %32 = load i32, ptr %have, align 4, !dbg !2462
  %cmp26 = icmp eq i32 %32, 0, !dbg !2462
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !2465

if.then28:                                        ; preds = %do.body25
  br label %inf_leave, !dbg !2462

if.end29:                                         ; preds = %do.body25
  %33 = load i32, ptr %have, align 4, !dbg !2465
  %dec = add i32 %33, -1, !dbg !2465
  store i32 %dec, ptr %have, align 4, !dbg !2465
  %34 = load ptr, ptr %next, align 8, !dbg !2465
  %incdec.ptr = getelementptr inbounds i8, ptr %34, i32 1, !dbg !2465
  store ptr %incdec.ptr, ptr %next, align 8, !dbg !2465
  %35 = load i8, ptr %34, align 1, !dbg !2465
  %conv30 = zext i8 %35 to i64, !dbg !2465
  %36 = load i32, ptr %bits, align 4, !dbg !2465
  %sh_prom = zext i32 %36 to i64, !dbg !2465
  %shl = shl i64 %conv30, %sh_prom, !dbg !2465
  %37 = load i64, ptr %hold, align 8, !dbg !2465
  %add = add i64 %37, %shl, !dbg !2465
  store i64 %add, ptr %hold, align 8, !dbg !2465
  %38 = load i32, ptr %bits, align 4, !dbg !2465
  %add31 = add i32 %38, 8, !dbg !2465
  store i32 %add31, ptr %bits, align 4, !dbg !2465
  br label %do.cond32, !dbg !2465

do.cond32:                                        ; preds = %if.end29
  br label %do.end33, !dbg !2465

do.end33:                                         ; preds = %do.cond32
  br label %while.cond, !dbg !2460, !llvm.loop !2466

while.end:                                        ; preds = %while.cond
  br label %do.cond34, !dbg !2460

do.cond34:                                        ; preds = %while.end
  br label %do.end35, !dbg !2460

do.end35:                                         ; preds = %do.cond34
  %39 = load i64, ptr %hold, align 8, !dbg !2467
  %conv36 = trunc i64 %39 to i32, !dbg !2467
  %and = and i32 %conv36, 255, !dbg !2467
  %shl37 = shl i32 %and, 8, !dbg !2469
  %conv38 = zext i32 %shl37 to i64, !dbg !2470
  %40 = load i64, ptr %hold, align 8, !dbg !2471
  %shr = lshr i64 %40, 8, !dbg !2472
  %add39 = add i64 %conv38, %shr, !dbg !2473
  %rem = urem i64 %add39, 31, !dbg !2474
  %tobool = icmp ne i64 %rem, 0, !dbg !2474
  br i1 %tobool, label %if.then40, label %if.end42, !dbg !2475

if.then40:                                        ; preds = %do.end35
  %41 = load ptr, ptr %strm.addr, align 8, !dbg !2476
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 6, !dbg !2478
  store ptr @.str.3, ptr %msg, align 8, !dbg !2479
  %42 = load ptr, ptr %state, align 8, !dbg !2480
  %mode41 = getelementptr inbounds %struct.inflate_state, ptr %42, i32 0, i32 0, !dbg !2481
  store i32 27, ptr %mode41, align 8, !dbg !2482
  br label %sw.epilog1214, !dbg !2483

if.end42:                                         ; preds = %do.end35
  %43 = load i64, ptr %hold, align 8, !dbg !2484
  %conv43 = trunc i64 %43 to i32, !dbg !2484
  %and44 = and i32 %conv43, 15, !dbg !2484
  %cmp45 = icmp ne i32 %and44, 8, !dbg !2486
  br i1 %cmp45, label %if.then47, label %if.end50, !dbg !2487

if.then47:                                        ; preds = %if.end42
  %44 = load ptr, ptr %strm.addr, align 8, !dbg !2488
  %msg48 = getelementptr inbounds %struct.z_stream_s, ptr %44, i32 0, i32 6, !dbg !2490
  store ptr @.str.4, ptr %msg48, align 8, !dbg !2491
  %45 = load ptr, ptr %state, align 8, !dbg !2492
  %mode49 = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 0, !dbg !2493
  store i32 27, ptr %mode49, align 8, !dbg !2494
  br label %sw.epilog1214, !dbg !2495

if.end50:                                         ; preds = %if.end42
  br label %do.body51, !dbg !2496

do.body51:                                        ; preds = %if.end50
  %46 = load i64, ptr %hold, align 8, !dbg !2497
  %shr52 = lshr i64 %46, 4, !dbg !2497
  store i64 %shr52, ptr %hold, align 8, !dbg !2497
  %47 = load i32, ptr %bits, align 4, !dbg !2497
  %sub = sub i32 %47, 4, !dbg !2497
  store i32 %sub, ptr %bits, align 4, !dbg !2497
  br label %do.cond53, !dbg !2497

do.cond53:                                        ; preds = %do.body51
  br label %do.end54, !dbg !2497

do.end54:                                         ; preds = %do.cond53
  %48 = load i64, ptr %hold, align 8, !dbg !2499
  %conv55 = trunc i64 %48 to i32, !dbg !2499
  %and56 = and i32 %conv55, 15, !dbg !2499
  %add57 = add i32 %and56, 8, !dbg !2500
  store i32 %add57, ptr %len, align 4, !dbg !2501
  %49 = load i32, ptr %len, align 4, !dbg !2502
  %50 = load ptr, ptr %state, align 8, !dbg !2504
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 8, !dbg !2505
  %51 = load i32, ptr %wbits, align 8, !dbg !2505
  %cmp58 = icmp ugt i32 %49, %51, !dbg !2506
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !2507

if.then60:                                        ; preds = %do.end54
  %52 = load ptr, ptr %strm.addr, align 8, !dbg !2508
  %msg61 = getelementptr inbounds %struct.z_stream_s, ptr %52, i32 0, i32 6, !dbg !2510
  store ptr @.str.5, ptr %msg61, align 8, !dbg !2511
  %53 = load ptr, ptr %state, align 8, !dbg !2512
  %mode62 = getelementptr inbounds %struct.inflate_state, ptr %53, i32 0, i32 0, !dbg !2513
  store i32 27, ptr %mode62, align 8, !dbg !2514
  br label %sw.epilog1214, !dbg !2515

if.end63:                                         ; preds = %do.end54
  %54 = load i32, ptr %len, align 4, !dbg !2516
  %shl64 = shl i32 1, %54, !dbg !2517
  %55 = load ptr, ptr %state, align 8, !dbg !2518
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %55, i32 0, i32 5, !dbg !2519
  store i32 %shl64, ptr %dmax, align 4, !dbg !2520
  %call = call i64 @zlib_adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10, !dbg !2521
  %56 = load ptr, ptr %state, align 8, !dbg !2522
  %check = getelementptr inbounds %struct.inflate_state, ptr %56, i32 0, i32 6, !dbg !2523
  store i64 %call, ptr %check, align 8, !dbg !2524
  %57 = load ptr, ptr %strm.addr, align 8, !dbg !2525
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %57, i32 0, i32 10, !dbg !2526
  store i64 %call, ptr %adler, align 8, !dbg !2527
  %58 = load i64, ptr %hold, align 8, !dbg !2528
  %and65 = and i64 %58, 512, !dbg !2529
  %tobool66 = icmp ne i64 %and65, 0, !dbg !2528
  %59 = zext i1 %tobool66 to i64, !dbg !2528
  %cond = select i1 %tobool66, i32 9, i32 11, !dbg !2528
  %60 = load ptr, ptr %state, align 8, !dbg !2530
  %mode67 = getelementptr inbounds %struct.inflate_state, ptr %60, i32 0, i32 0, !dbg !2531
  store i32 %cond, ptr %mode67, align 8, !dbg !2532
  br label %do.body68, !dbg !2533

do.body68:                                        ; preds = %if.end63
  store i64 0, ptr %hold, align 8, !dbg !2534
  store i32 0, ptr %bits, align 4, !dbg !2534
  br label %do.cond69, !dbg !2534

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !2534

do.end70:                                         ; preds = %do.cond69
  br label %sw.epilog1214, !dbg !2536

sw.bb71:                                          ; preds = %for.cond
  br label %do.body72, !dbg !2537

do.body72:                                        ; preds = %sw.bb71
  br label %while.cond73, !dbg !2538

while.cond73:                                     ; preds = %do.end90, %do.body72
  %61 = load i32, ptr %bits, align 4, !dbg !2538
  %cmp74 = icmp ult i32 %61, 32, !dbg !2538
  br i1 %cmp74, label %while.body76, label %while.end91, !dbg !2538

while.body76:                                     ; preds = %while.cond73
  br label %do.body77, !dbg !2538

do.body77:                                        ; preds = %while.body76
  %62 = load i32, ptr %have, align 4, !dbg !2540
  %cmp78 = icmp eq i32 %62, 0, !dbg !2540
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !2543

if.then80:                                        ; preds = %do.body77
  br label %inf_leave, !dbg !2540

if.end81:                                         ; preds = %do.body77
  %63 = load i32, ptr %have, align 4, !dbg !2543
  %dec82 = add i32 %63, -1, !dbg !2543
  store i32 %dec82, ptr %have, align 4, !dbg !2543
  %64 = load ptr, ptr %next, align 8, !dbg !2543
  %incdec.ptr83 = getelementptr inbounds i8, ptr %64, i32 1, !dbg !2543
  store ptr %incdec.ptr83, ptr %next, align 8, !dbg !2543
  %65 = load i8, ptr %64, align 1, !dbg !2543
  %conv84 = zext i8 %65 to i64, !dbg !2543
  %66 = load i32, ptr %bits, align 4, !dbg !2543
  %sh_prom85 = zext i32 %66 to i64, !dbg !2543
  %shl86 = shl i64 %conv84, %sh_prom85, !dbg !2543
  %67 = load i64, ptr %hold, align 8, !dbg !2543
  %add87 = add i64 %67, %shl86, !dbg !2543
  store i64 %add87, ptr %hold, align 8, !dbg !2543
  %68 = load i32, ptr %bits, align 4, !dbg !2543
  %add88 = add i32 %68, 8, !dbg !2543
  store i32 %add88, ptr %bits, align 4, !dbg !2543
  br label %do.cond89, !dbg !2543

do.cond89:                                        ; preds = %if.end81
  br label %do.end90, !dbg !2543

do.end90:                                         ; preds = %do.cond89
  br label %while.cond73, !dbg !2538, !llvm.loop !2544

while.end91:                                      ; preds = %while.cond73
  br label %do.cond92, !dbg !2538

do.cond92:                                        ; preds = %while.end91
  br label %do.end93, !dbg !2538

do.end93:                                         ; preds = %do.cond92
  %69 = load i64, ptr %hold, align 8, !dbg !2545
  %shr94 = lshr i64 %69, 24, !dbg !2545
  %and95 = and i64 %shr94, 255, !dbg !2545
  %70 = load i64, ptr %hold, align 8, !dbg !2545
  %shr96 = lshr i64 %70, 8, !dbg !2545
  %and97 = and i64 %shr96, 65280, !dbg !2545
  %add98 = add i64 %and95, %and97, !dbg !2545
  %71 = load i64, ptr %hold, align 8, !dbg !2545
  %and99 = and i64 %71, 65280, !dbg !2545
  %shl100 = shl i64 %and99, 8, !dbg !2545
  %add101 = add i64 %add98, %shl100, !dbg !2545
  %72 = load i64, ptr %hold, align 8, !dbg !2545
  %and102 = and i64 %72, 255, !dbg !2545
  %shl103 = shl i64 %and102, 24, !dbg !2545
  %add104 = add i64 %add101, %shl103, !dbg !2545
  %73 = load ptr, ptr %state, align 8, !dbg !2546
  %check105 = getelementptr inbounds %struct.inflate_state, ptr %73, i32 0, i32 6, !dbg !2547
  store i64 %add104, ptr %check105, align 8, !dbg !2548
  %74 = load ptr, ptr %strm.addr, align 8, !dbg !2549
  %adler106 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 10, !dbg !2550
  store i64 %add104, ptr %adler106, align 8, !dbg !2551
  br label %do.body107, !dbg !2552

do.body107:                                       ; preds = %do.end93
  store i64 0, ptr %hold, align 8, !dbg !2553
  store i32 0, ptr %bits, align 4, !dbg !2553
  br label %do.cond108, !dbg !2553

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !2553

do.end109:                                        ; preds = %do.cond108
  %75 = load ptr, ptr %state, align 8, !dbg !2555
  %mode110 = getelementptr inbounds %struct.inflate_state, ptr %75, i32 0, i32 0, !dbg !2556
  store i32 10, ptr %mode110, align 8, !dbg !2557
  br label %sw.bb111, !dbg !2555

sw.bb111:                                         ; preds = %for.cond, %do.end109
  %76 = load ptr, ptr %state, align 8, !dbg !2558
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %76, i32 0, i32 3, !dbg !2560
  %77 = load i32, ptr %havedict, align 4, !dbg !2560
  %cmp112 = icmp eq i32 %77, 0, !dbg !2561
  br i1 %cmp112, label %if.then114, label %if.end126, !dbg !2562

if.then114:                                       ; preds = %sw.bb111
  br label %do.body115, !dbg !2563

do.body115:                                       ; preds = %if.then114
  %78 = load ptr, ptr %put, align 8, !dbg !2565
  %79 = load ptr, ptr %strm.addr, align 8, !dbg !2565
  %next_out116 = getelementptr inbounds %struct.z_stream_s, ptr %79, i32 0, i32 3, !dbg !2565
  store ptr %78, ptr %next_out116, align 8, !dbg !2565
  %80 = load i32, ptr %left, align 4, !dbg !2565
  %conv117 = zext i32 %80 to i64, !dbg !2565
  %81 = load ptr, ptr %strm.addr, align 8, !dbg !2565
  %avail_out118 = getelementptr inbounds %struct.z_stream_s, ptr %81, i32 0, i32 4, !dbg !2565
  store i64 %conv117, ptr %avail_out118, align 8, !dbg !2565
  %82 = load ptr, ptr %next, align 8, !dbg !2565
  %83 = load ptr, ptr %strm.addr, align 8, !dbg !2565
  %next_in119 = getelementptr inbounds %struct.z_stream_s, ptr %83, i32 0, i32 0, !dbg !2565
  store ptr %82, ptr %next_in119, align 8, !dbg !2565
  %84 = load i32, ptr %have, align 4, !dbg !2565
  %conv120 = zext i32 %84 to i64, !dbg !2565
  %85 = load ptr, ptr %strm.addr, align 8, !dbg !2565
  %avail_in121 = getelementptr inbounds %struct.z_stream_s, ptr %85, i32 0, i32 1, !dbg !2565
  store i64 %conv120, ptr %avail_in121, align 8, !dbg !2565
  %86 = load i64, ptr %hold, align 8, !dbg !2565
  %87 = load ptr, ptr %state, align 8, !dbg !2565
  %hold122 = getelementptr inbounds %struct.inflate_state, ptr %87, i32 0, i32 13, !dbg !2565
  store i64 %86, ptr %hold122, align 8, !dbg !2565
  %88 = load i32, ptr %bits, align 4, !dbg !2565
  %89 = load ptr, ptr %state, align 8, !dbg !2565
  %bits123 = getelementptr inbounds %struct.inflate_state, ptr %89, i32 0, i32 14, !dbg !2565
  store i32 %88, ptr %bits123, align 8, !dbg !2565
  br label %do.cond124, !dbg !2565

do.cond124:                                       ; preds = %do.body115
  br label %do.end125, !dbg !2565

do.end125:                                        ; preds = %do.cond124
  store i32 2, ptr %retval, align 4, !dbg !2567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2567

if.end126:                                        ; preds = %sw.bb111
  %call127 = call i64 @zlib_adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10, !dbg !2568
  %90 = load ptr, ptr %state, align 8, !dbg !2569
  %check128 = getelementptr inbounds %struct.inflate_state, ptr %90, i32 0, i32 6, !dbg !2570
  store i64 %call127, ptr %check128, align 8, !dbg !2571
  %91 = load ptr, ptr %strm.addr, align 8, !dbg !2572
  %adler129 = getelementptr inbounds %struct.z_stream_s, ptr %91, i32 0, i32 10, !dbg !2573
  store i64 %call127, ptr %adler129, align 8, !dbg !2574
  %92 = load ptr, ptr %state, align 8, !dbg !2575
  %mode130 = getelementptr inbounds %struct.inflate_state, ptr %92, i32 0, i32 0, !dbg !2576
  store i32 11, ptr %mode130, align 8, !dbg !2577
  br label %sw.bb131, !dbg !2575

sw.bb131:                                         ; preds = %for.cond, %if.end126
  %93 = load i32, ptr %flush.addr, align 4, !dbg !2578
  %cmp132 = icmp eq i32 %93, 6, !dbg !2580
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !2581

if.then134:                                       ; preds = %sw.bb131
  br label %inf_leave, !dbg !2582

if.end135:                                        ; preds = %sw.bb131
  br label %sw.bb136, !dbg !2583

sw.bb136:                                         ; preds = %for.cond, %if.end135
  br label %do.body137, !dbg !2584

do.body137:                                       ; preds = %sw.bb136
  br label %do.cond138, !dbg !2585

do.cond138:                                       ; preds = %do.body137
  br label %do.end139, !dbg !2585

do.end139:                                        ; preds = %do.cond138
  %94 = load ptr, ptr %state, align 8, !dbg !2587
  %last140 = getelementptr inbounds %struct.inflate_state, ptr %94, i32 0, i32 1, !dbg !2589
  %95 = load i32, ptr %last140, align 4, !dbg !2589
  %tobool141 = icmp ne i32 %95, 0, !dbg !2587
  br i1 %tobool141, label %if.then142, label %if.end152, !dbg !2590

if.then142:                                       ; preds = %do.end139
  br label %do.body143, !dbg !2591

do.body143:                                       ; preds = %if.then142
  %96 = load i32, ptr %bits, align 4, !dbg !2593
  %and144 = and i32 %96, 7, !dbg !2593
  %97 = load i64, ptr %hold, align 8, !dbg !2593
  %sh_prom145 = zext i32 %and144 to i64, !dbg !2593
  %shr146 = lshr i64 %97, %sh_prom145, !dbg !2593
  store i64 %shr146, ptr %hold, align 8, !dbg !2593
  %98 = load i32, ptr %bits, align 4, !dbg !2593
  %and147 = and i32 %98, 7, !dbg !2593
  %99 = load i32, ptr %bits, align 4, !dbg !2593
  %sub148 = sub i32 %99, %and147, !dbg !2593
  store i32 %sub148, ptr %bits, align 4, !dbg !2593
  br label %do.cond149, !dbg !2593

do.cond149:                                       ; preds = %do.body143
  br label %do.end150, !dbg !2593

do.end150:                                        ; preds = %do.cond149
  %100 = load ptr, ptr %state, align 8, !dbg !2595
  %mode151 = getelementptr inbounds %struct.inflate_state, ptr %100, i32 0, i32 0, !dbg !2596
  store i32 24, ptr %mode151, align 8, !dbg !2597
  br label %sw.epilog1214, !dbg !2598

if.end152:                                        ; preds = %do.end139
  br label %do.body153, !dbg !2599

do.body153:                                       ; preds = %if.end152
  br label %while.cond154, !dbg !2600

while.cond154:                                    ; preds = %do.end171, %do.body153
  %101 = load i32, ptr %bits, align 4, !dbg !2600
  %cmp155 = icmp ult i32 %101, 3, !dbg !2600
  br i1 %cmp155, label %while.body157, label %while.end172, !dbg !2600

while.body157:                                    ; preds = %while.cond154
  br label %do.body158, !dbg !2600

do.body158:                                       ; preds = %while.body157
  %102 = load i32, ptr %have, align 4, !dbg !2602
  %cmp159 = icmp eq i32 %102, 0, !dbg !2602
  br i1 %cmp159, label %if.then161, label %if.end162, !dbg !2605

if.then161:                                       ; preds = %do.body158
  br label %inf_leave, !dbg !2602

if.end162:                                        ; preds = %do.body158
  %103 = load i32, ptr %have, align 4, !dbg !2605
  %dec163 = add i32 %103, -1, !dbg !2605
  store i32 %dec163, ptr %have, align 4, !dbg !2605
  %104 = load ptr, ptr %next, align 8, !dbg !2605
  %incdec.ptr164 = getelementptr inbounds i8, ptr %104, i32 1, !dbg !2605
  store ptr %incdec.ptr164, ptr %next, align 8, !dbg !2605
  %105 = load i8, ptr %104, align 1, !dbg !2605
  %conv165 = zext i8 %105 to i64, !dbg !2605
  %106 = load i32, ptr %bits, align 4, !dbg !2605
  %sh_prom166 = zext i32 %106 to i64, !dbg !2605
  %shl167 = shl i64 %conv165, %sh_prom166, !dbg !2605
  %107 = load i64, ptr %hold, align 8, !dbg !2605
  %add168 = add i64 %107, %shl167, !dbg !2605
  store i64 %add168, ptr %hold, align 8, !dbg !2605
  %108 = load i32, ptr %bits, align 4, !dbg !2605
  %add169 = add i32 %108, 8, !dbg !2605
  store i32 %add169, ptr %bits, align 4, !dbg !2605
  br label %do.cond170, !dbg !2605

do.cond170:                                       ; preds = %if.end162
  br label %do.end171, !dbg !2605

do.end171:                                        ; preds = %do.cond170
  br label %while.cond154, !dbg !2600, !llvm.loop !2606

while.end172:                                     ; preds = %while.cond154
  br label %do.cond173, !dbg !2600

do.cond173:                                       ; preds = %while.end172
  br label %do.end174, !dbg !2600

do.end174:                                        ; preds = %do.cond173
  %109 = load i64, ptr %hold, align 8, !dbg !2607
  %conv175 = trunc i64 %109 to i32, !dbg !2607
  %and176 = and i32 %conv175, 1, !dbg !2607
  %110 = load ptr, ptr %state, align 8, !dbg !2608
  %last177 = getelementptr inbounds %struct.inflate_state, ptr %110, i32 0, i32 1, !dbg !2609
  store i32 %and176, ptr %last177, align 4, !dbg !2610
  br label %do.body178, !dbg !2611

do.body178:                                       ; preds = %do.end174
  %111 = load i64, ptr %hold, align 8, !dbg !2612
  %shr179 = lshr i64 %111, 1, !dbg !2612
  store i64 %shr179, ptr %hold, align 8, !dbg !2612
  %112 = load i32, ptr %bits, align 4, !dbg !2612
  %sub180 = sub i32 %112, 1, !dbg !2612
  store i32 %sub180, ptr %bits, align 4, !dbg !2612
  br label %do.cond181, !dbg !2612

do.cond181:                                       ; preds = %do.body178
  br label %do.end182, !dbg !2612

do.end182:                                        ; preds = %do.cond181
  %113 = load i64, ptr %hold, align 8, !dbg !2614
  %conv183 = trunc i64 %113 to i32, !dbg !2614
  %and184 = and i32 %conv183, 3, !dbg !2614
  switch i32 %and184, label %sw.epilog [
    i32 0, label %sw.bb185
    i32 1, label %sw.bb187
    i32 2, label %sw.bb189
    i32 3, label %sw.bb191
  ], !dbg !2615

sw.bb185:                                         ; preds = %do.end182
  %114 = load ptr, ptr %state, align 8, !dbg !2616
  %mode186 = getelementptr inbounds %struct.inflate_state, ptr %114, i32 0, i32 0, !dbg !2618
  store i32 13, ptr %mode186, align 8, !dbg !2619
  br label %sw.epilog, !dbg !2620

sw.bb187:                                         ; preds = %do.end182
  %115 = load ptr, ptr %state, align 8, !dbg !2621
  call void @zlib_fixedtables(ptr noundef %115) #10, !dbg !2622
  %116 = load ptr, ptr %state, align 8, !dbg !2623
  %mode188 = getelementptr inbounds %struct.inflate_state, ptr %116, i32 0, i32 0, !dbg !2624
  store i32 18, ptr %mode188, align 8, !dbg !2625
  br label %sw.epilog, !dbg !2626

sw.bb189:                                         ; preds = %do.end182
  %117 = load ptr, ptr %state, align 8, !dbg !2627
  %mode190 = getelementptr inbounds %struct.inflate_state, ptr %117, i32 0, i32 0, !dbg !2628
  store i32 15, ptr %mode190, align 8, !dbg !2629
  br label %sw.epilog, !dbg !2630

sw.bb191:                                         ; preds = %do.end182
  %118 = load ptr, ptr %strm.addr, align 8, !dbg !2631
  %msg192 = getelementptr inbounds %struct.z_stream_s, ptr %118, i32 0, i32 6, !dbg !2632
  store ptr @.str.6, ptr %msg192, align 8, !dbg !2633
  %119 = load ptr, ptr %state, align 8, !dbg !2634
  %mode193 = getelementptr inbounds %struct.inflate_state, ptr %119, i32 0, i32 0, !dbg !2635
  store i32 27, ptr %mode193, align 8, !dbg !2636
  br label %sw.epilog, !dbg !2637

sw.epilog:                                        ; preds = %sw.bb191, %do.end182, %sw.bb189, %sw.bb187, %sw.bb185
  br label %do.body194, !dbg !2638

do.body194:                                       ; preds = %sw.epilog
  %120 = load i64, ptr %hold, align 8, !dbg !2639
  %shr195 = lshr i64 %120, 2, !dbg !2639
  store i64 %shr195, ptr %hold, align 8, !dbg !2639
  %121 = load i32, ptr %bits, align 4, !dbg !2639
  %sub196 = sub i32 %121, 2, !dbg !2639
  store i32 %sub196, ptr %bits, align 4, !dbg !2639
  br label %do.cond197, !dbg !2639

do.cond197:                                       ; preds = %do.body194
  br label %do.end198, !dbg !2639

do.end198:                                        ; preds = %do.cond197
  br label %sw.epilog1214, !dbg !2641

sw.bb199:                                         ; preds = %for.cond
  br label %do.body200, !dbg !2642

do.body200:                                       ; preds = %sw.bb199
  %122 = load i32, ptr %bits, align 4, !dbg !2643
  %and201 = and i32 %122, 7, !dbg !2643
  %123 = load i64, ptr %hold, align 8, !dbg !2643
  %sh_prom202 = zext i32 %and201 to i64, !dbg !2643
  %shr203 = lshr i64 %123, %sh_prom202, !dbg !2643
  store i64 %shr203, ptr %hold, align 8, !dbg !2643
  %124 = load i32, ptr %bits, align 4, !dbg !2643
  %and204 = and i32 %124, 7, !dbg !2643
  %125 = load i32, ptr %bits, align 4, !dbg !2643
  %sub205 = sub i32 %125, %and204, !dbg !2643
  store i32 %sub205, ptr %bits, align 4, !dbg !2643
  br label %do.cond206, !dbg !2643

do.cond206:                                       ; preds = %do.body200
  br label %do.end207, !dbg !2643

do.end207:                                        ; preds = %do.cond206
  br label %do.body208, !dbg !2645

do.body208:                                       ; preds = %do.end207
  br label %while.cond209, !dbg !2646

while.cond209:                                    ; preds = %do.end226, %do.body208
  %126 = load i32, ptr %bits, align 4, !dbg !2646
  %cmp210 = icmp ult i32 %126, 32, !dbg !2646
  br i1 %cmp210, label %while.body212, label %while.end227, !dbg !2646

while.body212:                                    ; preds = %while.cond209
  br label %do.body213, !dbg !2646

do.body213:                                       ; preds = %while.body212
  %127 = load i32, ptr %have, align 4, !dbg !2648
  %cmp214 = icmp eq i32 %127, 0, !dbg !2648
  br i1 %cmp214, label %if.then216, label %if.end217, !dbg !2651

if.then216:                                       ; preds = %do.body213
  br label %inf_leave, !dbg !2648

if.end217:                                        ; preds = %do.body213
  %128 = load i32, ptr %have, align 4, !dbg !2651
  %dec218 = add i32 %128, -1, !dbg !2651
  store i32 %dec218, ptr %have, align 4, !dbg !2651
  %129 = load ptr, ptr %next, align 8, !dbg !2651
  %incdec.ptr219 = getelementptr inbounds i8, ptr %129, i32 1, !dbg !2651
  store ptr %incdec.ptr219, ptr %next, align 8, !dbg !2651
  %130 = load i8, ptr %129, align 1, !dbg !2651
  %conv220 = zext i8 %130 to i64, !dbg !2651
  %131 = load i32, ptr %bits, align 4, !dbg !2651
  %sh_prom221 = zext i32 %131 to i64, !dbg !2651
  %shl222 = shl i64 %conv220, %sh_prom221, !dbg !2651
  %132 = load i64, ptr %hold, align 8, !dbg !2651
  %add223 = add i64 %132, %shl222, !dbg !2651
  store i64 %add223, ptr %hold, align 8, !dbg !2651
  %133 = load i32, ptr %bits, align 4, !dbg !2651
  %add224 = add i32 %133, 8, !dbg !2651
  store i32 %add224, ptr %bits, align 4, !dbg !2651
  br label %do.cond225, !dbg !2651

do.cond225:                                       ; preds = %if.end217
  br label %do.end226, !dbg !2651

do.end226:                                        ; preds = %do.cond225
  br label %while.cond209, !dbg !2646, !llvm.loop !2652

while.end227:                                     ; preds = %while.cond209
  br label %do.cond228, !dbg !2646

do.cond228:                                       ; preds = %while.end227
  br label %do.end229, !dbg !2646

do.end229:                                        ; preds = %do.cond228
  %134 = load i64, ptr %hold, align 8, !dbg !2653
  %and230 = and i64 %134, 65535, !dbg !2655
  %135 = load i64, ptr %hold, align 8, !dbg !2656
  %shr231 = lshr i64 %135, 16, !dbg !2657
  %xor = xor i64 %shr231, 65535, !dbg !2658
  %cmp232 = icmp ne i64 %and230, %xor, !dbg !2659
  br i1 %cmp232, label %if.then234, label %if.end237, !dbg !2660

if.then234:                                       ; preds = %do.end229
  %136 = load ptr, ptr %strm.addr, align 8, !dbg !2661
  %msg235 = getelementptr inbounds %struct.z_stream_s, ptr %136, i32 0, i32 6, !dbg !2663
  store ptr @.str.7, ptr %msg235, align 8, !dbg !2664
  %137 = load ptr, ptr %state, align 8, !dbg !2665
  %mode236 = getelementptr inbounds %struct.inflate_state, ptr %137, i32 0, i32 0, !dbg !2666
  store i32 27, ptr %mode236, align 8, !dbg !2667
  br label %sw.epilog1214, !dbg !2668

if.end237:                                        ; preds = %do.end229
  %138 = load i64, ptr %hold, align 8, !dbg !2669
  %conv238 = trunc i64 %138 to i32, !dbg !2670
  %and239 = and i32 %conv238, 65535, !dbg !2671
  %139 = load ptr, ptr %state, align 8, !dbg !2672
  %length = getelementptr inbounds %struct.inflate_state, ptr %139, i32 0, i32 15, !dbg !2673
  store i32 %and239, ptr %length, align 4, !dbg !2674
  br label %do.body240, !dbg !2675

do.body240:                                       ; preds = %if.end237
  store i64 0, ptr %hold, align 8, !dbg !2676
  store i32 0, ptr %bits, align 4, !dbg !2676
  br label %do.cond241, !dbg !2676

do.cond241:                                       ; preds = %do.body240
  br label %do.end242, !dbg !2676

do.end242:                                        ; preds = %do.cond241
  %140 = load ptr, ptr %state, align 8, !dbg !2678
  %mode243 = getelementptr inbounds %struct.inflate_state, ptr %140, i32 0, i32 0, !dbg !2679
  store i32 14, ptr %mode243, align 8, !dbg !2680
  br label %sw.bb244, !dbg !2678

sw.bb244:                                         ; preds = %for.cond, %do.end242
  %141 = load ptr, ptr %state, align 8, !dbg !2681
  %length245 = getelementptr inbounds %struct.inflate_state, ptr %141, i32 0, i32 15, !dbg !2682
  %142 = load i32, ptr %length245, align 4, !dbg !2682
  store i32 %142, ptr %copy, align 4, !dbg !2683
  %143 = load i32, ptr %copy, align 4, !dbg !2684
  %tobool246 = icmp ne i32 %143, 0, !dbg !2684
  br i1 %tobool246, label %if.then247, label %if.end267, !dbg !2686

if.then247:                                       ; preds = %sw.bb244
  %144 = load i32, ptr %copy, align 4, !dbg !2687
  %145 = load i32, ptr %have, align 4, !dbg !2690
  %cmp248 = icmp ugt i32 %144, %145, !dbg !2691
  br i1 %cmp248, label %if.then250, label %if.end251, !dbg !2692

if.then250:                                       ; preds = %if.then247
  %146 = load i32, ptr %have, align 4, !dbg !2693
  store i32 %146, ptr %copy, align 4, !dbg !2694
  br label %if.end251, !dbg !2695

if.end251:                                        ; preds = %if.then250, %if.then247
  %147 = load i32, ptr %copy, align 4, !dbg !2696
  %148 = load i32, ptr %left, align 4, !dbg !2698
  %cmp252 = icmp ugt i32 %147, %148, !dbg !2699
  br i1 %cmp252, label %if.then254, label %if.end255, !dbg !2700

if.then254:                                       ; preds = %if.end251
  %149 = load i32, ptr %left, align 4, !dbg !2701
  store i32 %149, ptr %copy, align 4, !dbg !2702
  br label %if.end255, !dbg !2703

if.end255:                                        ; preds = %if.then254, %if.end251
  %150 = load i32, ptr %copy, align 4, !dbg !2704
  %cmp256 = icmp eq i32 %150, 0, !dbg !2706
  br i1 %cmp256, label %if.then258, label %if.end259, !dbg !2707

if.then258:                                       ; preds = %if.end255
  br label %inf_leave, !dbg !2708

if.end259:                                        ; preds = %if.end255
  %151 = load ptr, ptr %put, align 8, !dbg !2709
  %152 = load ptr, ptr %next, align 8, !dbg !2709
  %153 = load i32, ptr %copy, align 4, !dbg !2709
  %conv260 = zext i32 %153 to i64, !dbg !2709
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %151, ptr align 1 %152, i64 %conv260, i1 false), !dbg !2709
  %154 = load i32, ptr %copy, align 4, !dbg !2710
  %155 = load i32, ptr %have, align 4, !dbg !2711
  %sub261 = sub i32 %155, %154, !dbg !2711
  store i32 %sub261, ptr %have, align 4, !dbg !2711
  %156 = load i32, ptr %copy, align 4, !dbg !2712
  %157 = load ptr, ptr %next, align 8, !dbg !2713
  %idx.ext = zext i32 %156 to i64, !dbg !2713
  %add.ptr = getelementptr inbounds i8, ptr %157, i64 %idx.ext, !dbg !2713
  store ptr %add.ptr, ptr %next, align 8, !dbg !2713
  %158 = load i32, ptr %copy, align 4, !dbg !2714
  %159 = load i32, ptr %left, align 4, !dbg !2715
  %sub262 = sub i32 %159, %158, !dbg !2715
  store i32 %sub262, ptr %left, align 4, !dbg !2715
  %160 = load i32, ptr %copy, align 4, !dbg !2716
  %161 = load ptr, ptr %put, align 8, !dbg !2717
  %idx.ext263 = zext i32 %160 to i64, !dbg !2717
  %add.ptr264 = getelementptr inbounds i8, ptr %161, i64 %idx.ext263, !dbg !2717
  store ptr %add.ptr264, ptr %put, align 8, !dbg !2717
  %162 = load i32, ptr %copy, align 4, !dbg !2718
  %163 = load ptr, ptr %state, align 8, !dbg !2719
  %length265 = getelementptr inbounds %struct.inflate_state, ptr %163, i32 0, i32 15, !dbg !2720
  %164 = load i32, ptr %length265, align 4, !dbg !2721
  %sub266 = sub i32 %164, %162, !dbg !2721
  store i32 %sub266, ptr %length265, align 4, !dbg !2721
  br label %sw.epilog1214, !dbg !2722

if.end267:                                        ; preds = %sw.bb244
  %165 = load ptr, ptr %state, align 8, !dbg !2723
  %mode268 = getelementptr inbounds %struct.inflate_state, ptr %165, i32 0, i32 0, !dbg !2724
  store i32 11, ptr %mode268, align 8, !dbg !2725
  br label %sw.epilog1214, !dbg !2726

sw.bb269:                                         ; preds = %for.cond
  br label %do.body270, !dbg !2727

do.body270:                                       ; preds = %sw.bb269
  br label %while.cond271, !dbg !2728

while.cond271:                                    ; preds = %do.end288, %do.body270
  %166 = load i32, ptr %bits, align 4, !dbg !2728
  %cmp272 = icmp ult i32 %166, 14, !dbg !2728
  br i1 %cmp272, label %while.body274, label %while.end289, !dbg !2728

while.body274:                                    ; preds = %while.cond271
  br label %do.body275, !dbg !2728

do.body275:                                       ; preds = %while.body274
  %167 = load i32, ptr %have, align 4, !dbg !2730
  %cmp276 = icmp eq i32 %167, 0, !dbg !2730
  br i1 %cmp276, label %if.then278, label %if.end279, !dbg !2733

if.then278:                                       ; preds = %do.body275
  br label %inf_leave, !dbg !2730

if.end279:                                        ; preds = %do.body275
  %168 = load i32, ptr %have, align 4, !dbg !2733
  %dec280 = add i32 %168, -1, !dbg !2733
  store i32 %dec280, ptr %have, align 4, !dbg !2733
  %169 = load ptr, ptr %next, align 8, !dbg !2733
  %incdec.ptr281 = getelementptr inbounds i8, ptr %169, i32 1, !dbg !2733
  store ptr %incdec.ptr281, ptr %next, align 8, !dbg !2733
  %170 = load i8, ptr %169, align 1, !dbg !2733
  %conv282 = zext i8 %170 to i64, !dbg !2733
  %171 = load i32, ptr %bits, align 4, !dbg !2733
  %sh_prom283 = zext i32 %171 to i64, !dbg !2733
  %shl284 = shl i64 %conv282, %sh_prom283, !dbg !2733
  %172 = load i64, ptr %hold, align 8, !dbg !2733
  %add285 = add i64 %172, %shl284, !dbg !2733
  store i64 %add285, ptr %hold, align 8, !dbg !2733
  %173 = load i32, ptr %bits, align 4, !dbg !2733
  %add286 = add i32 %173, 8, !dbg !2733
  store i32 %add286, ptr %bits, align 4, !dbg !2733
  br label %do.cond287, !dbg !2733

do.cond287:                                       ; preds = %if.end279
  br label %do.end288, !dbg !2733

do.end288:                                        ; preds = %do.cond287
  br label %while.cond271, !dbg !2728, !llvm.loop !2734

while.end289:                                     ; preds = %while.cond271
  br label %do.cond290, !dbg !2728

do.cond290:                                       ; preds = %while.end289
  br label %do.end291, !dbg !2728

do.end291:                                        ; preds = %do.cond290
  %174 = load i64, ptr %hold, align 8, !dbg !2735
  %conv292 = trunc i64 %174 to i32, !dbg !2735
  %and293 = and i32 %conv292, 31, !dbg !2735
  %add294 = add i32 %and293, 257, !dbg !2736
  %175 = load ptr, ptr %state, align 8, !dbg !2737
  %nlen = getelementptr inbounds %struct.inflate_state, ptr %175, i32 0, i32 23, !dbg !2738
  store i32 %add294, ptr %nlen, align 4, !dbg !2739
  br label %do.body295, !dbg !2740

do.body295:                                       ; preds = %do.end291
  %176 = load i64, ptr %hold, align 8, !dbg !2741
  %shr296 = lshr i64 %176, 5, !dbg !2741
  store i64 %shr296, ptr %hold, align 8, !dbg !2741
  %177 = load i32, ptr %bits, align 4, !dbg !2741
  %sub297 = sub i32 %177, 5, !dbg !2741
  store i32 %sub297, ptr %bits, align 4, !dbg !2741
  br label %do.cond298, !dbg !2741

do.cond298:                                       ; preds = %do.body295
  br label %do.end299, !dbg !2741

do.end299:                                        ; preds = %do.cond298
  %178 = load i64, ptr %hold, align 8, !dbg !2743
  %conv300 = trunc i64 %178 to i32, !dbg !2743
  %and301 = and i32 %conv300, 31, !dbg !2743
  %add302 = add i32 %and301, 1, !dbg !2744
  %179 = load ptr, ptr %state, align 8, !dbg !2745
  %ndist = getelementptr inbounds %struct.inflate_state, ptr %179, i32 0, i32 24, !dbg !2746
  store i32 %add302, ptr %ndist, align 8, !dbg !2747
  br label %do.body303, !dbg !2748

do.body303:                                       ; preds = %do.end299
  %180 = load i64, ptr %hold, align 8, !dbg !2749
  %shr304 = lshr i64 %180, 5, !dbg !2749
  store i64 %shr304, ptr %hold, align 8, !dbg !2749
  %181 = load i32, ptr %bits, align 4, !dbg !2749
  %sub305 = sub i32 %181, 5, !dbg !2749
  store i32 %sub305, ptr %bits, align 4, !dbg !2749
  br label %do.cond306, !dbg !2749

do.cond306:                                       ; preds = %do.body303
  br label %do.end307, !dbg !2749

do.end307:                                        ; preds = %do.cond306
  %182 = load i64, ptr %hold, align 8, !dbg !2751
  %conv308 = trunc i64 %182 to i32, !dbg !2751
  %and309 = and i32 %conv308, 15, !dbg !2751
  %add310 = add i32 %and309, 4, !dbg !2752
  %183 = load ptr, ptr %state, align 8, !dbg !2753
  %ncode = getelementptr inbounds %struct.inflate_state, ptr %183, i32 0, i32 22, !dbg !2754
  store i32 %add310, ptr %ncode, align 8, !dbg !2755
  br label %do.body311, !dbg !2756

do.body311:                                       ; preds = %do.end307
  %184 = load i64, ptr %hold, align 8, !dbg !2757
  %shr312 = lshr i64 %184, 4, !dbg !2757
  store i64 %shr312, ptr %hold, align 8, !dbg !2757
  %185 = load i32, ptr %bits, align 4, !dbg !2757
  %sub313 = sub i32 %185, 4, !dbg !2757
  store i32 %sub313, ptr %bits, align 4, !dbg !2757
  br label %do.cond314, !dbg !2757

do.cond314:                                       ; preds = %do.body311
  br label %do.end315, !dbg !2757

do.end315:                                        ; preds = %do.cond314
  %186 = load ptr, ptr %state, align 8, !dbg !2759
  %nlen316 = getelementptr inbounds %struct.inflate_state, ptr %186, i32 0, i32 23, !dbg !2761
  %187 = load i32, ptr %nlen316, align 4, !dbg !2761
  %cmp317 = icmp ugt i32 %187, 286, !dbg !2762
  br i1 %cmp317, label %if.then323, label %lor.lhs.false319, !dbg !2763

lor.lhs.false319:                                 ; preds = %do.end315
  %188 = load ptr, ptr %state, align 8, !dbg !2764
  %ndist320 = getelementptr inbounds %struct.inflate_state, ptr %188, i32 0, i32 24, !dbg !2765
  %189 = load i32, ptr %ndist320, align 8, !dbg !2765
  %cmp321 = icmp ugt i32 %189, 30, !dbg !2766
  br i1 %cmp321, label %if.then323, label %if.end326, !dbg !2767

if.then323:                                       ; preds = %lor.lhs.false319, %do.end315
  %190 = load ptr, ptr %strm.addr, align 8, !dbg !2768
  %msg324 = getelementptr inbounds %struct.z_stream_s, ptr %190, i32 0, i32 6, !dbg !2770
  store ptr @.str.8, ptr %msg324, align 8, !dbg !2771
  %191 = load ptr, ptr %state, align 8, !dbg !2772
  %mode325 = getelementptr inbounds %struct.inflate_state, ptr %191, i32 0, i32 0, !dbg !2773
  store i32 27, ptr %mode325, align 8, !dbg !2774
  br label %sw.epilog1214, !dbg !2775

if.end326:                                        ; preds = %lor.lhs.false319
  %192 = load ptr, ptr %state, align 8, !dbg !2776
  %have327 = getelementptr inbounds %struct.inflate_state, ptr %192, i32 0, i32 25, !dbg !2777
  store i32 0, ptr %have327, align 4, !dbg !2778
  %193 = load ptr, ptr %state, align 8, !dbg !2779
  %mode328 = getelementptr inbounds %struct.inflate_state, ptr %193, i32 0, i32 0, !dbg !2780
  store i32 16, ptr %mode328, align 8, !dbg !2781
  br label %sw.bb329, !dbg !2779

sw.bb329:                                         ; preds = %for.cond, %if.end326
  br label %while.cond330, !dbg !2782

while.cond330:                                    ; preds = %do.end368, %sw.bb329
  %194 = load ptr, ptr %state, align 8, !dbg !2783
  %have331 = getelementptr inbounds %struct.inflate_state, ptr %194, i32 0, i32 25, !dbg !2784
  %195 = load i32, ptr %have331, align 4, !dbg !2784
  %196 = load ptr, ptr %state, align 8, !dbg !2785
  %ncode332 = getelementptr inbounds %struct.inflate_state, ptr %196, i32 0, i32 22, !dbg !2786
  %197 = load i32, ptr %ncode332, align 8, !dbg !2786
  %cmp333 = icmp ult i32 %195, %197, !dbg !2787
  br i1 %cmp333, label %while.body335, label %while.end369, !dbg !2782

while.body335:                                    ; preds = %while.cond330
  br label %do.body336, !dbg !2788

do.body336:                                       ; preds = %while.body335
  br label %while.cond337, !dbg !2790

while.cond337:                                    ; preds = %do.end354, %do.body336
  %198 = load i32, ptr %bits, align 4, !dbg !2790
  %cmp338 = icmp ult i32 %198, 3, !dbg !2790
  br i1 %cmp338, label %while.body340, label %while.end355, !dbg !2790

while.body340:                                    ; preds = %while.cond337
  br label %do.body341, !dbg !2790

do.body341:                                       ; preds = %while.body340
  %199 = load i32, ptr %have, align 4, !dbg !2792
  %cmp342 = icmp eq i32 %199, 0, !dbg !2792
  br i1 %cmp342, label %if.then344, label %if.end345, !dbg !2795

if.then344:                                       ; preds = %do.body341
  br label %inf_leave, !dbg !2792

if.end345:                                        ; preds = %do.body341
  %200 = load i32, ptr %have, align 4, !dbg !2795
  %dec346 = add i32 %200, -1, !dbg !2795
  store i32 %dec346, ptr %have, align 4, !dbg !2795
  %201 = load ptr, ptr %next, align 8, !dbg !2795
  %incdec.ptr347 = getelementptr inbounds i8, ptr %201, i32 1, !dbg !2795
  store ptr %incdec.ptr347, ptr %next, align 8, !dbg !2795
  %202 = load i8, ptr %201, align 1, !dbg !2795
  %conv348 = zext i8 %202 to i64, !dbg !2795
  %203 = load i32, ptr %bits, align 4, !dbg !2795
  %sh_prom349 = zext i32 %203 to i64, !dbg !2795
  %shl350 = shl i64 %conv348, %sh_prom349, !dbg !2795
  %204 = load i64, ptr %hold, align 8, !dbg !2795
  %add351 = add i64 %204, %shl350, !dbg !2795
  store i64 %add351, ptr %hold, align 8, !dbg !2795
  %205 = load i32, ptr %bits, align 4, !dbg !2795
  %add352 = add i32 %205, 8, !dbg !2795
  store i32 %add352, ptr %bits, align 4, !dbg !2795
  br label %do.cond353, !dbg !2795

do.cond353:                                       ; preds = %if.end345
  br label %do.end354, !dbg !2795

do.end354:                                        ; preds = %do.cond353
  br label %while.cond337, !dbg !2790, !llvm.loop !2796

while.end355:                                     ; preds = %while.cond337
  br label %do.cond356, !dbg !2790

do.cond356:                                       ; preds = %while.end355
  br label %do.end357, !dbg !2790

do.end357:                                        ; preds = %do.cond356
  %206 = load i64, ptr %hold, align 8, !dbg !2797
  %conv358 = trunc i64 %206 to i32, !dbg !2797
  %and359 = and i32 %conv358, 7, !dbg !2797
  %conv360 = trunc i32 %and359 to i16, !dbg !2798
  %207 = load ptr, ptr %state, align 8, !dbg !2799
  %lens = getelementptr inbounds %struct.inflate_state, ptr %207, i32 0, i32 27, !dbg !2800
  %208 = load ptr, ptr %state, align 8, !dbg !2801
  %have361 = getelementptr inbounds %struct.inflate_state, ptr %208, i32 0, i32 25, !dbg !2802
  %209 = load i32, ptr %have361, align 4, !dbg !2803
  %inc = add i32 %209, 1, !dbg !2803
  store i32 %inc, ptr %have361, align 4, !dbg !2803
  %idxprom = zext i32 %209 to i64, !dbg !2804
  %arrayidx = getelementptr inbounds [19 x i16], ptr @zlib_inflate.order, i64 0, i64 %idxprom, !dbg !2804
  %210 = load i16, ptr %arrayidx, align 2, !dbg !2804
  %idxprom362 = zext i16 %210 to i64, !dbg !2799
  %arrayidx363 = getelementptr inbounds [320 x i16], ptr %lens, i64 0, i64 %idxprom362, !dbg !2799
  store i16 %conv360, ptr %arrayidx363, align 2, !dbg !2805
  br label %do.body364, !dbg !2806

do.body364:                                       ; preds = %do.end357
  %211 = load i64, ptr %hold, align 8, !dbg !2807
  %shr365 = lshr i64 %211, 3, !dbg !2807
  store i64 %shr365, ptr %hold, align 8, !dbg !2807
  %212 = load i32, ptr %bits, align 4, !dbg !2807
  %sub366 = sub i32 %212, 3, !dbg !2807
  store i32 %sub366, ptr %bits, align 4, !dbg !2807
  br label %do.cond367, !dbg !2807

do.cond367:                                       ; preds = %do.body364
  br label %do.end368, !dbg !2807

do.end368:                                        ; preds = %do.cond367
  br label %while.cond330, !dbg !2782, !llvm.loop !2809

while.end369:                                     ; preds = %while.cond330
  br label %while.cond370, !dbg !2811

while.cond370:                                    ; preds = %while.body374, %while.end369
  %213 = load ptr, ptr %state, align 8, !dbg !2812
  %have371 = getelementptr inbounds %struct.inflate_state, ptr %213, i32 0, i32 25, !dbg !2813
  %214 = load i32, ptr %have371, align 4, !dbg !2813
  %cmp372 = icmp ult i32 %214, 19, !dbg !2814
  br i1 %cmp372, label %while.body374, label %while.end382, !dbg !2811

while.body374:                                    ; preds = %while.cond370
  %215 = load ptr, ptr %state, align 8, !dbg !2815
  %lens375 = getelementptr inbounds %struct.inflate_state, ptr %215, i32 0, i32 27, !dbg !2816
  %216 = load ptr, ptr %state, align 8, !dbg !2817
  %have376 = getelementptr inbounds %struct.inflate_state, ptr %216, i32 0, i32 25, !dbg !2818
  %217 = load i32, ptr %have376, align 4, !dbg !2819
  %inc377 = add i32 %217, 1, !dbg !2819
  store i32 %inc377, ptr %have376, align 4, !dbg !2819
  %idxprom378 = zext i32 %217 to i64, !dbg !2820
  %arrayidx379 = getelementptr inbounds [19 x i16], ptr @zlib_inflate.order, i64 0, i64 %idxprom378, !dbg !2820
  %218 = load i16, ptr %arrayidx379, align 2, !dbg !2820
  %idxprom380 = zext i16 %218 to i64, !dbg !2815
  %arrayidx381 = getelementptr inbounds [320 x i16], ptr %lens375, i64 0, i64 %idxprom380, !dbg !2815
  store i16 0, ptr %arrayidx381, align 2, !dbg !2821
  br label %while.cond370, !dbg !2811, !llvm.loop !2822

while.end382:                                     ; preds = %while.cond370
  %219 = load ptr, ptr %state, align 8, !dbg !2824
  %codes = getelementptr inbounds %struct.inflate_state, ptr %219, i32 0, i32 29, !dbg !2825
  %arraydecay = getelementptr inbounds [2048 x %struct.code], ptr %codes, i64 0, i64 0, !dbg !2824
  %220 = load ptr, ptr %state, align 8, !dbg !2826
  %next383 = getelementptr inbounds %struct.inflate_state, ptr %220, i32 0, i32 26, !dbg !2827
  store ptr %arraydecay, ptr %next383, align 8, !dbg !2828
  %221 = load ptr, ptr %state, align 8, !dbg !2829
  %next384 = getelementptr inbounds %struct.inflate_state, ptr %221, i32 0, i32 26, !dbg !2830
  %222 = load ptr, ptr %next384, align 8, !dbg !2830
  %223 = load ptr, ptr %state, align 8, !dbg !2831
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %223, i32 0, i32 18, !dbg !2832
  store ptr %222, ptr %lencode, align 8, !dbg !2833
  %224 = load ptr, ptr %state, align 8, !dbg !2834
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %224, i32 0, i32 20, !dbg !2835
  store i32 7, ptr %lenbits, align 8, !dbg !2836
  %225 = load ptr, ptr %state, align 8, !dbg !2837
  %lens385 = getelementptr inbounds %struct.inflate_state, ptr %225, i32 0, i32 27, !dbg !2838
  %arraydecay386 = getelementptr inbounds [320 x i16], ptr %lens385, i64 0, i64 0, !dbg !2837
  %226 = load ptr, ptr %state, align 8, !dbg !2839
  %next387 = getelementptr inbounds %struct.inflate_state, ptr %226, i32 0, i32 26, !dbg !2840
  %227 = load ptr, ptr %state, align 8, !dbg !2841
  %lenbits388 = getelementptr inbounds %struct.inflate_state, ptr %227, i32 0, i32 20, !dbg !2842
  %228 = load ptr, ptr %state, align 8, !dbg !2843
  %work = getelementptr inbounds %struct.inflate_state, ptr %228, i32 0, i32 28, !dbg !2844
  %arraydecay389 = getelementptr inbounds [288 x i16], ptr %work, i64 0, i64 0, !dbg !2843
  %call390 = call i32 @zlib_inflate_table(i32 noundef 0, ptr noundef %arraydecay386, i32 noundef 19, ptr noundef %next387, ptr noundef %lenbits388, ptr noundef %arraydecay389) #10, !dbg !2845
  store i32 %call390, ptr %ret, align 4, !dbg !2846
  %229 = load i32, ptr %ret, align 4, !dbg !2847
  %tobool391 = icmp ne i32 %229, 0, !dbg !2847
  br i1 %tobool391, label %if.then392, label %if.end395, !dbg !2849

if.then392:                                       ; preds = %while.end382
  %230 = load ptr, ptr %strm.addr, align 8, !dbg !2850
  %msg393 = getelementptr inbounds %struct.z_stream_s, ptr %230, i32 0, i32 6, !dbg !2852
  store ptr @.str.9, ptr %msg393, align 8, !dbg !2853
  %231 = load ptr, ptr %state, align 8, !dbg !2854
  %mode394 = getelementptr inbounds %struct.inflate_state, ptr %231, i32 0, i32 0, !dbg !2855
  store i32 27, ptr %mode394, align 8, !dbg !2856
  br label %sw.epilog1214, !dbg !2857

if.end395:                                        ; preds = %while.end382
  %232 = load ptr, ptr %state, align 8, !dbg !2858
  %have396 = getelementptr inbounds %struct.inflate_state, ptr %232, i32 0, i32 25, !dbg !2859
  store i32 0, ptr %have396, align 4, !dbg !2860
  %233 = load ptr, ptr %state, align 8, !dbg !2861
  %mode397 = getelementptr inbounds %struct.inflate_state, ptr %233, i32 0, i32 0, !dbg !2862
  store i32 17, ptr %mode397, align 8, !dbg !2863
  br label %sw.bb398, !dbg !2861

sw.bb398:                                         ; preds = %for.cond, %if.end395
  br label %while.cond399, !dbg !2864

while.cond399:                                    ; preds = %if.end658, %sw.bb398
  %234 = load ptr, ptr %state, align 8, !dbg !2865
  %have400 = getelementptr inbounds %struct.inflate_state, ptr %234, i32 0, i32 25, !dbg !2866
  %235 = load i32, ptr %have400, align 4, !dbg !2866
  %236 = load ptr, ptr %state, align 8, !dbg !2867
  %nlen401 = getelementptr inbounds %struct.inflate_state, ptr %236, i32 0, i32 23, !dbg !2868
  %237 = load i32, ptr %nlen401, align 4, !dbg !2868
  %238 = load ptr, ptr %state, align 8, !dbg !2869
  %ndist402 = getelementptr inbounds %struct.inflate_state, ptr %238, i32 0, i32 24, !dbg !2870
  %239 = load i32, ptr %ndist402, align 8, !dbg !2870
  %add403 = add i32 %237, %239, !dbg !2871
  %cmp404 = icmp ult i32 %235, %add403, !dbg !2872
  br i1 %cmp404, label %while.body406, label %while.end659, !dbg !2864

while.body406:                                    ; preds = %while.cond399
  br label %for.cond407, !dbg !2873

for.cond407:                                      ; preds = %do.end435, %while.body406
  %240 = load ptr, ptr %state, align 8, !dbg !2875
  %lencode408 = getelementptr inbounds %struct.inflate_state, ptr %240, i32 0, i32 18, !dbg !2879
  %241 = load ptr, ptr %lencode408, align 8, !dbg !2879
  %242 = load i64, ptr %hold, align 8, !dbg !2880
  %conv409 = trunc i64 %242 to i32, !dbg !2880
  %243 = load ptr, ptr %state, align 8, !dbg !2880
  %lenbits410 = getelementptr inbounds %struct.inflate_state, ptr %243, i32 0, i32 20, !dbg !2880
  %244 = load i32, ptr %lenbits410, align 8, !dbg !2880
  %shl411 = shl i32 1, %244, !dbg !2880
  %sub412 = sub i32 %shl411, 1, !dbg !2880
  %and413 = and i32 %conv409, %sub412, !dbg !2880
  %idxprom414 = zext i32 %and413 to i64, !dbg !2875
  %arrayidx415 = getelementptr inbounds %struct.code, ptr %241, i64 %idxprom414, !dbg !2875
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx415, i64 4, i1 false), !dbg !2875
  %bits416 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2881
  %245 = load i8, ptr %bits416, align 1, !dbg !2881
  %conv417 = zext i8 %245 to i32, !dbg !2883
  %246 = load i32, ptr %bits, align 4, !dbg !2884
  %cmp418 = icmp ule i32 %conv417, %246, !dbg !2885
  br i1 %cmp418, label %if.then420, label %if.end421, !dbg !2886

if.then420:                                       ; preds = %for.cond407
  br label %for.end, !dbg !2887

if.end421:                                        ; preds = %for.cond407
  br label %do.body422, !dbg !2888

do.body422:                                       ; preds = %if.end421
  %247 = load i32, ptr %have, align 4, !dbg !2889
  %cmp423 = icmp eq i32 %247, 0, !dbg !2889
  br i1 %cmp423, label %if.then425, label %if.end426, !dbg !2892

if.then425:                                       ; preds = %do.body422
  br label %inf_leave, !dbg !2889

if.end426:                                        ; preds = %do.body422
  %248 = load i32, ptr %have, align 4, !dbg !2892
  %dec427 = add i32 %248, -1, !dbg !2892
  store i32 %dec427, ptr %have, align 4, !dbg !2892
  %249 = load ptr, ptr %next, align 8, !dbg !2892
  %incdec.ptr428 = getelementptr inbounds i8, ptr %249, i32 1, !dbg !2892
  store ptr %incdec.ptr428, ptr %next, align 8, !dbg !2892
  %250 = load i8, ptr %249, align 1, !dbg !2892
  %conv429 = zext i8 %250 to i64, !dbg !2892
  %251 = load i32, ptr %bits, align 4, !dbg !2892
  %sh_prom430 = zext i32 %251 to i64, !dbg !2892
  %shl431 = shl i64 %conv429, %sh_prom430, !dbg !2892
  %252 = load i64, ptr %hold, align 8, !dbg !2892
  %add432 = add i64 %252, %shl431, !dbg !2892
  store i64 %add432, ptr %hold, align 8, !dbg !2892
  %253 = load i32, ptr %bits, align 4, !dbg !2892
  %add433 = add i32 %253, 8, !dbg !2892
  store i32 %add433, ptr %bits, align 4, !dbg !2892
  br label %do.cond434, !dbg !2892

do.cond434:                                       ; preds = %if.end426
  br label %do.end435, !dbg !2892

do.end435:                                        ; preds = %do.cond434
  br label %for.cond407, !dbg !2893, !llvm.loop !2894

for.end:                                          ; preds = %if.then420
  %val = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !2897
  %254 = load i16, ptr %val, align 2, !dbg !2897
  %conv436 = zext i16 %254 to i32, !dbg !2899
  %cmp437 = icmp slt i32 %conv436, 16, !dbg !2900
  br i1 %cmp437, label %if.then439, label %if.else, !dbg !2901

if.then439:                                       ; preds = %for.end
  br label %do.body440, !dbg !2902

do.body440:                                       ; preds = %if.then439
  br label %while.cond441, !dbg !2904

while.cond441:                                    ; preds = %do.end460, %do.body440
  %255 = load i32, ptr %bits, align 4, !dbg !2904
  %bits442 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2904
  %256 = load i8, ptr %bits442, align 1, !dbg !2904
  %conv443 = zext i8 %256 to i32, !dbg !2904
  %cmp444 = icmp ult i32 %255, %conv443, !dbg !2904
  br i1 %cmp444, label %while.body446, label %while.end461, !dbg !2904

while.body446:                                    ; preds = %while.cond441
  br label %do.body447, !dbg !2904

do.body447:                                       ; preds = %while.body446
  %257 = load i32, ptr %have, align 4, !dbg !2906
  %cmp448 = icmp eq i32 %257, 0, !dbg !2906
  br i1 %cmp448, label %if.then450, label %if.end451, !dbg !2909

if.then450:                                       ; preds = %do.body447
  br label %inf_leave, !dbg !2906

if.end451:                                        ; preds = %do.body447
  %258 = load i32, ptr %have, align 4, !dbg !2909
  %dec452 = add i32 %258, -1, !dbg !2909
  store i32 %dec452, ptr %have, align 4, !dbg !2909
  %259 = load ptr, ptr %next, align 8, !dbg !2909
  %incdec.ptr453 = getelementptr inbounds i8, ptr %259, i32 1, !dbg !2909
  store ptr %incdec.ptr453, ptr %next, align 8, !dbg !2909
  %260 = load i8, ptr %259, align 1, !dbg !2909
  %conv454 = zext i8 %260 to i64, !dbg !2909
  %261 = load i32, ptr %bits, align 4, !dbg !2909
  %sh_prom455 = zext i32 %261 to i64, !dbg !2909
  %shl456 = shl i64 %conv454, %sh_prom455, !dbg !2909
  %262 = load i64, ptr %hold, align 8, !dbg !2909
  %add457 = add i64 %262, %shl456, !dbg !2909
  store i64 %add457, ptr %hold, align 8, !dbg !2909
  %263 = load i32, ptr %bits, align 4, !dbg !2909
  %add458 = add i32 %263, 8, !dbg !2909
  store i32 %add458, ptr %bits, align 4, !dbg !2909
  br label %do.cond459, !dbg !2909

do.cond459:                                       ; preds = %if.end451
  br label %do.end460, !dbg !2909

do.end460:                                        ; preds = %do.cond459
  br label %while.cond441, !dbg !2904, !llvm.loop !2910

while.end461:                                     ; preds = %while.cond441
  br label %do.cond462, !dbg !2904

do.cond462:                                       ; preds = %while.end461
  br label %do.end463, !dbg !2904

do.end463:                                        ; preds = %do.cond462
  br label %do.body464, !dbg !2911

do.body464:                                       ; preds = %do.end463
  %bits465 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2912
  %264 = load i8, ptr %bits465, align 1, !dbg !2912
  %conv466 = zext i8 %264 to i32, !dbg !2912
  %265 = load i64, ptr %hold, align 8, !dbg !2912
  %sh_prom467 = zext i32 %conv466 to i64, !dbg !2912
  %shr468 = lshr i64 %265, %sh_prom467, !dbg !2912
  store i64 %shr468, ptr %hold, align 8, !dbg !2912
  %bits469 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2912
  %266 = load i8, ptr %bits469, align 1, !dbg !2912
  %conv470 = zext i8 %266 to i32, !dbg !2912
  %267 = load i32, ptr %bits, align 4, !dbg !2912
  %sub471 = sub i32 %267, %conv470, !dbg !2912
  store i32 %sub471, ptr %bits, align 4, !dbg !2912
  br label %do.cond472, !dbg !2912

do.cond472:                                       ; preds = %do.body464
  br label %do.end473, !dbg !2912

do.end473:                                        ; preds = %do.cond472
  %val474 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !2914
  %268 = load i16, ptr %val474, align 2, !dbg !2914
  %269 = load ptr, ptr %state, align 8, !dbg !2915
  %lens475 = getelementptr inbounds %struct.inflate_state, ptr %269, i32 0, i32 27, !dbg !2916
  %270 = load ptr, ptr %state, align 8, !dbg !2917
  %have476 = getelementptr inbounds %struct.inflate_state, ptr %270, i32 0, i32 25, !dbg !2918
  %271 = load i32, ptr %have476, align 4, !dbg !2919
  %inc477 = add i32 %271, 1, !dbg !2919
  store i32 %inc477, ptr %have476, align 4, !dbg !2919
  %idxprom478 = zext i32 %271 to i64, !dbg !2915
  %arrayidx479 = getelementptr inbounds [320 x i16], ptr %lens475, i64 0, i64 %idxprom478, !dbg !2915
  store i16 %268, ptr %arrayidx479, align 2, !dbg !2920
  br label %if.end658, !dbg !2921

if.else:                                          ; preds = %for.end
  %val480 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !2922
  %272 = load i16, ptr %val480, align 2, !dbg !2922
  %conv481 = zext i16 %272 to i32, !dbg !2925
  %cmp482 = icmp eq i32 %conv481, 16, !dbg !2926
  br i1 %cmp482, label %if.then484, label %if.else541, !dbg !2927

if.then484:                                       ; preds = %if.else
  br label %do.body485, !dbg !2928

do.body485:                                       ; preds = %if.then484
  br label %while.cond486, !dbg !2930

while.cond486:                                    ; preds = %do.end506, %do.body485
  %273 = load i32, ptr %bits, align 4, !dbg !2930
  %bits487 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2930
  %274 = load i8, ptr %bits487, align 1, !dbg !2930
  %conv488 = zext i8 %274 to i32, !dbg !2930
  %add489 = add nsw i32 %conv488, 2, !dbg !2930
  %cmp490 = icmp ult i32 %273, %add489, !dbg !2930
  br i1 %cmp490, label %while.body492, label %while.end507, !dbg !2930

while.body492:                                    ; preds = %while.cond486
  br label %do.body493, !dbg !2930

do.body493:                                       ; preds = %while.body492
  %275 = load i32, ptr %have, align 4, !dbg !2932
  %cmp494 = icmp eq i32 %275, 0, !dbg !2932
  br i1 %cmp494, label %if.then496, label %if.end497, !dbg !2935

if.then496:                                       ; preds = %do.body493
  br label %inf_leave, !dbg !2932

if.end497:                                        ; preds = %do.body493
  %276 = load i32, ptr %have, align 4, !dbg !2935
  %dec498 = add i32 %276, -1, !dbg !2935
  store i32 %dec498, ptr %have, align 4, !dbg !2935
  %277 = load ptr, ptr %next, align 8, !dbg !2935
  %incdec.ptr499 = getelementptr inbounds i8, ptr %277, i32 1, !dbg !2935
  store ptr %incdec.ptr499, ptr %next, align 8, !dbg !2935
  %278 = load i8, ptr %277, align 1, !dbg !2935
  %conv500 = zext i8 %278 to i64, !dbg !2935
  %279 = load i32, ptr %bits, align 4, !dbg !2935
  %sh_prom501 = zext i32 %279 to i64, !dbg !2935
  %shl502 = shl i64 %conv500, %sh_prom501, !dbg !2935
  %280 = load i64, ptr %hold, align 8, !dbg !2935
  %add503 = add i64 %280, %shl502, !dbg !2935
  store i64 %add503, ptr %hold, align 8, !dbg !2935
  %281 = load i32, ptr %bits, align 4, !dbg !2935
  %add504 = add i32 %281, 8, !dbg !2935
  store i32 %add504, ptr %bits, align 4, !dbg !2935
  br label %do.cond505, !dbg !2935

do.cond505:                                       ; preds = %if.end497
  br label %do.end506, !dbg !2935

do.end506:                                        ; preds = %do.cond505
  br label %while.cond486, !dbg !2930, !llvm.loop !2936

while.end507:                                     ; preds = %while.cond486
  br label %do.cond508, !dbg !2930

do.cond508:                                       ; preds = %while.end507
  br label %do.end509, !dbg !2930

do.end509:                                        ; preds = %do.cond508
  br label %do.body510, !dbg !2937

do.body510:                                       ; preds = %do.end509
  %bits511 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2938
  %282 = load i8, ptr %bits511, align 1, !dbg !2938
  %conv512 = zext i8 %282 to i32, !dbg !2938
  %283 = load i64, ptr %hold, align 8, !dbg !2938
  %sh_prom513 = zext i32 %conv512 to i64, !dbg !2938
  %shr514 = lshr i64 %283, %sh_prom513, !dbg !2938
  store i64 %shr514, ptr %hold, align 8, !dbg !2938
  %bits515 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2938
  %284 = load i8, ptr %bits515, align 1, !dbg !2938
  %conv516 = zext i8 %284 to i32, !dbg !2938
  %285 = load i32, ptr %bits, align 4, !dbg !2938
  %sub517 = sub i32 %285, %conv516, !dbg !2938
  store i32 %sub517, ptr %bits, align 4, !dbg !2938
  br label %do.cond518, !dbg !2938

do.cond518:                                       ; preds = %do.body510
  br label %do.end519, !dbg !2938

do.end519:                                        ; preds = %do.cond518
  %286 = load ptr, ptr %state, align 8, !dbg !2940
  %have520 = getelementptr inbounds %struct.inflate_state, ptr %286, i32 0, i32 25, !dbg !2942
  %287 = load i32, ptr %have520, align 4, !dbg !2942
  %cmp521 = icmp eq i32 %287, 0, !dbg !2943
  br i1 %cmp521, label %if.then523, label %if.end526, !dbg !2944

if.then523:                                       ; preds = %do.end519
  %288 = load ptr, ptr %strm.addr, align 8, !dbg !2945
  %msg524 = getelementptr inbounds %struct.z_stream_s, ptr %288, i32 0, i32 6, !dbg !2947
  store ptr @.str.10, ptr %msg524, align 8, !dbg !2948
  %289 = load ptr, ptr %state, align 8, !dbg !2949
  %mode525 = getelementptr inbounds %struct.inflate_state, ptr %289, i32 0, i32 0, !dbg !2950
  store i32 27, ptr %mode525, align 8, !dbg !2951
  br label %while.end659, !dbg !2952

if.end526:                                        ; preds = %do.end519
  %290 = load ptr, ptr %state, align 8, !dbg !2953
  %lens527 = getelementptr inbounds %struct.inflate_state, ptr %290, i32 0, i32 27, !dbg !2954
  %291 = load ptr, ptr %state, align 8, !dbg !2955
  %have528 = getelementptr inbounds %struct.inflate_state, ptr %291, i32 0, i32 25, !dbg !2956
  %292 = load i32, ptr %have528, align 4, !dbg !2956
  %sub529 = sub i32 %292, 1, !dbg !2957
  %idxprom530 = zext i32 %sub529 to i64, !dbg !2953
  %arrayidx531 = getelementptr inbounds [320 x i16], ptr %lens527, i64 0, i64 %idxprom530, !dbg !2953
  %293 = load i16, ptr %arrayidx531, align 2, !dbg !2953
  %conv532 = zext i16 %293 to i32, !dbg !2953
  store i32 %conv532, ptr %len, align 4, !dbg !2958
  %294 = load i64, ptr %hold, align 8, !dbg !2959
  %conv533 = trunc i64 %294 to i32, !dbg !2959
  %and534 = and i32 %conv533, 3, !dbg !2959
  %add535 = add i32 3, %and534, !dbg !2960
  store i32 %add535, ptr %copy, align 4, !dbg !2961
  br label %do.body536, !dbg !2962

do.body536:                                       ; preds = %if.end526
  %295 = load i64, ptr %hold, align 8, !dbg !2963
  %shr537 = lshr i64 %295, 2, !dbg !2963
  store i64 %shr537, ptr %hold, align 8, !dbg !2963
  %296 = load i32, ptr %bits, align 4, !dbg !2963
  %sub538 = sub i32 %296, 2, !dbg !2963
  store i32 %sub538, ptr %bits, align 4, !dbg !2963
  br label %do.cond539, !dbg !2963

do.cond539:                                       ; preds = %do.body536
  br label %do.end540, !dbg !2963

do.end540:                                        ; preds = %do.cond539
  br label %if.end635, !dbg !2965

if.else541:                                       ; preds = %if.else
  %val542 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !2966
  %297 = load i16, ptr %val542, align 2, !dbg !2966
  %conv543 = zext i16 %297 to i32, !dbg !2968
  %cmp544 = icmp eq i32 %conv543, 17, !dbg !2969
  br i1 %cmp544, label %if.then546, label %if.else590, !dbg !2970

if.then546:                                       ; preds = %if.else541
  br label %do.body547, !dbg !2971

do.body547:                                       ; preds = %if.then546
  br label %while.cond548, !dbg !2973

while.cond548:                                    ; preds = %do.end568, %do.body547
  %298 = load i32, ptr %bits, align 4, !dbg !2973
  %bits549 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2973
  %299 = load i8, ptr %bits549, align 1, !dbg !2973
  %conv550 = zext i8 %299 to i32, !dbg !2973
  %add551 = add nsw i32 %conv550, 3, !dbg !2973
  %cmp552 = icmp ult i32 %298, %add551, !dbg !2973
  br i1 %cmp552, label %while.body554, label %while.end569, !dbg !2973

while.body554:                                    ; preds = %while.cond548
  br label %do.body555, !dbg !2973

do.body555:                                       ; preds = %while.body554
  %300 = load i32, ptr %have, align 4, !dbg !2975
  %cmp556 = icmp eq i32 %300, 0, !dbg !2975
  br i1 %cmp556, label %if.then558, label %if.end559, !dbg !2978

if.then558:                                       ; preds = %do.body555
  br label %inf_leave, !dbg !2975

if.end559:                                        ; preds = %do.body555
  %301 = load i32, ptr %have, align 4, !dbg !2978
  %dec560 = add i32 %301, -1, !dbg !2978
  store i32 %dec560, ptr %have, align 4, !dbg !2978
  %302 = load ptr, ptr %next, align 8, !dbg !2978
  %incdec.ptr561 = getelementptr inbounds i8, ptr %302, i32 1, !dbg !2978
  store ptr %incdec.ptr561, ptr %next, align 8, !dbg !2978
  %303 = load i8, ptr %302, align 1, !dbg !2978
  %conv562 = zext i8 %303 to i64, !dbg !2978
  %304 = load i32, ptr %bits, align 4, !dbg !2978
  %sh_prom563 = zext i32 %304 to i64, !dbg !2978
  %shl564 = shl i64 %conv562, %sh_prom563, !dbg !2978
  %305 = load i64, ptr %hold, align 8, !dbg !2978
  %add565 = add i64 %305, %shl564, !dbg !2978
  store i64 %add565, ptr %hold, align 8, !dbg !2978
  %306 = load i32, ptr %bits, align 4, !dbg !2978
  %add566 = add i32 %306, 8, !dbg !2978
  store i32 %add566, ptr %bits, align 4, !dbg !2978
  br label %do.cond567, !dbg !2978

do.cond567:                                       ; preds = %if.end559
  br label %do.end568, !dbg !2978

do.end568:                                        ; preds = %do.cond567
  br label %while.cond548, !dbg !2973, !llvm.loop !2979

while.end569:                                     ; preds = %while.cond548
  br label %do.cond570, !dbg !2973

do.cond570:                                       ; preds = %while.end569
  br label %do.end571, !dbg !2973

do.end571:                                        ; preds = %do.cond570
  br label %do.body572, !dbg !2980

do.body572:                                       ; preds = %do.end571
  %bits573 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2981
  %307 = load i8, ptr %bits573, align 1, !dbg !2981
  %conv574 = zext i8 %307 to i32, !dbg !2981
  %308 = load i64, ptr %hold, align 8, !dbg !2981
  %sh_prom575 = zext i32 %conv574 to i64, !dbg !2981
  %shr576 = lshr i64 %308, %sh_prom575, !dbg !2981
  store i64 %shr576, ptr %hold, align 8, !dbg !2981
  %bits577 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2981
  %309 = load i8, ptr %bits577, align 1, !dbg !2981
  %conv578 = zext i8 %309 to i32, !dbg !2981
  %310 = load i32, ptr %bits, align 4, !dbg !2981
  %sub579 = sub i32 %310, %conv578, !dbg !2981
  store i32 %sub579, ptr %bits, align 4, !dbg !2981
  br label %do.cond580, !dbg !2981

do.cond580:                                       ; preds = %do.body572
  br label %do.end581, !dbg !2981

do.end581:                                        ; preds = %do.cond580
  store i32 0, ptr %len, align 4, !dbg !2983
  %311 = load i64, ptr %hold, align 8, !dbg !2984
  %conv582 = trunc i64 %311 to i32, !dbg !2984
  %and583 = and i32 %conv582, 7, !dbg !2984
  %add584 = add i32 3, %and583, !dbg !2985
  store i32 %add584, ptr %copy, align 4, !dbg !2986
  br label %do.body585, !dbg !2987

do.body585:                                       ; preds = %do.end581
  %312 = load i64, ptr %hold, align 8, !dbg !2988
  %shr586 = lshr i64 %312, 3, !dbg !2988
  store i64 %shr586, ptr %hold, align 8, !dbg !2988
  %313 = load i32, ptr %bits, align 4, !dbg !2988
  %sub587 = sub i32 %313, 3, !dbg !2988
  store i32 %sub587, ptr %bits, align 4, !dbg !2988
  br label %do.cond588, !dbg !2988

do.cond588:                                       ; preds = %do.body585
  br label %do.end589, !dbg !2988

do.end589:                                        ; preds = %do.cond588
  br label %if.end634, !dbg !2990

if.else590:                                       ; preds = %if.else541
  br label %do.body591, !dbg !2991

do.body591:                                       ; preds = %if.else590
  br label %while.cond592, !dbg !2993

while.cond592:                                    ; preds = %do.end612, %do.body591
  %314 = load i32, ptr %bits, align 4, !dbg !2993
  %bits593 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !2993
  %315 = load i8, ptr %bits593, align 1, !dbg !2993
  %conv594 = zext i8 %315 to i32, !dbg !2993
  %add595 = add nsw i32 %conv594, 7, !dbg !2993
  %cmp596 = icmp ult i32 %314, %add595, !dbg !2993
  br i1 %cmp596, label %while.body598, label %while.end613, !dbg !2993

while.body598:                                    ; preds = %while.cond592
  br label %do.body599, !dbg !2993

do.body599:                                       ; preds = %while.body598
  %316 = load i32, ptr %have, align 4, !dbg !2995
  %cmp600 = icmp eq i32 %316, 0, !dbg !2995
  br i1 %cmp600, label %if.then602, label %if.end603, !dbg !2998

if.then602:                                       ; preds = %do.body599
  br label %inf_leave, !dbg !2995

if.end603:                                        ; preds = %do.body599
  %317 = load i32, ptr %have, align 4, !dbg !2998
  %dec604 = add i32 %317, -1, !dbg !2998
  store i32 %dec604, ptr %have, align 4, !dbg !2998
  %318 = load ptr, ptr %next, align 8, !dbg !2998
  %incdec.ptr605 = getelementptr inbounds i8, ptr %318, i32 1, !dbg !2998
  store ptr %incdec.ptr605, ptr %next, align 8, !dbg !2998
  %319 = load i8, ptr %318, align 1, !dbg !2998
  %conv606 = zext i8 %319 to i64, !dbg !2998
  %320 = load i32, ptr %bits, align 4, !dbg !2998
  %sh_prom607 = zext i32 %320 to i64, !dbg !2998
  %shl608 = shl i64 %conv606, %sh_prom607, !dbg !2998
  %321 = load i64, ptr %hold, align 8, !dbg !2998
  %add609 = add i64 %321, %shl608, !dbg !2998
  store i64 %add609, ptr %hold, align 8, !dbg !2998
  %322 = load i32, ptr %bits, align 4, !dbg !2998
  %add610 = add i32 %322, 8, !dbg !2998
  store i32 %add610, ptr %bits, align 4, !dbg !2998
  br label %do.cond611, !dbg !2998

do.cond611:                                       ; preds = %if.end603
  br label %do.end612, !dbg !2998

do.end612:                                        ; preds = %do.cond611
  br label %while.cond592, !dbg !2993, !llvm.loop !2999

while.end613:                                     ; preds = %while.cond592
  br label %do.cond614, !dbg !2993

do.cond614:                                       ; preds = %while.end613
  br label %do.end615, !dbg !2993

do.end615:                                        ; preds = %do.cond614
  br label %do.body616, !dbg !3000

do.body616:                                       ; preds = %do.end615
  %bits617 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !3001
  %323 = load i8, ptr %bits617, align 1, !dbg !3001
  %conv618 = zext i8 %323 to i32, !dbg !3001
  %324 = load i64, ptr %hold, align 8, !dbg !3001
  %sh_prom619 = zext i32 %conv618 to i64, !dbg !3001
  %shr620 = lshr i64 %324, %sh_prom619, !dbg !3001
  store i64 %shr620, ptr %hold, align 8, !dbg !3001
  %bits621 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !3001
  %325 = load i8, ptr %bits621, align 1, !dbg !3001
  %conv622 = zext i8 %325 to i32, !dbg !3001
  %326 = load i32, ptr %bits, align 4, !dbg !3001
  %sub623 = sub i32 %326, %conv622, !dbg !3001
  store i32 %sub623, ptr %bits, align 4, !dbg !3001
  br label %do.cond624, !dbg !3001

do.cond624:                                       ; preds = %do.body616
  br label %do.end625, !dbg !3001

do.end625:                                        ; preds = %do.cond624
  store i32 0, ptr %len, align 4, !dbg !3003
  %327 = load i64, ptr %hold, align 8, !dbg !3004
  %conv626 = trunc i64 %327 to i32, !dbg !3004
  %and627 = and i32 %conv626, 127, !dbg !3004
  %add628 = add i32 11, %and627, !dbg !3005
  store i32 %add628, ptr %copy, align 4, !dbg !3006
  br label %do.body629, !dbg !3007

do.body629:                                       ; preds = %do.end625
  %328 = load i64, ptr %hold, align 8, !dbg !3008
  %shr630 = lshr i64 %328, 7, !dbg !3008
  store i64 %shr630, ptr %hold, align 8, !dbg !3008
  %329 = load i32, ptr %bits, align 4, !dbg !3008
  %sub631 = sub i32 %329, 7, !dbg !3008
  store i32 %sub631, ptr %bits, align 4, !dbg !3008
  br label %do.cond632, !dbg !3008

do.cond632:                                       ; preds = %do.body629
  br label %do.end633, !dbg !3008

do.end633:                                        ; preds = %do.cond632
  br label %if.end634

if.end634:                                        ; preds = %do.end633, %do.end589
  br label %if.end635

if.end635:                                        ; preds = %if.end634, %do.end540
  %330 = load ptr, ptr %state, align 8, !dbg !3010
  %have636 = getelementptr inbounds %struct.inflate_state, ptr %330, i32 0, i32 25, !dbg !3012
  %331 = load i32, ptr %have636, align 4, !dbg !3012
  %332 = load i32, ptr %copy, align 4, !dbg !3013
  %add637 = add i32 %331, %332, !dbg !3014
  %333 = load ptr, ptr %state, align 8, !dbg !3015
  %nlen638 = getelementptr inbounds %struct.inflate_state, ptr %333, i32 0, i32 23, !dbg !3016
  %334 = load i32, ptr %nlen638, align 4, !dbg !3016
  %335 = load ptr, ptr %state, align 8, !dbg !3017
  %ndist639 = getelementptr inbounds %struct.inflate_state, ptr %335, i32 0, i32 24, !dbg !3018
  %336 = load i32, ptr %ndist639, align 8, !dbg !3018
  %add640 = add i32 %334, %336, !dbg !3019
  %cmp641 = icmp ugt i32 %add637, %add640, !dbg !3020
  br i1 %cmp641, label %if.then643, label %if.end646, !dbg !3021

if.then643:                                       ; preds = %if.end635
  %337 = load ptr, ptr %strm.addr, align 8, !dbg !3022
  %msg644 = getelementptr inbounds %struct.z_stream_s, ptr %337, i32 0, i32 6, !dbg !3024
  store ptr @.str.10, ptr %msg644, align 8, !dbg !3025
  %338 = load ptr, ptr %state, align 8, !dbg !3026
  %mode645 = getelementptr inbounds %struct.inflate_state, ptr %338, i32 0, i32 0, !dbg !3027
  store i32 27, ptr %mode645, align 8, !dbg !3028
  br label %while.end659, !dbg !3029

if.end646:                                        ; preds = %if.end635
  br label %while.cond647, !dbg !3030

while.cond647:                                    ; preds = %while.body650, %if.end646
  %339 = load i32, ptr %copy, align 4, !dbg !3031
  %dec648 = add i32 %339, -1, !dbg !3031
  store i32 %dec648, ptr %copy, align 4, !dbg !3031
  %tobool649 = icmp ne i32 %339, 0, !dbg !3030
  br i1 %tobool649, label %while.body650, label %while.end657, !dbg !3030

while.body650:                                    ; preds = %while.cond647
  %340 = load i32, ptr %len, align 4, !dbg !3032
  %conv651 = trunc i32 %340 to i16, !dbg !3033
  %341 = load ptr, ptr %state, align 8, !dbg !3034
  %lens652 = getelementptr inbounds %struct.inflate_state, ptr %341, i32 0, i32 27, !dbg !3035
  %342 = load ptr, ptr %state, align 8, !dbg !3036
  %have653 = getelementptr inbounds %struct.inflate_state, ptr %342, i32 0, i32 25, !dbg !3037
  %343 = load i32, ptr %have653, align 4, !dbg !3038
  %inc654 = add i32 %343, 1, !dbg !3038
  store i32 %inc654, ptr %have653, align 4, !dbg !3038
  %idxprom655 = zext i32 %343 to i64, !dbg !3034
  %arrayidx656 = getelementptr inbounds [320 x i16], ptr %lens652, i64 0, i64 %idxprom655, !dbg !3034
  store i16 %conv651, ptr %arrayidx656, align 2, !dbg !3039
  br label %while.cond647, !dbg !3030, !llvm.loop !3040

while.end657:                                     ; preds = %while.cond647
  br label %if.end658

if.end658:                                        ; preds = %while.end657, %do.end473
  br label %while.cond399, !dbg !2864, !llvm.loop !3041

while.end659:                                     ; preds = %if.then643, %if.then523, %while.cond399
  %344 = load ptr, ptr %state, align 8, !dbg !3043
  %mode660 = getelementptr inbounds %struct.inflate_state, ptr %344, i32 0, i32 0, !dbg !3045
  %345 = load i32, ptr %mode660, align 8, !dbg !3045
  %cmp661 = icmp eq i32 %345, 27, !dbg !3046
  br i1 %cmp661, label %if.then663, label %if.end664, !dbg !3047

if.then663:                                       ; preds = %while.end659
  br label %sw.epilog1214, !dbg !3048

if.end664:                                        ; preds = %while.end659
  %346 = load ptr, ptr %state, align 8, !dbg !3049
  %codes665 = getelementptr inbounds %struct.inflate_state, ptr %346, i32 0, i32 29, !dbg !3050
  %arraydecay666 = getelementptr inbounds [2048 x %struct.code], ptr %codes665, i64 0, i64 0, !dbg !3049
  %347 = load ptr, ptr %state, align 8, !dbg !3051
  %next667 = getelementptr inbounds %struct.inflate_state, ptr %347, i32 0, i32 26, !dbg !3052
  store ptr %arraydecay666, ptr %next667, align 8, !dbg !3053
  %348 = load ptr, ptr %state, align 8, !dbg !3054
  %next668 = getelementptr inbounds %struct.inflate_state, ptr %348, i32 0, i32 26, !dbg !3055
  %349 = load ptr, ptr %next668, align 8, !dbg !3055
  %350 = load ptr, ptr %state, align 8, !dbg !3056
  %lencode669 = getelementptr inbounds %struct.inflate_state, ptr %350, i32 0, i32 18, !dbg !3057
  store ptr %349, ptr %lencode669, align 8, !dbg !3058
  %351 = load ptr, ptr %state, align 8, !dbg !3059
  %lenbits670 = getelementptr inbounds %struct.inflate_state, ptr %351, i32 0, i32 20, !dbg !3060
  store i32 9, ptr %lenbits670, align 8, !dbg !3061
  %352 = load ptr, ptr %state, align 8, !dbg !3062
  %lens671 = getelementptr inbounds %struct.inflate_state, ptr %352, i32 0, i32 27, !dbg !3063
  %arraydecay672 = getelementptr inbounds [320 x i16], ptr %lens671, i64 0, i64 0, !dbg !3062
  %353 = load ptr, ptr %state, align 8, !dbg !3064
  %nlen673 = getelementptr inbounds %struct.inflate_state, ptr %353, i32 0, i32 23, !dbg !3065
  %354 = load i32, ptr %nlen673, align 4, !dbg !3065
  %355 = load ptr, ptr %state, align 8, !dbg !3066
  %next674 = getelementptr inbounds %struct.inflate_state, ptr %355, i32 0, i32 26, !dbg !3067
  %356 = load ptr, ptr %state, align 8, !dbg !3068
  %lenbits675 = getelementptr inbounds %struct.inflate_state, ptr %356, i32 0, i32 20, !dbg !3069
  %357 = load ptr, ptr %state, align 8, !dbg !3070
  %work676 = getelementptr inbounds %struct.inflate_state, ptr %357, i32 0, i32 28, !dbg !3071
  %arraydecay677 = getelementptr inbounds [288 x i16], ptr %work676, i64 0, i64 0, !dbg !3070
  %call678 = call i32 @zlib_inflate_table(i32 noundef 1, ptr noundef %arraydecay672, i32 noundef %354, ptr noundef %next674, ptr noundef %lenbits675, ptr noundef %arraydecay677) #10, !dbg !3072
  store i32 %call678, ptr %ret, align 4, !dbg !3073
  %358 = load i32, ptr %ret, align 4, !dbg !3074
  %tobool679 = icmp ne i32 %358, 0, !dbg !3074
  br i1 %tobool679, label %if.then680, label %if.end683, !dbg !3076

if.then680:                                       ; preds = %if.end664
  %359 = load ptr, ptr %strm.addr, align 8, !dbg !3077
  %msg681 = getelementptr inbounds %struct.z_stream_s, ptr %359, i32 0, i32 6, !dbg !3079
  store ptr @.str.11, ptr %msg681, align 8, !dbg !3080
  %360 = load ptr, ptr %state, align 8, !dbg !3081
  %mode682 = getelementptr inbounds %struct.inflate_state, ptr %360, i32 0, i32 0, !dbg !3082
  store i32 27, ptr %mode682, align 8, !dbg !3083
  br label %sw.epilog1214, !dbg !3084

if.end683:                                        ; preds = %if.end664
  %361 = load ptr, ptr %state, align 8, !dbg !3085
  %next684 = getelementptr inbounds %struct.inflate_state, ptr %361, i32 0, i32 26, !dbg !3086
  %362 = load ptr, ptr %next684, align 8, !dbg !3086
  %363 = load ptr, ptr %state, align 8, !dbg !3087
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %363, i32 0, i32 19, !dbg !3088
  store ptr %362, ptr %distcode, align 8, !dbg !3089
  %364 = load ptr, ptr %state, align 8, !dbg !3090
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %364, i32 0, i32 21, !dbg !3091
  store i32 6, ptr %distbits, align 4, !dbg !3092
  %365 = load ptr, ptr %state, align 8, !dbg !3093
  %lens685 = getelementptr inbounds %struct.inflate_state, ptr %365, i32 0, i32 27, !dbg !3094
  %arraydecay686 = getelementptr inbounds [320 x i16], ptr %lens685, i64 0, i64 0, !dbg !3093
  %366 = load ptr, ptr %state, align 8, !dbg !3095
  %nlen687 = getelementptr inbounds %struct.inflate_state, ptr %366, i32 0, i32 23, !dbg !3096
  %367 = load i32, ptr %nlen687, align 4, !dbg !3096
  %idx.ext688 = zext i32 %367 to i64, !dbg !3097
  %add.ptr689 = getelementptr inbounds i16, ptr %arraydecay686, i64 %idx.ext688, !dbg !3097
  %368 = load ptr, ptr %state, align 8, !dbg !3098
  %ndist690 = getelementptr inbounds %struct.inflate_state, ptr %368, i32 0, i32 24, !dbg !3099
  %369 = load i32, ptr %ndist690, align 8, !dbg !3099
  %370 = load ptr, ptr %state, align 8, !dbg !3100
  %next691 = getelementptr inbounds %struct.inflate_state, ptr %370, i32 0, i32 26, !dbg !3101
  %371 = load ptr, ptr %state, align 8, !dbg !3102
  %distbits692 = getelementptr inbounds %struct.inflate_state, ptr %371, i32 0, i32 21, !dbg !3103
  %372 = load ptr, ptr %state, align 8, !dbg !3104
  %work693 = getelementptr inbounds %struct.inflate_state, ptr %372, i32 0, i32 28, !dbg !3105
  %arraydecay694 = getelementptr inbounds [288 x i16], ptr %work693, i64 0, i64 0, !dbg !3104
  %call695 = call i32 @zlib_inflate_table(i32 noundef 2, ptr noundef %add.ptr689, i32 noundef %369, ptr noundef %next691, ptr noundef %distbits692, ptr noundef %arraydecay694) #10, !dbg !3106
  store i32 %call695, ptr %ret, align 4, !dbg !3107
  %373 = load i32, ptr %ret, align 4, !dbg !3108
  %tobool696 = icmp ne i32 %373, 0, !dbg !3108
  br i1 %tobool696, label %if.then697, label %if.end700, !dbg !3110

if.then697:                                       ; preds = %if.end683
  %374 = load ptr, ptr %strm.addr, align 8, !dbg !3111
  %msg698 = getelementptr inbounds %struct.z_stream_s, ptr %374, i32 0, i32 6, !dbg !3113
  store ptr @.str.12, ptr %msg698, align 8, !dbg !3114
  %375 = load ptr, ptr %state, align 8, !dbg !3115
  %mode699 = getelementptr inbounds %struct.inflate_state, ptr %375, i32 0, i32 0, !dbg !3116
  store i32 27, ptr %mode699, align 8, !dbg !3117
  br label %sw.epilog1214, !dbg !3118

if.end700:                                        ; preds = %if.end683
  %376 = load ptr, ptr %state, align 8, !dbg !3119
  %mode701 = getelementptr inbounds %struct.inflate_state, ptr %376, i32 0, i32 0, !dbg !3120
  store i32 18, ptr %mode701, align 8, !dbg !3121
  br label %sw.bb702, !dbg !3119

sw.bb702:                                         ; preds = %for.cond, %if.end700
  %377 = load i32, ptr %have, align 4, !dbg !3122
  %cmp703 = icmp uge i32 %377, 6, !dbg !3124
  br i1 %cmp703, label %land.lhs.true705, label %if.end731, !dbg !3125

land.lhs.true705:                                 ; preds = %sw.bb702
  %378 = load i32, ptr %left, align 4, !dbg !3126
  %cmp706 = icmp uge i32 %378, 258, !dbg !3127
  br i1 %cmp706, label %if.then708, label %if.end731, !dbg !3128

if.then708:                                       ; preds = %land.lhs.true705
  br label %do.body709, !dbg !3129

do.body709:                                       ; preds = %if.then708
  %379 = load ptr, ptr %put, align 8, !dbg !3131
  %380 = load ptr, ptr %strm.addr, align 8, !dbg !3131
  %next_out710 = getelementptr inbounds %struct.z_stream_s, ptr %380, i32 0, i32 3, !dbg !3131
  store ptr %379, ptr %next_out710, align 8, !dbg !3131
  %381 = load i32, ptr %left, align 4, !dbg !3131
  %conv711 = zext i32 %381 to i64, !dbg !3131
  %382 = load ptr, ptr %strm.addr, align 8, !dbg !3131
  %avail_out712 = getelementptr inbounds %struct.z_stream_s, ptr %382, i32 0, i32 4, !dbg !3131
  store i64 %conv711, ptr %avail_out712, align 8, !dbg !3131
  %383 = load ptr, ptr %next, align 8, !dbg !3131
  %384 = load ptr, ptr %strm.addr, align 8, !dbg !3131
  %next_in713 = getelementptr inbounds %struct.z_stream_s, ptr %384, i32 0, i32 0, !dbg !3131
  store ptr %383, ptr %next_in713, align 8, !dbg !3131
  %385 = load i32, ptr %have, align 4, !dbg !3131
  %conv714 = zext i32 %385 to i64, !dbg !3131
  %386 = load ptr, ptr %strm.addr, align 8, !dbg !3131
  %avail_in715 = getelementptr inbounds %struct.z_stream_s, ptr %386, i32 0, i32 1, !dbg !3131
  store i64 %conv714, ptr %avail_in715, align 8, !dbg !3131
  %387 = load i64, ptr %hold, align 8, !dbg !3131
  %388 = load ptr, ptr %state, align 8, !dbg !3131
  %hold716 = getelementptr inbounds %struct.inflate_state, ptr %388, i32 0, i32 13, !dbg !3131
  store i64 %387, ptr %hold716, align 8, !dbg !3131
  %389 = load i32, ptr %bits, align 4, !dbg !3131
  %390 = load ptr, ptr %state, align 8, !dbg !3131
  %bits717 = getelementptr inbounds %struct.inflate_state, ptr %390, i32 0, i32 14, !dbg !3131
  store i32 %389, ptr %bits717, align 8, !dbg !3131
  br label %do.cond718, !dbg !3131

do.cond718:                                       ; preds = %do.body709
  br label %do.end719, !dbg !3131

do.end719:                                        ; preds = %do.cond718
  %391 = load ptr, ptr %strm.addr, align 8, !dbg !3133
  %392 = load i32, ptr %out, align 4, !dbg !3134
  call void @inflate_fast(ptr noundef %391, i32 noundef %392) #10, !dbg !3135
  br label %do.body720, !dbg !3136

do.body720:                                       ; preds = %do.end719
  %393 = load ptr, ptr %strm.addr, align 8, !dbg !3137
  %next_out721 = getelementptr inbounds %struct.z_stream_s, ptr %393, i32 0, i32 3, !dbg !3137
  %394 = load ptr, ptr %next_out721, align 8, !dbg !3137
  store ptr %394, ptr %put, align 8, !dbg !3137
  %395 = load ptr, ptr %strm.addr, align 8, !dbg !3137
  %avail_out722 = getelementptr inbounds %struct.z_stream_s, ptr %395, i32 0, i32 4, !dbg !3137
  %396 = load i64, ptr %avail_out722, align 8, !dbg !3137
  %conv723 = trunc i64 %396 to i32, !dbg !3137
  store i32 %conv723, ptr %left, align 4, !dbg !3137
  %397 = load ptr, ptr %strm.addr, align 8, !dbg !3137
  %next_in724 = getelementptr inbounds %struct.z_stream_s, ptr %397, i32 0, i32 0, !dbg !3137
  %398 = load ptr, ptr %next_in724, align 8, !dbg !3137
  store ptr %398, ptr %next, align 8, !dbg !3137
  %399 = load ptr, ptr %strm.addr, align 8, !dbg !3137
  %avail_in725 = getelementptr inbounds %struct.z_stream_s, ptr %399, i32 0, i32 1, !dbg !3137
  %400 = load i64, ptr %avail_in725, align 8, !dbg !3137
  %conv726 = trunc i64 %400 to i32, !dbg !3137
  store i32 %conv726, ptr %have, align 4, !dbg !3137
  %401 = load ptr, ptr %state, align 8, !dbg !3137
  %hold727 = getelementptr inbounds %struct.inflate_state, ptr %401, i32 0, i32 13, !dbg !3137
  %402 = load i64, ptr %hold727, align 8, !dbg !3137
  store i64 %402, ptr %hold, align 8, !dbg !3137
  %403 = load ptr, ptr %state, align 8, !dbg !3137
  %bits728 = getelementptr inbounds %struct.inflate_state, ptr %403, i32 0, i32 14, !dbg !3137
  %404 = load i32, ptr %bits728, align 8, !dbg !3137
  store i32 %404, ptr %bits, align 4, !dbg !3137
  br label %do.cond729, !dbg !3137

do.cond729:                                       ; preds = %do.body720
  br label %do.end730, !dbg !3137

do.end730:                                        ; preds = %do.cond729
  br label %sw.epilog1214, !dbg !3139

if.end731:                                        ; preds = %land.lhs.true705, %sw.bb702
  br label %for.cond732, !dbg !3140

for.cond732:                                      ; preds = %do.end760, %if.end731
  %405 = load ptr, ptr %state, align 8, !dbg !3141
  %lencode733 = getelementptr inbounds %struct.inflate_state, ptr %405, i32 0, i32 18, !dbg !3145
  %406 = load ptr, ptr %lencode733, align 8, !dbg !3145
  %407 = load i64, ptr %hold, align 8, !dbg !3146
  %conv734 = trunc i64 %407 to i32, !dbg !3146
  %408 = load ptr, ptr %state, align 8, !dbg !3146
  %lenbits735 = getelementptr inbounds %struct.inflate_state, ptr %408, i32 0, i32 20, !dbg !3146
  %409 = load i32, ptr %lenbits735, align 8, !dbg !3146
  %shl736 = shl i32 1, %409, !dbg !3146
  %sub737 = sub i32 %shl736, 1, !dbg !3146
  %and738 = and i32 %conv734, %sub737, !dbg !3146
  %idxprom739 = zext i32 %and738 to i64, !dbg !3141
  %arrayidx740 = getelementptr inbounds %struct.code, ptr %406, i64 %idxprom739, !dbg !3141
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx740, i64 4, i1 false), !dbg !3141
  %bits741 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !3147
  %410 = load i8, ptr %bits741, align 1, !dbg !3147
  %conv742 = zext i8 %410 to i32, !dbg !3149
  %411 = load i32, ptr %bits, align 4, !dbg !3150
  %cmp743 = icmp ule i32 %conv742, %411, !dbg !3151
  br i1 %cmp743, label %if.then745, label %if.end746, !dbg !3152

if.then745:                                       ; preds = %for.cond732
  br label %for.end761, !dbg !3153

if.end746:                                        ; preds = %for.cond732
  br label %do.body747, !dbg !3154

do.body747:                                       ; preds = %if.end746
  %412 = load i32, ptr %have, align 4, !dbg !3155
  %cmp748 = icmp eq i32 %412, 0, !dbg !3155
  br i1 %cmp748, label %if.then750, label %if.end751, !dbg !3158

if.then750:                                       ; preds = %do.body747
  br label %inf_leave, !dbg !3155

if.end751:                                        ; preds = %do.body747
  %413 = load i32, ptr %have, align 4, !dbg !3158
  %dec752 = add i32 %413, -1, !dbg !3158
  store i32 %dec752, ptr %have, align 4, !dbg !3158
  %414 = load ptr, ptr %next, align 8, !dbg !3158
  %incdec.ptr753 = getelementptr inbounds i8, ptr %414, i32 1, !dbg !3158
  store ptr %incdec.ptr753, ptr %next, align 8, !dbg !3158
  %415 = load i8, ptr %414, align 1, !dbg !3158
  %conv754 = zext i8 %415 to i64, !dbg !3158
  %416 = load i32, ptr %bits, align 4, !dbg !3158
  %sh_prom755 = zext i32 %416 to i64, !dbg !3158
  %shl756 = shl i64 %conv754, %sh_prom755, !dbg !3158
  %417 = load i64, ptr %hold, align 8, !dbg !3158
  %add757 = add i64 %417, %shl756, !dbg !3158
  store i64 %add757, ptr %hold, align 8, !dbg !3158
  %418 = load i32, ptr %bits, align 4, !dbg !3158
  %add758 = add i32 %418, 8, !dbg !3158
  store i32 %add758, ptr %bits, align 4, !dbg !3158
  br label %do.cond759, !dbg !3158

do.cond759:                                       ; preds = %if.end751
  br label %do.end760, !dbg !3158

do.end760:                                        ; preds = %do.cond759
  br label %for.cond732, !dbg !3159, !llvm.loop !3160

for.end761:                                       ; preds = %if.then745
  %op = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !3163
  %419 = load i8, ptr %op, align 2, !dbg !3163
  %conv762 = zext i8 %419 to i32, !dbg !3165
  %tobool763 = icmp ne i32 %conv762, 0, !dbg !3165
  br i1 %tobool763, label %land.lhs.true764, label %if.end824, !dbg !3166

land.lhs.true764:                                 ; preds = %for.end761
  %op765 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !3167
  %420 = load i8, ptr %op765, align 2, !dbg !3167
  %conv766 = zext i8 %420 to i32, !dbg !3168
  %and767 = and i32 %conv766, 240, !dbg !3169
  %cmp768 = icmp eq i32 %and767, 0, !dbg !3170
  br i1 %cmp768, label %if.then770, label %if.end824, !dbg !3171

if.then770:                                       ; preds = %land.lhs.true764
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %last, ptr align 2 %this, i64 4, i1 false), !dbg !3172
  br label %for.cond771, !dbg !3174

for.cond771:                                      ; preds = %do.end812, %if.then770
  %421 = load ptr, ptr %state, align 8, !dbg !3175
  %lencode772 = getelementptr inbounds %struct.inflate_state, ptr %421, i32 0, i32 18, !dbg !3179
  %422 = load ptr, ptr %lencode772, align 8, !dbg !3179
  %val773 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 2, !dbg !3180
  %423 = load i16, ptr %val773, align 2, !dbg !3180
  %conv774 = zext i16 %423 to i32, !dbg !3181
  %424 = load i64, ptr %hold, align 8, !dbg !3182
  %conv775 = trunc i64 %424 to i32, !dbg !3182
  %bits776 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !3182
  %425 = load i8, ptr %bits776, align 1, !dbg !3182
  %conv777 = zext i8 %425 to i32, !dbg !3182
  %op778 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 0, !dbg !3182
  %426 = load i8, ptr %op778, align 2, !dbg !3182
  %conv779 = zext i8 %426 to i32, !dbg !3182
  %add780 = add nsw i32 %conv777, %conv779, !dbg !3182
  %shl781 = shl i32 1, %add780, !dbg !3182
  %sub782 = sub i32 %shl781, 1, !dbg !3182
  %and783 = and i32 %conv775, %sub782, !dbg !3182
  %bits784 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !3183
  %427 = load i8, ptr %bits784, align 1, !dbg !3183
  %conv785 = zext i8 %427 to i32, !dbg !3184
  %shr786 = lshr i32 %and783, %conv785, !dbg !3185
  %add787 = add i32 %conv774, %shr786, !dbg !3186
  %idxprom788 = zext i32 %add787 to i64, !dbg !3175
  %arrayidx789 = getelementptr inbounds %struct.code, ptr %422, i64 %idxprom788, !dbg !3175
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx789, i64 4, i1 false), !dbg !3175
  %bits790 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !3187
  %428 = load i8, ptr %bits790, align 1, !dbg !3187
  %conv791 = zext i8 %428 to i32, !dbg !3189
  %bits792 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !3190
  %429 = load i8, ptr %bits792, align 1, !dbg !3190
  %conv793 = zext i8 %429 to i32, !dbg !3191
  %add794 = add nsw i32 %conv791, %conv793, !dbg !3192
  %430 = load i32, ptr %bits, align 4, !dbg !3193
  %cmp795 = icmp ule i32 %add794, %430, !dbg !3194
  br i1 %cmp795, label %if.then797, label %if.end798, !dbg !3195

if.then797:                                       ; preds = %for.cond771
  br label %for.end813, !dbg !3196

if.end798:                                        ; preds = %for.cond771
  br label %do.body799, !dbg !3197

do.body799:                                       ; preds = %if.end798
  %431 = load i32, ptr %have, align 4, !dbg !3198
  %cmp800 = icmp eq i32 %431, 0, !dbg !3198
  br i1 %cmp800, label %if.then802, label %if.end803, !dbg !3201

if.then802:                                       ; preds = %do.body799
  br label %inf_leave, !dbg !3198

if.end803:                                        ; preds = %do.body799
  %432 = load i32, ptr %have, align 4, !dbg !3201
  %dec804 = add i32 %432, -1, !dbg !3201
  store i32 %dec804, ptr %have, align 4, !dbg !3201
  %433 = load ptr, ptr %next, align 8, !dbg !3201
  %incdec.ptr805 = getelementptr inbounds i8, ptr %433, i32 1, !dbg !3201
  store ptr %incdec.ptr805, ptr %next, align 8, !dbg !3201
  %434 = load i8, ptr %433, align 1, !dbg !3201
  %conv806 = zext i8 %434 to i64, !dbg !3201
  %435 = load i32, ptr %bits, align 4, !dbg !3201
  %sh_prom807 = zext i32 %435 to i64, !dbg !3201
  %shl808 = shl i64 %conv806, %sh_prom807, !dbg !3201
  %436 = load i64, ptr %hold, align 8, !dbg !3201
  %add809 = add i64 %436, %shl808, !dbg !3201
  store i64 %add809, ptr %hold, align 8, !dbg !3201
  %437 = load i32, ptr %bits, align 4, !dbg !3201
  %add810 = add i32 %437, 8, !dbg !3201
  store i32 %add810, ptr %bits, align 4, !dbg !3201
  br label %do.cond811, !dbg !3201

do.cond811:                                       ; preds = %if.end803
  br label %do.end812, !dbg !3201

do.end812:                                        ; preds = %do.cond811
  br label %for.cond771, !dbg !3202, !llvm.loop !3203

for.end813:                                       ; preds = %if.then797
  br label %do.body814, !dbg !3206

do.body814:                                       ; preds = %for.end813
  %bits815 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !3207
  %438 = load i8, ptr %bits815, align 1, !dbg !3207
  %conv816 = zext i8 %438 to i32, !dbg !3207
  %439 = load i64, ptr %hold, align 8, !dbg !3207
  %sh_prom817 = zext i32 %conv816 to i64, !dbg !3207
  %shr818 = lshr i64 %439, %sh_prom817, !dbg !3207
  store i64 %shr818, ptr %hold, align 8, !dbg !3207
  %bits819 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !3207
  %440 = load i8, ptr %bits819, align 1, !dbg !3207
  %conv820 = zext i8 %440 to i32, !dbg !3207
  %441 = load i32, ptr %bits, align 4, !dbg !3207
  %sub821 = sub i32 %441, %conv820, !dbg !3207
  store i32 %sub821, ptr %bits, align 4, !dbg !3207
  br label %do.cond822, !dbg !3207

do.cond822:                                       ; preds = %do.body814
  br label %do.end823, !dbg !3207

do.end823:                                        ; preds = %do.cond822
  br label %if.end824, !dbg !3209

if.end824:                                        ; preds = %do.end823, %land.lhs.true764, %for.end761
  br label %do.body825, !dbg !3210

do.body825:                                       ; preds = %if.end824
  %bits826 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !3211
  %442 = load i8, ptr %bits826, align 1, !dbg !3211
  %conv827 = zext i8 %442 to i32, !dbg !3211
  %443 = load i64, ptr %hold, align 8, !dbg !3211
  %sh_prom828 = zext i32 %conv827 to i64, !dbg !3211
  %shr829 = lshr i64 %443, %sh_prom828, !dbg !3211
  store i64 %shr829, ptr %hold, align 8, !dbg !3211
  %bits830 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !3211
  %444 = load i8, ptr %bits830, align 1, !dbg !3211
  %conv831 = zext i8 %444 to i32, !dbg !3211
  %445 = load i32, ptr %bits, align 4, !dbg !3211
  %sub832 = sub i32 %445, %conv831, !dbg !3211
  store i32 %sub832, ptr %bits, align 4, !dbg !3211
  br label %do.cond833, !dbg !3211

do.cond833:                                       ; preds = %do.body825
  br label %do.end834, !dbg !3211

do.end834:                                        ; preds = %do.cond833
  %val835 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !3213
  %446 = load i16, ptr %val835, align 2, !dbg !3213
  %conv836 = zext i16 %446 to i32, !dbg !3214
  %447 = load ptr, ptr %state, align 8, !dbg !3215
  %length837 = getelementptr inbounds %struct.inflate_state, ptr %447, i32 0, i32 15, !dbg !3216
  store i32 %conv836, ptr %length837, align 4, !dbg !3217
  %op838 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !3218
  %448 = load i8, ptr %op838, align 2, !dbg !3218
  %conv839 = zext i8 %448 to i32, !dbg !3220
  %cmp840 = icmp eq i32 %conv839, 0, !dbg !3221
  br i1 %cmp840, label %if.then842, label %if.end844, !dbg !3222

if.then842:                                       ; preds = %do.end834
  %449 = load ptr, ptr %state, align 8, !dbg !3223
  %mode843 = getelementptr inbounds %struct.inflate_state, ptr %449, i32 0, i32 0, !dbg !3225
  store i32 23, ptr %mode843, align 8, !dbg !3226
  br label %sw.epilog1214, !dbg !3227

if.end844:                                        ; preds = %do.end834
  %op845 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !3228
  %450 = load i8, ptr %op845, align 2, !dbg !3228
  %conv846 = zext i8 %450 to i32, !dbg !3230
  %and847 = and i32 %conv846, 32, !dbg !3231
  %tobool848 = icmp ne i32 %and847, 0, !dbg !3231
  br i1 %tobool848, label %if.then849, label %if.end851, !dbg !3232

if.then849:                                       ; preds = %if.end844
  %451 = load ptr, ptr %state, align 8, !dbg !3233
  %mode850 = getelementptr inbounds %struct.inflate_state, ptr %451, i32 0, i32 0, !dbg !3235
  store i32 11, ptr %mode850, align 8, !dbg !3236
  br label %sw.epilog1214, !dbg !3237

if.end851:                                        ; preds = %if.end844
  %op852 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !3238
  %452 = load i8, ptr %op852, align 2, !dbg !3238
  %conv853 = zext i8 %452 to i32, !dbg !3240
  %and854 = and i32 %conv853, 64, !dbg !3241
  %tobool855 = icmp ne i32 %and854, 0, !dbg !3241
  br i1 %tobool855, label %if.then856, label %if.end859, !dbg !3242

if.then856:                                       ; preds = %if.end851
  %453 = load ptr, ptr %strm.addr, align 8, !dbg !3243
  %msg857 = getelementptr inbounds %struct.z_stream_s, ptr %453, i32 0, i32 6, !dbg !3245
  store ptr @.str.2, ptr %msg857, align 8, !dbg !3246
  %454 = load ptr, ptr %state, align 8, !dbg !3247
  %mode858 = getelementptr inbounds %struct.inflate_state, ptr %454, i32 0, i32 0, !dbg !3248
  store i32 27, ptr %mode858, align 8, !dbg !3249
  br label %sw.epilog1214, !dbg !3250

if.end859:                                        ; preds = %if.end851
  %op860 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !3251
  %455 = load i8, ptr %op860, align 2, !dbg !3251
  %conv861 = zext i8 %455 to i32, !dbg !3252
  %and862 = and i32 %conv861, 15, !dbg !3253
  %456 = load ptr, ptr %state, align 8, !dbg !3254
  %extra = getelementptr inbounds %struct.inflate_state, ptr %456, i32 0, i32 17, !dbg !3255
  store i32 %and862, ptr %extra, align 4, !dbg !3256
  %457 = load ptr, ptr %state, align 8, !dbg !3257
  %mode863 = getelementptr inbounds %struct.inflate_state, ptr %457, i32 0, i32 0, !dbg !3258
  store i32 19, ptr %mode863, align 8, !dbg !3259
  br label %sw.bb864, !dbg !3257

sw.bb864:                                         ; preds = %for.cond, %if.end859
  %458 = load ptr, ptr %state, align 8, !dbg !3260
  %extra865 = getelementptr inbounds %struct.inflate_state, ptr %458, i32 0, i32 17, !dbg !3262
  %459 = load i32, ptr %extra865, align 4, !dbg !3262
  %tobool866 = icmp ne i32 %459, 0, !dbg !3260
  br i1 %tobool866, label %if.then867, label %if.end906, !dbg !3263

if.then867:                                       ; preds = %sw.bb864
  br label %do.body868, !dbg !3264

do.body868:                                       ; preds = %if.then867
  br label %while.cond869, !dbg !3266

while.cond869:                                    ; preds = %do.end887, %do.body868
  %460 = load i32, ptr %bits, align 4, !dbg !3266
  %461 = load ptr, ptr %state, align 8, !dbg !3266
  %extra870 = getelementptr inbounds %struct.inflate_state, ptr %461, i32 0, i32 17, !dbg !3266
  %462 = load i32, ptr %extra870, align 4, !dbg !3266
  %cmp871 = icmp ult i32 %460, %462, !dbg !3266
  br i1 %cmp871, label %while.body873, label %while.end888, !dbg !3266

while.body873:                                    ; preds = %while.cond869
  br label %do.body874, !dbg !3266

do.body874:                                       ; preds = %while.body873
  %463 = load i32, ptr %have, align 4, !dbg !3268
  %cmp875 = icmp eq i32 %463, 0, !dbg !3268
  br i1 %cmp875, label %if.then877, label %if.end878, !dbg !3271

if.then877:                                       ; preds = %do.body874
  br label %inf_leave, !dbg !3268

if.end878:                                        ; preds = %do.body874
  %464 = load i32, ptr %have, align 4, !dbg !3271
  %dec879 = add i32 %464, -1, !dbg !3271
  store i32 %dec879, ptr %have, align 4, !dbg !3271
  %465 = load ptr, ptr %next, align 8, !dbg !3271
  %incdec.ptr880 = getelementptr inbounds i8, ptr %465, i32 1, !dbg !3271
  store ptr %incdec.ptr880, ptr %next, align 8, !dbg !3271
  %466 = load i8, ptr %465, align 1, !dbg !3271
  %conv881 = zext i8 %466 to i64, !dbg !3271
  %467 = load i32, ptr %bits, align 4, !dbg !3271
  %sh_prom882 = zext i32 %467 to i64, !dbg !3271
  %shl883 = shl i64 %conv881, %sh_prom882, !dbg !3271
  %468 = load i64, ptr %hold, align 8, !dbg !3271
  %add884 = add i64 %468, %shl883, !dbg !3271
  store i64 %add884, ptr %hold, align 8, !dbg !3271
  %469 = load i32, ptr %bits, align 4, !dbg !3271
  %add885 = add i32 %469, 8, !dbg !3271
  store i32 %add885, ptr %bits, align 4, !dbg !3271
  br label %do.cond886, !dbg !3271

do.cond886:                                       ; preds = %if.end878
  br label %do.end887, !dbg !3271

do.end887:                                        ; preds = %do.cond886
  br label %while.cond869, !dbg !3266, !llvm.loop !3272

while.end888:                                     ; preds = %while.cond869
  br label %do.cond889, !dbg !3266

do.cond889:                                       ; preds = %while.end888
  br label %do.end890, !dbg !3266

do.end890:                                        ; preds = %do.cond889
  %470 = load i64, ptr %hold, align 8, !dbg !3273
  %conv891 = trunc i64 %470 to i32, !dbg !3273
  %471 = load ptr, ptr %state, align 8, !dbg !3273
  %extra892 = getelementptr inbounds %struct.inflate_state, ptr %471, i32 0, i32 17, !dbg !3273
  %472 = load i32, ptr %extra892, align 4, !dbg !3273
  %shl893 = shl i32 1, %472, !dbg !3273
  %sub894 = sub i32 %shl893, 1, !dbg !3273
  %and895 = and i32 %conv891, %sub894, !dbg !3273
  %473 = load ptr, ptr %state, align 8, !dbg !3274
  %length896 = getelementptr inbounds %struct.inflate_state, ptr %473, i32 0, i32 15, !dbg !3275
  %474 = load i32, ptr %length896, align 4, !dbg !3276
  %add897 = add i32 %474, %and895, !dbg !3276
  store i32 %add897, ptr %length896, align 4, !dbg !3276
  br label %do.body898, !dbg !3277

do.body898:                                       ; preds = %do.end890
  %475 = load ptr, ptr %state, align 8, !dbg !3278
  %extra899 = getelementptr inbounds %struct.inflate_state, ptr %475, i32 0, i32 17, !dbg !3278
  %476 = load i32, ptr %extra899, align 4, !dbg !3278
  %477 = load i64, ptr %hold, align 8, !dbg !3278
  %sh_prom900 = zext i32 %476 to i64, !dbg !3278
  %shr901 = lshr i64 %477, %sh_prom900, !dbg !3278
  store i64 %shr901, ptr %hold, align 8, !dbg !3278
  %478 = load ptr, ptr %state, align 8, !dbg !3278
  %extra902 = getelementptr inbounds %struct.inflate_state, ptr %478, i32 0, i32 17, !dbg !3278
  %479 = load i32, ptr %extra902, align 4, !dbg !3278
  %480 = load i32, ptr %bits, align 4, !dbg !3278
  %sub903 = sub i32 %480, %479, !dbg !3278
  store i32 %sub903, ptr %bits, align 4, !dbg !3278
  br label %do.cond904, !dbg !3278

do.cond904:                                       ; preds = %do.body898
  br label %do.end905, !dbg !3278

do.end905:                                        ; preds = %do.cond904
  br label %if.end906, !dbg !3280

if.end906:                                        ; preds = %do.end905, %sw.bb864
  %481 = load ptr, ptr %state, align 8, !dbg !3281
  %mode907 = getelementptr inbounds %struct.inflate_state, ptr %481, i32 0, i32 0, !dbg !3282
  store i32 20, ptr %mode907, align 8, !dbg !3283
  br label %sw.bb908, !dbg !3281

sw.bb908:                                         ; preds = %for.cond, %if.end906
  br label %for.cond909, !dbg !3284

for.cond909:                                      ; preds = %do.end937, %sw.bb908
  %482 = load ptr, ptr %state, align 8, !dbg !3285
  %distcode910 = getelementptr inbounds %struct.inflate_state, ptr %482, i32 0, i32 19, !dbg !3289
  %483 = load ptr, ptr %distcode910, align 8, !dbg !3289
  %484 = load i64, ptr %hold, align 8, !dbg !3290
  %conv911 = trunc i64 %484 to i32, !dbg !3290
  %485 = load ptr, ptr %state, align 8, !dbg !3290
  %distbits912 = getelementptr inbounds %struct.inflate_state, ptr %485, i32 0, i32 21, !dbg !3290
  %486 = load i32, ptr %distbits912, align 4, !dbg !3290
  %shl913 = shl i32 1, %486, !dbg !3290
  %sub914 = sub i32 %shl913, 1, !dbg !3290
  %and915 = and i32 %conv911, %sub914, !dbg !3290
  %idxprom916 = zext i32 %and915 to i64, !dbg !3285
  %arrayidx917 = getelementptr inbounds %struct.code, ptr %483, i64 %idxprom916, !dbg !3285
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx917, i64 4, i1 false), !dbg !3285
  %bits918 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !3291
  %487 = load i8, ptr %bits918, align 1, !dbg !3291
  %conv919 = zext i8 %487 to i32, !dbg !3293
  %488 = load i32, ptr %bits, align 4, !dbg !3294
  %cmp920 = icmp ule i32 %conv919, %488, !dbg !3295
  br i1 %cmp920, label %if.then922, label %if.end923, !dbg !3296

if.then922:                                       ; preds = %for.cond909
  br label %for.end938, !dbg !3297

if.end923:                                        ; preds = %for.cond909
  br label %do.body924, !dbg !3298

do.body924:                                       ; preds = %if.end923
  %489 = load i32, ptr %have, align 4, !dbg !3299
  %cmp925 = icmp eq i32 %489, 0, !dbg !3299
  br i1 %cmp925, label %if.then927, label %if.end928, !dbg !3302

if.then927:                                       ; preds = %do.body924
  br label %inf_leave, !dbg !3299

if.end928:                                        ; preds = %do.body924
  %490 = load i32, ptr %have, align 4, !dbg !3302
  %dec929 = add i32 %490, -1, !dbg !3302
  store i32 %dec929, ptr %have, align 4, !dbg !3302
  %491 = load ptr, ptr %next, align 8, !dbg !3302
  %incdec.ptr930 = getelementptr inbounds i8, ptr %491, i32 1, !dbg !3302
  store ptr %incdec.ptr930, ptr %next, align 8, !dbg !3302
  %492 = load i8, ptr %491, align 1, !dbg !3302
  %conv931 = zext i8 %492 to i64, !dbg !3302
  %493 = load i32, ptr %bits, align 4, !dbg !3302
  %sh_prom932 = zext i32 %493 to i64, !dbg !3302
  %shl933 = shl i64 %conv931, %sh_prom932, !dbg !3302
  %494 = load i64, ptr %hold, align 8, !dbg !3302
  %add934 = add i64 %494, %shl933, !dbg !3302
  store i64 %add934, ptr %hold, align 8, !dbg !3302
  %495 = load i32, ptr %bits, align 4, !dbg !3302
  %add935 = add i32 %495, 8, !dbg !3302
  store i32 %add935, ptr %bits, align 4, !dbg !3302
  br label %do.cond936, !dbg !3302

do.cond936:                                       ; preds = %if.end928
  br label %do.end937, !dbg !3302

do.end937:                                        ; preds = %do.cond936
  br label %for.cond909, !dbg !3303, !llvm.loop !3304

for.end938:                                       ; preds = %if.then922
  %op939 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !3307
  %496 = load i8, ptr %op939, align 2, !dbg !3307
  %conv940 = zext i8 %496 to i32, !dbg !3309
  %and941 = and i32 %conv940, 240, !dbg !3310
  %cmp942 = icmp eq i32 %and941, 0, !dbg !3311
  br i1 %cmp942, label %if.then944, label %if.end998, !dbg !3312

if.then944:                                       ; preds = %for.end938
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %last, ptr align 2 %this, i64 4, i1 false), !dbg !3313
  br label %for.cond945, !dbg !3315

for.cond945:                                      ; preds = %do.end986, %if.then944
  %497 = load ptr, ptr %state, align 8, !dbg !3316
  %distcode946 = getelementptr inbounds %struct.inflate_state, ptr %497, i32 0, i32 19, !dbg !3320
  %498 = load ptr, ptr %distcode946, align 8, !dbg !3320
  %val947 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 2, !dbg !3321
  %499 = load i16, ptr %val947, align 2, !dbg !3321
  %conv948 = zext i16 %499 to i32, !dbg !3322
  %500 = load i64, ptr %hold, align 8, !dbg !3323
  %conv949 = trunc i64 %500 to i32, !dbg !3323
  %bits950 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !3323
  %501 = load i8, ptr %bits950, align 1, !dbg !3323
  %conv951 = zext i8 %501 to i32, !dbg !3323
  %op952 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 0, !dbg !3323
  %502 = load i8, ptr %op952, align 2, !dbg !3323
  %conv953 = zext i8 %502 to i32, !dbg !3323
  %add954 = add nsw i32 %conv951, %conv953, !dbg !3323
  %shl955 = shl i32 1, %add954, !dbg !3323
  %sub956 = sub i32 %shl955, 1, !dbg !3323
  %and957 = and i32 %conv949, %sub956, !dbg !3323
  %bits958 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !3324
  %503 = load i8, ptr %bits958, align 1, !dbg !3324
  %conv959 = zext i8 %503 to i32, !dbg !3325
  %shr960 = lshr i32 %and957, %conv959, !dbg !3326
  %add961 = add i32 %conv948, %shr960, !dbg !3327
  %idxprom962 = zext i32 %add961 to i64, !dbg !3316
  %arrayidx963 = getelementptr inbounds %struct.code, ptr %498, i64 %idxprom962, !dbg !3316
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx963, i64 4, i1 false), !dbg !3316
  %bits964 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !3328
  %504 = load i8, ptr %bits964, align 1, !dbg !3328
  %conv965 = zext i8 %504 to i32, !dbg !3330
  %bits966 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !3331
  %505 = load i8, ptr %bits966, align 1, !dbg !3331
  %conv967 = zext i8 %505 to i32, !dbg !3332
  %add968 = add nsw i32 %conv965, %conv967, !dbg !3333
  %506 = load i32, ptr %bits, align 4, !dbg !3334
  %cmp969 = icmp ule i32 %add968, %506, !dbg !3335
  br i1 %cmp969, label %if.then971, label %if.end972, !dbg !3336

if.then971:                                       ; preds = %for.cond945
  br label %for.end987, !dbg !3337

if.end972:                                        ; preds = %for.cond945
  br label %do.body973, !dbg !3338

do.body973:                                       ; preds = %if.end972
  %507 = load i32, ptr %have, align 4, !dbg !3339
  %cmp974 = icmp eq i32 %507, 0, !dbg !3339
  br i1 %cmp974, label %if.then976, label %if.end977, !dbg !3342

if.then976:                                       ; preds = %do.body973
  br label %inf_leave, !dbg !3339

if.end977:                                        ; preds = %do.body973
  %508 = load i32, ptr %have, align 4, !dbg !3342
  %dec978 = add i32 %508, -1, !dbg !3342
  store i32 %dec978, ptr %have, align 4, !dbg !3342
  %509 = load ptr, ptr %next, align 8, !dbg !3342
  %incdec.ptr979 = getelementptr inbounds i8, ptr %509, i32 1, !dbg !3342
  store ptr %incdec.ptr979, ptr %next, align 8, !dbg !3342
  %510 = load i8, ptr %509, align 1, !dbg !3342
  %conv980 = zext i8 %510 to i64, !dbg !3342
  %511 = load i32, ptr %bits, align 4, !dbg !3342
  %sh_prom981 = zext i32 %511 to i64, !dbg !3342
  %shl982 = shl i64 %conv980, %sh_prom981, !dbg !3342
  %512 = load i64, ptr %hold, align 8, !dbg !3342
  %add983 = add i64 %512, %shl982, !dbg !3342
  store i64 %add983, ptr %hold, align 8, !dbg !3342
  %513 = load i32, ptr %bits, align 4, !dbg !3342
  %add984 = add i32 %513, 8, !dbg !3342
  store i32 %add984, ptr %bits, align 4, !dbg !3342
  br label %do.cond985, !dbg !3342

do.cond985:                                       ; preds = %if.end977
  br label %do.end986, !dbg !3342

do.end986:                                        ; preds = %do.cond985
  br label %for.cond945, !dbg !3343, !llvm.loop !3344

for.end987:                                       ; preds = %if.then971
  br label %do.body988, !dbg !3347

do.body988:                                       ; preds = %for.end987
  %bits989 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !3348
  %514 = load i8, ptr %bits989, align 1, !dbg !3348
  %conv990 = zext i8 %514 to i32, !dbg !3348
  %515 = load i64, ptr %hold, align 8, !dbg !3348
  %sh_prom991 = zext i32 %conv990 to i64, !dbg !3348
  %shr992 = lshr i64 %515, %sh_prom991, !dbg !3348
  store i64 %shr992, ptr %hold, align 8, !dbg !3348
  %bits993 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !3348
  %516 = load i8, ptr %bits993, align 1, !dbg !3348
  %conv994 = zext i8 %516 to i32, !dbg !3348
  %517 = load i32, ptr %bits, align 4, !dbg !3348
  %sub995 = sub i32 %517, %conv994, !dbg !3348
  store i32 %sub995, ptr %bits, align 4, !dbg !3348
  br label %do.cond996, !dbg !3348

do.cond996:                                       ; preds = %do.body988
  br label %do.end997, !dbg !3348

do.end997:                                        ; preds = %do.cond996
  br label %if.end998, !dbg !3350

if.end998:                                        ; preds = %do.end997, %for.end938
  br label %do.body999, !dbg !3351

do.body999:                                       ; preds = %if.end998
  %bits1000 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !3352
  %518 = load i8, ptr %bits1000, align 1, !dbg !3352
  %conv1001 = zext i8 %518 to i32, !dbg !3352
  %519 = load i64, ptr %hold, align 8, !dbg !3352
  %sh_prom1002 = zext i32 %conv1001 to i64, !dbg !3352
  %shr1003 = lshr i64 %519, %sh_prom1002, !dbg !3352
  store i64 %shr1003, ptr %hold, align 8, !dbg !3352
  %bits1004 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !3352
  %520 = load i8, ptr %bits1004, align 1, !dbg !3352
  %conv1005 = zext i8 %520 to i32, !dbg !3352
  %521 = load i32, ptr %bits, align 4, !dbg !3352
  %sub1006 = sub i32 %521, %conv1005, !dbg !3352
  store i32 %sub1006, ptr %bits, align 4, !dbg !3352
  br label %do.cond1007, !dbg !3352

do.cond1007:                                      ; preds = %do.body999
  br label %do.end1008, !dbg !3352

do.end1008:                                       ; preds = %do.cond1007
  %op1009 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !3354
  %522 = load i8, ptr %op1009, align 2, !dbg !3354
  %conv1010 = zext i8 %522 to i32, !dbg !3356
  %and1011 = and i32 %conv1010, 64, !dbg !3357
  %tobool1012 = icmp ne i32 %and1011, 0, !dbg !3357
  br i1 %tobool1012, label %if.then1013, label %if.end1016, !dbg !3358

if.then1013:                                      ; preds = %do.end1008
  %523 = load ptr, ptr %strm.addr, align 8, !dbg !3359
  %msg1014 = getelementptr inbounds %struct.z_stream_s, ptr %523, i32 0, i32 6, !dbg !3361
  store ptr @.str.1, ptr %msg1014, align 8, !dbg !3362
  %524 = load ptr, ptr %state, align 8, !dbg !3363
  %mode1015 = getelementptr inbounds %struct.inflate_state, ptr %524, i32 0, i32 0, !dbg !3364
  store i32 27, ptr %mode1015, align 8, !dbg !3365
  br label %sw.epilog1214, !dbg !3366

if.end1016:                                       ; preds = %do.end1008
  %val1017 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !3367
  %525 = load i16, ptr %val1017, align 2, !dbg !3367
  %conv1018 = zext i16 %525 to i32, !dbg !3368
  %526 = load ptr, ptr %state, align 8, !dbg !3369
  %offset = getelementptr inbounds %struct.inflate_state, ptr %526, i32 0, i32 16, !dbg !3370
  store i32 %conv1018, ptr %offset, align 8, !dbg !3371
  %op1019 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !3372
  %527 = load i8, ptr %op1019, align 2, !dbg !3372
  %conv1020 = zext i8 %527 to i32, !dbg !3373
  %and1021 = and i32 %conv1020, 15, !dbg !3374
  %528 = load ptr, ptr %state, align 8, !dbg !3375
  %extra1022 = getelementptr inbounds %struct.inflate_state, ptr %528, i32 0, i32 17, !dbg !3376
  store i32 %and1021, ptr %extra1022, align 4, !dbg !3377
  %529 = load ptr, ptr %state, align 8, !dbg !3378
  %mode1023 = getelementptr inbounds %struct.inflate_state, ptr %529, i32 0, i32 0, !dbg !3379
  store i32 21, ptr %mode1023, align 8, !dbg !3380
  br label %sw.bb1024, !dbg !3378

sw.bb1024:                                        ; preds = %for.cond, %if.end1016
  %530 = load ptr, ptr %state, align 8, !dbg !3381
  %extra1025 = getelementptr inbounds %struct.inflate_state, ptr %530, i32 0, i32 17, !dbg !3383
  %531 = load i32, ptr %extra1025, align 4, !dbg !3383
  %tobool1026 = icmp ne i32 %531, 0, !dbg !3381
  br i1 %tobool1026, label %if.then1027, label %if.end1066, !dbg !3384

if.then1027:                                      ; preds = %sw.bb1024
  br label %do.body1028, !dbg !3385

do.body1028:                                      ; preds = %if.then1027
  br label %while.cond1029, !dbg !3387

while.cond1029:                                   ; preds = %do.end1047, %do.body1028
  %532 = load i32, ptr %bits, align 4, !dbg !3387
  %533 = load ptr, ptr %state, align 8, !dbg !3387
  %extra1030 = getelementptr inbounds %struct.inflate_state, ptr %533, i32 0, i32 17, !dbg !3387
  %534 = load i32, ptr %extra1030, align 4, !dbg !3387
  %cmp1031 = icmp ult i32 %532, %534, !dbg !3387
  br i1 %cmp1031, label %while.body1033, label %while.end1048, !dbg !3387

while.body1033:                                   ; preds = %while.cond1029
  br label %do.body1034, !dbg !3387

do.body1034:                                      ; preds = %while.body1033
  %535 = load i32, ptr %have, align 4, !dbg !3389
  %cmp1035 = icmp eq i32 %535, 0, !dbg !3389
  br i1 %cmp1035, label %if.then1037, label %if.end1038, !dbg !3392

if.then1037:                                      ; preds = %do.body1034
  br label %inf_leave, !dbg !3389

if.end1038:                                       ; preds = %do.body1034
  %536 = load i32, ptr %have, align 4, !dbg !3392
  %dec1039 = add i32 %536, -1, !dbg !3392
  store i32 %dec1039, ptr %have, align 4, !dbg !3392
  %537 = load ptr, ptr %next, align 8, !dbg !3392
  %incdec.ptr1040 = getelementptr inbounds i8, ptr %537, i32 1, !dbg !3392
  store ptr %incdec.ptr1040, ptr %next, align 8, !dbg !3392
  %538 = load i8, ptr %537, align 1, !dbg !3392
  %conv1041 = zext i8 %538 to i64, !dbg !3392
  %539 = load i32, ptr %bits, align 4, !dbg !3392
  %sh_prom1042 = zext i32 %539 to i64, !dbg !3392
  %shl1043 = shl i64 %conv1041, %sh_prom1042, !dbg !3392
  %540 = load i64, ptr %hold, align 8, !dbg !3392
  %add1044 = add i64 %540, %shl1043, !dbg !3392
  store i64 %add1044, ptr %hold, align 8, !dbg !3392
  %541 = load i32, ptr %bits, align 4, !dbg !3392
  %add1045 = add i32 %541, 8, !dbg !3392
  store i32 %add1045, ptr %bits, align 4, !dbg !3392
  br label %do.cond1046, !dbg !3392

do.cond1046:                                      ; preds = %if.end1038
  br label %do.end1047, !dbg !3392

do.end1047:                                       ; preds = %do.cond1046
  br label %while.cond1029, !dbg !3387, !llvm.loop !3393

while.end1048:                                    ; preds = %while.cond1029
  br label %do.cond1049, !dbg !3387

do.cond1049:                                      ; preds = %while.end1048
  br label %do.end1050, !dbg !3387

do.end1050:                                       ; preds = %do.cond1049
  %542 = load i64, ptr %hold, align 8, !dbg !3394
  %conv1051 = trunc i64 %542 to i32, !dbg !3394
  %543 = load ptr, ptr %state, align 8, !dbg !3394
  %extra1052 = getelementptr inbounds %struct.inflate_state, ptr %543, i32 0, i32 17, !dbg !3394
  %544 = load i32, ptr %extra1052, align 4, !dbg !3394
  %shl1053 = shl i32 1, %544, !dbg !3394
  %sub1054 = sub i32 %shl1053, 1, !dbg !3394
  %and1055 = and i32 %conv1051, %sub1054, !dbg !3394
  %545 = load ptr, ptr %state, align 8, !dbg !3395
  %offset1056 = getelementptr inbounds %struct.inflate_state, ptr %545, i32 0, i32 16, !dbg !3396
  %546 = load i32, ptr %offset1056, align 8, !dbg !3397
  %add1057 = add i32 %546, %and1055, !dbg !3397
  store i32 %add1057, ptr %offset1056, align 8, !dbg !3397
  br label %do.body1058, !dbg !3398

do.body1058:                                      ; preds = %do.end1050
  %547 = load ptr, ptr %state, align 8, !dbg !3399
  %extra1059 = getelementptr inbounds %struct.inflate_state, ptr %547, i32 0, i32 17, !dbg !3399
  %548 = load i32, ptr %extra1059, align 4, !dbg !3399
  %549 = load i64, ptr %hold, align 8, !dbg !3399
  %sh_prom1060 = zext i32 %548 to i64, !dbg !3399
  %shr1061 = lshr i64 %549, %sh_prom1060, !dbg !3399
  store i64 %shr1061, ptr %hold, align 8, !dbg !3399
  %550 = load ptr, ptr %state, align 8, !dbg !3399
  %extra1062 = getelementptr inbounds %struct.inflate_state, ptr %550, i32 0, i32 17, !dbg !3399
  %551 = load i32, ptr %extra1062, align 4, !dbg !3399
  %552 = load i32, ptr %bits, align 4, !dbg !3399
  %sub1063 = sub i32 %552, %551, !dbg !3399
  store i32 %sub1063, ptr %bits, align 4, !dbg !3399
  br label %do.cond1064, !dbg !3399

do.cond1064:                                      ; preds = %do.body1058
  br label %do.end1065, !dbg !3399

do.end1065:                                       ; preds = %do.cond1064
  br label %if.end1066, !dbg !3401

if.end1066:                                       ; preds = %do.end1065, %sw.bb1024
  %553 = load ptr, ptr %state, align 8, !dbg !3402
  %offset1067 = getelementptr inbounds %struct.inflate_state, ptr %553, i32 0, i32 16, !dbg !3404
  %554 = load i32, ptr %offset1067, align 8, !dbg !3404
  %555 = load ptr, ptr %state, align 8, !dbg !3405
  %whave = getelementptr inbounds %struct.inflate_state, ptr %555, i32 0, i32 10, !dbg !3406
  %556 = load i32, ptr %whave, align 8, !dbg !3406
  %557 = load i32, ptr %out, align 4, !dbg !3407
  %add1068 = add i32 %556, %557, !dbg !3408
  %558 = load i32, ptr %left, align 4, !dbg !3409
  %sub1069 = sub i32 %add1068, %558, !dbg !3410
  %cmp1070 = icmp ugt i32 %554, %sub1069, !dbg !3411
  br i1 %cmp1070, label %if.then1072, label %if.end1075, !dbg !3412

if.then1072:                                      ; preds = %if.end1066
  %559 = load ptr, ptr %strm.addr, align 8, !dbg !3413
  %msg1073 = getelementptr inbounds %struct.z_stream_s, ptr %559, i32 0, i32 6, !dbg !3415
  store ptr @.str, ptr %msg1073, align 8, !dbg !3416
  %560 = load ptr, ptr %state, align 8, !dbg !3417
  %mode1074 = getelementptr inbounds %struct.inflate_state, ptr %560, i32 0, i32 0, !dbg !3418
  store i32 27, ptr %mode1074, align 8, !dbg !3419
  br label %sw.epilog1214, !dbg !3420

if.end1075:                                       ; preds = %if.end1066
  %561 = load ptr, ptr %state, align 8, !dbg !3421
  %mode1076 = getelementptr inbounds %struct.inflate_state, ptr %561, i32 0, i32 0, !dbg !3422
  store i32 22, ptr %mode1076, align 8, !dbg !3423
  br label %sw.bb1077, !dbg !3421

sw.bb1077:                                        ; preds = %for.cond, %if.end1075
  %562 = load i32, ptr %left, align 4, !dbg !3424
  %cmp1078 = icmp eq i32 %562, 0, !dbg !3426
  br i1 %cmp1078, label %if.then1080, label %if.end1081, !dbg !3427

if.then1080:                                      ; preds = %sw.bb1077
  br label %inf_leave, !dbg !3428

if.end1081:                                       ; preds = %sw.bb1077
  %563 = load i32, ptr %out, align 4, !dbg !3429
  %564 = load i32, ptr %left, align 4, !dbg !3430
  %sub1082 = sub i32 %563, %564, !dbg !3431
  store i32 %sub1082, ptr %copy, align 4, !dbg !3432
  %565 = load ptr, ptr %state, align 8, !dbg !3433
  %offset1083 = getelementptr inbounds %struct.inflate_state, ptr %565, i32 0, i32 16, !dbg !3435
  %566 = load i32, ptr %offset1083, align 8, !dbg !3435
  %567 = load i32, ptr %copy, align 4, !dbg !3436
  %cmp1084 = icmp ugt i32 %566, %567, !dbg !3437
  br i1 %cmp1084, label %if.then1086, label %if.else1110, !dbg !3438

if.then1086:                                      ; preds = %if.end1081
  %568 = load ptr, ptr %state, align 8, !dbg !3439
  %offset1087 = getelementptr inbounds %struct.inflate_state, ptr %568, i32 0, i32 16, !dbg !3441
  %569 = load i32, ptr %offset1087, align 8, !dbg !3441
  %570 = load i32, ptr %copy, align 4, !dbg !3442
  %sub1088 = sub i32 %569, %570, !dbg !3443
  store i32 %sub1088, ptr %copy, align 4, !dbg !3444
  %571 = load i32, ptr %copy, align 4, !dbg !3445
  %572 = load ptr, ptr %state, align 8, !dbg !3447
  %write = getelementptr inbounds %struct.inflate_state, ptr %572, i32 0, i32 11, !dbg !3448
  %573 = load i32, ptr %write, align 4, !dbg !3448
  %cmp1089 = icmp ugt i32 %571, %573, !dbg !3449
  br i1 %cmp1089, label %if.then1091, label %if.else1097, !dbg !3450

if.then1091:                                      ; preds = %if.then1086
  %574 = load ptr, ptr %state, align 8, !dbg !3451
  %write1092 = getelementptr inbounds %struct.inflate_state, ptr %574, i32 0, i32 11, !dbg !3453
  %575 = load i32, ptr %write1092, align 4, !dbg !3453
  %576 = load i32, ptr %copy, align 4, !dbg !3454
  %sub1093 = sub i32 %576, %575, !dbg !3454
  store i32 %sub1093, ptr %copy, align 4, !dbg !3454
  %577 = load ptr, ptr %state, align 8, !dbg !3455
  %window = getelementptr inbounds %struct.inflate_state, ptr %577, i32 0, i32 12, !dbg !3456
  %578 = load ptr, ptr %window, align 8, !dbg !3456
  %579 = load ptr, ptr %state, align 8, !dbg !3457
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %579, i32 0, i32 9, !dbg !3458
  %580 = load i32, ptr %wsize, align 4, !dbg !3458
  %581 = load i32, ptr %copy, align 4, !dbg !3459
  %sub1094 = sub i32 %580, %581, !dbg !3460
  %idx.ext1095 = zext i32 %sub1094 to i64, !dbg !3461
  %add.ptr1096 = getelementptr inbounds i8, ptr %578, i64 %idx.ext1095, !dbg !3461
  store ptr %add.ptr1096, ptr %from, align 8, !dbg !3462
  br label %if.end1103, !dbg !3463

if.else1097:                                      ; preds = %if.then1086
  %582 = load ptr, ptr %state, align 8, !dbg !3464
  %window1098 = getelementptr inbounds %struct.inflate_state, ptr %582, i32 0, i32 12, !dbg !3465
  %583 = load ptr, ptr %window1098, align 8, !dbg !3465
  %584 = load ptr, ptr %state, align 8, !dbg !3466
  %write1099 = getelementptr inbounds %struct.inflate_state, ptr %584, i32 0, i32 11, !dbg !3467
  %585 = load i32, ptr %write1099, align 4, !dbg !3467
  %586 = load i32, ptr %copy, align 4, !dbg !3468
  %sub1100 = sub i32 %585, %586, !dbg !3469
  %idx.ext1101 = zext i32 %sub1100 to i64, !dbg !3470
  %add.ptr1102 = getelementptr inbounds i8, ptr %583, i64 %idx.ext1101, !dbg !3470
  store ptr %add.ptr1102, ptr %from, align 8, !dbg !3471
  br label %if.end1103

if.end1103:                                       ; preds = %if.else1097, %if.then1091
  %587 = load i32, ptr %copy, align 4, !dbg !3472
  %588 = load ptr, ptr %state, align 8, !dbg !3474
  %length1104 = getelementptr inbounds %struct.inflate_state, ptr %588, i32 0, i32 15, !dbg !3475
  %589 = load i32, ptr %length1104, align 4, !dbg !3475
  %cmp1105 = icmp ugt i32 %587, %589, !dbg !3476
  br i1 %cmp1105, label %if.then1107, label %if.end1109, !dbg !3477

if.then1107:                                      ; preds = %if.end1103
  %590 = load ptr, ptr %state, align 8, !dbg !3478
  %length1108 = getelementptr inbounds %struct.inflate_state, ptr %590, i32 0, i32 15, !dbg !3479
  %591 = load i32, ptr %length1108, align 4, !dbg !3479
  store i32 %591, ptr %copy, align 4, !dbg !3480
  br label %if.end1109, !dbg !3481

if.end1109:                                       ; preds = %if.then1107, %if.end1103
  br label %if.end1115, !dbg !3482

if.else1110:                                      ; preds = %if.end1081
  %592 = load ptr, ptr %put, align 8, !dbg !3483
  %593 = load ptr, ptr %state, align 8, !dbg !3485
  %offset1111 = getelementptr inbounds %struct.inflate_state, ptr %593, i32 0, i32 16, !dbg !3486
  %594 = load i32, ptr %offset1111, align 8, !dbg !3486
  %idx.ext1112 = zext i32 %594 to i64, !dbg !3487
  %idx.neg = sub i64 0, %idx.ext1112, !dbg !3487
  %add.ptr1113 = getelementptr inbounds i8, ptr %592, i64 %idx.neg, !dbg !3487
  store ptr %add.ptr1113, ptr %from, align 8, !dbg !3488
  %595 = load ptr, ptr %state, align 8, !dbg !3489
  %length1114 = getelementptr inbounds %struct.inflate_state, ptr %595, i32 0, i32 15, !dbg !3490
  %596 = load i32, ptr %length1114, align 4, !dbg !3490
  store i32 %596, ptr %copy, align 4, !dbg !3491
  br label %if.end1115

if.end1115:                                       ; preds = %if.else1110, %if.end1109
  %597 = load i32, ptr %copy, align 4, !dbg !3492
  %598 = load i32, ptr %left, align 4, !dbg !3494
  %cmp1116 = icmp ugt i32 %597, %598, !dbg !3495
  br i1 %cmp1116, label %if.then1118, label %if.end1119, !dbg !3496

if.then1118:                                      ; preds = %if.end1115
  %599 = load i32, ptr %left, align 4, !dbg !3497
  store i32 %599, ptr %copy, align 4, !dbg !3498
  br label %if.end1119, !dbg !3499

if.end1119:                                       ; preds = %if.then1118, %if.end1115
  %600 = load i32, ptr %copy, align 4, !dbg !3500
  %601 = load i32, ptr %left, align 4, !dbg !3501
  %sub1120 = sub i32 %601, %600, !dbg !3501
  store i32 %sub1120, ptr %left, align 4, !dbg !3501
  %602 = load i32, ptr %copy, align 4, !dbg !3502
  %603 = load ptr, ptr %state, align 8, !dbg !3503
  %length1121 = getelementptr inbounds %struct.inflate_state, ptr %603, i32 0, i32 15, !dbg !3504
  %604 = load i32, ptr %length1121, align 4, !dbg !3505
  %sub1122 = sub i32 %604, %602, !dbg !3505
  store i32 %sub1122, ptr %length1121, align 4, !dbg !3505
  br label %do.body1123, !dbg !3506

do.body1123:                                      ; preds = %do.cond1126, %if.end1119
  %605 = load ptr, ptr %from, align 8, !dbg !3507
  %incdec.ptr1124 = getelementptr inbounds i8, ptr %605, i32 1, !dbg !3507
  store ptr %incdec.ptr1124, ptr %from, align 8, !dbg !3507
  %606 = load i8, ptr %605, align 1, !dbg !3509
  %607 = load ptr, ptr %put, align 8, !dbg !3510
  %incdec.ptr1125 = getelementptr inbounds i8, ptr %607, i32 1, !dbg !3510
  store ptr %incdec.ptr1125, ptr %put, align 8, !dbg !3510
  store i8 %606, ptr %607, align 1, !dbg !3511
  br label %do.cond1126, !dbg !3512

do.cond1126:                                      ; preds = %do.body1123
  %608 = load i32, ptr %copy, align 4, !dbg !3513
  %dec1127 = add i32 %608, -1, !dbg !3513
  store i32 %dec1127, ptr %copy, align 4, !dbg !3513
  %tobool1128 = icmp ne i32 %dec1127, 0, !dbg !3512
  br i1 %tobool1128, label %do.body1123, label %do.end1129, !dbg !3512, !llvm.loop !3514

do.end1129:                                       ; preds = %do.cond1126
  %609 = load ptr, ptr %state, align 8, !dbg !3516
  %length1130 = getelementptr inbounds %struct.inflate_state, ptr %609, i32 0, i32 15, !dbg !3518
  %610 = load i32, ptr %length1130, align 4, !dbg !3518
  %cmp1131 = icmp eq i32 %610, 0, !dbg !3519
  br i1 %cmp1131, label %if.then1133, label %if.end1135, !dbg !3520

if.then1133:                                      ; preds = %do.end1129
  %611 = load ptr, ptr %state, align 8, !dbg !3521
  %mode1134 = getelementptr inbounds %struct.inflate_state, ptr %611, i32 0, i32 0, !dbg !3522
  store i32 18, ptr %mode1134, align 8, !dbg !3523
  br label %if.end1135, !dbg !3521

if.end1135:                                       ; preds = %if.then1133, %do.end1129
  br label %sw.epilog1214, !dbg !3524

sw.bb1136:                                        ; preds = %for.cond
  %612 = load i32, ptr %left, align 4, !dbg !3525
  %cmp1137 = icmp eq i32 %612, 0, !dbg !3527
  br i1 %cmp1137, label %if.then1139, label %if.end1140, !dbg !3528

if.then1139:                                      ; preds = %sw.bb1136
  br label %inf_leave, !dbg !3529

if.end1140:                                       ; preds = %sw.bb1136
  %613 = load ptr, ptr %state, align 8, !dbg !3530
  %length1141 = getelementptr inbounds %struct.inflate_state, ptr %613, i32 0, i32 15, !dbg !3531
  %614 = load i32, ptr %length1141, align 4, !dbg !3531
  %conv1142 = trunc i32 %614 to i8, !dbg !3532
  %615 = load ptr, ptr %put, align 8, !dbg !3533
  %incdec.ptr1143 = getelementptr inbounds i8, ptr %615, i32 1, !dbg !3533
  store ptr %incdec.ptr1143, ptr %put, align 8, !dbg !3533
  store i8 %conv1142, ptr %615, align 1, !dbg !3534
  %616 = load i32, ptr %left, align 4, !dbg !3535
  %dec1144 = add i32 %616, -1, !dbg !3535
  store i32 %dec1144, ptr %left, align 4, !dbg !3535
  %617 = load ptr, ptr %state, align 8, !dbg !3536
  %mode1145 = getelementptr inbounds %struct.inflate_state, ptr %617, i32 0, i32 0, !dbg !3537
  store i32 18, ptr %mode1145, align 8, !dbg !3538
  br label %sw.epilog1214, !dbg !3539

sw.bb1146:                                        ; preds = %for.cond
  %618 = load ptr, ptr %state, align 8, !dbg !3540
  %wrap1147 = getelementptr inbounds %struct.inflate_state, ptr %618, i32 0, i32 2, !dbg !3542
  %619 = load i32, ptr %wrap1147, align 8, !dbg !3542
  %tobool1148 = icmp ne i32 %619, 0, !dbg !3540
  br i1 %tobool1148, label %if.then1149, label %if.end1208, !dbg !3543

if.then1149:                                      ; preds = %sw.bb1146
  br label %do.body1150, !dbg !3544

do.body1150:                                      ; preds = %if.then1149
  br label %while.cond1151, !dbg !3546

while.cond1151:                                   ; preds = %do.end1168, %do.body1150
  %620 = load i32, ptr %bits, align 4, !dbg !3546
  %cmp1152 = icmp ult i32 %620, 32, !dbg !3546
  br i1 %cmp1152, label %while.body1154, label %while.end1169, !dbg !3546

while.body1154:                                   ; preds = %while.cond1151
  br label %do.body1155, !dbg !3546

do.body1155:                                      ; preds = %while.body1154
  %621 = load i32, ptr %have, align 4, !dbg !3548
  %cmp1156 = icmp eq i32 %621, 0, !dbg !3548
  br i1 %cmp1156, label %if.then1158, label %if.end1159, !dbg !3551

if.then1158:                                      ; preds = %do.body1155
  br label %inf_leave, !dbg !3548

if.end1159:                                       ; preds = %do.body1155
  %622 = load i32, ptr %have, align 4, !dbg !3551
  %dec1160 = add i32 %622, -1, !dbg !3551
  store i32 %dec1160, ptr %have, align 4, !dbg !3551
  %623 = load ptr, ptr %next, align 8, !dbg !3551
  %incdec.ptr1161 = getelementptr inbounds i8, ptr %623, i32 1, !dbg !3551
  store ptr %incdec.ptr1161, ptr %next, align 8, !dbg !3551
  %624 = load i8, ptr %623, align 1, !dbg !3551
  %conv1162 = zext i8 %624 to i64, !dbg !3551
  %625 = load i32, ptr %bits, align 4, !dbg !3551
  %sh_prom1163 = zext i32 %625 to i64, !dbg !3551
  %shl1164 = shl i64 %conv1162, %sh_prom1163, !dbg !3551
  %626 = load i64, ptr %hold, align 8, !dbg !3551
  %add1165 = add i64 %626, %shl1164, !dbg !3551
  store i64 %add1165, ptr %hold, align 8, !dbg !3551
  %627 = load i32, ptr %bits, align 4, !dbg !3551
  %add1166 = add i32 %627, 8, !dbg !3551
  store i32 %add1166, ptr %bits, align 4, !dbg !3551
  br label %do.cond1167, !dbg !3551

do.cond1167:                                      ; preds = %if.end1159
  br label %do.end1168, !dbg !3551

do.end1168:                                       ; preds = %do.cond1167
  br label %while.cond1151, !dbg !3546, !llvm.loop !3552

while.end1169:                                    ; preds = %while.cond1151
  br label %do.cond1170, !dbg !3546

do.cond1170:                                      ; preds = %while.end1169
  br label %do.end1171, !dbg !3546

do.end1171:                                       ; preds = %do.cond1170
  %628 = load i32, ptr %left, align 4, !dbg !3553
  %629 = load i32, ptr %out, align 4, !dbg !3554
  %sub1172 = sub i32 %629, %628, !dbg !3554
  store i32 %sub1172, ptr %out, align 4, !dbg !3554
  %630 = load i32, ptr %out, align 4, !dbg !3555
  %conv1173 = zext i32 %630 to i64, !dbg !3555
  %631 = load ptr, ptr %strm.addr, align 8, !dbg !3556
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %631, i32 0, i32 5, !dbg !3557
  %632 = load i64, ptr %total_out, align 8, !dbg !3558
  %add1174 = add i64 %632, %conv1173, !dbg !3558
  store i64 %add1174, ptr %total_out, align 8, !dbg !3558
  %633 = load i32, ptr %out, align 4, !dbg !3559
  %conv1175 = zext i32 %633 to i64, !dbg !3559
  %634 = load ptr, ptr %state, align 8, !dbg !3560
  %total = getelementptr inbounds %struct.inflate_state, ptr %634, i32 0, i32 7, !dbg !3561
  %635 = load i64, ptr %total, align 8, !dbg !3562
  %add1176 = add i64 %635, %conv1175, !dbg !3562
  store i64 %add1176, ptr %total, align 8, !dbg !3562
  %636 = load i32, ptr %out, align 4, !dbg !3563
  %tobool1177 = icmp ne i32 %636, 0, !dbg !3563
  br i1 %tobool1177, label %if.then1178, label %if.end1186, !dbg !3565

if.then1178:                                      ; preds = %do.end1171
  %637 = load ptr, ptr %state, align 8, !dbg !3566
  %check1179 = getelementptr inbounds %struct.inflate_state, ptr %637, i32 0, i32 6, !dbg !3566
  %638 = load i64, ptr %check1179, align 8, !dbg !3566
  %639 = load ptr, ptr %put, align 8, !dbg !3566
  %640 = load i32, ptr %out, align 4, !dbg !3566
  %idx.ext1180 = zext i32 %640 to i64, !dbg !3566
  %idx.neg1181 = sub i64 0, %idx.ext1180, !dbg !3566
  %add.ptr1182 = getelementptr inbounds i8, ptr %639, i64 %idx.neg1181, !dbg !3566
  %641 = load i32, ptr %out, align 4, !dbg !3566
  %call1183 = call i64 @zlib_adler32(i64 noundef %638, ptr noundef %add.ptr1182, i32 noundef %641) #10, !dbg !3566
  %642 = load ptr, ptr %state, align 8, !dbg !3567
  %check1184 = getelementptr inbounds %struct.inflate_state, ptr %642, i32 0, i32 6, !dbg !3568
  store i64 %call1183, ptr %check1184, align 8, !dbg !3569
  %643 = load ptr, ptr %strm.addr, align 8, !dbg !3570
  %adler1185 = getelementptr inbounds %struct.z_stream_s, ptr %643, i32 0, i32 10, !dbg !3571
  store i64 %call1183, ptr %adler1185, align 8, !dbg !3572
  br label %if.end1186, !dbg !3570

if.end1186:                                       ; preds = %if.then1178, %do.end1171
  %644 = load i32, ptr %left, align 4, !dbg !3573
  store i32 %644, ptr %out, align 4, !dbg !3574
  %645 = load i64, ptr %hold, align 8, !dbg !3575
  %shr1187 = lshr i64 %645, 24, !dbg !3575
  %and1188 = and i64 %shr1187, 255, !dbg !3575
  %646 = load i64, ptr %hold, align 8, !dbg !3575
  %shr1189 = lshr i64 %646, 8, !dbg !3575
  %and1190 = and i64 %shr1189, 65280, !dbg !3575
  %add1191 = add i64 %and1188, %and1190, !dbg !3575
  %647 = load i64, ptr %hold, align 8, !dbg !3575
  %and1192 = and i64 %647, 65280, !dbg !3575
  %shl1193 = shl i64 %and1192, 8, !dbg !3575
  %add1194 = add i64 %add1191, %shl1193, !dbg !3575
  %648 = load i64, ptr %hold, align 8, !dbg !3575
  %and1195 = and i64 %648, 255, !dbg !3575
  %shl1196 = shl i64 %and1195, 24, !dbg !3575
  %add1197 = add i64 %add1194, %shl1196, !dbg !3575
  %649 = load ptr, ptr %state, align 8, !dbg !3577
  %check1198 = getelementptr inbounds %struct.inflate_state, ptr %649, i32 0, i32 6, !dbg !3578
  %650 = load i64, ptr %check1198, align 8, !dbg !3578
  %cmp1199 = icmp ne i64 %add1197, %650, !dbg !3579
  br i1 %cmp1199, label %if.then1201, label %if.end1204, !dbg !3580

if.then1201:                                      ; preds = %if.end1186
  %651 = load ptr, ptr %strm.addr, align 8, !dbg !3581
  %msg1202 = getelementptr inbounds %struct.z_stream_s, ptr %651, i32 0, i32 6, !dbg !3583
  store ptr @.str.13, ptr %msg1202, align 8, !dbg !3584
  %652 = load ptr, ptr %state, align 8, !dbg !3585
  %mode1203 = getelementptr inbounds %struct.inflate_state, ptr %652, i32 0, i32 0, !dbg !3586
  store i32 27, ptr %mode1203, align 8, !dbg !3587
  br label %sw.epilog1214, !dbg !3588

if.end1204:                                       ; preds = %if.end1186
  br label %do.body1205, !dbg !3589

do.body1205:                                      ; preds = %if.end1204
  store i64 0, ptr %hold, align 8, !dbg !3590
  store i32 0, ptr %bits, align 4, !dbg !3590
  br label %do.cond1206, !dbg !3590

do.cond1206:                                      ; preds = %do.body1205
  br label %do.end1207, !dbg !3590

do.end1207:                                       ; preds = %do.cond1206
  br label %if.end1208, !dbg !3592

if.end1208:                                       ; preds = %do.end1207, %sw.bb1146
  %653 = load ptr, ptr %state, align 8, !dbg !3593
  %mode1209 = getelementptr inbounds %struct.inflate_state, ptr %653, i32 0, i32 0, !dbg !3594
  store i32 26, ptr %mode1209, align 8, !dbg !3595
  br label %sw.bb1210, !dbg !3593

sw.bb1210:                                        ; preds = %for.cond, %if.end1208
  store i32 1, ptr %ret, align 4, !dbg !3596
  br label %inf_leave, !dbg !3597

sw.bb1211:                                        ; preds = %for.cond
  store i32 -3, ptr %ret, align 4, !dbg !3598
  br label %inf_leave, !dbg !3599

sw.bb1212:                                        ; preds = %for.cond
  store i32 -4, ptr %retval, align 4, !dbg !3600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3600

sw.bb1213:                                        ; preds = %for.cond
  br label %sw.default, !dbg !3601

sw.default:                                       ; preds = %for.cond, %sw.bb1213
  store i32 -2, ptr %retval, align 4, !dbg !3602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3602

sw.epilog1214:                                    ; preds = %if.then1201, %if.end1140, %if.end1135, %if.then1072, %if.then1013, %if.then856, %if.then849, %if.then842, %do.end730, %if.then697, %if.then680, %if.then663, %if.then392, %if.then323, %if.end267, %if.end259, %if.then234, %do.end198, %do.end150, %do.end70, %if.then60, %if.then47, %if.then40, %if.then19
  br label %for.cond, !dbg !3603, !llvm.loop !3604

inf_leave:                                        ; preds = %sw.bb1211, %sw.bb1210, %if.then1158, %if.then1139, %if.then1080, %if.then1037, %if.then976, %if.then927, %if.then877, %if.then802, %if.then750, %if.then602, %if.then558, %if.then496, %if.then450, %if.then425, %if.then344, %if.then278, %if.then258, %if.then216, %if.then161, %if.then134, %if.then80, %if.then28
  call void @llvm.dbg.label(metadata !266), !dbg !3607
  br label %do.body1215, !dbg !3608

do.body1215:                                      ; preds = %inf_leave
  %654 = load ptr, ptr %put, align 8, !dbg !3609
  %655 = load ptr, ptr %strm.addr, align 8, !dbg !3609
  %next_out1216 = getelementptr inbounds %struct.z_stream_s, ptr %655, i32 0, i32 3, !dbg !3609
  store ptr %654, ptr %next_out1216, align 8, !dbg !3609
  %656 = load i32, ptr %left, align 4, !dbg !3609
  %conv1217 = zext i32 %656 to i64, !dbg !3609
  %657 = load ptr, ptr %strm.addr, align 8, !dbg !3609
  %avail_out1218 = getelementptr inbounds %struct.z_stream_s, ptr %657, i32 0, i32 4, !dbg !3609
  store i64 %conv1217, ptr %avail_out1218, align 8, !dbg !3609
  %658 = load ptr, ptr %next, align 8, !dbg !3609
  %659 = load ptr, ptr %strm.addr, align 8, !dbg !3609
  %next_in1219 = getelementptr inbounds %struct.z_stream_s, ptr %659, i32 0, i32 0, !dbg !3609
  store ptr %658, ptr %next_in1219, align 8, !dbg !3609
  %660 = load i32, ptr %have, align 4, !dbg !3609
  %conv1220 = zext i32 %660 to i64, !dbg !3609
  %661 = load ptr, ptr %strm.addr, align 8, !dbg !3609
  %avail_in1221 = getelementptr inbounds %struct.z_stream_s, ptr %661, i32 0, i32 1, !dbg !3609
  store i64 %conv1220, ptr %avail_in1221, align 8, !dbg !3609
  %662 = load i64, ptr %hold, align 8, !dbg !3609
  %663 = load ptr, ptr %state, align 8, !dbg !3609
  %hold1222 = getelementptr inbounds %struct.inflate_state, ptr %663, i32 0, i32 13, !dbg !3609
  store i64 %662, ptr %hold1222, align 8, !dbg !3609
  %664 = load i32, ptr %bits, align 4, !dbg !3609
  %665 = load ptr, ptr %state, align 8, !dbg !3609
  %bits1223 = getelementptr inbounds %struct.inflate_state, ptr %665, i32 0, i32 14, !dbg !3609
  store i32 %664, ptr %bits1223, align 8, !dbg !3609
  br label %do.cond1224, !dbg !3609

do.cond1224:                                      ; preds = %do.body1215
  br label %do.end1225, !dbg !3609

do.end1225:                                       ; preds = %do.cond1224
  %666 = load ptr, ptr %state, align 8, !dbg !3611
  %wsize1226 = getelementptr inbounds %struct.inflate_state, ptr %666, i32 0, i32 9, !dbg !3613
  %667 = load i32, ptr %wsize1226, align 4, !dbg !3613
  %tobool1227 = icmp ne i32 %667, 0, !dbg !3611
  br i1 %tobool1227, label %if.then1237, label %lor.lhs.false1228, !dbg !3614

lor.lhs.false1228:                                ; preds = %do.end1225
  %668 = load ptr, ptr %state, align 8, !dbg !3615
  %mode1229 = getelementptr inbounds %struct.inflate_state, ptr %668, i32 0, i32 0, !dbg !3616
  %669 = load i32, ptr %mode1229, align 8, !dbg !3616
  %cmp1230 = icmp ult i32 %669, 24, !dbg !3617
  br i1 %cmp1230, label %land.lhs.true1232, label %if.end1238, !dbg !3618

land.lhs.true1232:                                ; preds = %lor.lhs.false1228
  %670 = load i32, ptr %out, align 4, !dbg !3619
  %conv1233 = zext i32 %670 to i64, !dbg !3619
  %671 = load ptr, ptr %strm.addr, align 8, !dbg !3620
  %avail_out1234 = getelementptr inbounds %struct.z_stream_s, ptr %671, i32 0, i32 4, !dbg !3621
  %672 = load i64, ptr %avail_out1234, align 8, !dbg !3621
  %cmp1235 = icmp ne i64 %conv1233, %672, !dbg !3622
  br i1 %cmp1235, label %if.then1237, label %if.end1238, !dbg !3623

if.then1237:                                      ; preds = %land.lhs.true1232, %do.end1225
  %673 = load ptr, ptr %strm.addr, align 8, !dbg !3624
  %674 = load i32, ptr %out, align 4, !dbg !3625
  call void @zlib_updatewindow(ptr noundef %673, i32 noundef %674) #10, !dbg !3626
  br label %if.end1238, !dbg !3626

if.end1238:                                       ; preds = %if.then1237, %land.lhs.true1232, %lor.lhs.false1228
  %675 = load ptr, ptr %strm.addr, align 8, !dbg !3627
  %avail_in1239 = getelementptr inbounds %struct.z_stream_s, ptr %675, i32 0, i32 1, !dbg !3628
  %676 = load i64, ptr %avail_in1239, align 8, !dbg !3628
  %677 = load i32, ptr %in, align 4, !dbg !3629
  %conv1240 = zext i32 %677 to i64, !dbg !3629
  %sub1241 = sub i64 %conv1240, %676, !dbg !3629
  %conv1242 = trunc i64 %sub1241 to i32, !dbg !3629
  store i32 %conv1242, ptr %in, align 4, !dbg !3629
  %678 = load ptr, ptr %strm.addr, align 8, !dbg !3630
  %avail_out1243 = getelementptr inbounds %struct.z_stream_s, ptr %678, i32 0, i32 4, !dbg !3631
  %679 = load i64, ptr %avail_out1243, align 8, !dbg !3631
  %680 = load i32, ptr %out, align 4, !dbg !3632
  %conv1244 = zext i32 %680 to i64, !dbg !3632
  %sub1245 = sub i64 %conv1244, %679, !dbg !3632
  %conv1246 = trunc i64 %sub1245 to i32, !dbg !3632
  store i32 %conv1246, ptr %out, align 4, !dbg !3632
  %681 = load i32, ptr %in, align 4, !dbg !3633
  %conv1247 = zext i32 %681 to i64, !dbg !3633
  %682 = load ptr, ptr %strm.addr, align 8, !dbg !3634
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %682, i32 0, i32 2, !dbg !3635
  %683 = load i64, ptr %total_in, align 8, !dbg !3636
  %add1248 = add i64 %683, %conv1247, !dbg !3636
  store i64 %add1248, ptr %total_in, align 8, !dbg !3636
  %684 = load i32, ptr %out, align 4, !dbg !3637
  %conv1249 = zext i32 %684 to i64, !dbg !3637
  %685 = load ptr, ptr %strm.addr, align 8, !dbg !3638
  %total_out1250 = getelementptr inbounds %struct.z_stream_s, ptr %685, i32 0, i32 5, !dbg !3639
  %686 = load i64, ptr %total_out1250, align 8, !dbg !3640
  %add1251 = add i64 %686, %conv1249, !dbg !3640
  store i64 %add1251, ptr %total_out1250, align 8, !dbg !3640
  %687 = load i32, ptr %out, align 4, !dbg !3641
  %conv1252 = zext i32 %687 to i64, !dbg !3641
  %688 = load ptr, ptr %state, align 8, !dbg !3642
  %total1253 = getelementptr inbounds %struct.inflate_state, ptr %688, i32 0, i32 7, !dbg !3643
  %689 = load i64, ptr %total1253, align 8, !dbg !3644
  %add1254 = add i64 %689, %conv1252, !dbg !3644
  store i64 %add1254, ptr %total1253, align 8, !dbg !3644
  %690 = load ptr, ptr %state, align 8, !dbg !3645
  %wrap1255 = getelementptr inbounds %struct.inflate_state, ptr %690, i32 0, i32 2, !dbg !3647
  %691 = load i32, ptr %wrap1255, align 8, !dbg !3647
  %tobool1256 = icmp ne i32 %691, 0, !dbg !3645
  br i1 %tobool1256, label %land.lhs.true1257, label %if.end1268, !dbg !3648

land.lhs.true1257:                                ; preds = %if.end1238
  %692 = load i32, ptr %out, align 4, !dbg !3649
  %tobool1258 = icmp ne i32 %692, 0, !dbg !3649
  br i1 %tobool1258, label %if.then1259, label %if.end1268, !dbg !3650

if.then1259:                                      ; preds = %land.lhs.true1257
  %693 = load ptr, ptr %state, align 8, !dbg !3651
  %check1260 = getelementptr inbounds %struct.inflate_state, ptr %693, i32 0, i32 6, !dbg !3651
  %694 = load i64, ptr %check1260, align 8, !dbg !3651
  %695 = load ptr, ptr %strm.addr, align 8, !dbg !3651
  %next_out1261 = getelementptr inbounds %struct.z_stream_s, ptr %695, i32 0, i32 3, !dbg !3651
  %696 = load ptr, ptr %next_out1261, align 8, !dbg !3651
  %697 = load i32, ptr %out, align 4, !dbg !3651
  %idx.ext1262 = zext i32 %697 to i64, !dbg !3651
  %idx.neg1263 = sub i64 0, %idx.ext1262, !dbg !3651
  %add.ptr1264 = getelementptr inbounds i8, ptr %696, i64 %idx.neg1263, !dbg !3651
  %698 = load i32, ptr %out, align 4, !dbg !3651
  %call1265 = call i64 @zlib_adler32(i64 noundef %694, ptr noundef %add.ptr1264, i32 noundef %698) #10, !dbg !3651
  %699 = load ptr, ptr %state, align 8, !dbg !3652
  %check1266 = getelementptr inbounds %struct.inflate_state, ptr %699, i32 0, i32 6, !dbg !3653
  store i64 %call1265, ptr %check1266, align 8, !dbg !3654
  %700 = load ptr, ptr %strm.addr, align 8, !dbg !3655
  %adler1267 = getelementptr inbounds %struct.z_stream_s, ptr %700, i32 0, i32 10, !dbg !3656
  store i64 %call1265, ptr %adler1267, align 8, !dbg !3657
  br label %if.end1268, !dbg !3655

if.end1268:                                       ; preds = %if.then1259, %land.lhs.true1257, %if.end1238
  %701 = load ptr, ptr %state, align 8, !dbg !3658
  %bits1269 = getelementptr inbounds %struct.inflate_state, ptr %701, i32 0, i32 14, !dbg !3659
  %702 = load i32, ptr %bits1269, align 8, !dbg !3659
  %703 = load ptr, ptr %state, align 8, !dbg !3660
  %last1270 = getelementptr inbounds %struct.inflate_state, ptr %703, i32 0, i32 1, !dbg !3661
  %704 = load i32, ptr %last1270, align 4, !dbg !3661
  %tobool1271 = icmp ne i32 %704, 0, !dbg !3660
  %705 = zext i1 %tobool1271 to i64, !dbg !3660
  %cond1272 = select i1 %tobool1271, i32 64, i32 0, !dbg !3660
  %add1273 = add i32 %702, %cond1272, !dbg !3662
  %706 = load ptr, ptr %state, align 8, !dbg !3663
  %mode1274 = getelementptr inbounds %struct.inflate_state, ptr %706, i32 0, i32 0, !dbg !3664
  %707 = load i32, ptr %mode1274, align 8, !dbg !3664
  %cmp1275 = icmp eq i32 %707, 11, !dbg !3665
  %708 = zext i1 %cmp1275 to i64, !dbg !3663
  %cond1277 = select i1 %cmp1275, i32 128, i32 0, !dbg !3663
  %add1278 = add i32 %add1273, %cond1277, !dbg !3666
  %709 = load ptr, ptr %strm.addr, align 8, !dbg !3667
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %709, i32 0, i32 9, !dbg !3668
  store i32 %add1278, ptr %data_type, align 8, !dbg !3669
  %710 = load i32, ptr %flush.addr, align 4, !dbg !3670
  %cmp1279 = icmp eq i32 %710, 2, !dbg !3672
  br i1 %cmp1279, label %land.lhs.true1281, label %if.end1294, !dbg !3673

land.lhs.true1281:                                ; preds = %if.end1268
  %711 = load i32, ptr %ret, align 4, !dbg !3674
  %cmp1282 = icmp eq i32 %711, 0, !dbg !3675
  br i1 %cmp1282, label %land.lhs.true1284, label %if.end1294, !dbg !3676

land.lhs.true1284:                                ; preds = %land.lhs.true1281
  %712 = load ptr, ptr %strm.addr, align 8, !dbg !3677
  %avail_out1285 = getelementptr inbounds %struct.z_stream_s, ptr %712, i32 0, i32 4, !dbg !3678
  %713 = load i64, ptr %avail_out1285, align 8, !dbg !3678
  %cmp1286 = icmp ne i64 %713, 0, !dbg !3679
  br i1 %cmp1286, label %land.lhs.true1288, label %if.end1294, !dbg !3680

land.lhs.true1288:                                ; preds = %land.lhs.true1284
  %714 = load ptr, ptr %strm.addr, align 8, !dbg !3681
  %avail_in1289 = getelementptr inbounds %struct.z_stream_s, ptr %714, i32 0, i32 1, !dbg !3682
  %715 = load i64, ptr %avail_in1289, align 8, !dbg !3682
  %cmp1290 = icmp eq i64 %715, 0, !dbg !3683
  br i1 %cmp1290, label %if.then1292, label %if.end1294, !dbg !3684

if.then1292:                                      ; preds = %land.lhs.true1288
  %716 = load ptr, ptr %strm.addr, align 8, !dbg !3685
  %call1293 = call i32 @zlib_inflateSyncPacket(ptr noundef %716) #10, !dbg !3686
  store i32 %call1293, ptr %retval, align 4, !dbg !3687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3687

if.end1294:                                       ; preds = %land.lhs.true1288, %land.lhs.true1284, %land.lhs.true1281, %if.end1268
  %717 = load i32, ptr %in, align 4, !dbg !3688
  %cmp1295 = icmp eq i32 %717, 0, !dbg !3690
  br i1 %cmp1295, label %land.lhs.true1297, label %lor.lhs.false1300, !dbg !3691

land.lhs.true1297:                                ; preds = %if.end1294
  %718 = load i32, ptr %out, align 4, !dbg !3692
  %cmp1298 = icmp eq i32 %718, 0, !dbg !3693
  br i1 %cmp1298, label %land.lhs.true1303, label %lor.lhs.false1300, !dbg !3694

lor.lhs.false1300:                                ; preds = %land.lhs.true1297, %if.end1294
  %719 = load i32, ptr %flush.addr, align 4, !dbg !3695
  %cmp1301 = icmp eq i32 %719, 5, !dbg !3696
  br i1 %cmp1301, label %land.lhs.true1303, label %if.end1307, !dbg !3697

land.lhs.true1303:                                ; preds = %lor.lhs.false1300, %land.lhs.true1297
  %720 = load i32, ptr %ret, align 4, !dbg !3698
  %cmp1304 = icmp eq i32 %720, 0, !dbg !3699
  br i1 %cmp1304, label %if.then1306, label %if.end1307, !dbg !3700

if.then1306:                                      ; preds = %land.lhs.true1303
  store i32 -5, ptr %ret, align 4, !dbg !3701
  br label %if.end1307, !dbg !3702

if.end1307:                                       ; preds = %if.then1306, %land.lhs.true1303, %lor.lhs.false1300
  %721 = load i32, ptr %ret, align 4, !dbg !3703
  store i32 %721, ptr %retval, align 4, !dbg !3704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3704

cleanup:                                          ; preds = %if.end1307, %if.then1292, %sw.default, %sw.bb1212, %do.end125, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 4, ptr %this) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 4, ptr %copy) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 4, ptr %out) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 4, ptr %in) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 8, ptr %hold) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 4, ptr %have) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 8, ptr %put) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #9, !dbg !3705
  %722 = load i32, ptr %retval, align 4, !dbg !3705
  ret i32 %722, !dbg !3705
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @zlib_adler32(i64 noundef %adler, ptr noundef %buf, i32 noundef %len) #4 !dbg !3706 {
entry:
  %retval = alloca i64, align 8
  %adler.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s1 = alloca i64, align 8
  %s2 = alloca i64, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %adler, ptr %adler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adler.addr, metadata !3712, metadata !DIExpression()), !dbg !3718
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3713, metadata !DIExpression()), !dbg !3719
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3714, metadata !DIExpression()), !dbg !3720
  call void @llvm.lifetime.start.p0(i64 8, ptr %s1) #9, !dbg !3721
  call void @llvm.dbg.declare(metadata ptr %s1, metadata !3715, metadata !DIExpression()), !dbg !3722
  %0 = load i64, ptr %adler.addr, align 8, !dbg !3723
  %and = and i64 %0, 65535, !dbg !3724
  store i64 %and, ptr %s1, align 8, !dbg !3722
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #9, !dbg !3725
  call void @llvm.dbg.declare(metadata ptr %s2, metadata !3716, metadata !DIExpression()), !dbg !3726
  %1 = load i64, ptr %adler.addr, align 8, !dbg !3727
  %shr = lshr i64 %1, 16, !dbg !3728
  %and1 = and i64 %shr, 65535, !dbg !3729
  store i64 %and1, ptr %s2, align 8, !dbg !3726
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9, !dbg !3730
  call void @llvm.dbg.declare(metadata ptr %k, metadata !3717, metadata !DIExpression()), !dbg !3731
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !3732
  %cmp = icmp eq ptr %2, null, !dbg !3734
  br i1 %cmp, label %if.then, label %if.end, !dbg !3735

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8, !dbg !3736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3736

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !3737

while.cond:                                       ; preds = %if.end75, %if.end
  %3 = load i32, ptr %len.addr, align 4, !dbg !3738
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3739
  br i1 %cmp2, label %while.body, label %while.end77, !dbg !3737

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %len.addr, align 4, !dbg !3740
  %cmp3 = icmp ult i32 %4, 5552, !dbg !3742
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !3740

cond.true:                                        ; preds = %while.body
  %5 = load i32, ptr %len.addr, align 4, !dbg !3743
  br label %cond.end, !dbg !3740

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !3740

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 5552, %cond.false ], !dbg !3740
  store i32 %cond, ptr %k, align 4, !dbg !3744
  %6 = load i32, ptr %k, align 4, !dbg !3745
  %7 = load i32, ptr %len.addr, align 4, !dbg !3746
  %sub = sub i32 %7, %6, !dbg !3746
  store i32 %sub, ptr %len.addr, align 4, !dbg !3746
  br label %while.cond4, !dbg !3747

while.cond4:                                      ; preds = %while.body6, %cond.end
  %8 = load i32, ptr %k, align 4, !dbg !3748
  %cmp5 = icmp sge i32 %8, 16, !dbg !3749
  br i1 %cmp5, label %while.body6, label %while.end, !dbg !3747

while.body6:                                      ; preds = %while.cond4
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !3750
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0, !dbg !3750
  %10 = load i8, ptr %arrayidx, align 1, !dbg !3750
  %conv = zext i8 %10 to i64, !dbg !3750
  %11 = load i64, ptr %s1, align 8, !dbg !3750
  %add = add i64 %11, %conv, !dbg !3750
  store i64 %add, ptr %s1, align 8, !dbg !3750
  %12 = load i64, ptr %s1, align 8, !dbg !3750
  %13 = load i64, ptr %s2, align 8, !dbg !3750
  %add7 = add i64 %13, %12, !dbg !3750
  store i64 %add7, ptr %s2, align 8, !dbg !3750
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !3753
  %arrayidx8 = getelementptr inbounds i8, ptr %14, i64 1, !dbg !3753
  %15 = load i8, ptr %arrayidx8, align 1, !dbg !3753
  %conv9 = zext i8 %15 to i64, !dbg !3753
  %16 = load i64, ptr %s1, align 8, !dbg !3753
  %add10 = add i64 %16, %conv9, !dbg !3753
  store i64 %add10, ptr %s1, align 8, !dbg !3753
  %17 = load i64, ptr %s1, align 8, !dbg !3753
  %18 = load i64, ptr %s2, align 8, !dbg !3753
  %add11 = add i64 %18, %17, !dbg !3753
  store i64 %add11, ptr %s2, align 8, !dbg !3753
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !3755
  %arrayidx12 = getelementptr inbounds i8, ptr %19, i64 2, !dbg !3755
  %20 = load i8, ptr %arrayidx12, align 1, !dbg !3755
  %conv13 = zext i8 %20 to i64, !dbg !3755
  %21 = load i64, ptr %s1, align 8, !dbg !3755
  %add14 = add i64 %21, %conv13, !dbg !3755
  store i64 %add14, ptr %s1, align 8, !dbg !3755
  %22 = load i64, ptr %s1, align 8, !dbg !3755
  %23 = load i64, ptr %s2, align 8, !dbg !3755
  %add15 = add i64 %23, %22, !dbg !3755
  store i64 %add15, ptr %s2, align 8, !dbg !3755
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !3757
  %arrayidx16 = getelementptr inbounds i8, ptr %24, i64 3, !dbg !3757
  %25 = load i8, ptr %arrayidx16, align 1, !dbg !3757
  %conv17 = zext i8 %25 to i64, !dbg !3757
  %26 = load i64, ptr %s1, align 8, !dbg !3757
  %add18 = add i64 %26, %conv17, !dbg !3757
  store i64 %add18, ptr %s1, align 8, !dbg !3757
  %27 = load i64, ptr %s1, align 8, !dbg !3757
  %28 = load i64, ptr %s2, align 8, !dbg !3757
  %add19 = add i64 %28, %27, !dbg !3757
  store i64 %add19, ptr %s2, align 8, !dbg !3757
  %29 = load ptr, ptr %buf.addr, align 8, !dbg !3759
  %arrayidx20 = getelementptr inbounds i8, ptr %29, i64 4, !dbg !3759
  %30 = load i8, ptr %arrayidx20, align 1, !dbg !3759
  %conv21 = zext i8 %30 to i64, !dbg !3759
  %31 = load i64, ptr %s1, align 8, !dbg !3759
  %add22 = add i64 %31, %conv21, !dbg !3759
  store i64 %add22, ptr %s1, align 8, !dbg !3759
  %32 = load i64, ptr %s1, align 8, !dbg !3759
  %33 = load i64, ptr %s2, align 8, !dbg !3759
  %add23 = add i64 %33, %32, !dbg !3759
  store i64 %add23, ptr %s2, align 8, !dbg !3759
  %34 = load ptr, ptr %buf.addr, align 8, !dbg !3761
  %arrayidx24 = getelementptr inbounds i8, ptr %34, i64 5, !dbg !3761
  %35 = load i8, ptr %arrayidx24, align 1, !dbg !3761
  %conv25 = zext i8 %35 to i64, !dbg !3761
  %36 = load i64, ptr %s1, align 8, !dbg !3761
  %add26 = add i64 %36, %conv25, !dbg !3761
  store i64 %add26, ptr %s1, align 8, !dbg !3761
  %37 = load i64, ptr %s1, align 8, !dbg !3761
  %38 = load i64, ptr %s2, align 8, !dbg !3761
  %add27 = add i64 %38, %37, !dbg !3761
  store i64 %add27, ptr %s2, align 8, !dbg !3761
  %39 = load ptr, ptr %buf.addr, align 8, !dbg !3763
  %arrayidx28 = getelementptr inbounds i8, ptr %39, i64 6, !dbg !3763
  %40 = load i8, ptr %arrayidx28, align 1, !dbg !3763
  %conv29 = zext i8 %40 to i64, !dbg !3763
  %41 = load i64, ptr %s1, align 8, !dbg !3763
  %add30 = add i64 %41, %conv29, !dbg !3763
  store i64 %add30, ptr %s1, align 8, !dbg !3763
  %42 = load i64, ptr %s1, align 8, !dbg !3763
  %43 = load i64, ptr %s2, align 8, !dbg !3763
  %add31 = add i64 %43, %42, !dbg !3763
  store i64 %add31, ptr %s2, align 8, !dbg !3763
  %44 = load ptr, ptr %buf.addr, align 8, !dbg !3765
  %arrayidx32 = getelementptr inbounds i8, ptr %44, i64 7, !dbg !3765
  %45 = load i8, ptr %arrayidx32, align 1, !dbg !3765
  %conv33 = zext i8 %45 to i64, !dbg !3765
  %46 = load i64, ptr %s1, align 8, !dbg !3765
  %add34 = add i64 %46, %conv33, !dbg !3765
  store i64 %add34, ptr %s1, align 8, !dbg !3765
  %47 = load i64, ptr %s1, align 8, !dbg !3765
  %48 = load i64, ptr %s2, align 8, !dbg !3765
  %add35 = add i64 %48, %47, !dbg !3765
  store i64 %add35, ptr %s2, align 8, !dbg !3765
  %49 = load ptr, ptr %buf.addr, align 8, !dbg !3767
  %arrayidx36 = getelementptr inbounds i8, ptr %49, i64 8, !dbg !3767
  %50 = load i8, ptr %arrayidx36, align 1, !dbg !3767
  %conv37 = zext i8 %50 to i64, !dbg !3767
  %51 = load i64, ptr %s1, align 8, !dbg !3767
  %add38 = add i64 %51, %conv37, !dbg !3767
  store i64 %add38, ptr %s1, align 8, !dbg !3767
  %52 = load i64, ptr %s1, align 8, !dbg !3767
  %53 = load i64, ptr %s2, align 8, !dbg !3767
  %add39 = add i64 %53, %52, !dbg !3767
  store i64 %add39, ptr %s2, align 8, !dbg !3767
  %54 = load ptr, ptr %buf.addr, align 8, !dbg !3769
  %arrayidx40 = getelementptr inbounds i8, ptr %54, i64 9, !dbg !3769
  %55 = load i8, ptr %arrayidx40, align 1, !dbg !3769
  %conv41 = zext i8 %55 to i64, !dbg !3769
  %56 = load i64, ptr %s1, align 8, !dbg !3769
  %add42 = add i64 %56, %conv41, !dbg !3769
  store i64 %add42, ptr %s1, align 8, !dbg !3769
  %57 = load i64, ptr %s1, align 8, !dbg !3769
  %58 = load i64, ptr %s2, align 8, !dbg !3769
  %add43 = add i64 %58, %57, !dbg !3769
  store i64 %add43, ptr %s2, align 8, !dbg !3769
  %59 = load ptr, ptr %buf.addr, align 8, !dbg !3771
  %arrayidx44 = getelementptr inbounds i8, ptr %59, i64 10, !dbg !3771
  %60 = load i8, ptr %arrayidx44, align 1, !dbg !3771
  %conv45 = zext i8 %60 to i64, !dbg !3771
  %61 = load i64, ptr %s1, align 8, !dbg !3771
  %add46 = add i64 %61, %conv45, !dbg !3771
  store i64 %add46, ptr %s1, align 8, !dbg !3771
  %62 = load i64, ptr %s1, align 8, !dbg !3771
  %63 = load i64, ptr %s2, align 8, !dbg !3771
  %add47 = add i64 %63, %62, !dbg !3771
  store i64 %add47, ptr %s2, align 8, !dbg !3771
  %64 = load ptr, ptr %buf.addr, align 8, !dbg !3773
  %arrayidx48 = getelementptr inbounds i8, ptr %64, i64 11, !dbg !3773
  %65 = load i8, ptr %arrayidx48, align 1, !dbg !3773
  %conv49 = zext i8 %65 to i64, !dbg !3773
  %66 = load i64, ptr %s1, align 8, !dbg !3773
  %add50 = add i64 %66, %conv49, !dbg !3773
  store i64 %add50, ptr %s1, align 8, !dbg !3773
  %67 = load i64, ptr %s1, align 8, !dbg !3773
  %68 = load i64, ptr %s2, align 8, !dbg !3773
  %add51 = add i64 %68, %67, !dbg !3773
  store i64 %add51, ptr %s2, align 8, !dbg !3773
  %69 = load ptr, ptr %buf.addr, align 8, !dbg !3775
  %arrayidx52 = getelementptr inbounds i8, ptr %69, i64 12, !dbg !3775
  %70 = load i8, ptr %arrayidx52, align 1, !dbg !3775
  %conv53 = zext i8 %70 to i64, !dbg !3775
  %71 = load i64, ptr %s1, align 8, !dbg !3775
  %add54 = add i64 %71, %conv53, !dbg !3775
  store i64 %add54, ptr %s1, align 8, !dbg !3775
  %72 = load i64, ptr %s1, align 8, !dbg !3775
  %73 = load i64, ptr %s2, align 8, !dbg !3775
  %add55 = add i64 %73, %72, !dbg !3775
  store i64 %add55, ptr %s2, align 8, !dbg !3775
  %74 = load ptr, ptr %buf.addr, align 8, !dbg !3777
  %arrayidx56 = getelementptr inbounds i8, ptr %74, i64 13, !dbg !3777
  %75 = load i8, ptr %arrayidx56, align 1, !dbg !3777
  %conv57 = zext i8 %75 to i64, !dbg !3777
  %76 = load i64, ptr %s1, align 8, !dbg !3777
  %add58 = add i64 %76, %conv57, !dbg !3777
  store i64 %add58, ptr %s1, align 8, !dbg !3777
  %77 = load i64, ptr %s1, align 8, !dbg !3777
  %78 = load i64, ptr %s2, align 8, !dbg !3777
  %add59 = add i64 %78, %77, !dbg !3777
  store i64 %add59, ptr %s2, align 8, !dbg !3777
  %79 = load ptr, ptr %buf.addr, align 8, !dbg !3779
  %arrayidx60 = getelementptr inbounds i8, ptr %79, i64 14, !dbg !3779
  %80 = load i8, ptr %arrayidx60, align 1, !dbg !3779
  %conv61 = zext i8 %80 to i64, !dbg !3779
  %81 = load i64, ptr %s1, align 8, !dbg !3779
  %add62 = add i64 %81, %conv61, !dbg !3779
  store i64 %add62, ptr %s1, align 8, !dbg !3779
  %82 = load i64, ptr %s1, align 8, !dbg !3779
  %83 = load i64, ptr %s2, align 8, !dbg !3779
  %add63 = add i64 %83, %82, !dbg !3779
  store i64 %add63, ptr %s2, align 8, !dbg !3779
  %84 = load ptr, ptr %buf.addr, align 8, !dbg !3781
  %arrayidx64 = getelementptr inbounds i8, ptr %84, i64 15, !dbg !3781
  %85 = load i8, ptr %arrayidx64, align 1, !dbg !3781
  %conv65 = zext i8 %85 to i64, !dbg !3781
  %86 = load i64, ptr %s1, align 8, !dbg !3781
  %add66 = add i64 %86, %conv65, !dbg !3781
  store i64 %add66, ptr %s1, align 8, !dbg !3781
  %87 = load i64, ptr %s1, align 8, !dbg !3781
  %88 = load i64, ptr %s2, align 8, !dbg !3781
  %add67 = add i64 %88, %87, !dbg !3781
  store i64 %add67, ptr %s2, align 8, !dbg !3781
  %89 = load ptr, ptr %buf.addr, align 8, !dbg !3783
  %add.ptr = getelementptr inbounds i8, ptr %89, i64 16, !dbg !3783
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !3783
  %90 = load i32, ptr %k, align 4, !dbg !3784
  %sub68 = sub nsw i32 %90, 16, !dbg !3784
  store i32 %sub68, ptr %k, align 4, !dbg !3784
  br label %while.cond4, !dbg !3747, !llvm.loop !3785

while.end:                                        ; preds = %while.cond4
  %91 = load i32, ptr %k, align 4, !dbg !3787
  %cmp69 = icmp ne i32 %91, 0, !dbg !3789
  br i1 %cmp69, label %if.then71, label %if.end75, !dbg !3790

if.then71:                                        ; preds = %while.end
  br label %do.body, !dbg !3791

do.body:                                          ; preds = %do.cond, %if.then71
  %92 = load ptr, ptr %buf.addr, align 8, !dbg !3792
  %incdec.ptr = getelementptr inbounds i8, ptr %92, i32 1, !dbg !3792
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !3792
  %93 = load i8, ptr %92, align 1, !dbg !3794
  %conv72 = zext i8 %93 to i64, !dbg !3794
  %94 = load i64, ptr %s1, align 8, !dbg !3795
  %add73 = add i64 %94, %conv72, !dbg !3795
  store i64 %add73, ptr %s1, align 8, !dbg !3795
  %95 = load i64, ptr %s1, align 8, !dbg !3796
  %96 = load i64, ptr %s2, align 8, !dbg !3797
  %add74 = add i64 %96, %95, !dbg !3797
  store i64 %add74, ptr %s2, align 8, !dbg !3797
  br label %do.cond, !dbg !3798

do.cond:                                          ; preds = %do.body
  %97 = load i32, ptr %k, align 4, !dbg !3799
  %dec = add nsw i32 %97, -1, !dbg !3799
  store i32 %dec, ptr %k, align 4, !dbg !3799
  %tobool = icmp ne i32 %dec, 0, !dbg !3798
  br i1 %tobool, label %do.body, label %do.end, !dbg !3798, !llvm.loop !3800

do.end:                                           ; preds = %do.cond
  br label %if.end75, !dbg !3798

if.end75:                                         ; preds = %do.end, %while.end
  %98 = load i64, ptr %s1, align 8, !dbg !3802
  %rem = urem i64 %98, 65521, !dbg !3802
  store i64 %rem, ptr %s1, align 8, !dbg !3802
  %99 = load i64, ptr %s2, align 8, !dbg !3803
  %rem76 = urem i64 %99, 65521, !dbg !3803
  store i64 %rem76, ptr %s2, align 8, !dbg !3803
  br label %while.cond, !dbg !3737, !llvm.loop !3804

while.end77:                                      ; preds = %while.cond
  %100 = load i64, ptr %s2, align 8, !dbg !3806
  %shl = shl i64 %100, 16, !dbg !3807
  %101 = load i64, ptr %s1, align 8, !dbg !3808
  %or = or i64 %shl, %101, !dbg !3809
  store i64 %or, ptr %retval, align 8, !dbg !3810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3810

cleanup:                                          ; preds = %while.end77, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #9, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 8, ptr %s1) #9, !dbg !3811
  %102 = load i64, ptr %retval, align 8, !dbg !3811
  ret i64 %102, !dbg !3811
}

; Function Attrs: noredzone nounwind
define internal void @zlib_fixedtables(ptr noundef %state) #0 !dbg !756 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !760, metadata !DIExpression()), !dbg !3812
  %0 = load ptr, ptr %state.addr, align 8, !dbg !3813
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 18, !dbg !3815
  store ptr @zlib_fixedtables.lenfix, ptr %lencode, align 8, !dbg !3816
  %1 = load ptr, ptr %state.addr, align 8, !dbg !3817
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 20, !dbg !3818
  store i32 9, ptr %lenbits, align 8, !dbg !3819
  %2 = load ptr, ptr %state.addr, align 8, !dbg !3820
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %2, i32 0, i32 19, !dbg !3821
  store ptr @zlib_fixedtables.distfix, ptr %distcode, align 8, !dbg !3822
  %3 = load ptr, ptr %state.addr, align 8, !dbg !3823
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 21, !dbg !3824
  store i32 5, ptr %distbits, align 4, !dbg !3825
  ret void, !dbg !3826
}

; Function Attrs: noredzone nounwind
define internal void @zlib_updatewindow(ptr noundef %strm, i32 noundef %out) #0 !dbg !3827 {
entry:
  %strm.addr = alloca ptr, align 8
  %out.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %copy = alloca i32, align 4
  %dist = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !3829, metadata !DIExpression()), !dbg !3834
  store i32 %out, ptr %out.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !3830, metadata !DIExpression()), !dbg !3835
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #9, !dbg !3836
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3831, metadata !DIExpression()), !dbg !3837
  call void @llvm.lifetime.start.p0(i64 4, ptr %copy) #9, !dbg !3838
  call void @llvm.dbg.declare(metadata ptr %copy, metadata !3832, metadata !DIExpression()), !dbg !3839
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #9, !dbg !3838
  call void @llvm.dbg.declare(metadata ptr %dist, metadata !3833, metadata !DIExpression()), !dbg !3840
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !3841
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7, !dbg !3842
  %1 = load ptr, ptr %state1, align 8, !dbg !3842
  store ptr %1, ptr %state, align 8, !dbg !3843
  %2 = load i32, ptr %out.addr, align 4, !dbg !3844
  %conv = zext i32 %2 to i64, !dbg !3844
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !3845
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 4, !dbg !3846
  %4 = load i64, ptr %avail_out, align 8, !dbg !3846
  %sub = sub i64 %conv, %4, !dbg !3847
  %conv2 = trunc i64 %sub to i32, !dbg !3844
  store i32 %conv2, ptr %copy, align 4, !dbg !3848
  %5 = load i32, ptr %copy, align 4, !dbg !3849
  %6 = load ptr, ptr %state, align 8, !dbg !3851
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 9, !dbg !3852
  %7 = load i32, ptr %wsize, align 4, !dbg !3852
  %cmp = icmp uge i32 %5, %7, !dbg !3853
  br i1 %cmp, label %if.then, label %if.else, !dbg !3854

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %state, align 8, !dbg !3855
  %window = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 12, !dbg !3855
  %9 = load ptr, ptr %window, align 8, !dbg !3855
  %10 = load ptr, ptr %strm.addr, align 8, !dbg !3855
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 3, !dbg !3855
  %11 = load ptr, ptr %next_out, align 8, !dbg !3855
  %12 = load ptr, ptr %state, align 8, !dbg !3855
  %wsize4 = getelementptr inbounds %struct.inflate_state, ptr %12, i32 0, i32 9, !dbg !3855
  %13 = load i32, ptr %wsize4, align 4, !dbg !3855
  %idx.ext = zext i32 %13 to i64, !dbg !3855
  %idx.neg = sub i64 0, %idx.ext, !dbg !3855
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.neg, !dbg !3855
  %14 = load ptr, ptr %state, align 8, !dbg !3855
  %wsize5 = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 9, !dbg !3855
  %15 = load i32, ptr %wsize5, align 4, !dbg !3855
  %conv6 = zext i32 %15 to i64, !dbg !3855
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %add.ptr, i64 %conv6, i1 false), !dbg !3855
  %16 = load ptr, ptr %state, align 8, !dbg !3857
  %write = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 11, !dbg !3858
  store i32 0, ptr %write, align 4, !dbg !3859
  %17 = load ptr, ptr %state, align 8, !dbg !3860
  %wsize7 = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 9, !dbg !3861
  %18 = load i32, ptr %wsize7, align 4, !dbg !3861
  %19 = load ptr, ptr %state, align 8, !dbg !3862
  %whave = getelementptr inbounds %struct.inflate_state, ptr %19, i32 0, i32 10, !dbg !3863
  store i32 %18, ptr %whave, align 8, !dbg !3864
  br label %if.end52, !dbg !3865

if.else:                                          ; preds = %entry
  %20 = load ptr, ptr %state, align 8, !dbg !3866
  %wsize8 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 9, !dbg !3868
  %21 = load i32, ptr %wsize8, align 4, !dbg !3868
  %22 = load ptr, ptr %state, align 8, !dbg !3869
  %write9 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 11, !dbg !3870
  %23 = load i32, ptr %write9, align 4, !dbg !3870
  %sub10 = sub i32 %21, %23, !dbg !3871
  store i32 %sub10, ptr %dist, align 4, !dbg !3872
  %24 = load i32, ptr %dist, align 4, !dbg !3873
  %25 = load i32, ptr %copy, align 4, !dbg !3875
  %cmp11 = icmp ugt i32 %24, %25, !dbg !3876
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !3877

if.then13:                                        ; preds = %if.else
  %26 = load i32, ptr %copy, align 4, !dbg !3878
  store i32 %26, ptr %dist, align 4, !dbg !3879
  br label %if.end, !dbg !3880

if.end:                                           ; preds = %if.then13, %if.else
  %27 = load ptr, ptr %state, align 8, !dbg !3881
  %window14 = getelementptr inbounds %struct.inflate_state, ptr %27, i32 0, i32 12, !dbg !3881
  %28 = load ptr, ptr %window14, align 8, !dbg !3881
  %29 = load ptr, ptr %state, align 8, !dbg !3881
  %write15 = getelementptr inbounds %struct.inflate_state, ptr %29, i32 0, i32 11, !dbg !3881
  %30 = load i32, ptr %write15, align 4, !dbg !3881
  %idx.ext16 = zext i32 %30 to i64, !dbg !3881
  %add.ptr17 = getelementptr inbounds i8, ptr %28, i64 %idx.ext16, !dbg !3881
  %31 = load ptr, ptr %strm.addr, align 8, !dbg !3881
  %next_out18 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 3, !dbg !3881
  %32 = load ptr, ptr %next_out18, align 8, !dbg !3881
  %33 = load i32, ptr %copy, align 4, !dbg !3881
  %idx.ext19 = zext i32 %33 to i64, !dbg !3881
  %idx.neg20 = sub i64 0, %idx.ext19, !dbg !3881
  %add.ptr21 = getelementptr inbounds i8, ptr %32, i64 %idx.neg20, !dbg !3881
  %34 = load i32, ptr %dist, align 4, !dbg !3881
  %conv22 = zext i32 %34 to i64, !dbg !3881
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr17, ptr align 1 %add.ptr21, i64 %conv22, i1 false), !dbg !3881
  %35 = load i32, ptr %dist, align 4, !dbg !3882
  %36 = load i32, ptr %copy, align 4, !dbg !3883
  %sub23 = sub i32 %36, %35, !dbg !3883
  store i32 %sub23, ptr %copy, align 4, !dbg !3883
  %37 = load i32, ptr %copy, align 4, !dbg !3884
  %tobool = icmp ne i32 %37, 0, !dbg !3884
  br i1 %tobool, label %if.then24, label %if.else34, !dbg !3886

if.then24:                                        ; preds = %if.end
  %38 = load ptr, ptr %state, align 8, !dbg !3887
  %window25 = getelementptr inbounds %struct.inflate_state, ptr %38, i32 0, i32 12, !dbg !3887
  %39 = load ptr, ptr %window25, align 8, !dbg !3887
  %40 = load ptr, ptr %strm.addr, align 8, !dbg !3887
  %next_out26 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 3, !dbg !3887
  %41 = load ptr, ptr %next_out26, align 8, !dbg !3887
  %42 = load i32, ptr %copy, align 4, !dbg !3887
  %idx.ext27 = zext i32 %42 to i64, !dbg !3887
  %idx.neg28 = sub i64 0, %idx.ext27, !dbg !3887
  %add.ptr29 = getelementptr inbounds i8, ptr %41, i64 %idx.neg28, !dbg !3887
  %43 = load i32, ptr %copy, align 4, !dbg !3887
  %conv30 = zext i32 %43 to i64, !dbg !3887
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %add.ptr29, i64 %conv30, i1 false), !dbg !3887
  %44 = load i32, ptr %copy, align 4, !dbg !3889
  %45 = load ptr, ptr %state, align 8, !dbg !3890
  %write31 = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 11, !dbg !3891
  store i32 %44, ptr %write31, align 4, !dbg !3892
  %46 = load ptr, ptr %state, align 8, !dbg !3893
  %wsize32 = getelementptr inbounds %struct.inflate_state, ptr %46, i32 0, i32 9, !dbg !3894
  %47 = load i32, ptr %wsize32, align 4, !dbg !3894
  %48 = load ptr, ptr %state, align 8, !dbg !3895
  %whave33 = getelementptr inbounds %struct.inflate_state, ptr %48, i32 0, i32 10, !dbg !3896
  store i32 %47, ptr %whave33, align 8, !dbg !3897
  br label %if.end51, !dbg !3898

if.else34:                                        ; preds = %if.end
  %49 = load i32, ptr %dist, align 4, !dbg !3899
  %50 = load ptr, ptr %state, align 8, !dbg !3901
  %write35 = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 11, !dbg !3902
  %51 = load i32, ptr %write35, align 4, !dbg !3903
  %add = add i32 %51, %49, !dbg !3903
  store i32 %add, ptr %write35, align 4, !dbg !3903
  %52 = load ptr, ptr %state, align 8, !dbg !3904
  %write36 = getelementptr inbounds %struct.inflate_state, ptr %52, i32 0, i32 11, !dbg !3906
  %53 = load i32, ptr %write36, align 4, !dbg !3906
  %54 = load ptr, ptr %state, align 8, !dbg !3907
  %wsize37 = getelementptr inbounds %struct.inflate_state, ptr %54, i32 0, i32 9, !dbg !3908
  %55 = load i32, ptr %wsize37, align 4, !dbg !3908
  %cmp38 = icmp eq i32 %53, %55, !dbg !3909
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !3910

if.then40:                                        ; preds = %if.else34
  %56 = load ptr, ptr %state, align 8, !dbg !3911
  %write41 = getelementptr inbounds %struct.inflate_state, ptr %56, i32 0, i32 11, !dbg !3912
  store i32 0, ptr %write41, align 4, !dbg !3913
  br label %if.end42, !dbg !3911

if.end42:                                         ; preds = %if.then40, %if.else34
  %57 = load ptr, ptr %state, align 8, !dbg !3914
  %whave43 = getelementptr inbounds %struct.inflate_state, ptr %57, i32 0, i32 10, !dbg !3916
  %58 = load i32, ptr %whave43, align 8, !dbg !3916
  %59 = load ptr, ptr %state, align 8, !dbg !3917
  %wsize44 = getelementptr inbounds %struct.inflate_state, ptr %59, i32 0, i32 9, !dbg !3918
  %60 = load i32, ptr %wsize44, align 4, !dbg !3918
  %cmp45 = icmp ult i32 %58, %60, !dbg !3919
  br i1 %cmp45, label %if.then47, label %if.end50, !dbg !3920

if.then47:                                        ; preds = %if.end42
  %61 = load i32, ptr %dist, align 4, !dbg !3921
  %62 = load ptr, ptr %state, align 8, !dbg !3922
  %whave48 = getelementptr inbounds %struct.inflate_state, ptr %62, i32 0, i32 10, !dbg !3923
  %63 = load i32, ptr %whave48, align 8, !dbg !3924
  %add49 = add i32 %63, %61, !dbg !3924
  store i32 %add49, ptr %whave48, align 8, !dbg !3924
  br label %if.end50, !dbg !3922

if.end50:                                         ; preds = %if.then47, %if.end42
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then24
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #9, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 4, ptr %copy) #9, !dbg !3925
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #9, !dbg !3925
  ret void, !dbg !3925
}

; Function Attrs: noredzone nounwind
define internal i32 @zlib_inflateSyncPacket(ptr noundef %strm) #0 !dbg !3926 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !3928, metadata !DIExpression()), !dbg !3930
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #9, !dbg !3931
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3929, metadata !DIExpression()), !dbg !3932
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !3933
  %cmp = icmp eq ptr %0, null, !dbg !3935
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3936

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !3937
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !3938
  %2 = load ptr, ptr %state1, align 8, !dbg !3938
  %cmp2 = icmp eq ptr %2, null, !dbg !3939
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3940

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !3941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3941

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !3942
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7, !dbg !3943
  %4 = load ptr, ptr %state3, align 8, !dbg !3943
  store ptr %4, ptr %state, align 8, !dbg !3944
  %5 = load ptr, ptr %state, align 8, !dbg !3945
  %mode = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 0, !dbg !3947
  %6 = load i32, ptr %mode, align 8, !dbg !3947
  %cmp4 = icmp eq i32 %6, 13, !dbg !3948
  br i1 %cmp4, label %land.lhs.true, label %if.end8, !dbg !3949

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %state, align 8, !dbg !3950
  %bits = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 14, !dbg !3951
  %8 = load i32, ptr %bits, align 8, !dbg !3951
  %cmp5 = icmp eq i32 %8, 0, !dbg !3952
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !3953

if.then6:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %state, align 8, !dbg !3954
  %mode7 = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 0, !dbg !3956
  store i32 11, ptr %mode7, align 8, !dbg !3957
  store i32 0, ptr %retval, align 4, !dbg !3958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3958

if.end8:                                          ; preds = %land.lhs.true, %if.end
  store i32 -3, ptr %retval, align 4, !dbg !3959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3959

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #9, !dbg !3960
  %10 = load i32, ptr %retval, align 4, !dbg !3960
  ret i32 %10, !dbg !3960
}

; Function Attrs: noredzone nounwind
define hidden i32 @zlib_inflateEnd(ptr noundef %strm) #0 !dbg !3961 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !3963, metadata !DIExpression()), !dbg !3964
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !3965
  %cmp = icmp eq ptr %0, null, !dbg !3967
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3968

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !3969
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !3970
  %2 = load ptr, ptr %state, align 8, !dbg !3970
  %cmp1 = icmp eq ptr %2, null, !dbg !3971
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3972

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !3973
  br label %return, !dbg !3973

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !3974
  br label %return, !dbg !3974

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !3975
  ret i32 %3, !dbg !3975
}

; Function Attrs: noredzone nounwind
define hidden i32 @zlib_inflateIncomp(ptr noundef %z) #0 !dbg !3976 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %saved_no = alloca ptr, align 8
  %saved_ao = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !3980, metadata !DIExpression()), !dbg !3984
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #9, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3981, metadata !DIExpression()), !dbg !3986
  %0 = load ptr, ptr %z.addr, align 8, !dbg !3987
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7, !dbg !3988
  %1 = load ptr, ptr %state1, align 8, !dbg !3988
  store ptr %1, ptr %state, align 8, !dbg !3986
  call void @llvm.lifetime.start.p0(i64 8, ptr %saved_no) #9, !dbg !3989
  call void @llvm.dbg.declare(metadata ptr %saved_no, metadata !3982, metadata !DIExpression()), !dbg !3990
  %2 = load ptr, ptr %z.addr, align 8, !dbg !3991
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 3, !dbg !3992
  %3 = load ptr, ptr %next_out, align 8, !dbg !3992
  store ptr %3, ptr %saved_no, align 8, !dbg !3990
  call void @llvm.lifetime.start.p0(i64 4, ptr %saved_ao) #9, !dbg !3993
  call void @llvm.dbg.declare(metadata ptr %saved_ao, metadata !3983, metadata !DIExpression()), !dbg !3994
  %4 = load ptr, ptr %z.addr, align 8, !dbg !3995
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 4, !dbg !3996
  %5 = load i64, ptr %avail_out, align 8, !dbg !3996
  %conv = trunc i64 %5 to i32, !dbg !3995
  store i32 %conv, ptr %saved_ao, align 4, !dbg !3994
  %6 = load ptr, ptr %state, align 8, !dbg !3997
  %mode = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 0, !dbg !3999
  %7 = load i32, ptr %mode, align 8, !dbg !3999
  %cmp = icmp ne i32 %7, 11, !dbg !4000
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4001

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %state, align 8, !dbg !4002
  %mode3 = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 0, !dbg !4003
  %9 = load i32, ptr %mode3, align 8, !dbg !4003
  %cmp4 = icmp ne i32 %9, 0, !dbg !4004
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4005

if.then:                                          ; preds = %land.lhs.true
  store i32 -3, ptr %retval, align 4, !dbg !4006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4006

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load ptr, ptr %z.addr, align 8, !dbg !4007
  %avail_out6 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 4, !dbg !4008
  store i64 0, ptr %avail_out6, align 8, !dbg !4009
  %11 = load ptr, ptr %z.addr, align 8, !dbg !4010
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 0, !dbg !4011
  %12 = load ptr, ptr %next_in, align 8, !dbg !4011
  %13 = load ptr, ptr %z.addr, align 8, !dbg !4012
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 1, !dbg !4013
  %14 = load i64, ptr %avail_in, align 8, !dbg !4013
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %14, !dbg !4014
  %15 = load ptr, ptr %z.addr, align 8, !dbg !4015
  %next_out7 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 3, !dbg !4016
  store ptr %add.ptr, ptr %next_out7, align 8, !dbg !4017
  %16 = load ptr, ptr %z.addr, align 8, !dbg !4018
  %17 = load ptr, ptr %z.addr, align 8, !dbg !4019
  %avail_in8 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 1, !dbg !4020
  %18 = load i64, ptr %avail_in8, align 8, !dbg !4020
  %conv9 = trunc i64 %18 to i32, !dbg !4019
  call void @zlib_updatewindow(ptr noundef %16, i32 noundef %conv9) #10, !dbg !4021
  %19 = load i32, ptr %saved_ao, align 4, !dbg !4022
  %conv10 = zext i32 %19 to i64, !dbg !4022
  %20 = load ptr, ptr %z.addr, align 8, !dbg !4023
  %avail_out11 = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 4, !dbg !4024
  store i64 %conv10, ptr %avail_out11, align 8, !dbg !4025
  %21 = load ptr, ptr %saved_no, align 8, !dbg !4026
  %22 = load ptr, ptr %z.addr, align 8, !dbg !4027
  %next_out12 = getelementptr inbounds %struct.z_stream_s, ptr %22, i32 0, i32 3, !dbg !4028
  store ptr %21, ptr %next_out12, align 8, !dbg !4029
  %23 = load ptr, ptr %state, align 8, !dbg !4030
  %check = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 6, !dbg !4030
  %24 = load i64, ptr %check, align 8, !dbg !4030
  %25 = load ptr, ptr %z.addr, align 8, !dbg !4030
  %next_in13 = getelementptr inbounds %struct.z_stream_s, ptr %25, i32 0, i32 0, !dbg !4030
  %26 = load ptr, ptr %next_in13, align 8, !dbg !4030
  %27 = load ptr, ptr %z.addr, align 8, !dbg !4030
  %avail_in14 = getelementptr inbounds %struct.z_stream_s, ptr %27, i32 0, i32 1, !dbg !4030
  %28 = load i64, ptr %avail_in14, align 8, !dbg !4030
  %conv15 = trunc i64 %28 to i32, !dbg !4030
  %call = call i64 @zlib_adler32(i64 noundef %24, ptr noundef %26, i32 noundef %conv15) #10, !dbg !4030
  %29 = load ptr, ptr %state, align 8, !dbg !4031
  %check16 = getelementptr inbounds %struct.inflate_state, ptr %29, i32 0, i32 6, !dbg !4032
  store i64 %call, ptr %check16, align 8, !dbg !4033
  %30 = load ptr, ptr %z.addr, align 8, !dbg !4034
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 10, !dbg !4035
  store i64 %call, ptr %adler, align 8, !dbg !4036
  %31 = load ptr, ptr %z.addr, align 8, !dbg !4037
  %avail_in17 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 1, !dbg !4038
  %32 = load i64, ptr %avail_in17, align 8, !dbg !4038
  %33 = load ptr, ptr %z.addr, align 8, !dbg !4039
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 5, !dbg !4040
  %34 = load i64, ptr %total_out, align 8, !dbg !4041
  %add = add i64 %34, %32, !dbg !4041
  store i64 %add, ptr %total_out, align 8, !dbg !4041
  %35 = load ptr, ptr %z.addr, align 8, !dbg !4042
  %avail_in18 = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 1, !dbg !4043
  %36 = load i64, ptr %avail_in18, align 8, !dbg !4043
  %37 = load ptr, ptr %z.addr, align 8, !dbg !4044
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 2, !dbg !4045
  %38 = load i64, ptr %total_in, align 8, !dbg !4046
  %add19 = add i64 %38, %36, !dbg !4046
  store i64 %add19, ptr %total_in, align 8, !dbg !4046
  %39 = load ptr, ptr %z.addr, align 8, !dbg !4047
  %avail_in20 = getelementptr inbounds %struct.z_stream_s, ptr %39, i32 0, i32 1, !dbg !4048
  %40 = load i64, ptr %avail_in20, align 8, !dbg !4048
  %41 = load ptr, ptr %z.addr, align 8, !dbg !4049
  %next_in21 = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 0, !dbg !4050
  %42 = load ptr, ptr %next_in21, align 8, !dbg !4051
  %add.ptr22 = getelementptr inbounds i8, ptr %42, i64 %40, !dbg !4051
  store ptr %add.ptr22, ptr %next_in21, align 8, !dbg !4051
  %43 = load ptr, ptr %z.addr, align 8, !dbg !4052
  %avail_in23 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 1, !dbg !4053
  %44 = load i64, ptr %avail_in23, align 8, !dbg !4053
  %45 = load ptr, ptr %state, align 8, !dbg !4054
  %total = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 7, !dbg !4055
  %46 = load i64, ptr %total, align 8, !dbg !4056
  %add24 = add i64 %46, %44, !dbg !4056
  store i64 %add24, ptr %total, align 8, !dbg !4056
  %47 = load ptr, ptr %z.addr, align 8, !dbg !4057
  %avail_in25 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 1, !dbg !4058
  store i64 0, ptr %avail_in25, align 8, !dbg !4059
  store i32 0, ptr %retval, align 4, !dbg !4060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4060

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %saved_ao) #9, !dbg !4061
  call void @llvm.lifetime.end.p0(i64 8, ptr %saved_no) #9, !dbg !4061
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #9, !dbg !4061
  %48 = load i32, ptr %retval, align 4, !dbg !4061
  ret i32 %48, !dbg !4061
}

; Function Attrs: noredzone nounwind
define hidden void @__putstr(ptr noundef %s) #0 !dbg !4062 {
entry:
  %s.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pos = alloca i32, align 4
  %c = alloca i8, align 1
  %str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4068, metadata !DIExpression()), !dbg !4076
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #9, !dbg !4077
  call void @llvm.dbg.declare(metadata ptr %x, metadata !4069, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #9, !dbg !4077
  call void @llvm.dbg.declare(metadata ptr %y, metadata !4070, metadata !DIExpression()), !dbg !4079
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #9, !dbg !4077
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4071, metadata !DIExpression()), !dbg !4080
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #9, !dbg !4081
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4072, metadata !DIExpression()), !dbg !4082
  %0 = load i32, ptr @early_serial_base, align 4, !dbg !4083
  %tobool = icmp ne i32 %0, 0, !dbg !4083
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4084

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #9, !dbg !4085
  call void @llvm.dbg.declare(metadata ptr %str, metadata !4073, metadata !DIExpression()), !dbg !4086
  %1 = load ptr, ptr %s.addr, align 8, !dbg !4087
  store ptr %1, ptr %str, align 8, !dbg !4086
  br label %while.cond, !dbg !4088

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load ptr, ptr %str, align 8, !dbg !4089
  %3 = load i8, ptr %2, align 1, !dbg !4090
  %tobool1 = icmp ne i8 %3, 0, !dbg !4088
  br i1 %tobool1, label %while.body, label %while.end, !dbg !4088

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %str, align 8, !dbg !4091
  %5 = load i8, ptr %4, align 1, !dbg !4094
  %conv = sext i8 %5 to i32, !dbg !4094
  %cmp = icmp eq i32 %conv, 10, !dbg !4095
  br i1 %cmp, label %if.then3, label %if.end, !dbg !4096

if.then3:                                         ; preds = %while.body
  call void @serial_putchar(i32 noundef 13) #10, !dbg !4097
  br label %if.end, !dbg !4097

if.end:                                           ; preds = %if.then3, %while.body
  %6 = load ptr, ptr %str, align 8, !dbg !4098
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1, !dbg !4098
  store ptr %incdec.ptr, ptr %str, align 8, !dbg !4098
  %7 = load i8, ptr %6, align 1, !dbg !4099
  %conv4 = sext i8 %7 to i32, !dbg !4099
  call void @serial_putchar(i32 noundef %conv4) #10, !dbg !4100
  br label %while.cond, !dbg !4088, !llvm.loop !4101

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #9, !dbg !4103
  br label %if.end5, !dbg !4104

if.end5:                                          ; preds = %while.end, %entry
  %8 = load i32, ptr @lines, align 4, !dbg !4105
  %cmp6 = icmp eq i32 %8, 0, !dbg !4107
  br i1 %cmp6, label %if.then10, label %lor.lhs.false, !dbg !4108

lor.lhs.false:                                    ; preds = %if.end5
  %9 = load i32, ptr @cols, align 4, !dbg !4109
  %cmp8 = icmp eq i32 %9, 0, !dbg !4110
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4111

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4112

if.end11:                                         ; preds = %lor.lhs.false
  %10 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4113
  %screen_info = getelementptr inbounds %struct.boot_params, ptr %10, i32 0, i32 0, !dbg !4114
  %orig_x = getelementptr inbounds %struct.screen_info, ptr %screen_info, i32 0, i32 0, !dbg !4115
  %11 = load i8, ptr %orig_x, align 1, !dbg !4115
  %conv12 = zext i8 %11 to i32, !dbg !4113
  store i32 %conv12, ptr %x, align 4, !dbg !4116
  %12 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4117
  %screen_info13 = getelementptr inbounds %struct.boot_params, ptr %12, i32 0, i32 0, !dbg !4118
  %orig_y = getelementptr inbounds %struct.screen_info, ptr %screen_info13, i32 0, i32 1, !dbg !4119
  %13 = load i8, ptr %orig_y, align 1, !dbg !4119
  %conv14 = zext i8 %13 to i32, !dbg !4117
  store i32 %conv14, ptr %y, align 4, !dbg !4120
  br label %while.cond15, !dbg !4121

while.cond15:                                     ; preds = %if.end41, %if.end11
  %14 = load ptr, ptr %s.addr, align 8, !dbg !4122
  %incdec.ptr16 = getelementptr inbounds i8, ptr %14, i32 1, !dbg !4122
  store ptr %incdec.ptr16, ptr %s.addr, align 8, !dbg !4122
  %15 = load i8, ptr %14, align 1, !dbg !4123
  store i8 %15, ptr %c, align 1, !dbg !4124
  %conv17 = sext i8 %15 to i32, !dbg !4125
  %cmp18 = icmp ne i32 %conv17, 0, !dbg !4126
  br i1 %cmp18, label %while.body20, label %while.end42, !dbg !4121

while.body20:                                     ; preds = %while.cond15
  %16 = load i8, ptr %c, align 1, !dbg !4127
  %conv21 = sext i8 %16 to i32, !dbg !4127
  %cmp22 = icmp eq i32 %conv21, 10, !dbg !4130
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !4131

if.then24:                                        ; preds = %while.body20
  store i32 0, ptr %x, align 4, !dbg !4132
  %17 = load i32, ptr %y, align 4, !dbg !4134
  %inc = add nsw i32 %17, 1, !dbg !4134
  store i32 %inc, ptr %y, align 4, !dbg !4134
  %18 = load i32, ptr @lines, align 4, !dbg !4136
  %cmp25 = icmp sge i32 %inc, %18, !dbg !4137
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4138

if.then27:                                        ; preds = %if.then24
  call void @scroll() #10, !dbg !4139
  %19 = load i32, ptr %y, align 4, !dbg !4141
  %dec = add nsw i32 %19, -1, !dbg !4141
  store i32 %dec, ptr %y, align 4, !dbg !4141
  br label %if.end28, !dbg !4142

if.end28:                                         ; preds = %if.then27, %if.then24
  br label %if.end41, !dbg !4143

if.else:                                          ; preds = %while.body20
  %20 = load i8, ptr %c, align 1, !dbg !4144
  %21 = load ptr, ptr @vidmem, align 8, !dbg !4146
  %22 = load i32, ptr %x, align 4, !dbg !4147
  %23 = load i32, ptr @cols, align 4, !dbg !4148
  %24 = load i32, ptr %y, align 4, !dbg !4149
  %mul = mul nsw i32 %23, %24, !dbg !4150
  %add = add nsw i32 %22, %mul, !dbg !4151
  %mul29 = mul nsw i32 %add, 2, !dbg !4152
  %idxprom = sext i32 %mul29 to i64, !dbg !4146
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 %idxprom, !dbg !4146
  store i8 %20, ptr %arrayidx, align 1, !dbg !4153
  %25 = load i32, ptr %x, align 4, !dbg !4154
  %inc30 = add nsw i32 %25, 1, !dbg !4154
  store i32 %inc30, ptr %x, align 4, !dbg !4154
  %26 = load i32, ptr @cols, align 4, !dbg !4156
  %cmp31 = icmp sge i32 %inc30, %26, !dbg !4157
  br i1 %cmp31, label %if.then33, label %if.end40, !dbg !4158

if.then33:                                        ; preds = %if.else
  store i32 0, ptr %x, align 4, !dbg !4159
  %27 = load i32, ptr %y, align 4, !dbg !4161
  %inc34 = add nsw i32 %27, 1, !dbg !4161
  store i32 %inc34, ptr %y, align 4, !dbg !4161
  %28 = load i32, ptr @lines, align 4, !dbg !4163
  %cmp35 = icmp sge i32 %inc34, %28, !dbg !4164
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !4165

if.then37:                                        ; preds = %if.then33
  call void @scroll() #10, !dbg !4166
  %29 = load i32, ptr %y, align 4, !dbg !4168
  %dec38 = add nsw i32 %29, -1, !dbg !4168
  store i32 %dec38, ptr %y, align 4, !dbg !4168
  br label %if.end39, !dbg !4169

if.end39:                                         ; preds = %if.then37, %if.then33
  br label %if.end40, !dbg !4170

if.end40:                                         ; preds = %if.end39, %if.else
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end28
  br label %while.cond15, !dbg !4121, !llvm.loop !4171

while.end42:                                      ; preds = %while.cond15
  %30 = load i32, ptr %x, align 4, !dbg !4173
  %conv43 = trunc i32 %30 to i8, !dbg !4173
  %31 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4174
  %screen_info44 = getelementptr inbounds %struct.boot_params, ptr %31, i32 0, i32 0, !dbg !4175
  %orig_x45 = getelementptr inbounds %struct.screen_info, ptr %screen_info44, i32 0, i32 0, !dbg !4176
  store i8 %conv43, ptr %orig_x45, align 1, !dbg !4177
  %32 = load i32, ptr %y, align 4, !dbg !4178
  %conv46 = trunc i32 %32 to i8, !dbg !4178
  %33 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4179
  %screen_info47 = getelementptr inbounds %struct.boot_params, ptr %33, i32 0, i32 0, !dbg !4180
  %orig_y48 = getelementptr inbounds %struct.screen_info, ptr %screen_info47, i32 0, i32 1, !dbg !4181
  store i8 %conv46, ptr %orig_y48, align 1, !dbg !4182
  %34 = load i32, ptr %x, align 4, !dbg !4183
  %35 = load i32, ptr @cols, align 4, !dbg !4184
  %36 = load i32, ptr %y, align 4, !dbg !4185
  %mul49 = mul nsw i32 %35, %36, !dbg !4186
  %add50 = add nsw i32 %34, %mul49, !dbg !4187
  %mul51 = mul nsw i32 %add50, 2, !dbg !4188
  store i32 %mul51, ptr %pos, align 4, !dbg !4189
  %37 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !4190
  %38 = load i32, ptr @vidport, align 4, !dbg !4191
  %conv52 = trunc i32 %38 to i16, !dbg !4191
  call void %37(i8 noundef zeroext 14, i16 noundef zeroext %conv52) #10, !dbg !4190
  %39 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !4192
  %40 = load i32, ptr %pos, align 4, !dbg !4193
  %shr = ashr i32 %40, 9, !dbg !4194
  %and = and i32 255, %shr, !dbg !4195
  %conv53 = trunc i32 %and to i8, !dbg !4196
  %41 = load i32, ptr @vidport, align 4, !dbg !4197
  %add54 = add nsw i32 %41, 1, !dbg !4198
  %conv55 = trunc i32 %add54 to i16, !dbg !4197
  call void %39(i8 noundef zeroext %conv53, i16 noundef zeroext %conv55) #10, !dbg !4192
  %42 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !4199
  %43 = load i32, ptr @vidport, align 4, !dbg !4200
  %conv56 = trunc i32 %43 to i16, !dbg !4200
  call void %42(i8 noundef zeroext 15, i16 noundef zeroext %conv56) #10, !dbg !4199
  %44 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !4201
  %45 = load i32, ptr %pos, align 4, !dbg !4202
  %shr57 = ashr i32 %45, 1, !dbg !4203
  %and58 = and i32 255, %shr57, !dbg !4204
  %conv59 = trunc i32 %and58 to i8, !dbg !4205
  %46 = load i32, ptr @vidport, align 4, !dbg !4206
  %add60 = add nsw i32 %46, 1, !dbg !4207
  %conv61 = trunc i32 %add60 to i16, !dbg !4206
  call void %44(i8 noundef zeroext %conv59, i16 noundef zeroext %conv61) #10, !dbg !4201
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4208
  br label %cleanup, !dbg !4208

cleanup:                                          ; preds = %while.end42, %if.then10
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #9, !dbg !4208
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #9, !dbg !4208
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #9, !dbg !4208
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #9, !dbg !4208
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4208

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal void @serial_putchar(i32 noundef %ch) #0 !dbg !4209 {
entry:
  %ch.addr = alloca i32, align 4
  %timeout = alloca i32, align 4
  store i32 %ch, ptr %ch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !4213, metadata !DIExpression()), !dbg !4215
  call void @llvm.lifetime.start.p0(i64 4, ptr %timeout) #9, !dbg !4216
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !4214, metadata !DIExpression()), !dbg !4217
  store i32 65535, ptr %timeout, align 4, !dbg !4217
  br label %while.cond, !dbg !4218

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @pio_ops, align 8, !dbg !4219
  %1 = load i32, ptr @early_serial_base, align 4, !dbg !4220
  %add = add nsw i32 %1, 5, !dbg !4221
  %conv = trunc i32 %add to i16, !dbg !4220
  %call = call zeroext i8 %0(i16 noundef zeroext %conv) #10, !dbg !4219
  %conv1 = zext i8 %call to i32, !dbg !4219
  %and = and i32 %conv1, 32, !dbg !4222
  %cmp = icmp eq i32 %and, 0, !dbg !4223
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4224

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %timeout, align 4, !dbg !4225
  %dec = add i32 %2, -1, !dbg !4225
  store i32 %dec, ptr %timeout, align 4, !dbg !4225
  %tobool = icmp ne i32 %dec, 0, !dbg !4224
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !4226
  br i1 %3, label %while.body, label %while.end, !dbg !4218

while.body:                                       ; preds = %land.end
  call void @cpu_relax() #10, !dbg !4227
  br label %while.cond, !dbg !4218, !llvm.loop !4228

while.end:                                        ; preds = %land.end
  %4 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !4230
  %5 = load i32, ptr %ch.addr, align 4, !dbg !4231
  %conv3 = trunc i32 %5 to i8, !dbg !4231
  %6 = load i32, ptr @early_serial_base, align 4, !dbg !4232
  %add4 = add nsw i32 %6, 0, !dbg !4233
  %conv5 = trunc i32 %add4 to i16, !dbg !4232
  call void %4(i8 noundef zeroext %conv3, i16 noundef zeroext %conv5) #10, !dbg !4230
  call void @llvm.lifetime.end.p0(i64 4, ptr %timeout) #9, !dbg !4234
  ret void, !dbg !4234
}

; Function Attrs: noredzone nounwind
define internal void @scroll() #0 !dbg !4235 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4240
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4239, metadata !DIExpression()), !dbg !4241
  %0 = load ptr, ptr @vidmem, align 8, !dbg !4242
  %1 = load ptr, ptr @vidmem, align 8, !dbg !4243
  %2 = load i32, ptr @cols, align 4, !dbg !4244
  %mul = mul nsw i32 %2, 2, !dbg !4245
  %idx.ext = sext i32 %mul to i64, !dbg !4246
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext, !dbg !4246
  %3 = load i32, ptr @lines, align 4, !dbg !4247
  %sub = sub nsw i32 %3, 1, !dbg !4248
  %4 = load i32, ptr @cols, align 4, !dbg !4249
  %mul1 = mul nsw i32 %sub, %4, !dbg !4250
  %mul2 = mul nsw i32 %mul1, 2, !dbg !4251
  %conv = sext i32 %mul2 to i64, !dbg !4252
  %call = call ptr @memmove(ptr noundef %0, ptr noundef %add.ptr, i64 noundef %conv) #10, !dbg !4253
  %5 = load i32, ptr @lines, align 4, !dbg !4254
  %sub3 = sub nsw i32 %5, 1, !dbg !4256
  %6 = load i32, ptr @cols, align 4, !dbg !4257
  %mul4 = mul nsw i32 %sub3, %6, !dbg !4258
  %mul5 = mul nsw i32 %mul4, 2, !dbg !4259
  store i32 %mul5, ptr %i, align 4, !dbg !4260
  br label %for.cond, !dbg !4261

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4, !dbg !4262
  %8 = load i32, ptr @lines, align 4, !dbg !4264
  %9 = load i32, ptr @cols, align 4, !dbg !4265
  %mul6 = mul nsw i32 %8, %9, !dbg !4266
  %mul7 = mul nsw i32 %mul6, 2, !dbg !4267
  %cmp = icmp slt i32 %7, %mul7, !dbg !4268
  br i1 %cmp, label %for.body, label %for.end, !dbg !4269

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr @vidmem, align 8, !dbg !4270
  %11 = load i32, ptr %i, align 4, !dbg !4271
  %idxprom = sext i32 %11 to i64, !dbg !4270
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom, !dbg !4270
  store i8 32, ptr %arrayidx, align 1, !dbg !4272
  br label %for.inc, !dbg !4270

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !4273
  %add = add nsw i32 %12, 2, !dbg !4273
  store i32 %add, ptr %i, align 4, !dbg !4273
  br label %for.cond, !dbg !4274, !llvm.loop !4275

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !4277
  ret void, !dbg !4277
}

; Function Attrs: noredzone nounwind
define hidden void @__puthex(i64 noundef %value) #0 !dbg !4278 {
entry:
  %value.addr = alloca i64, align 8
  %alpha = alloca [2 x i8], align 1
  %bits = alloca i32, align 4
  %digit = alloca i64, align 8
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4282, metadata !DIExpression()), !dbg !4289
  call void @llvm.lifetime.start.p0(i64 2, ptr %alpha) #9, !dbg !4290
  call void @llvm.dbg.declare(metadata ptr %alpha, metadata !4283, metadata !DIExpression()), !dbg !4291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %alpha, ptr align 1 @__const.__puthex.alpha, i64 2, i1 false), !dbg !4291
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #9, !dbg !4292
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !4284, metadata !DIExpression()), !dbg !4293
  store i32 60, ptr %bits, align 4, !dbg !4294
  br label %for.cond, !dbg !4295

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %bits, align 4, !dbg !4296
  %cmp = icmp sge i32 %0, 0, !dbg !4297
  br i1 %cmp, label %for.body, label %for.end, !dbg !4298

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %digit) #9, !dbg !4299
  call void @llvm.dbg.declare(metadata ptr %digit, metadata !4285, metadata !DIExpression()), !dbg !4300
  %1 = load i64, ptr %value.addr, align 8, !dbg !4301
  %2 = load i32, ptr %bits, align 4, !dbg !4302
  %sh_prom = zext i32 %2 to i64, !dbg !4303
  %shr = lshr i64 %1, %sh_prom, !dbg !4303
  %and = and i64 %shr, 15, !dbg !4304
  store i64 %and, ptr %digit, align 8, !dbg !4300
  %3 = load i64, ptr %digit, align 8, !dbg !4305
  %cmp1 = icmp ult i64 %3, 10, !dbg !4307
  br i1 %cmp1, label %if.then, label %if.else, !dbg !4308

if.then:                                          ; preds = %for.body
  %4 = load i64, ptr %digit, align 8, !dbg !4309
  %add = add i64 48, %4, !dbg !4310
  %conv = trunc i64 %add to i8, !dbg !4311
  %arrayidx = getelementptr inbounds [2 x i8], ptr %alpha, i64 0, i64 0, !dbg !4312
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4313
  br label %if.end, !dbg !4312

if.else:                                          ; preds = %for.body
  %5 = load i64, ptr %digit, align 8, !dbg !4314
  %sub = sub i64 %5, 10, !dbg !4315
  %add2 = add i64 97, %sub, !dbg !4316
  %conv3 = trunc i64 %add2 to i8, !dbg !4317
  %arrayidx4 = getelementptr inbounds [2 x i8], ptr %alpha, i64 0, i64 0, !dbg !4318
  store i8 %conv3, ptr %arrayidx4, align 1, !dbg !4319
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay = getelementptr inbounds [2 x i8], ptr %alpha, i64 0, i64 0, !dbg !4320
  call void @__putstr(ptr noundef %arraydecay) #10, !dbg !4321
  call void @llvm.lifetime.end.p0(i64 8, ptr %digit) #9, !dbg !4322
  br label %for.inc, !dbg !4323

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %bits, align 4, !dbg !4324
  %sub5 = sub nsw i32 %6, 4, !dbg !4324
  store i32 %sub5, ptr %bits, align 4, !dbg !4324
  br label %for.cond, !dbg !4325, !llvm.loop !4326

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #9, !dbg !4328
  call void @llvm.lifetime.end.p0(i64 2, ptr %alpha) #9, !dbg !4328
  ret void, !dbg !4328
}

; Function Attrs: noredzone nounwind
define hidden i64 @decompress_kernel(ptr noundef %outbuf, i64 noundef %virt_addr, ptr noundef %error) #0 !dbg !4329 {
entry:
  %retval = alloca i64, align 8
  %outbuf.addr = alloca ptr, align 8
  %virt_addr.addr = alloca i64, align 8
  %error.addr = alloca ptr, align 8
  %entry1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %outbuf, ptr %outbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %outbuf.addr, metadata !4336, metadata !DIExpression()), !dbg !4340
  store i64 %virt_addr, ptr %virt_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virt_addr.addr, metadata !4337, metadata !DIExpression()), !dbg !4341
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4338, metadata !DIExpression()), !dbg !4342
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !4343
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4339, metadata !DIExpression()), !dbg !4344
  %0 = load i64, ptr @free_mem_ptr, align 8, !dbg !4345
  %tobool = icmp ne i64 %0, 0, !dbg !4345
  br i1 %tobool, label %if.end, label %if.then, !dbg !4347

if.then:                                          ; preds = %entry
  store i64 ptrtoint (ptr @boot_heap to i64), ptr @free_mem_ptr, align 8, !dbg !4348
  store i64 add (i64 ptrtoint (ptr @boot_heap to i64), i64 65536), ptr @free_mem_end_ptr, align 8, !dbg !4350
  br label %if.end, !dbg !4351

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr @input_len, align 4, !dbg !4352
  %conv = zext i32 %1 to i64, !dbg !4352
  %2 = load ptr, ptr %outbuf.addr, align 8, !dbg !4354
  %3 = load i32, ptr @output_len, align 4, !dbg !4355
  %conv2 = zext i32 %3 to i64, !dbg !4355
  %4 = load ptr, ptr %error.addr, align 8, !dbg !4356
  %call = call i32 @__decompress(ptr noundef @input_data, i64 noundef %conv, ptr noundef null, ptr noundef null, ptr noundef %2, i64 noundef %conv2, ptr noundef null, ptr noundef %4) #10, !dbg !4357
  %cmp = icmp slt i32 %call, 0, !dbg !4358
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !4359

if.then4:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !4360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4360

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %outbuf.addr, align 8, !dbg !4361
  %call6 = call i64 @parse_elf(ptr noundef %5) #10, !dbg !4362
  store i64 %call6, ptr %entry1, align 8, !dbg !4363
  %6 = load ptr, ptr %outbuf.addr, align 8, !dbg !4364
  %7 = load i32, ptr @output_len, align 4, !dbg !4365
  %conv7 = zext i32 %7 to i64, !dbg !4365
  %8 = load i64, ptr %virt_addr.addr, align 8, !dbg !4366
  call void @handle_relocations(ptr noundef %6, i64 noundef %conv7, i64 noundef %8) #10, !dbg !4367
  %9 = load i64, ptr %entry1, align 8, !dbg !4368
  store i64 %9, ptr %retval, align 8, !dbg !4369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4369

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !4370
  %10 = load i64, ptr %retval, align 8, !dbg !4370
  ret i64 %10, !dbg !4370
}

; Function Attrs: noredzone nounwind
define internal i32 @__decompress(ptr noundef %buf, i64 noundef %len, ptr noundef %fill, ptr noundef %flush, ptr noundef %out_buf, i64 noundef %out_len, ptr noundef %pos, ptr noundef %error) #0 !dbg !4371 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %out_buf.addr = alloca ptr, align 8
  %out_len.addr = alloca i64, align 8
  %pos.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4379, metadata !DIExpression()), !dbg !4387
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4380, metadata !DIExpression()), !dbg !4388
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !4381, metadata !DIExpression()), !dbg !4389
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !4382, metadata !DIExpression()), !dbg !4390
  store ptr %out_buf, ptr %out_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_buf.addr, metadata !4383, metadata !DIExpression()), !dbg !4391
  store i64 %out_len, ptr %out_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !4384, metadata !DIExpression()), !dbg !4392
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !4385, metadata !DIExpression()), !dbg !4393
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4386, metadata !DIExpression()), !dbg !4394
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4395
  %1 = load i64, ptr %len.addr, align 8, !dbg !4396
  %2 = load ptr, ptr %fill.addr, align 8, !dbg !4397
  %3 = load ptr, ptr %flush.addr, align 8, !dbg !4398
  %4 = load ptr, ptr %out_buf.addr, align 8, !dbg !4399
  %5 = load i64, ptr %out_len.addr, align 8, !dbg !4400
  %6 = load ptr, ptr %pos.addr, align 8, !dbg !4401
  %7 = load ptr, ptr %error.addr, align 8, !dbg !4402
  %call = call i32 @__gunzip(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7) #10, !dbg !4403
  ret i32 %call, !dbg !4404
}

; Function Attrs: noredzone nounwind
define internal i64 @parse_elf(ptr noundef %output) #0 !dbg !4405 {
entry:
  %output.addr = alloca ptr, align 8
  %ehdr = alloca %struct.elf64_hdr, align 8
  %phdrs = alloca ptr, align 8
  %phdr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !4409, metadata !DIExpression()), !dbg !4451
  call void @llvm.lifetime.start.p0(i64 64, ptr %ehdr) #9, !dbg !4452
  call void @llvm.dbg.declare(metadata ptr %ehdr, metadata !4410, metadata !DIExpression()), !dbg !4453
  call void @llvm.lifetime.start.p0(i64 8, ptr %phdrs) #9, !dbg !4454
  call void @llvm.dbg.declare(metadata ptr %phdrs, metadata !4434, metadata !DIExpression()), !dbg !4455
  call void @llvm.lifetime.start.p0(i64 8, ptr %phdr) #9, !dbg !4454
  call void @llvm.dbg.declare(metadata ptr %phdr, metadata !4448, metadata !DIExpression()), !dbg !4456
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #9, !dbg !4457
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !4449, metadata !DIExpression()), !dbg !4458
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4459
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4450, metadata !DIExpression()), !dbg !4460
  %0 = load ptr, ptr %output.addr, align 8, !dbg !4461
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ehdr, ptr align 1 %0, i64 64, i1 false), !dbg !4461
  %e_ident = getelementptr inbounds %struct.elf64_hdr, ptr %ehdr, i32 0, i32 0, !dbg !4462
  %arrayidx = getelementptr inbounds [16 x i8], ptr %e_ident, i64 0, i64 0, !dbg !4464
  %1 = load i8, ptr %arrayidx, align 8, !dbg !4464
  %conv = zext i8 %1 to i32, !dbg !4464
  %cmp = icmp ne i32 %conv, 127, !dbg !4465
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4466

lor.lhs.false:                                    ; preds = %entry
  %e_ident2 = getelementptr inbounds %struct.elf64_hdr, ptr %ehdr, i32 0, i32 0, !dbg !4467
  %arrayidx3 = getelementptr inbounds [16 x i8], ptr %e_ident2, i64 0, i64 1, !dbg !4468
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !4468
  %conv4 = zext i8 %2 to i32, !dbg !4468
  %cmp5 = icmp ne i32 %conv4, 69, !dbg !4469
  br i1 %cmp5, label %if.then, label %lor.lhs.false7, !dbg !4470

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %e_ident8 = getelementptr inbounds %struct.elf64_hdr, ptr %ehdr, i32 0, i32 0, !dbg !4471
  %arrayidx9 = getelementptr inbounds [16 x i8], ptr %e_ident8, i64 0, i64 2, !dbg !4472
  %3 = load i8, ptr %arrayidx9, align 2, !dbg !4472
  %conv10 = zext i8 %3 to i32, !dbg !4472
  %cmp11 = icmp ne i32 %conv10, 76, !dbg !4473
  br i1 %cmp11, label %if.then, label %lor.lhs.false13, !dbg !4474

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %e_ident14 = getelementptr inbounds %struct.elf64_hdr, ptr %ehdr, i32 0, i32 0, !dbg !4475
  %arrayidx15 = getelementptr inbounds [16 x i8], ptr %e_ident14, i64 0, i64 3, !dbg !4476
  %4 = load i8, ptr %arrayidx15, align 1, !dbg !4476
  %conv16 = zext i8 %4 to i32, !dbg !4476
  %cmp17 = icmp ne i32 %conv16, 70, !dbg !4477
  br i1 %cmp17, label %if.then, label %if.end, !dbg !4478

if.then:                                          ; preds = %lor.lhs.false13, %lor.lhs.false7, %lor.lhs.false, %entry
  call void @error(ptr noundef @.str.41) #11, !dbg !4479
  unreachable, !dbg !4479

if.end:                                           ; preds = %lor.lhs.false13
  call void @__putstr(ptr noundef @.str.42) #10, !dbg !4480
  %e_phnum = getelementptr inbounds %struct.elf64_hdr, ptr %ehdr, i32 0, i32 10, !dbg !4481
  %5 = load i16, ptr %e_phnum, align 8, !dbg !4481
  %conv19 = zext i16 %5 to i64, !dbg !4482
  %mul = mul i64 56, %conv19, !dbg !4483
  %conv20 = trunc i64 %mul to i32, !dbg !4484
  %call = call ptr @malloc(i32 noundef %conv20) #10, !dbg !4485
  store ptr %call, ptr %phdrs, align 8, !dbg !4486
  %6 = load ptr, ptr %phdrs, align 8, !dbg !4487
  %tobool = icmp ne ptr %6, null, !dbg !4487
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !4489

if.then21:                                        ; preds = %if.end
  call void @error(ptr noundef @.str.43) #11, !dbg !4490
  unreachable, !dbg !4490

if.end22:                                         ; preds = %if.end
  %7 = load ptr, ptr %phdrs, align 8, !dbg !4491
  %8 = load ptr, ptr %output.addr, align 8, !dbg !4491
  %e_phoff = getelementptr inbounds %struct.elf64_hdr, ptr %ehdr, i32 0, i32 5, !dbg !4491
  %9 = load i64, ptr %e_phoff, align 8, !dbg !4491
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !4491
  %e_phnum23 = getelementptr inbounds %struct.elf64_hdr, ptr %ehdr, i32 0, i32 10, !dbg !4491
  %10 = load i16, ptr %e_phnum23, align 8, !dbg !4491
  %conv24 = zext i16 %10 to i64, !dbg !4491
  %mul25 = mul i64 56, %conv24, !dbg !4491
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 1 %add.ptr, i64 %mul25, i1 false), !dbg !4491
  store i32 0, ptr %i, align 4, !dbg !4492
  br label %for.cond, !dbg !4494

for.cond:                                         ; preds = %for.inc, %if.end22
  %11 = load i32, ptr %i, align 4, !dbg !4495
  %e_phnum26 = getelementptr inbounds %struct.elf64_hdr, ptr %ehdr, i32 0, i32 10, !dbg !4497
  %12 = load i16, ptr %e_phnum26, align 8, !dbg !4497
  %conv27 = zext i16 %12 to i32, !dbg !4498
  %cmp28 = icmp slt i32 %11, %conv27, !dbg !4499
  br i1 %cmp28, label %for.body, label %for.end, !dbg !4500

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %phdrs, align 8, !dbg !4501
  %14 = load i32, ptr %i, align 4, !dbg !4503
  %idxprom = sext i32 %14 to i64, !dbg !4501
  %arrayidx30 = getelementptr inbounds %struct.elf64_phdr, ptr %13, i64 %idxprom, !dbg !4501
  store ptr %arrayidx30, ptr %phdr, align 8, !dbg !4504
  %15 = load ptr, ptr %phdr, align 8, !dbg !4505
  %p_type = getelementptr inbounds %struct.elf64_phdr, ptr %15, i32 0, i32 0, !dbg !4506
  %16 = load i32, ptr %p_type, align 8, !dbg !4506
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
  ], !dbg !4507

sw.bb:                                            ; preds = %for.body
  %17 = load ptr, ptr %phdr, align 8, !dbg !4508
  %p_align = getelementptr inbounds %struct.elf64_phdr, ptr %17, i32 0, i32 7, !dbg !4511
  %18 = load i64, ptr %p_align, align 8, !dbg !4511
  %rem = urem i64 %18, 2097152, !dbg !4512
  %cmp31 = icmp ne i64 %rem, 0, !dbg !4513
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !4514

if.then33:                                        ; preds = %sw.bb
  call void @error(ptr noundef @.str.44) #11, !dbg !4515
  unreachable, !dbg !4515

if.end34:                                         ; preds = %sw.bb
  %19 = load ptr, ptr %output.addr, align 8, !dbg !4516
  store ptr %19, ptr %dest, align 8, !dbg !4517
  %20 = load ptr, ptr %phdr, align 8, !dbg !4518
  %p_paddr = getelementptr inbounds %struct.elf64_phdr, ptr %20, i32 0, i32 4, !dbg !4519
  %21 = load i64, ptr %p_paddr, align 8, !dbg !4519
  %sub = sub i64 %21, 16777216, !dbg !4520
  %22 = load ptr, ptr %dest, align 8, !dbg !4521
  %add.ptr35 = getelementptr inbounds i8, ptr %22, i64 %sub, !dbg !4521
  store ptr %add.ptr35, ptr %dest, align 8, !dbg !4521
  %23 = load ptr, ptr %dest, align 8, !dbg !4522
  %24 = load ptr, ptr %output.addr, align 8, !dbg !4523
  %25 = load ptr, ptr %phdr, align 8, !dbg !4524
  %p_offset = getelementptr inbounds %struct.elf64_phdr, ptr %25, i32 0, i32 2, !dbg !4525
  %26 = load i64, ptr %p_offset, align 8, !dbg !4525
  %add.ptr36 = getelementptr inbounds i8, ptr %24, i64 %26, !dbg !4526
  %27 = load ptr, ptr %phdr, align 8, !dbg !4527
  %p_filesz = getelementptr inbounds %struct.elf64_phdr, ptr %27, i32 0, i32 5, !dbg !4528
  %28 = load i64, ptr %p_filesz, align 8, !dbg !4528
  %call37 = call ptr @memmove(ptr noundef %23, ptr noundef %add.ptr36, i64 noundef %28) #10, !dbg !4529
  br label %sw.epilog, !dbg !4530

sw.default:                                       ; preds = %for.body
  br label %sw.epilog, !dbg !4531

sw.epilog:                                        ; preds = %sw.default, %if.end34
  br label %for.inc, !dbg !4532

for.inc:                                          ; preds = %sw.epilog
  %29 = load i32, ptr %i, align 4, !dbg !4533
  %inc = add nsw i32 %29, 1, !dbg !4533
  store i32 %inc, ptr %i, align 4, !dbg !4533
  br label %for.cond, !dbg !4534, !llvm.loop !4535

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %phdrs, align 8, !dbg !4537
  call void @free(ptr noundef %30) #10, !dbg !4538
  %e_entry = getelementptr inbounds %struct.elf64_hdr, ptr %ehdr, i32 0, i32 4, !dbg !4539
  %31 = load i64, ptr %e_entry, align 8, !dbg !4539
  %sub38 = sub i64 %31, 16777216, !dbg !4540
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #9, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %phdr) #9, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %phdrs) #9, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 64, ptr %ehdr) #9, !dbg !4541
  ret i64 %sub38, !dbg !4542
}

; Function Attrs: noredzone nounwind
define internal void @handle_relocations(ptr noundef %output, i64 noundef %output_len, i64 noundef %virt_addr) #0 !dbg !4543 {
entry:
  %output.addr = alloca ptr, align 8
  %output_len.addr = alloca i64, align 8
  %virt_addr.addr = alloca i64, align 8
  %reloc = alloca ptr, align 8
  %delta = alloca i64, align 8
  %map = alloca i64, align 8
  %ptr = alloca i64, align 8
  %min_addr = alloca i64, align 8
  %max_addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %extended = alloca i64, align 8
  %extended16 = alloca i64, align 8
  %extended33 = alloca i64, align 8
  store ptr %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !4547, metadata !DIExpression()), !dbg !4567
  store i64 %output_len, ptr %output_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output_len.addr, metadata !4548, metadata !DIExpression()), !dbg !4568
  store i64 %virt_addr, ptr %virt_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virt_addr.addr, metadata !4549, metadata !DIExpression()), !dbg !4569
  call void @llvm.lifetime.start.p0(i64 8, ptr %reloc) #9, !dbg !4570
  call void @llvm.dbg.declare(metadata ptr %reloc, metadata !4550, metadata !DIExpression()), !dbg !4571
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #9, !dbg !4572
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !4552, metadata !DIExpression()), !dbg !4573
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #9, !dbg !4572
  call void @llvm.dbg.declare(metadata ptr %map, metadata !4553, metadata !DIExpression()), !dbg !4574
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #9, !dbg !4572
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !4554, metadata !DIExpression()), !dbg !4575
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_addr) #9, !dbg !4576
  call void @llvm.dbg.declare(metadata ptr %min_addr, metadata !4555, metadata !DIExpression()), !dbg !4577
  %0 = load ptr, ptr %output.addr, align 8, !dbg !4578
  %1 = ptrtoint ptr %0 to i64, !dbg !4579
  store i64 %1, ptr %min_addr, align 8, !dbg !4577
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_addr) #9, !dbg !4580
  call void @llvm.dbg.declare(metadata ptr %max_addr, metadata !4556, metadata !DIExpression()), !dbg !4581
  %2 = load i64, ptr %min_addr, align 8, !dbg !4582
  %add = add i64 %2, 38236160, !dbg !4583
  store i64 %add, ptr %max_addr, align 8, !dbg !4581
  %3 = load i64, ptr %min_addr, align 8, !dbg !4584
  %sub = sub i64 %3, 16777216, !dbg !4585
  store i64 %sub, ptr %delta, align 8, !dbg !4586
  %4 = load i64, ptr %delta, align 8, !dbg !4587
  %sub1 = sub i64 %4, -2147483648, !dbg !4588
  store i64 %sub1, ptr %map, align 8, !dbg !4589
  %5 = load i64, ptr %virt_addr.addr, align 8, !dbg !4590
  %sub2 = sub i64 %5, 16777216, !dbg !4592
  store i64 %sub2, ptr %delta, align 8, !dbg !4593
  %6 = load i64, ptr %delta, align 8, !dbg !4594
  %tobool = icmp ne i64 %6, 0, !dbg !4594
  br i1 %tobool, label %if.end, label %if.then, !dbg !4596

if.then:                                          ; preds = %entry
  call void @__putstr(ptr noundef @.str.45) #10, !dbg !4597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4599

if.end:                                           ; preds = %entry
  call void @__putstr(ptr noundef @.str.46) #10, !dbg !4600
  %7 = load ptr, ptr %output.addr, align 8, !dbg !4601
  %8 = load i64, ptr %output_len.addr, align 8, !dbg !4602
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %8, !dbg !4603
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr, i64 -4, !dbg !4604
  store ptr %add.ptr3, ptr %reloc, align 8, !dbg !4605
  br label %for.cond, !dbg !4606

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load ptr, ptr %reloc, align 8, !dbg !4607
  %10 = load i32, ptr %9, align 4, !dbg !4608
  %tobool4 = icmp ne i32 %10, 0, !dbg !4609
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4609

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %extended) #9, !dbg !4610
  call void @llvm.dbg.declare(metadata ptr %extended, metadata !4557, metadata !DIExpression()), !dbg !4611
  %11 = load ptr, ptr %reloc, align 8, !dbg !4612
  %12 = load i32, ptr %11, align 4, !dbg !4613
  %conv = sext i32 %12 to i64, !dbg !4613
  store i64 %conv, ptr %extended, align 8, !dbg !4611
  %13 = load i64, ptr %map, align 8, !dbg !4614
  %14 = load i64, ptr %extended, align 8, !dbg !4615
  %add5 = add i64 %14, %13, !dbg !4615
  store i64 %add5, ptr %extended, align 8, !dbg !4615
  %15 = load i64, ptr %extended, align 8, !dbg !4616
  store i64 %15, ptr %ptr, align 8, !dbg !4617
  %16 = load i64, ptr %ptr, align 8, !dbg !4618
  %17 = load i64, ptr %min_addr, align 8, !dbg !4620
  %cmp = icmp ult i64 %16, %17, !dbg !4621
  br i1 %cmp, label %if.then9, label %lor.lhs.false, !dbg !4622

lor.lhs.false:                                    ; preds = %for.body
  %18 = load i64, ptr %ptr, align 8, !dbg !4623
  %19 = load i64, ptr %max_addr, align 8, !dbg !4624
  %cmp7 = icmp ugt i64 %18, %19, !dbg !4625
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !4626

if.then9:                                         ; preds = %lor.lhs.false, %for.body
  call void @error(ptr noundef @.str.47) #11, !dbg !4627
  unreachable, !dbg !4627

if.end10:                                         ; preds = %lor.lhs.false
  %20 = load i64, ptr %delta, align 8, !dbg !4628
  %21 = load i64, ptr %ptr, align 8, !dbg !4629
  %22 = inttoptr i64 %21 to ptr, !dbg !4630
  %23 = load i32, ptr %22, align 4, !dbg !4631
  %conv11 = zext i32 %23 to i64, !dbg !4631
  %add12 = add i64 %conv11, %20, !dbg !4631
  %conv13 = trunc i64 %add12 to i32, !dbg !4631
  store i32 %conv13, ptr %22, align 4, !dbg !4631
  call void @llvm.lifetime.end.p0(i64 8, ptr %extended) #9, !dbg !4632
  br label %for.inc, !dbg !4633

for.inc:                                          ; preds = %if.end10
  %24 = load ptr, ptr %reloc, align 8, !dbg !4634
  %incdec.ptr = getelementptr inbounds i32, ptr %24, i32 -1, !dbg !4634
  store ptr %incdec.ptr, ptr %reloc, align 8, !dbg !4634
  br label %for.cond, !dbg !4635, !llvm.loop !4636

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !4638

while.cond:                                       ; preds = %if.end25, %for.end
  %25 = load ptr, ptr %reloc, align 8, !dbg !4639
  %incdec.ptr14 = getelementptr inbounds i32, ptr %25, i32 -1, !dbg !4639
  store ptr %incdec.ptr14, ptr %reloc, align 8, !dbg !4639
  %26 = load i32, ptr %incdec.ptr14, align 4, !dbg !4640
  %tobool15 = icmp ne i32 %26, 0, !dbg !4638
  br i1 %tobool15, label %while.body, label %while.end, !dbg !4638

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %extended16) #9, !dbg !4641
  call void @llvm.dbg.declare(metadata ptr %extended16, metadata !4561, metadata !DIExpression()), !dbg !4642
  %27 = load ptr, ptr %reloc, align 8, !dbg !4643
  %28 = load i32, ptr %27, align 4, !dbg !4644
  %conv17 = sext i32 %28 to i64, !dbg !4644
  store i64 %conv17, ptr %extended16, align 8, !dbg !4642
  %29 = load i64, ptr %map, align 8, !dbg !4645
  %30 = load i64, ptr %extended16, align 8, !dbg !4646
  %add18 = add i64 %30, %29, !dbg !4646
  store i64 %add18, ptr %extended16, align 8, !dbg !4646
  %31 = load i64, ptr %extended16, align 8, !dbg !4647
  store i64 %31, ptr %ptr, align 8, !dbg !4648
  %32 = load i64, ptr %ptr, align 8, !dbg !4649
  %33 = load i64, ptr %min_addr, align 8, !dbg !4651
  %cmp19 = icmp ult i64 %32, %33, !dbg !4652
  br i1 %cmp19, label %if.then24, label %lor.lhs.false21, !dbg !4653

lor.lhs.false21:                                  ; preds = %while.body
  %34 = load i64, ptr %ptr, align 8, !dbg !4654
  %35 = load i64, ptr %max_addr, align 8, !dbg !4655
  %cmp22 = icmp ugt i64 %34, %35, !dbg !4656
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !4657

if.then24:                                        ; preds = %lor.lhs.false21, %while.body
  call void @error(ptr noundef @.str.48) #11, !dbg !4658
  unreachable, !dbg !4658

if.end25:                                         ; preds = %lor.lhs.false21
  %36 = load i64, ptr %delta, align 8, !dbg !4659
  %37 = load i64, ptr %ptr, align 8, !dbg !4660
  %38 = inttoptr i64 %37 to ptr, !dbg !4661
  %39 = load i32, ptr %38, align 4, !dbg !4662
  %conv26 = sext i32 %39 to i64, !dbg !4662
  %sub27 = sub i64 %conv26, %36, !dbg !4662
  %conv28 = trunc i64 %sub27 to i32, !dbg !4662
  store i32 %conv28, ptr %38, align 4, !dbg !4662
  call void @llvm.lifetime.end.p0(i64 8, ptr %extended16) #9, !dbg !4663
  br label %while.cond, !dbg !4638, !llvm.loop !4664

while.end:                                        ; preds = %while.cond
  %40 = load ptr, ptr %reloc, align 8, !dbg !4665
  %incdec.ptr29 = getelementptr inbounds i32, ptr %40, i32 -1, !dbg !4665
  store ptr %incdec.ptr29, ptr %reloc, align 8, !dbg !4665
  br label %for.cond30, !dbg !4666

for.cond30:                                       ; preds = %for.inc44, %while.end
  %41 = load ptr, ptr %reloc, align 8, !dbg !4667
  %42 = load i32, ptr %41, align 4, !dbg !4668
  %tobool31 = icmp ne i32 %42, 0, !dbg !4669
  br i1 %tobool31, label %for.body32, label %for.end46, !dbg !4669

for.body32:                                       ; preds = %for.cond30
  call void @llvm.lifetime.start.p0(i64 8, ptr %extended33) #9, !dbg !4670
  call void @llvm.dbg.declare(metadata ptr %extended33, metadata !4563, metadata !DIExpression()), !dbg !4671
  %43 = load ptr, ptr %reloc, align 8, !dbg !4672
  %44 = load i32, ptr %43, align 4, !dbg !4673
  %conv34 = sext i32 %44 to i64, !dbg !4673
  store i64 %conv34, ptr %extended33, align 8, !dbg !4671
  %45 = load i64, ptr %map, align 8, !dbg !4674
  %46 = load i64, ptr %extended33, align 8, !dbg !4675
  %add35 = add i64 %46, %45, !dbg !4675
  store i64 %add35, ptr %extended33, align 8, !dbg !4675
  %47 = load i64, ptr %extended33, align 8, !dbg !4676
  store i64 %47, ptr %ptr, align 8, !dbg !4677
  %48 = load i64, ptr %ptr, align 8, !dbg !4678
  %49 = load i64, ptr %min_addr, align 8, !dbg !4680
  %cmp36 = icmp ult i64 %48, %49, !dbg !4681
  br i1 %cmp36, label %if.then41, label %lor.lhs.false38, !dbg !4682

lor.lhs.false38:                                  ; preds = %for.body32
  %50 = load i64, ptr %ptr, align 8, !dbg !4683
  %51 = load i64, ptr %max_addr, align 8, !dbg !4684
  %cmp39 = icmp ugt i64 %50, %51, !dbg !4685
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !4686

if.then41:                                        ; preds = %lor.lhs.false38, %for.body32
  call void @error(ptr noundef @.str.49) #11, !dbg !4687
  unreachable, !dbg !4687

if.end42:                                         ; preds = %lor.lhs.false38
  %52 = load i64, ptr %delta, align 8, !dbg !4688
  %53 = load i64, ptr %ptr, align 8, !dbg !4689
  %54 = inttoptr i64 %53 to ptr, !dbg !4690
  %55 = load i64, ptr %54, align 8, !dbg !4691
  %add43 = add i64 %55, %52, !dbg !4691
  store i64 %add43, ptr %54, align 8, !dbg !4691
  call void @llvm.lifetime.end.p0(i64 8, ptr %extended33) #9, !dbg !4692
  br label %for.inc44, !dbg !4693

for.inc44:                                        ; preds = %if.end42
  %56 = load ptr, ptr %reloc, align 8, !dbg !4694
  %incdec.ptr45 = getelementptr inbounds i32, ptr %56, i32 -1, !dbg !4694
  store ptr %incdec.ptr45, ptr %reloc, align 8, !dbg !4694
  br label %for.cond30, !dbg !4695, !llvm.loop !4696

for.end46:                                        ; preds = %for.cond30
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4698
  br label %cleanup, !dbg !4698

cleanup:                                          ; preds = %for.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_addr) #9, !dbg !4698
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_addr) #9, !dbg !4698
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #9, !dbg !4698
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #9, !dbg !4698
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #9, !dbg !4698
  call void @llvm.lifetime.end.p0(i64 8, ptr %reloc) #9, !dbg !4698
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4698

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define hidden ptr @extract_kernel(ptr noundef %rmode, ptr noundef %output) #0 !dbg !4699 {
entry:
  %rmode.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %virt_addr = alloca i64, align 8
  %heap = alloca i64, align 8
  %needed_size = alloca i64, align 8
  %entry_offset = alloca i64, align 8
  %__UNIQUE_ID___x204 = alloca i64, align 8
  %__UNIQUE_ID___y205 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %rmode, ptr %rmode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmode.addr, metadata !4703, metadata !DIExpression()), !dbg !4712
  store ptr %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !4704, metadata !DIExpression()), !dbg !4713
  call void @llvm.lifetime.start.p0(i64 8, ptr %virt_addr) #9, !dbg !4714
  call void @llvm.dbg.declare(metadata ptr %virt_addr, metadata !4705, metadata !DIExpression()), !dbg !4715
  store i64 16777216, ptr %virt_addr, align 8, !dbg !4715
  call void @llvm.lifetime.start.p0(i64 8, ptr %heap) #9, !dbg !4716
  call void @llvm.dbg.declare(metadata ptr %heap, metadata !4706, metadata !DIExpression()), !dbg !4717
  store i64 ptrtoint (ptr @boot_heap to i64), ptr %heap, align 8, !dbg !4717
  call void @llvm.lifetime.start.p0(i64 8, ptr %needed_size) #9, !dbg !4718
  call void @llvm.dbg.declare(metadata ptr %needed_size, metadata !4707, metadata !DIExpression()), !dbg !4719
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_offset) #9, !dbg !4720
  call void @llvm.dbg.declare(metadata ptr %entry_offset, metadata !4708, metadata !DIExpression()), !dbg !4721
  %0 = load ptr, ptr %rmode.addr, align 8, !dbg !4722
  store ptr %0, ptr @boot_params_ptr, align 8, !dbg !4723
  %1 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4724
  %hdr = getelementptr inbounds %struct.boot_params, ptr %1, i32 0, i32 28, !dbg !4725
  %loadflags = getelementptr inbounds %struct.setup_header, ptr %hdr, i32 0, i32 14, !dbg !4726
  %2 = load i8, ptr %loadflags, align 1, !dbg !4727
  %conv = zext i8 %2 to i32, !dbg !4727
  %and = and i32 %conv, -3, !dbg !4727
  %conv1 = trunc i32 %and to i8, !dbg !4727
  store i8 %conv1, ptr %loadflags, align 1, !dbg !4727
  %3 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4728
  %hdr2 = getelementptr inbounds %struct.boot_params, ptr %3, i32 0, i32 28, !dbg !4729
  call void @parse_mem_encrypt(ptr noundef %hdr2) #10, !dbg !4730
  %4 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4731
  call void @sanitize_boot_params(ptr noundef %4) #10, !dbg !4732
  %5 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4733
  %screen_info = getelementptr inbounds %struct.boot_params, ptr %5, i32 0, i32 0, !dbg !4735
  %orig_video_mode = getelementptr inbounds %struct.screen_info, ptr %screen_info, i32 0, i32 4, !dbg !4736
  %6 = load i8, ptr %orig_video_mode, align 1, !dbg !4736
  %conv3 = zext i8 %6 to i32, !dbg !4733
  %cmp = icmp eq i32 %conv3, 7, !dbg !4737
  br i1 %cmp, label %if.then, label %if.else, !dbg !4738

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 720896 to ptr), ptr @vidmem, align 8, !dbg !4739
  store i32 948, ptr @vidport, align 4, !dbg !4741
  br label %if.end, !dbg !4742

if.else:                                          ; preds = %entry
  store ptr inttoptr (i64 753664 to ptr), ptr @vidmem, align 8, !dbg !4743
  store i32 980, ptr @vidport, align 4, !dbg !4745
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4746
  %screen_info5 = getelementptr inbounds %struct.boot_params, ptr %7, i32 0, i32 0, !dbg !4747
  %orig_video_lines = getelementptr inbounds %struct.screen_info, ptr %screen_info5, i32 0, i32 10, !dbg !4748
  %8 = load i8, ptr %orig_video_lines, align 1, !dbg !4748
  %conv6 = zext i8 %8 to i32, !dbg !4746
  store i32 %conv6, ptr @lines, align 4, !dbg !4749
  %9 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4750
  %screen_info7 = getelementptr inbounds %struct.boot_params, ptr %9, i32 0, i32 0, !dbg !4751
  %orig_video_cols = getelementptr inbounds %struct.screen_info, ptr %screen_info7, i32 0, i32 5, !dbg !4752
  %10 = load i8, ptr %orig_video_cols, align 1, !dbg !4752
  %conv8 = zext i8 %10 to i32, !dbg !4750
  store i32 %conv8, ptr @cols, align 4, !dbg !4753
  call void @init_default_io_ops() #10, !dbg !4754
  call void @early_tdx_detect() #10, !dbg !4755
  call void @console_init() #10, !dbg !4756
  %call = call i64 @get_rsdp_addr() #10, !dbg !4757
  %11 = load ptr, ptr @boot_params_ptr, align 8, !dbg !4758
  %acpi_rsdp_addr = getelementptr inbounds %struct.boot_params, ptr %11, i32 0, i32 5, !dbg !4759
  store i64 %call, ptr %acpi_rsdp_addr, align 1, !dbg !4760
  call void @__putstr(ptr noundef @.str.14) #10, !dbg !4761
  %12 = load i64, ptr %heap, align 8, !dbg !4762
  store i64 %12, ptr @free_mem_ptr, align 8, !dbg !4763
  %13 = load i64, ptr %heap, align 8, !dbg !4764
  %add = add nsw i64 %13, 65536, !dbg !4765
  store i64 %add, ptr @free_mem_end_ptr, align 8, !dbg !4766
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x204) #9, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x204, metadata !4709, metadata !DIExpression()), !dbg !4767
  %14 = load i32, ptr @output_len, align 4, !dbg !4767
  %conv9 = zext i32 %14 to i64, !dbg !4767
  store i64 %conv9, ptr %__UNIQUE_ID___x204, align 8, !dbg !4767
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y205) #9, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y205, metadata !4711, metadata !DIExpression()), !dbg !4767
  store i64 40042496, ptr %__UNIQUE_ID___y205, align 8, !dbg !4767
  %15 = load i64, ptr %__UNIQUE_ID___x204, align 8, !dbg !4767
  %16 = load i64, ptr %__UNIQUE_ID___y205, align 8, !dbg !4767
  %cmp10 = icmp ugt i64 %15, %16, !dbg !4767
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !4767

cond.true:                                        ; preds = %if.end
  %17 = load i64, ptr %__UNIQUE_ID___x204, align 8, !dbg !4767
  br label %cond.end, !dbg !4767

cond.false:                                       ; preds = %if.end
  %18 = load i64, ptr %__UNIQUE_ID___y205, align 8, !dbg !4767
  br label %cond.end, !dbg !4767

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !4767
  store i64 %cond, ptr %tmp, align 8, !dbg !4767
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y205) #9, !dbg !4768
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x204) #9, !dbg !4768
  %19 = load i64, ptr %tmp, align 8, !dbg !4767
  store i64 %19, ptr %needed_size, align 8, !dbg !4769
  %20 = load i64, ptr %needed_size, align 8, !dbg !4770
  %add12 = add i64 %20, 2097151, !dbg !4770
  %and13 = and i64 %add12, -2097152, !dbg !4770
  store i64 %and13, ptr %needed_size, align 8, !dbg !4771
  call void @__putstr(ptr noundef @.str.15) #10, !dbg !4772
  call void @__puthex(i64 noundef ptrtoint (ptr @input_data to i64)) #10, !dbg !4772
  call void @__putstr(ptr noundef @.str.16) #10, !dbg !4772
  call void @__putstr(ptr noundef @.str.17) #10, !dbg !4774
  %21 = load i32, ptr @input_len, align 4, !dbg !4774
  %conv14 = zext i32 %21 to i64, !dbg !4774
  call void @__puthex(i64 noundef %conv14) #10, !dbg !4774
  call void @__putstr(ptr noundef @.str.16) #10, !dbg !4774
  call void @__putstr(ptr noundef @.str.18) #10, !dbg !4776
  %22 = load ptr, ptr %output.addr, align 8, !dbg !4776
  %23 = ptrtoint ptr %22 to i64, !dbg !4776
  call void @__puthex(i64 noundef %23) #10, !dbg !4776
  call void @__putstr(ptr noundef @.str.16) #10, !dbg !4776
  call void @__putstr(ptr noundef @.str.19) #10, !dbg !4778
  %24 = load i32, ptr @output_len, align 4, !dbg !4778
  %conv15 = zext i32 %24 to i64, !dbg !4778
  call void @__puthex(i64 noundef %conv15) #10, !dbg !4778
  call void @__putstr(ptr noundef @.str.16) #10, !dbg !4778
  call void @__putstr(ptr noundef @.str.20) #10, !dbg !4780
  call void @__puthex(i64 noundef 40042496) #10, !dbg !4780
  call void @__putstr(ptr noundef @.str.16) #10, !dbg !4780
  call void @__putstr(ptr noundef @.str.21) #10, !dbg !4782
  %25 = load i64, ptr %needed_size, align 8, !dbg !4782
  call void @__puthex(i64 noundef %25) #10, !dbg !4782
  call void @__putstr(ptr noundef @.str.16) #10, !dbg !4782
  call void @__putstr(ptr noundef @.str.22) #10, !dbg !4784
  %26 = load ptr, ptr @trampoline_32bit, align 8, !dbg !4784
  %27 = ptrtoint ptr %26 to i64, !dbg !4784
  call void @__puthex(i64 noundef %27) #10, !dbg !4784
  call void @__putstr(ptr noundef @.str.16) #10, !dbg !4784
  %28 = load i32, ptr @input_len, align 4, !dbg !4786
  %conv16 = zext i32 %28 to i64, !dbg !4786
  %29 = load i64, ptr %needed_size, align 8, !dbg !4787
  call void @choose_random_location(i64 noundef ptrtoint (ptr @input_data to i64), i64 noundef %conv16, ptr noundef %output.addr, i64 noundef %29, ptr noundef %virt_addr) #10, !dbg !4788
  %30 = load ptr, ptr %output.addr, align 8, !dbg !4789
  %31 = ptrtoint ptr %30 to i64, !dbg !4791
  %and17 = and i64 %31, 2097151, !dbg !4792
  %tobool = icmp ne i64 %and17, 0, !dbg !4792
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !4793

if.then18:                                        ; preds = %cond.end
  call void @error(ptr noundef @.str.23) #11, !dbg !4794
  unreachable, !dbg !4794

if.end19:                                         ; preds = %cond.end
  %32 = load i64, ptr %virt_addr, align 8, !dbg !4795
  %and20 = and i64 %32, 2097151, !dbg !4797
  %tobool21 = icmp ne i64 %and20, 0, !dbg !4797
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4798

if.then22:                                        ; preds = %if.end19
  call void @error(ptr noundef @.str.24) #11, !dbg !4799
  unreachable, !dbg !4799

if.end23:                                         ; preds = %if.end19
  %33 = load i64, ptr %heap, align 8, !dbg !4800
  %cmp24 = icmp ugt i64 %33, 70368744177663, !dbg !4802
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !4803

if.then26:                                        ; preds = %if.end23
  call void @error(ptr noundef @.str.25) #11, !dbg !4804
  unreachable, !dbg !4804

if.end27:                                         ; preds = %if.end23
  %34 = load i64, ptr %virt_addr, align 8, !dbg !4805
  %35 = load i64, ptr %needed_size, align 8, !dbg !4807
  %add28 = add i64 %34, %35, !dbg !4808
  %cmp29 = icmp ugt i64 %add28, 1073741824, !dbg !4809
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !4810

if.then31:                                        ; preds = %if.end27
  call void @error(ptr noundef @.str.26) #11, !dbg !4811
  unreachable, !dbg !4811

if.end32:                                         ; preds = %if.end27
  call void @__putstr(ptr noundef @.str.27) #10, !dbg !4812
  %call33 = call zeroext i1 @init_unaccepted_memory() #10, !dbg !4813
  br i1 %call33, label %if.then34, label %if.end36, !dbg !4815

if.then34:                                        ; preds = %if.end32
  call void @__putstr(ptr noundef @.str.28) #10, !dbg !4816
  %36 = load ptr, ptr %output.addr, align 8, !dbg !4818
  %37 = ptrtoint ptr %36 to i64, !dbg !4818
  %38 = load ptr, ptr %output.addr, align 8, !dbg !4819
  %39 = ptrtoint ptr %38 to i64, !dbg !4819
  %40 = load i64, ptr %needed_size, align 8, !dbg !4820
  %add35 = add i64 %39, %40, !dbg !4821
  call void @accept_memory(i64 noundef %37, i64 noundef %add35) #10, !dbg !4822
  br label %if.end36, !dbg !4823

if.end36:                                         ; preds = %if.then34, %if.end32
  %41 = load ptr, ptr %output.addr, align 8, !dbg !4824
  %42 = load i64, ptr %virt_addr, align 8, !dbg !4825
  %call37 = call i64 @decompress_kernel(ptr noundef %41, i64 noundef %42, ptr noundef @error) #10, !dbg !4826
  store i64 %call37, ptr %entry_offset, align 8, !dbg !4827
  call void @__putstr(ptr noundef @.str.29) #10, !dbg !4828
  %43 = load i64, ptr %entry_offset, align 8, !dbg !4829
  call void @__puthex(i64 noundef %43) #10, !dbg !4829
  call void @__putstr(ptr noundef @.str.30) #10, !dbg !4830
  call void @cleanup_exception_handling() #10, !dbg !4831
  %44 = load ptr, ptr %output.addr, align 8, !dbg !4832
  %45 = load i64, ptr %entry_offset, align 8, !dbg !4833
  %add.ptr = getelementptr inbounds i8, ptr %44, i64 %45, !dbg !4834
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_offset) #9, !dbg !4835
  call void @llvm.lifetime.end.p0(i64 8, ptr %needed_size) #9, !dbg !4835
  call void @llvm.lifetime.end.p0(i64 8, ptr %heap) #9, !dbg !4835
  call void @llvm.lifetime.end.p0(i64 8, ptr %virt_addr) #9, !dbg !4835
  ret ptr %add.ptr, !dbg !4836
}

; Function Attrs: noredzone nounwind
define internal void @parse_mem_encrypt(ptr noundef %hdr) #0 !dbg !4837 {
entry:
  %hdr.addr = alloca ptr, align 8
  %on = alloca i32, align 4
  %off = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !4842, metadata !DIExpression()), !dbg !4845
  call void @llvm.lifetime.start.p0(i64 4, ptr %on) #9, !dbg !4846
  call void @llvm.dbg.declare(metadata ptr %on, metadata !4843, metadata !DIExpression()), !dbg !4847
  %call = call i32 @cmdline_find_option_bool(ptr noundef @.str.50) #10, !dbg !4848
  store i32 %call, ptr %on, align 4, !dbg !4847
  call void @llvm.lifetime.start.p0(i64 4, ptr %off) #9, !dbg !4849
  call void @llvm.dbg.declare(metadata ptr %off, metadata !4844, metadata !DIExpression()), !dbg !4850
  %call1 = call i32 @cmdline_find_option_bool(ptr noundef @.str.51) #10, !dbg !4851
  store i32 %call1, ptr %off, align 4, !dbg !4850
  %0 = load i32, ptr %on, align 4, !dbg !4852
  %1 = load i32, ptr %off, align 4, !dbg !4854
  %cmp = icmp sgt i32 %0, %1, !dbg !4855
  br i1 %cmp, label %if.then, label %if.end, !dbg !4856

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !4857
  %xloadflags = getelementptr inbounds %struct.setup_header, ptr %2, i32 0, i32 28, !dbg !4858
  %3 = load i16, ptr %xloadflags, align 1, !dbg !4859
  %conv = zext i16 %3 to i32, !dbg !4859
  %or = or i32 %conv, 128, !dbg !4859
  %conv2 = trunc i32 %or to i16, !dbg !4859
  store i16 %conv2, ptr %xloadflags, align 1, !dbg !4859
  br label %if.end, !dbg !4857

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %off) #9, !dbg !4860
  call void @llvm.lifetime.end.p0(i64 4, ptr %on) #9, !dbg !4860
  ret void, !dbg !4860
}

; Function Attrs: noredzone nounwind
define internal void @sanitize_boot_params(ptr noundef %boot_params) #0 !dbg !840 {
entry:
  %boot_params.addr = alloca ptr, align 8
  %bp_base = alloca ptr, align 8
  %save_base = alloca ptr, align 8
  %i = alloca i32, align 4
  %to_save = alloca [20 x %struct.boot_params_to_save], align 16
  store ptr %boot_params, ptr %boot_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %boot_params.addr, metadata !845, metadata !DIExpression()), !dbg !4861
  %0 = load ptr, ptr %boot_params.addr, align 8, !dbg !4862
  %sentinel = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 26, !dbg !4863
  %1 = load i8, ptr %sentinel, align 1, !dbg !4863
  %tobool = icmp ne i8 %1, 0, !dbg !4862
  br i1 %tobool, label %if.then, label %if.end, !dbg !4864

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp_base) #9, !dbg !4865
  call void @llvm.dbg.declare(metadata ptr %bp_base, metadata !846, metadata !DIExpression()), !dbg !4866
  %2 = load ptr, ptr %boot_params.addr, align 8, !dbg !4867
  store ptr %2, ptr %bp_base, align 8, !dbg !4866
  call void @llvm.lifetime.start.p0(i64 8, ptr %save_base) #9, !dbg !4868
  call void @llvm.dbg.declare(metadata ptr %save_base, metadata !849, metadata !DIExpression()), !dbg !4869
  store ptr @sanitize_boot_params.scratch, ptr %save_base, align 8, !dbg !4869
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4870
  call void @llvm.dbg.declare(metadata ptr %i, metadata !850, metadata !DIExpression()), !dbg !4871
  call void @llvm.lifetime.start.p0(i64 160, ptr %to_save) #9, !dbg !4872
  call void @llvm.dbg.declare(metadata ptr %to_save, metadata !851, metadata !DIExpression()), !dbg !4873
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %to_save, ptr align 16 @__const.sanitize_boot_params.to_save, i64 160, i1 false), !dbg !4873
  call void @llvm.memset.p0.i64(ptr align 1 @sanitize_boot_params.scratch, i8 0, i64 4096, i1 false), !dbg !4874
  store i32 0, ptr %i, align 4, !dbg !4875
  br label %for.cond, !dbg !4877

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4, !dbg !4878
  %conv = sext i32 %3 to i64, !dbg !4878
  %cmp = icmp ult i64 %conv, 20, !dbg !4880
  br i1 %cmp, label %for.body, label %for.end, !dbg !4881

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %save_base, align 8, !dbg !4882
  %5 = load i32, ptr %i, align 4, !dbg !4882
  %idxprom = sext i32 %5 to i64, !dbg !4882
  %arrayidx = getelementptr inbounds [20 x %struct.boot_params_to_save], ptr %to_save, i64 0, i64 %idxprom, !dbg !4882
  %start = getelementptr inbounds %struct.boot_params_to_save, ptr %arrayidx, i32 0, i32 0, !dbg !4882
  %6 = load i32, ptr %start, align 8, !dbg !4882
  %idx.ext = zext i32 %6 to i64, !dbg !4882
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !4882
  %7 = load ptr, ptr %bp_base, align 8, !dbg !4882
  %8 = load i32, ptr %i, align 4, !dbg !4882
  %idxprom2 = sext i32 %8 to i64, !dbg !4882
  %arrayidx3 = getelementptr inbounds [20 x %struct.boot_params_to_save], ptr %to_save, i64 0, i64 %idxprom2, !dbg !4882
  %start4 = getelementptr inbounds %struct.boot_params_to_save, ptr %arrayidx3, i32 0, i32 0, !dbg !4882
  %9 = load i32, ptr %start4, align 8, !dbg !4882
  %idx.ext5 = zext i32 %9 to i64, !dbg !4882
  %add.ptr6 = getelementptr inbounds i8, ptr %7, i64 %idx.ext5, !dbg !4882
  %10 = load i32, ptr %i, align 4, !dbg !4882
  %idxprom7 = sext i32 %10 to i64, !dbg !4882
  %arrayidx8 = getelementptr inbounds [20 x %struct.boot_params_to_save], ptr %to_save, i64 0, i64 %idxprom7, !dbg !4882
  %len = getelementptr inbounds %struct.boot_params_to_save, ptr %arrayidx8, i32 0, i32 1, !dbg !4882
  %11 = load i32, ptr %len, align 4, !dbg !4882
  %conv9 = zext i32 %11 to i64, !dbg !4882
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr6, i64 %conv9, i1 false), !dbg !4882
  br label %for.inc, !dbg !4884

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !4885
  %inc = add nsw i32 %12, 1, !dbg !4885
  store i32 %inc, ptr %i, align 4, !dbg !4885
  br label %for.cond, !dbg !4886, !llvm.loop !4887

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %boot_params.addr, align 8, !dbg !4889
  %14 = load ptr, ptr %save_base, align 8, !dbg !4889
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %14, i64 4096, i1 false), !dbg !4889
  call void @llvm.lifetime.end.p0(i64 160, ptr %to_save) #9, !dbg !4890
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !4890
  call void @llvm.lifetime.end.p0(i64 8, ptr %save_base) #9, !dbg !4890
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp_base) #9, !dbg !4890
  br label %if.end, !dbg !4891

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !4892
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @init_default_io_ops() #4 !dbg !4893 {
entry:
  store ptr @__inb, ptr @pio_ops, align 8, !dbg !4894
  store ptr @__outb, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !4895
  store ptr @__outw, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 2), align 8, !dbg !4896
  ret void, !dbg !4897
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @early_tdx_detect() #4 !dbg !4898 {
entry:
  ret void, !dbg !4900
}

; Function Attrs: noredzone
declare !dbg !4901 hidden void @console_init() #5

; Function Attrs: noredzone
declare !dbg !4903 hidden i64 @get_rsdp_addr() #5

; Function Attrs: noredzone
declare !dbg !4908 hidden void @choose_random_location(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noredzone noreturn
declare !dbg !4911 hidden void @error(ptr noundef) #6

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @init_unaccepted_memory() #4 !dbg !4913 {
entry:
  ret i1 false, !dbg !4918
}

; Function Attrs: noredzone
declare !dbg !4919 hidden void @accept_memory(i64 noundef, i64 noundef) #5

; Function Attrs: noredzone
declare !dbg !4923 hidden void @cleanup_exception_handling() #5

; Function Attrs: noredzone nounwind
define hidden void @fortify_panic(ptr noundef %name) #0 !dbg !4924 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  call void @error(ptr noundef @.str.31) #11, !dbg !4928
  unreachable, !dbg !4928
}

; Function Attrs: alwaysinline noredzone nounwind
define internal void @cpu_relax() #7 !dbg !4929 {
entry:
  call void @rep_nop() #10, !dbg !4931
  ret void, !dbg !4932
}

; Function Attrs: alwaysinline noredzone nounwind
define internal void @rep_nop() #7 !dbg !4933 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4934, !srcloc !4935
  ret void, !dbg !4936
}

; Function Attrs: noredzone
declare !dbg !4937 hidden ptr @memmove(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone nounwind
define internal i32 @__gunzip(ptr noundef %buf, i64 noundef %len, ptr noundef %fill, ptr noundef %flush, ptr noundef %out_buf, i64 noundef %out_len, ptr noundef %pos, ptr noundef %error) #0 !dbg !4942 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %fill.addr = alloca ptr, align 8
  %flush.addr = alloca ptr, align 8
  %out_buf.addr = alloca ptr, align 8
  %out_len.addr = alloca i64, align 8
  %pos.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %zbuf = alloca ptr, align 8
  %strm = alloca ptr, align 8
  %rc = alloca i32, align 4
  %l = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4944, metadata !DIExpression()), !dbg !4966
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4945, metadata !DIExpression()), !dbg !4967
  store ptr %fill, ptr %fill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fill.addr, metadata !4946, metadata !DIExpression()), !dbg !4968
  store ptr %flush, ptr %flush.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !4947, metadata !DIExpression()), !dbg !4969
  store ptr %out_buf, ptr %out_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_buf.addr, metadata !4948, metadata !DIExpression()), !dbg !4970
  store i64 %out_len, ptr %out_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !4949, metadata !DIExpression()), !dbg !4971
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !4950, metadata !DIExpression()), !dbg !4972
  store ptr %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4951, metadata !DIExpression()), !dbg !4973
  call void @llvm.lifetime.start.p0(i64 8, ptr %zbuf) #9, !dbg !4974
  call void @llvm.dbg.declare(metadata ptr %zbuf, metadata !4952, metadata !DIExpression()), !dbg !4975
  call void @llvm.lifetime.start.p0(i64 8, ptr %strm) #9, !dbg !4976
  call void @llvm.dbg.declare(metadata ptr %strm, metadata !4954, metadata !DIExpression()), !dbg !4977
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !4978
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4956, metadata !DIExpression()), !dbg !4979
  store i32 -1, ptr %rc, align 4, !dbg !4980
  %0 = load ptr, ptr %flush.addr, align 8, !dbg !4981
  %tobool = icmp ne ptr %0, null, !dbg !4981
  br i1 %tobool, label %if.then, label %if.else, !dbg !4983

if.then:                                          ; preds = %entry
  store i64 32768, ptr %out_len.addr, align 8, !dbg !4984
  %1 = load i64, ptr %out_len.addr, align 8, !dbg !4986
  %conv = trunc i64 %1 to i32, !dbg !4986
  %call = call ptr @malloc(i32 noundef %conv) #10, !dbg !4987
  store ptr %call, ptr %out_buf.addr, align 8, !dbg !4988
  br label %if.end3, !dbg !4989

if.else:                                          ; preds = %entry
  %2 = load i64, ptr %out_len.addr, align 8, !dbg !4990
  %tobool1 = icmp ne i64 %2, 0, !dbg !4990
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !4993

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %out_buf.addr, align 8, !dbg !4994
  %4 = ptrtoint ptr %3 to i64, !dbg !4995
  %sub = sub i64 -1, %4, !dbg !4996
  store i64 %sub, ptr %out_len.addr, align 8, !dbg !4997
  br label %if.end, !dbg !4998

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %5 = load ptr, ptr %out_buf.addr, align 8, !dbg !4999
  %tobool4 = icmp ne ptr %5, null, !dbg !4999
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5001

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %error.addr, align 8, !dbg !5002
  call void %6(ptr noundef @.str.32) #10, !dbg !5002
  br label %gunzip_nomem1, !dbg !5004

if.end6:                                          ; preds = %if.end3
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5005
  %tobool7 = icmp ne ptr %7, null, !dbg !5005
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !5007

if.then8:                                         ; preds = %if.end6
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5008
  store ptr %8, ptr %zbuf, align 8, !dbg !5009
  br label %if.end11, !dbg !5010

if.else9:                                         ; preds = %if.end6
  %call10 = call ptr @malloc(i32 noundef 16384) #10, !dbg !5011
  store ptr %call10, ptr %zbuf, align 8, !dbg !5013
  store i64 0, ptr %len.addr, align 8, !dbg !5014
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then8
  %9 = load ptr, ptr %zbuf, align 8, !dbg !5015
  %tobool12 = icmp ne ptr %9, null, !dbg !5015
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !5017

if.then13:                                        ; preds = %if.end11
  %10 = load ptr, ptr %error.addr, align 8, !dbg !5018
  call void %10(ptr noundef @.str.33) #10, !dbg !5018
  br label %gunzip_nomem2, !dbg !5020

if.end14:                                         ; preds = %if.end11
  %call15 = call ptr @malloc(i32 noundef 96) #10, !dbg !5021
  store ptr %call15, ptr %strm, align 8, !dbg !5022
  %11 = load ptr, ptr %strm, align 8, !dbg !5023
  %cmp = icmp eq ptr %11, null, !dbg !5025
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !5026

if.then17:                                        ; preds = %if.end14
  %12 = load ptr, ptr %error.addr, align 8, !dbg !5027
  call void %12(ptr noundef @.str.34) #10, !dbg !5027
  br label %gunzip_nomem3, !dbg !5029

if.end18:                                         ; preds = %if.end14
  %13 = load ptr, ptr %flush.addr, align 8, !dbg !5030
  %tobool19 = icmp ne ptr %13, null, !dbg !5030
  br i1 %tobool19, label %cond.true, label %cond.false, !dbg !5030

cond.true:                                        ; preds = %if.end18
  %call20 = call i32 @zlib_inflate_workspacesize() #10, !dbg !5031
  %conv21 = sext i32 %call20 to i64, !dbg !5031
  br label %cond.end, !dbg !5030

cond.false:                                       ; preds = %if.end18
  br label %cond.end, !dbg !5030

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv21, %cond.true ], [ 9544, %cond.false ], !dbg !5030
  %conv22 = trunc i64 %cond to i32, !dbg !5030
  %call23 = call ptr @malloc(i32 noundef %conv22) #10, !dbg !5032
  %14 = load ptr, ptr %strm, align 8, !dbg !5033
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 8, !dbg !5034
  store ptr %call23, ptr %workspace, align 8, !dbg !5035
  %15 = load ptr, ptr %strm, align 8, !dbg !5036
  %workspace24 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 8, !dbg !5038
  %16 = load ptr, ptr %workspace24, align 8, !dbg !5038
  %cmp25 = icmp eq ptr %16, null, !dbg !5039
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !5040

if.then27:                                        ; preds = %cond.end
  %17 = load ptr, ptr %error.addr, align 8, !dbg !5041
  call void %17(ptr noundef @.str.35) #10, !dbg !5041
  br label %gunzip_nomem4, !dbg !5043

if.end28:                                         ; preds = %cond.end
  %18 = load ptr, ptr %fill.addr, align 8, !dbg !5044
  %tobool29 = icmp ne ptr %18, null, !dbg !5044
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !5046

if.then30:                                        ; preds = %if.end28
  store ptr @nofill, ptr %fill.addr, align 8, !dbg !5047
  br label %if.end31, !dbg !5048

if.end31:                                         ; preds = %if.then30, %if.end28
  %19 = load i64, ptr %len.addr, align 8, !dbg !5049
  %cmp32 = icmp eq i64 %19, 0, !dbg !5051
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !5052

if.then34:                                        ; preds = %if.end31
  %20 = load ptr, ptr %fill.addr, align 8, !dbg !5053
  %21 = load ptr, ptr %zbuf, align 8, !dbg !5054
  %call35 = call i64 %20(ptr noundef %21, i64 noundef 16384) #10, !dbg !5053
  store i64 %call35, ptr %len.addr, align 8, !dbg !5055
  br label %if.end36, !dbg !5056

if.end36:                                         ; preds = %if.then34, %if.end31
  %22 = load i64, ptr %len.addr, align 8, !dbg !5057
  %cmp37 = icmp slt i64 %22, 10, !dbg !5059
  br i1 %cmp37, label %if.then52, label %lor.lhs.false, !dbg !5060

lor.lhs.false:                                    ; preds = %if.end36
  %23 = load ptr, ptr %zbuf, align 8, !dbg !5061
  %arrayidx = getelementptr inbounds i8, ptr %23, i64 0, !dbg !5061
  %24 = load i8, ptr %arrayidx, align 1, !dbg !5061
  %conv39 = zext i8 %24 to i32, !dbg !5061
  %cmp40 = icmp ne i32 %conv39, 31, !dbg !5062
  br i1 %cmp40, label %if.then52, label %lor.lhs.false42, !dbg !5063

lor.lhs.false42:                                  ; preds = %lor.lhs.false
  %25 = load ptr, ptr %zbuf, align 8, !dbg !5064
  %arrayidx43 = getelementptr inbounds i8, ptr %25, i64 1, !dbg !5064
  %26 = load i8, ptr %arrayidx43, align 1, !dbg !5064
  %conv44 = zext i8 %26 to i32, !dbg !5064
  %cmp45 = icmp ne i32 %conv44, 139, !dbg !5065
  br i1 %cmp45, label %if.then52, label %lor.lhs.false47, !dbg !5066

lor.lhs.false47:                                  ; preds = %lor.lhs.false42
  %27 = load ptr, ptr %zbuf, align 8, !dbg !5067
  %arrayidx48 = getelementptr inbounds i8, ptr %27, i64 2, !dbg !5067
  %28 = load i8, ptr %arrayidx48, align 1, !dbg !5067
  %conv49 = zext i8 %28 to i32, !dbg !5067
  %cmp50 = icmp ne i32 %conv49, 8, !dbg !5068
  br i1 %cmp50, label %if.then52, label %if.end56, !dbg !5069

if.then52:                                        ; preds = %lor.lhs.false47, %lor.lhs.false42, %lor.lhs.false, %if.end36
  %29 = load ptr, ptr %pos.addr, align 8, !dbg !5070
  %tobool53 = icmp ne ptr %29, null, !dbg !5070
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !5073

if.then54:                                        ; preds = %if.then52
  %30 = load ptr, ptr %pos.addr, align 8, !dbg !5074
  store i64 0, ptr %30, align 8, !dbg !5075
  br label %if.end55, !dbg !5076

if.end55:                                         ; preds = %if.then54, %if.then52
  %31 = load ptr, ptr %error.addr, align 8, !dbg !5077
  call void %31(ptr noundef @.str.36) #10, !dbg !5077
  br label %gunzip_5, !dbg !5078

if.end56:                                         ; preds = %lor.lhs.false47
  %32 = load ptr, ptr %zbuf, align 8, !dbg !5079
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 10, !dbg !5080
  %33 = load ptr, ptr %strm, align 8, !dbg !5081
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 0, !dbg !5082
  store ptr %add.ptr, ptr %next_in, align 8, !dbg !5083
  %34 = load i64, ptr %len.addr, align 8, !dbg !5084
  %sub57 = sub nsw i64 %34, 10, !dbg !5085
  %35 = load ptr, ptr %strm, align 8, !dbg !5086
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 1, !dbg !5087
  store i64 %sub57, ptr %avail_in, align 8, !dbg !5088
  %36 = load ptr, ptr %zbuf, align 8, !dbg !5089
  %arrayidx58 = getelementptr inbounds i8, ptr %36, i64 3, !dbg !5089
  %37 = load i8, ptr %arrayidx58, align 1, !dbg !5089
  %conv59 = zext i8 %37 to i32, !dbg !5089
  %and = and i32 %conv59, 8, !dbg !5091
  %tobool60 = icmp ne i32 %and, 0, !dbg !5091
  br i1 %tobool60, label %if.then61, label %if.end70, !dbg !5092

if.then61:                                        ; preds = %if.end56
  br label %do.body, !dbg !5093

do.body:                                          ; preds = %do.cond, %if.then61
  %38 = load ptr, ptr %strm, align 8, !dbg !5095
  %avail_in62 = getelementptr inbounds %struct.z_stream_s, ptr %38, i32 0, i32 1, !dbg !5098
  %39 = load i64, ptr %avail_in62, align 8, !dbg !5098
  %cmp63 = icmp eq i64 %39, 0, !dbg !5099
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !5100

if.then65:                                        ; preds = %do.body
  %40 = load ptr, ptr %error.addr, align 8, !dbg !5101
  call void %40(ptr noundef @.str.37) #10, !dbg !5101
  br label %gunzip_5, !dbg !5103

if.end66:                                         ; preds = %do.body
  %41 = load ptr, ptr %strm, align 8, !dbg !5104
  %avail_in67 = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 1, !dbg !5105
  %42 = load i64, ptr %avail_in67, align 8, !dbg !5106
  %dec = add i64 %42, -1, !dbg !5106
  store i64 %dec, ptr %avail_in67, align 8, !dbg !5106
  br label %do.cond, !dbg !5107

do.cond:                                          ; preds = %if.end66
  %43 = load ptr, ptr %strm, align 8, !dbg !5108
  %next_in68 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 0, !dbg !5109
  %44 = load ptr, ptr %next_in68, align 8, !dbg !5110
  %incdec.ptr = getelementptr inbounds i8, ptr %44, i32 1, !dbg !5110
  store ptr %incdec.ptr, ptr %next_in68, align 8, !dbg !5110
  %45 = load i8, ptr %44, align 1, !dbg !5111
  %tobool69 = icmp ne i8 %45, 0, !dbg !5107
  br i1 %tobool69, label %do.body, label %do.end, !dbg !5107, !llvm.loop !5112

do.end:                                           ; preds = %do.cond
  br label %if.end70, !dbg !5114

if.end70:                                         ; preds = %do.end, %if.end56
  %46 = load ptr, ptr %out_buf.addr, align 8, !dbg !5115
  %47 = load ptr, ptr %strm, align 8, !dbg !5116
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 3, !dbg !5117
  store ptr %46, ptr %next_out, align 8, !dbg !5118
  %48 = load i64, ptr %out_len.addr, align 8, !dbg !5119
  %49 = load ptr, ptr %strm, align 8, !dbg !5120
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %49, i32 0, i32 4, !dbg !5121
  store i64 %48, ptr %avail_out, align 8, !dbg !5122
  %50 = load ptr, ptr %strm, align 8, !dbg !5123
  %call71 = call i32 @zlib_inflateInit2(ptr noundef %50, i32 noundef -15) #10, !dbg !5124
  store i32 %call71, ptr %rc, align 4, !dbg !5125
  %51 = load ptr, ptr %flush.addr, align 8, !dbg !5126
  %tobool72 = icmp ne ptr %51, null, !dbg !5126
  br i1 %tobool72, label %if.end77, label %if.then73, !dbg !5128

if.then73:                                        ; preds = %if.end70
  %52 = load ptr, ptr %strm, align 8, !dbg !5129
  %workspace74 = getelementptr inbounds %struct.z_stream_s, ptr %52, i32 0, i32 8, !dbg !5129
  %53 = load ptr, ptr %workspace74, align 8, !dbg !5129
  %inflate_state = getelementptr inbounds %struct.inflate_workspace, ptr %53, i32 0, i32 0, !dbg !5131
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %inflate_state, i32 0, i32 9, !dbg !5132
  store i32 0, ptr %wsize, align 4, !dbg !5133
  %54 = load ptr, ptr %strm, align 8, !dbg !5134
  %workspace75 = getelementptr inbounds %struct.z_stream_s, ptr %54, i32 0, i32 8, !dbg !5134
  %55 = load ptr, ptr %workspace75, align 8, !dbg !5134
  %inflate_state76 = getelementptr inbounds %struct.inflate_workspace, ptr %55, i32 0, i32 0, !dbg !5135
  %window = getelementptr inbounds %struct.inflate_state, ptr %inflate_state76, i32 0, i32 12, !dbg !5136
  store ptr null, ptr %window, align 8, !dbg !5137
  br label %if.end77, !dbg !5138

if.end77:                                         ; preds = %if.then73, %if.end70
  br label %while.cond, !dbg !5139

while.cond:                                       ; preds = %if.end115, %if.end77
  %56 = load i32, ptr %rc, align 4, !dbg !5140
  %cmp78 = icmp eq i32 %56, 0, !dbg !5141
  br i1 %cmp78, label %while.body, label %while.end, !dbg !5139

while.body:                                       ; preds = %while.cond
  %57 = load ptr, ptr %strm, align 8, !dbg !5142
  %avail_in80 = getelementptr inbounds %struct.z_stream_s, ptr %57, i32 0, i32 1, !dbg !5144
  %58 = load i64, ptr %avail_in80, align 8, !dbg !5144
  %cmp81 = icmp eq i64 %58, 0, !dbg !5145
  br i1 %cmp81, label %if.then83, label %if.end91, !dbg !5146

if.then83:                                        ; preds = %while.body
  %59 = load ptr, ptr %fill.addr, align 8, !dbg !5147
  %60 = load ptr, ptr %zbuf, align 8, !dbg !5149
  %call84 = call i64 %59(ptr noundef %60, i64 noundef 16384) #10, !dbg !5147
  store i64 %call84, ptr %len.addr, align 8, !dbg !5150
  %61 = load i64, ptr %len.addr, align 8, !dbg !5151
  %cmp85 = icmp slt i64 %61, 0, !dbg !5153
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !5154

if.then87:                                        ; preds = %if.then83
  store i32 -1, ptr %rc, align 4, !dbg !5155
  %62 = load ptr, ptr %error.addr, align 8, !dbg !5157
  call void %62(ptr noundef @.str.38) #10, !dbg !5157
  br label %while.end, !dbg !5158

if.end88:                                         ; preds = %if.then83
  %63 = load ptr, ptr %zbuf, align 8, !dbg !5159
  %64 = load ptr, ptr %strm, align 8, !dbg !5160
  %next_in89 = getelementptr inbounds %struct.z_stream_s, ptr %64, i32 0, i32 0, !dbg !5161
  store ptr %63, ptr %next_in89, align 8, !dbg !5162
  %65 = load i64, ptr %len.addr, align 8, !dbg !5163
  %66 = load ptr, ptr %strm, align 8, !dbg !5164
  %avail_in90 = getelementptr inbounds %struct.z_stream_s, ptr %66, i32 0, i32 1, !dbg !5165
  store i64 %65, ptr %avail_in90, align 8, !dbg !5166
  br label %if.end91, !dbg !5167

if.end91:                                         ; preds = %if.end88, %while.body
  %67 = load ptr, ptr %strm, align 8, !dbg !5168
  %call92 = call i32 @zlib_inflate(ptr noundef %67, i32 noundef 0) #10, !dbg !5169
  store i32 %call92, ptr %rc, align 4, !dbg !5170
  %68 = load ptr, ptr %flush.addr, align 8, !dbg !5171
  %tobool93 = icmp ne ptr %68, null, !dbg !5171
  br i1 %tobool93, label %land.lhs.true, label %if.end106, !dbg !5172

land.lhs.true:                                    ; preds = %if.end91
  %69 = load ptr, ptr %strm, align 8, !dbg !5173
  %next_out94 = getelementptr inbounds %struct.z_stream_s, ptr %69, i32 0, i32 3, !dbg !5174
  %70 = load ptr, ptr %next_out94, align 8, !dbg !5174
  %71 = load ptr, ptr %out_buf.addr, align 8, !dbg !5175
  %cmp95 = icmp ugt ptr %70, %71, !dbg !5176
  br i1 %cmp95, label %if.then97, label %if.end106, !dbg !5177

if.then97:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #9, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %l, metadata !4957, metadata !DIExpression()), !dbg !5179
  %72 = load ptr, ptr %strm, align 8, !dbg !5180
  %next_out98 = getelementptr inbounds %struct.z_stream_s, ptr %72, i32 0, i32 3, !dbg !5181
  %73 = load ptr, ptr %next_out98, align 8, !dbg !5181
  %74 = load ptr, ptr %out_buf.addr, align 8, !dbg !5182
  %sub.ptr.lhs.cast = ptrtoint ptr %73 to i64, !dbg !5183
  %sub.ptr.rhs.cast = ptrtoint ptr %74 to i64, !dbg !5183
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5183
  store i64 %sub.ptr.sub, ptr %l, align 8, !dbg !5179
  %75 = load i64, ptr %l, align 8, !dbg !5184
  %76 = load ptr, ptr %flush.addr, align 8, !dbg !5186
  %77 = load ptr, ptr %out_buf.addr, align 8, !dbg !5187
  %78 = load i64, ptr %l, align 8, !dbg !5188
  %call99 = call i64 %76(ptr noundef %77, i64 noundef %78) #10, !dbg !5186
  %cmp100 = icmp ne i64 %75, %call99, !dbg !5189
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !5190

if.then102:                                       ; preds = %if.then97
  store i32 -1, ptr %rc, align 4, !dbg !5191
  %79 = load ptr, ptr %error.addr, align 8, !dbg !5193
  call void %79(ptr noundef @.str.39) #10, !dbg !5193
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5194

if.end103:                                        ; preds = %if.then97
  %80 = load ptr, ptr %out_buf.addr, align 8, !dbg !5195
  %81 = load ptr, ptr %strm, align 8, !dbg !5196
  %next_out104 = getelementptr inbounds %struct.z_stream_s, ptr %81, i32 0, i32 3, !dbg !5197
  store ptr %80, ptr %next_out104, align 8, !dbg !5198
  %82 = load i64, ptr %out_len.addr, align 8, !dbg !5199
  %83 = load ptr, ptr %strm, align 8, !dbg !5200
  %avail_out105 = getelementptr inbounds %struct.z_stream_s, ptr %83, i32 0, i32 4, !dbg !5201
  store i64 %82, ptr %avail_out105, align 8, !dbg !5202
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5203
  br label %cleanup, !dbg !5203

cleanup:                                          ; preds = %if.end103, %if.then102
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #9, !dbg !5203
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 10, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end106, !dbg !5204

if.end106:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end91
  %84 = load i32, ptr %rc, align 4, !dbg !5205
  %cmp107 = icmp eq i32 %84, 1, !dbg !5207
  br i1 %cmp107, label %if.then109, label %if.else110, !dbg !5208

if.then109:                                       ; preds = %if.end106
  store i32 0, ptr %rc, align 4, !dbg !5209
  br label %while.end, !dbg !5211

if.else110:                                       ; preds = %if.end106
  %85 = load i32, ptr %rc, align 4, !dbg !5212
  %cmp111 = icmp ne i32 %85, 0, !dbg !5214
  br i1 %cmp111, label %if.then113, label %if.end114, !dbg !5215

if.then113:                                       ; preds = %if.else110
  %86 = load ptr, ptr %error.addr, align 8, !dbg !5216
  call void %86(ptr noundef @.str.40) #10, !dbg !5216
  store i32 -1, ptr %rc, align 4, !dbg !5218
  br label %if.end114, !dbg !5219

if.end114:                                        ; preds = %if.then113, %if.else110
  br label %if.end115

if.end115:                                        ; preds = %if.end114
  br label %while.cond, !dbg !5139, !llvm.loop !5220

while.end:                                        ; preds = %if.then109, %cleanup, %if.then87, %while.cond
  %87 = load ptr, ptr %strm, align 8, !dbg !5222
  %call116 = call i32 @zlib_inflateEnd(ptr noundef %87) #10, !dbg !5223
  %88 = load ptr, ptr %pos.addr, align 8, !dbg !5224
  %tobool117 = icmp ne ptr %88, null, !dbg !5224
  br i1 %tobool117, label %if.then118, label %if.end123, !dbg !5226

if.then118:                                       ; preds = %while.end
  %89 = load ptr, ptr %strm, align 8, !dbg !5227
  %next_in119 = getelementptr inbounds %struct.z_stream_s, ptr %89, i32 0, i32 0, !dbg !5228
  %90 = load ptr, ptr %next_in119, align 8, !dbg !5228
  %91 = load ptr, ptr %zbuf, align 8, !dbg !5229
  %sub.ptr.lhs.cast120 = ptrtoint ptr %90 to i64, !dbg !5230
  %sub.ptr.rhs.cast121 = ptrtoint ptr %91 to i64, !dbg !5230
  %sub.ptr.sub122 = sub i64 %sub.ptr.lhs.cast120, %sub.ptr.rhs.cast121, !dbg !5230
  %add = add nsw i64 %sub.ptr.sub122, 8, !dbg !5231
  %92 = load ptr, ptr %pos.addr, align 8, !dbg !5232
  store i64 %add, ptr %92, align 8, !dbg !5233
  br label %if.end123, !dbg !5234

if.end123:                                        ; preds = %if.then118, %while.end
  br label %gunzip_5, !dbg !5224

gunzip_5:                                         ; preds = %if.end123, %if.then65, %if.end55
  call void @llvm.dbg.label(metadata !4961), !dbg !5235
  %93 = load ptr, ptr %strm, align 8, !dbg !5236
  %workspace124 = getelementptr inbounds %struct.z_stream_s, ptr %93, i32 0, i32 8, !dbg !5237
  %94 = load ptr, ptr %workspace124, align 8, !dbg !5237
  call void @free(ptr noundef %94) #10, !dbg !5238
  br label %gunzip_nomem4, !dbg !5238

gunzip_nomem4:                                    ; preds = %gunzip_5, %if.then27
  call void @llvm.dbg.label(metadata !4962), !dbg !5239
  %95 = load ptr, ptr %strm, align 8, !dbg !5240
  call void @free(ptr noundef %95) #10, !dbg !5241
  br label %gunzip_nomem3, !dbg !5241

gunzip_nomem3:                                    ; preds = %gunzip_nomem4, %if.then17
  call void @llvm.dbg.label(metadata !4963), !dbg !5242
  %96 = load ptr, ptr %buf.addr, align 8, !dbg !5243
  %tobool125 = icmp ne ptr %96, null, !dbg !5243
  br i1 %tobool125, label %if.end127, label %if.then126, !dbg !5245

if.then126:                                       ; preds = %gunzip_nomem3
  %97 = load ptr, ptr %zbuf, align 8, !dbg !5246
  call void @free(ptr noundef %97) #10, !dbg !5247
  br label %if.end127, !dbg !5247

if.end127:                                        ; preds = %if.then126, %gunzip_nomem3
  br label %gunzip_nomem2, !dbg !5243

gunzip_nomem2:                                    ; preds = %if.end127, %if.then13
  call void @llvm.dbg.label(metadata !4964), !dbg !5248
  %98 = load ptr, ptr %flush.addr, align 8, !dbg !5249
  %tobool128 = icmp ne ptr %98, null, !dbg !5249
  br i1 %tobool128, label %if.then129, label %if.end130, !dbg !5251

if.then129:                                       ; preds = %gunzip_nomem2
  %99 = load ptr, ptr %out_buf.addr, align 8, !dbg !5252
  call void @free(ptr noundef %99) #10, !dbg !5253
  br label %if.end130, !dbg !5253

if.end130:                                        ; preds = %if.then129, %gunzip_nomem2
  br label %gunzip_nomem1, !dbg !5249

gunzip_nomem1:                                    ; preds = %if.end130, %if.then5
  call void @llvm.dbg.label(metadata !4965), !dbg !5254
  %100 = load i32, ptr %rc, align 4, !dbg !5255
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !5256
  call void @llvm.lifetime.end.p0(i64 8, ptr %strm) #9, !dbg !5256
  call void @llvm.lifetime.end.p0(i64 8, ptr %zbuf) #9, !dbg !5256
  ret i32 %100, !dbg !5257

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal i64 @nofill(ptr noundef %buffer, i64 noundef %len) #0 !dbg !5258 {
entry:
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5260, metadata !DIExpression()), !dbg !5262
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5261, metadata !DIExpression()), !dbg !5263
  ret i64 -1, !dbg !5264
}

; Function Attrs: noredzone
declare !dbg !5265 hidden i32 @cmdline_find_option_bool(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: alwaysinline noredzone nounwind
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #7 !dbg !5268 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5271, metadata !DIExpression()), !dbg !5273
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #9, !dbg !5273
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5272, metadata !DIExpression()), !dbg !5273
  %0 = load i16, ptr %port.addr, align 2, !dbg !5273
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #9, !dbg !5273, !srcloc !5274
  store i8 %1, ptr %value, align 1, !dbg !5273
  %2 = load i8, ptr %value, align 1, !dbg !5273
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #9, !dbg !5273
  ret i8 %2, !dbg !5273
}

; Function Attrs: alwaysinline noredzone nounwind
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #7 !dbg !5275 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5277, metadata !DIExpression()), !dbg !5279
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  %0 = load i8, ptr %value.addr, align 1, !dbg !5279
  %1 = load i16, ptr %port.addr, align 2, !dbg !5279
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #9, !dbg !5279, !srcloc !5280
  ret void, !dbg !5279
}

; Function Attrs: alwaysinline noredzone nounwind
define internal void @__outw(i16 noundef zeroext %value, i16 noundef zeroext %port) #7 !dbg !5281 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i16, align 2
  store i16 %value, ptr %value.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5283, metadata !DIExpression()), !dbg !5285
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  %0 = load i16, ptr %value.addr, align 2, !dbg !5285
  %1 = load i16, ptr %port.addr, align 2, !dbg !5285
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16 %1) #9, !dbg !5285, !srcloc !5286
  ret void, !dbg !5285
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone "no-builtins" }
attributes #11 = { nobuiltin noredzone noreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!858, !859, !860, !861, !862, !863}
!llvm.ident = !{!864}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "malloc_ptr", scope: !2, file: !391, line: 39, type: !66, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.misc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/misc\22 -D KBUILD_BASENAME=\22misc\22 -D KBUILD_MODNAME=\22misc\22 -D __KBUILD_MODNAME=kmod_misc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/misc.ll arch/x86/boot/compressed/misc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !50, globals: !146, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/compressed/misc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44a99a73eb7e8d034d8f71d546e153d1")
!4 = !{!5, !12, !45}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 50, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "arch/x86/boot/compressed/../../../../lib/zlib_inflate/inftrees.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "196f76384b7df69194d57eded4138662")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "CODES", value: 0)
!10 = !DIEnumerator(name: "LENS", value: 1)
!11 = !DIEnumerator(name: "DISTS", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 17, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "arch/x86/boot/compressed/../../../../lib/zlib_inflate/inflate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ffb6590e74d2419381e17a965c0acd6")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!15 = !DIEnumerator(name: "HEAD", value: 0)
!16 = !DIEnumerator(name: "FLAGS", value: 1)
!17 = !DIEnumerator(name: "TIME", value: 2)
!18 = !DIEnumerator(name: "OS", value: 3)
!19 = !DIEnumerator(name: "EXLEN", value: 4)
!20 = !DIEnumerator(name: "EXTRA", value: 5)
!21 = !DIEnumerator(name: "NAME", value: 6)
!22 = !DIEnumerator(name: "COMMENT", value: 7)
!23 = !DIEnumerator(name: "HCRC", value: 8)
!24 = !DIEnumerator(name: "DICTID", value: 9)
!25 = !DIEnumerator(name: "DICT", value: 10)
!26 = !DIEnumerator(name: "TYPE", value: 11)
!27 = !DIEnumerator(name: "TYPEDO", value: 12)
!28 = !DIEnumerator(name: "STORED", value: 13)
!29 = !DIEnumerator(name: "COPY", value: 14)
!30 = !DIEnumerator(name: "TABLE", value: 15)
!31 = !DIEnumerator(name: "LENLENS", value: 16)
!32 = !DIEnumerator(name: "CODELENS", value: 17)
!33 = !DIEnumerator(name: "LEN", value: 18)
!34 = !DIEnumerator(name: "LENEXT", value: 19)
!35 = !DIEnumerator(name: "DIST", value: 20)
!36 = !DIEnumerator(name: "DISTEXT", value: 21)
!37 = !DIEnumerator(name: "MATCH", value: 22)
!38 = !DIEnumerator(name: "LIT", value: 23)
!39 = !DIEnumerator(name: "CHECK", value: 24)
!40 = !DIEnumerator(name: "LENGTH", value: 25)
!41 = !DIEnumerator(name: "DONE", value: 26)
!42 = !DIEnumerator(name: "BAD", value: 27)
!43 = !DIEnumerator(name: "MEM", value: 28)
!44 = !DIEnumerator(name: "SYNC", value: 29)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 10, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "false", value: 0)
!49 = !DIEnumerator(name: "true", value: 1)
!50 = !{!51, !52, !53, !7, !54, !55, !66, !109, !111, !112, !73, !113, !122, !80, !125, !126, !131, !137, !141}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inflate_state", file: !13, line: 74, size: 76352, elements: !57)
!57 = !{!58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !78, !79, !88, !89, !90, !91, !92, !93, !94, !95, !97, !101, !105}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !56, file: !13, line: 75, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "inflate_mode", file: !13, line: 48, baseType: !12)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !56, file: !13, line: 76, baseType: !54, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "wrap", scope: !56, file: !13, line: 77, baseType: !54, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "havedict", scope: !56, file: !13, line: 78, baseType: !54, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !13, line: 79, baseType: !54, size: 32, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !56, file: !13, line: 80, baseType: !7, size: 32, offset: 160)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !56, file: !13, line: 81, baseType: !66, size: 64, offset: 192)
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !56, file: !13, line: 82, baseType: !66, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "wbits", scope: !56, file: !13, line: 85, baseType: !7, size: 32, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wsize", scope: !56, file: !13, line: 86, baseType: !7, size: 32, offset: 352)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "whave", scope: !56, file: !13, line: 87, baseType: !7, size: 32, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !56, file: !13, line: 88, baseType: !7, size: 32, offset: 416)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !56, file: !13, line: 89, baseType: !73, size: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "hold", scope: !56, file: !13, line: 91, baseType: !66, size: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !56, file: !13, line: 92, baseType: !7, size: 32, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !56, file: !13, line: 94, baseType: !7, size: 32, offset: 608)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !56, file: !13, line: 95, baseType: !7, size: 32, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !56, file: !13, line: 97, baseType: !7, size: 32, offset: 672)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lencode", scope: !56, file: !13, line: 99, baseType: !80, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "code", file: !6, line: 31, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 27, size: 32, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !83, file: !6, line: 28, baseType: !52, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !83, file: !6, line: 29, baseType: !52, size: 8, offset: 8)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !6, line: 30, baseType: !53, size: 16, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "distcode", scope: !56, file: !13, line: 100, baseType: !80, size: 64, offset: 768)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "lenbits", scope: !56, file: !13, line: 101, baseType: !7, size: 32, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "distbits", scope: !56, file: !13, line: 102, baseType: !7, size: 32, offset: 864)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ncode", scope: !56, file: !13, line: 104, baseType: !7, size: 32, offset: 896)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !56, file: !13, line: 105, baseType: !7, size: 32, offset: 928)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ndist", scope: !56, file: !13, line: 106, baseType: !7, size: 32, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !56, file: !13, line: 107, baseType: !7, size: 32, offset: 992)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !56, file: !13, line: 108, baseType: !96, size: 64, offset: 1024)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "lens", scope: !56, file: !13, line: 109, baseType: !98, size: 5120, offset: 1088)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 5120, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !56, file: !13, line: 110, baseType: !102, size: 4608, offset: 6208)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 4608, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 288)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "codes", scope: !56, file: !13, line: 111, baseType: !106, size: 65536, offset: 10816)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 65536, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 2048)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!111 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inflate_workspace", file: !115, line: 22, size: 338496, elements: !116)
!115 = !DIFile(filename: "arch/x86/boot/compressed/../../../../lib/zlib_inflate/infutil.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a65eaf7481591cefdcaf8ac124df4f2")
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "inflate_state", scope: !114, file: !115, line: 23, baseType: !56, size: 76352)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "working_window", scope: !114, file: !115, line: 28, baseType: !119, size: 262144, offset: 76352)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 262144, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 32768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !124, line: 82, flags: DIFlagFwdDecl)
!124 = !DIFile(filename: "./include/linux/zlib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "959204f2bbe0607cb05d45364420f12e")
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 61, baseType: !128)
!127 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !129, line: 72, baseType: !130)
!129 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !129, line: 16, baseType: !66)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !127, line: 110, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !134, line: 21, baseType: !135)
!134 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !136, line: 27, baseType: !7)
!136 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !127, line: 104, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !134, line: 20, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !136, line: 26, baseType: !54)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !127, line: 113, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !134, line: 23, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !136, line: 31, baseType: !145)
!145 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!146 = !{!147, !192, !194, !199, !201, !207, !212, !217, !270, !275, !280, !285, !288, !293, !298, !303, !308, !310, !312, !317, !320, !322, !327, !332, !337, !342, !347, !349, !351, !354, !356, !361, !366, !368, !373, !375, !377, !382, !387, !0, !389, !392, !718, !737, !739, !741, !743, !745, !747, !749, !754, !765, !768, !774, !779, !784, !789, !791, !796, !798, !803, !805, !808, !810, !815, !818, !820, !822, !827, !832, !834, !836, !838}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "lbase", scope: !149, file: !150, line: 46, type: !189, isLocal: true, isDefinition: true)
!149 = distinct !DISubprogram(name: "zlib_inflate_table", scope: !150, file: !150, line: 23, type: !151, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !156)
!150 = !DIFile(filename: "arch/x86/boot/compressed/../../../../lib/zlib_inflate/inftrees.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b0880bb08c432316a92363974fe7b02a")
!151 = !DISubroutineType(types: !152)
!152 = !{!54, !153, !112, !7, !154, !155, !112}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "codetype", file: !6, line: 54, baseType: !5)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !182, !183, !184, !188}
!157 = !DILocalVariable(name: "type", arg: 1, scope: !149, file: !150, line: 23, type: !153)
!158 = !DILocalVariable(name: "lens", arg: 2, scope: !149, file: !150, line: 23, type: !112)
!159 = !DILocalVariable(name: "codes", arg: 3, scope: !149, file: !150, line: 23, type: !7)
!160 = !DILocalVariable(name: "table", arg: 4, scope: !149, file: !150, line: 24, type: !154)
!161 = !DILocalVariable(name: "bits", arg: 5, scope: !149, file: !150, line: 24, type: !155)
!162 = !DILocalVariable(name: "work", arg: 6, scope: !149, file: !150, line: 24, type: !112)
!163 = !DILocalVariable(name: "len", scope: !149, file: !150, line: 26, type: !7)
!164 = !DILocalVariable(name: "sym", scope: !149, file: !150, line: 27, type: !7)
!165 = !DILocalVariable(name: "min", scope: !149, file: !150, line: 28, type: !7)
!166 = !DILocalVariable(name: "max", scope: !149, file: !150, line: 28, type: !7)
!167 = !DILocalVariable(name: "root", scope: !149, file: !150, line: 29, type: !7)
!168 = !DILocalVariable(name: "curr", scope: !149, file: !150, line: 30, type: !7)
!169 = !DILocalVariable(name: "drop", scope: !149, file: !150, line: 31, type: !7)
!170 = !DILocalVariable(name: "left", scope: !149, file: !150, line: 32, type: !54)
!171 = !DILocalVariable(name: "used", scope: !149, file: !150, line: 33, type: !7)
!172 = !DILocalVariable(name: "huff", scope: !149, file: !150, line: 34, type: !7)
!173 = !DILocalVariable(name: "incr", scope: !149, file: !150, line: 35, type: !7)
!174 = !DILocalVariable(name: "fill", scope: !149, file: !150, line: 36, type: !7)
!175 = !DILocalVariable(name: "low", scope: !149, file: !150, line: 37, type: !7)
!176 = !DILocalVariable(name: "mask", scope: !149, file: !150, line: 38, type: !7)
!177 = !DILocalVariable(name: "this", scope: !149, file: !150, line: 39, type: !82)
!178 = !DILocalVariable(name: "next", scope: !149, file: !150, line: 40, type: !96)
!179 = !DILocalVariable(name: "base", scope: !149, file: !150, line: 41, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!182 = !DILocalVariable(name: "extra", scope: !149, file: !150, line: 42, type: !180)
!183 = !DILocalVariable(name: "end", scope: !149, file: !150, line: 43, type: !54)
!184 = !DILocalVariable(name: "count", scope: !149, file: !150, line: 44, type: !185)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 16)
!188 = !DILocalVariable(name: "offs", scope: !149, file: !150, line: 45, type: !185)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 496, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 31)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "lext", scope: !149, file: !150, line: 49, type: !189, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "dbase", scope: !149, file: !150, line: 52, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 512, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 32)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "dext", scope: !149, file: !150, line: 56, type: !196, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !203, line: 183, type: !204, isLocal: true, isDefinition: true)
!203 = !DIFile(filename: "arch/x86/boot/compressed/../../../../lib/zlib_inflate/inffast.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b19dbe9d802c76005a1e24c5e31d3a45")
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 240, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 30)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !203, line: 290, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 176, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 22)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !203, line: 304, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 224, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 28)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "order", scope: !219, file: !220, line: 346, type: !267, isLocal: true, isDefinition: true)
!219 = distinct !DISubprogram(name: "zlib_inflate", scope: !220, file: !220, line: 331, type: !221, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!220 = !DIFile(filename: "arch/x86/boot/compressed/../../../../lib/zlib_inflate/inflate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccaad8fb0026e4f19f5289f99a60fa37")
!221 = !DISubroutineType(types: !222)
!222 = !{!54, !223, !54}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !124, line: 103, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !124, line: 101, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !124, line: 84, size: 768, elements: !227)
!227 = !{!228, !233, !235, !236, !238, !239, !240, !241, !242, !243, !244, !245}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !226, file: !124, line: 85, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !232, line: 52, baseType: !52)
!232 = !DIFile(filename: "./include/linux/zconf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "66c2d885369ef0adc0f1780a0c1150c2")
!233 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !226, file: !124, line: 86, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !232, line: 54, baseType: !66)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !226, file: !124, line: 87, baseType: !234, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !226, file: !124, line: 89, baseType: !237, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !226, file: !124, line: 90, baseType: !234, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !226, file: !124, line: 91, baseType: !234, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !226, file: !124, line: 93, baseType: !109, size: 64, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !226, file: !124, line: 94, baseType: !122, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !226, file: !124, line: 96, baseType: !51, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !226, file: !124, line: 98, baseType: !54, size: 32, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !226, file: !124, line: 99, baseType: !234, size: 64, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !226, file: !124, line: 100, baseType: !234, size: 64, offset: 704)
!246 = !{!247, !248, !249, !250, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!247 = !DILocalVariable(name: "strm", arg: 1, scope: !219, file: !220, line: 331, type: !223)
!248 = !DILocalVariable(name: "flush", arg: 2, scope: !219, file: !220, line: 331, type: !54)
!249 = !DILocalVariable(name: "state", scope: !219, file: !220, line: 333, type: !55)
!250 = !DILocalVariable(name: "next", scope: !219, file: !220, line: 334, type: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!253 = !DILocalVariable(name: "put", scope: !219, file: !220, line: 335, type: !73)
!254 = !DILocalVariable(name: "have", scope: !219, file: !220, line: 336, type: !7)
!255 = !DILocalVariable(name: "left", scope: !219, file: !220, line: 336, type: !7)
!256 = !DILocalVariable(name: "hold", scope: !219, file: !220, line: 337, type: !66)
!257 = !DILocalVariable(name: "bits", scope: !219, file: !220, line: 338, type: !7)
!258 = !DILocalVariable(name: "in", scope: !219, file: !220, line: 339, type: !7)
!259 = !DILocalVariable(name: "out", scope: !219, file: !220, line: 339, type: !7)
!260 = !DILocalVariable(name: "copy", scope: !219, file: !220, line: 340, type: !7)
!261 = !DILocalVariable(name: "from", scope: !219, file: !220, line: 341, type: !73)
!262 = !DILocalVariable(name: "this", scope: !219, file: !220, line: 342, type: !82)
!263 = !DILocalVariable(name: "last", scope: !219, file: !220, line: 343, type: !82)
!264 = !DILocalVariable(name: "len", scope: !219, file: !220, line: 344, type: !7)
!265 = !DILocalVariable(name: "ret", scope: !219, file: !220, line: 345, type: !54)
!266 = !DILabel(scope: !219, name: "inf_leave", file: !220, line: 742)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 304, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 19)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !220, line: 373, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 184, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 23)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !220, line: 378, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 216, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 27)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !220, line: 385, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 160, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 20)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !220, line: 433, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 152, elements: !268)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !220, line: 442, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 232, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 29)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !220, line: 476, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 288, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 36)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !220, line: 498, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 200, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 25)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !220, line: 522, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 208, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 26)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !220, line: 564, type: !214, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !220, line: 573, type: !209, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !220, line: 716, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 168, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 21)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "kernel_text_size", scope: !2, file: !3, line: 333, type: !319, isLocal: false, isDefinition: true)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "kernel_total_size", scope: !2, file: !3, line: 334, type: !319, isLocal: false, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 438, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 264, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 33)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 460, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 120, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 15)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !3, line: 460, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 16, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 2)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 112, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 14)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 88, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 11)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !3, line: 463, type: !329, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !3, line: 464, type: !209, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !3, line: 465, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 128, elements: !186)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !3, line: 469, type: !314, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !3, line: 479, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 424, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 53)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !3, line: 481, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 416, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 52)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !3, line: 484, type: !204, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !3, line: 486, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 496, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 62)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 496, type: !300, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 499, type: !314, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !3, line: 505, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 344, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 43)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 507, type: !384, isLocal: true, isDefinition: true)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 32, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 4)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !3, line: 517, type: !300, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "malloc_count", scope: !2, file: !391, line: 40, type: !54, isLocal: true, isDefinition: true)
!391 = !DIFile(filename: "./include/linux/decompress/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4924bf432578c0cb2abfc143ca9d14e")
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "boot_params_ptr", scope: !2, file: !3, line: 49, type: !394, isLocal: false, isDefinition: true)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params", file: !396, line: 186, size: 32768, elements: !397)
!396 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!397 = !{!398, !441, !454, !456, !457, !465, !466, !470, !472, !473, !479, !486, !487, !488, !489, !493, !494, !502, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !526, !568, !570, !572, !579, !583, !714}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "screen_info", scope: !395, file: !396, line: 187, baseType: !399, size: 512)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "screen_info", file: !400, line: 11, size: 512, elements: !401)
!400 = !DIFile(filename: "./include/uapi/linux/screen_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "395c08eb846a258de3277732fcbc2819")
!401 = !{!402, !404, !405, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "orig_x", scope: !399, file: !400, line: 12, baseType: !403, size: 8)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !136, line: 21, baseType: !52)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "orig_y", scope: !399, file: !400, line: 13, baseType: !403, size: 8, offset: 8)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ext_mem_k", scope: !399, file: !400, line: 14, baseType: !406, size: 16, offset: 16)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !136, line: 24, baseType: !53)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_page", scope: !399, file: !400, line: 15, baseType: !406, size: 16, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_mode", scope: !399, file: !400, line: 16, baseType: !403, size: 8, offset: 48)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_cols", scope: !399, file: !400, line: 17, baseType: !403, size: 8, offset: 56)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !400, line: 18, baseType: !403, size: 8, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !399, file: !400, line: 19, baseType: !403, size: 8, offset: 72)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_ega_bx", scope: !399, file: !400, line: 20, baseType: !406, size: 16, offset: 80)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !399, file: !400, line: 21, baseType: !406, size: 16, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_lines", scope: !399, file: !400, line: 22, baseType: !403, size: 8, offset: 112)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_isVGA", scope: !399, file: !400, line: 23, baseType: !403, size: 8, offset: 120)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_points", scope: !399, file: !400, line: 24, baseType: !406, size: 16, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_width", scope: !399, file: !400, line: 27, baseType: !406, size: 16, offset: 144)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_height", scope: !399, file: !400, line: 28, baseType: !406, size: 16, offset: 160)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_depth", scope: !399, file: !400, line: 29, baseType: !406, size: 16, offset: 176)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_base", scope: !399, file: !400, line: 30, baseType: !135, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_size", scope: !399, file: !400, line: 31, baseType: !135, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cl_magic", scope: !399, file: !400, line: 32, baseType: !406, size: 16, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cl_offset", scope: !399, file: !400, line: 32, baseType: !406, size: 16, offset: 272)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_linelength", scope: !399, file: !400, line: 33, baseType: !406, size: 16, offset: 288)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "red_size", scope: !399, file: !400, line: 34, baseType: !403, size: 8, offset: 304)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "red_pos", scope: !399, file: !400, line: 35, baseType: !403, size: 8, offset: 312)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "green_size", scope: !399, file: !400, line: 36, baseType: !403, size: 8, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "green_pos", scope: !399, file: !400, line: 37, baseType: !403, size: 8, offset: 328)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "blue_size", scope: !399, file: !400, line: 38, baseType: !403, size: 8, offset: 336)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "blue_pos", scope: !399, file: !400, line: 39, baseType: !403, size: 8, offset: 344)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_size", scope: !399, file: !400, line: 40, baseType: !403, size: 8, offset: 352)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_pos", scope: !399, file: !400, line: 41, baseType: !403, size: 8, offset: 360)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_seg", scope: !399, file: !400, line: 42, baseType: !406, size: 16, offset: 368)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_off", scope: !399, file: !400, line: 43, baseType: !406, size: 16, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !399, file: !400, line: 44, baseType: !406, size: 16, offset: 400)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "vesa_attributes", scope: !399, file: !400, line: 45, baseType: !406, size: 16, offset: 416)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !399, file: !400, line: 46, baseType: !135, size: 32, offset: 432)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ext_lfb_base", scope: !399, file: !400, line: 47, baseType: !135, size: 32, offset: 464)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !399, file: !400, line: 48, baseType: !440, size: 16, offset: 496)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 16, elements: !335)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "apm_bios_info", scope: !395, file: !396, line: 188, baseType: !442, size: 160, offset: 512)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apm_bios_info", file: !443, line: 25, size: 160, elements: !444)
!443 = !DIFile(filename: "./include/uapi/linux/apm_bios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2faf7b1bd7c92e79370dc4887ba91d3")
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !442, file: !443, line: 26, baseType: !406, size: 16)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cseg", scope: !442, file: !443, line: 27, baseType: !406, size: 16, offset: 16)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !442, file: !443, line: 28, baseType: !135, size: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16", scope: !442, file: !443, line: 29, baseType: !406, size: 16, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dseg", scope: !442, file: !443, line: 30, baseType: !406, size: 16, offset: 80)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !443, line: 31, baseType: !406, size: 16, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_len", scope: !442, file: !443, line: 32, baseType: !406, size: 16, offset: 112)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16_len", scope: !442, file: !443, line: 33, baseType: !406, size: 16, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dseg_len", scope: !442, file: !443, line: 34, baseType: !406, size: 16, offset: 144)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2", scope: !395, file: !396, line: 189, baseType: !455, size: 32, offset: 672)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 32, elements: !385)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tboot_addr", scope: !395, file: !396, line: 190, baseType: !144, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ist_info", scope: !395, file: !396, line: 191, baseType: !458, size: 128, offset: 768)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ist_info", file: !459, line: 23, size: 128, elements: !460)
!459 = !DIFile(filename: "./arch/x86/include/uapi/asm/ist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3966eee4102636d4a6a170719935cbb6")
!460 = !{!461, !462, !463, !464}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !458, file: !459, line: 24, baseType: !135, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !458, file: !459, line: 25, baseType: !135, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !458, file: !459, line: 26, baseType: !135, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "perf_level", scope: !458, file: !459, line: 27, baseType: !135, size: 32, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_rsdp_addr", scope: !395, file: !396, line: 192, baseType: !144, size: 64, offset: 896)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3", scope: !395, file: !396, line: 193, baseType: !467, size: 64, offset: 960)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 64, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 8)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "hd0_info", scope: !395, file: !396, line: 194, baseType: !471, size: 128, offset: 1024)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 128, elements: !186)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "hd1_info", scope: !395, file: !396, line: 195, baseType: !471, size: 128, offset: 1152)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sys_desc_table", scope: !395, file: !396, line: 196, baseType: !474, size: 128, offset: 1280)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_desc_table", file: !396, line: 110, size: 128, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !474, file: !396, line: 111, baseType: !406, size: 16)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !474, file: !396, line: 112, baseType: !478, size: 112, offset: 16)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 112, elements: !340)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "olpc_ofw_header", scope: !395, file: !396, line: 197, baseType: !480, size: 128, offset: 1408)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "olpc_ofw_header", file: !396, line: 116, size: 128, elements: !481)
!481 = !{!482, !483, !484, !485}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_magic", scope: !480, file: !396, line: 117, baseType: !135, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_version", scope: !480, file: !396, line: 118, baseType: !135, size: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "cif_handler", scope: !480, file: !396, line: 119, baseType: !135, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "irq_desc_table", scope: !480, file: !396, line: 120, baseType: !135, size: 32, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_image", scope: !395, file: !396, line: 198, baseType: !135, size: 32, offset: 1536)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_size", scope: !395, file: !396, line: 199, baseType: !135, size: 32, offset: 1568)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cmd_line_ptr", scope: !395, file: !396, line: 200, baseType: !135, size: 32, offset: 1600)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_pad4", scope: !395, file: !396, line: 201, baseType: !490, size: 896, offset: 1632)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 896, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 112)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "cc_blob_address", scope: !395, file: !396, line: 202, baseType: !135, size: 32, offset: 2528)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "edid_info", scope: !395, file: !396, line: 203, baseType: !495, size: 1024, offset: 2560)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edid_info", file: !496, line: 5, size: 1024, elements: !497)
!496 = !DIFile(filename: "./include/uapi/video/edid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a36c5e7269b764712ba1a5dc2e5eb27d")
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !495, file: !496, line: 6, baseType: !499, size: 1024)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 1024, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "efi_info", scope: !395, file: !396, line: 204, baseType: !503, size: 256, offset: 3584)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_info", file: !396, line: 123, size: 256, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "efi_loader_signature", scope: !503, file: !396, line: 124, baseType: !135, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab", scope: !503, file: !396, line: 125, baseType: !135, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_size", scope: !503, file: !396, line: 126, baseType: !135, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_version", scope: !503, file: !396, line: 127, baseType: !135, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap", scope: !503, file: !396, line: 128, baseType: !135, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_size", scope: !503, file: !396, line: 129, baseType: !135, size: 32, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab_hi", scope: !503, file: !396, line: 130, baseType: !135, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_hi", scope: !503, file: !396, line: 131, baseType: !135, size: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "alt_mem_k", scope: !395, file: !396, line: 205, baseType: !135, size: 32, offset: 3840)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !395, file: !396, line: 206, baseType: !135, size: 32, offset: 3872)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "e820_entries", scope: !395, file: !396, line: 207, baseType: !403, size: 8, offset: 3904)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf_entries", scope: !395, file: !396, line: 208, baseType: !403, size: 8, offset: 3912)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buf_entries", scope: !395, file: !396, line: 209, baseType: !403, size: 8, offset: 3920)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "kbd_status", scope: !395, file: !396, line: 210, baseType: !403, size: 8, offset: 3928)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "secure_boot", scope: !395, file: !396, line: 211, baseType: !403, size: 8, offset: 3936)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_pad5", scope: !395, file: !396, line: 212, baseType: !440, size: 16, offset: 3944)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !395, file: !396, line: 224, baseType: !403, size: 8, offset: 3960)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_pad6", scope: !395, file: !396, line: 225, baseType: !523, size: 8, offset: 3968)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 8, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 1)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !395, file: !396, line: 226, baseType: !527, size: 984, offset: 3976)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_header", file: !396, line: 68, size: 984, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "setup_sects", scope: !527, file: !396, line: 69, baseType: !403, size: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "root_flags", scope: !527, file: !396, line: 70, baseType: !406, size: 16, offset: 8)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "syssize", scope: !527, file: !396, line: 71, baseType: !135, size: 32, offset: 24)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ram_size", scope: !527, file: !396, line: 72, baseType: !406, size: 16, offset: 56)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "vid_mode", scope: !527, file: !396, line: 73, baseType: !406, size: 16, offset: 72)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "root_dev", scope: !527, file: !396, line: 74, baseType: !406, size: 16, offset: 88)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "boot_flag", scope: !527, file: !396, line: 75, baseType: !406, size: 16, offset: 104)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !527, file: !396, line: 76, baseType: !406, size: 16, offset: 120)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !527, file: !396, line: 77, baseType: !135, size: 32, offset: 136)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !527, file: !396, line: 78, baseType: !406, size: 16, offset: 168)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "realmode_swtch", scope: !527, file: !396, line: 79, baseType: !135, size: 32, offset: 184)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "start_sys_seg", scope: !527, file: !396, line: 80, baseType: !406, size: 16, offset: 216)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_version", scope: !527, file: !396, line: 81, baseType: !406, size: 16, offset: 232)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "type_of_loader", scope: !527, file: !396, line: 82, baseType: !403, size: 8, offset: 248)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "loadflags", scope: !527, file: !396, line: 83, baseType: !403, size: 8, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "setup_move_size", scope: !527, file: !396, line: 84, baseType: !406, size: 16, offset: 264)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "code32_start", scope: !527, file: !396, line: 85, baseType: !135, size: 32, offset: 280)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_image", scope: !527, file: !396, line: 86, baseType: !135, size: 32, offset: 312)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_size", scope: !527, file: !396, line: 87, baseType: !135, size: 32, offset: 344)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "bootsect_kludge", scope: !527, file: !396, line: 88, baseType: !135, size: 32, offset: 376)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "heap_end_ptr", scope: !527, file: !396, line: 89, baseType: !406, size: 16, offset: 408)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_ver", scope: !527, file: !396, line: 90, baseType: !403, size: 8, offset: 424)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_type", scope: !527, file: !396, line: 91, baseType: !403, size: 8, offset: 432)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_line_ptr", scope: !527, file: !396, line: 92, baseType: !135, size: 32, offset: 440)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "initrd_addr_max", scope: !527, file: !396, line: 93, baseType: !135, size: 32, offset: 472)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_alignment", scope: !527, file: !396, line: 94, baseType: !135, size: 32, offset: 504)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "relocatable_kernel", scope: !527, file: !396, line: 95, baseType: !403, size: 8, offset: 536)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "min_alignment", scope: !527, file: !396, line: 96, baseType: !403, size: 8, offset: 544)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "xloadflags", scope: !527, file: !396, line: 97, baseType: !406, size: 16, offset: 552)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_size", scope: !527, file: !396, line: 98, baseType: !135, size: 32, offset: 568)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch", scope: !527, file: !396, line: 99, baseType: !135, size: 32, offset: 600)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch_data", scope: !527, file: !396, line: 100, baseType: !144, size: 64, offset: 632)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "payload_offset", scope: !527, file: !396, line: 101, baseType: !135, size: 32, offset: 696)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !527, file: !396, line: 102, baseType: !135, size: 32, offset: 728)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "setup_data", scope: !527, file: !396, line: 103, baseType: !144, size: 64, offset: 760)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pref_address", scope: !527, file: !396, line: 104, baseType: !144, size: 64, offset: 824)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "init_size", scope: !527, file: !396, line: 105, baseType: !135, size: 32, offset: 888)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "handover_offset", scope: !527, file: !396, line: 106, baseType: !135, size: 32, offset: 920)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_info_offset", scope: !527, file: !396, line: 107, baseType: !135, size: 32, offset: 952)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_pad7", scope: !395, file: !396, line: 227, baseType: !569, size: 288, offset: 4960)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 288, elements: !296)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buffer", scope: !395, file: !396, line: 228, baseType: !571, size: 512, offset: 5248)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 512, elements: !186)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "e820_table", scope: !395, file: !396, line: 229, baseType: !573, size: 20480, offset: 5760)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 20480, elements: !500)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !396, line: 143, size: 160, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !574, file: !396, line: 144, baseType: !144, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !574, file: !396, line: 145, baseType: !144, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !574, file: !396, line: 146, baseType: !135, size: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_pad8", scope: !395, file: !396, line: 230, baseType: !580, size: 384, offset: 26240)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 384, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 48)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf", scope: !395, file: !396, line: 231, baseType: !584, size: 3936, offset: 26624)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 3936, elements: !712)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_info", file: !586, line: 173, size: 656, elements: !587)
!586 = !DIFile(filename: "./include/uapi/linux/edd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6546916b3caeeabef2983c5e06678df")
!587 = !{!588, !589, !590, !591, !592, !593, !594}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !585, file: !586, line: 174, baseType: !403, size: 8)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !585, file: !586, line: 175, baseType: !403, size: 8, offset: 8)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "interface_support", scope: !585, file: !586, line: 176, baseType: !406, size: 16, offset: 16)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_cylinder", scope: !585, file: !586, line: 177, baseType: !406, size: 16, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_head", scope: !585, file: !586, line: 178, baseType: !403, size: 8, offset: 48)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_sectors_per_track", scope: !585, file: !586, line: 179, baseType: !403, size: 8, offset: 56)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !585, file: !586, line: 180, baseType: !595, size: 592, offset: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_device_params", file: !586, line: 72, size: 592, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !644, !710, !711}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !595, file: !586, line: 73, baseType: !406, size: 16)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !595, file: !586, line: 74, baseType: !406, size: 16, offset: 16)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_cylinders", scope: !595, file: !586, line: 75, baseType: !135, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_heads", scope: !595, file: !586, line: 76, baseType: !135, size: 32, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_track", scope: !595, file: !586, line: 77, baseType: !135, size: 32, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_sectors", scope: !595, file: !586, line: 78, baseType: !144, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_sector", scope: !595, file: !586, line: 79, baseType: !406, size: 16, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dpte_ptr", scope: !595, file: !586, line: 80, baseType: !135, size: 32, offset: 208)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !595, file: !586, line: 81, baseType: !406, size: 16, offset: 240)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "device_path_info_length", scope: !595, file: !586, line: 82, baseType: !403, size: 8, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !595, file: !586, line: 83, baseType: !403, size: 8, offset: 264)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !595, file: !586, line: 84, baseType: !406, size: 16, offset: 272)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "host_bus_type", scope: !595, file: !586, line: 85, baseType: !455, size: 32, offset: 288)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "interface_type", scope: !595, file: !586, line: 86, baseType: !467, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "interface_path", scope: !595, file: !586, line: 113, baseType: !612, size: 64, offset: 384)
!612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !586, line: 87, size: 64, elements: !613)
!613 = !{!614, !620, !628, !632, !636, !640}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !612, file: !586, line: 92, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !612, file: !586, line: 88, size: 64, elements: !616)
!616 = !{!617, !618, !619}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !615, file: !586, line: 89, baseType: !406, size: 16)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !615, file: !586, line: 90, baseType: !406, size: 16, offset: 16)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !615, file: !586, line: 91, baseType: !135, size: 32, offset: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !612, file: !586, line: 99, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !612, file: !586, line: 93, size: 64, elements: !622)
!622 = !{!623, !624, !625, !626, !627}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !621, file: !586, line: 94, baseType: !403, size: 8)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !621, file: !586, line: 95, baseType: !403, size: 8, offset: 8)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !621, file: !586, line: 96, baseType: !403, size: 8, offset: 16)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !621, file: !586, line: 97, baseType: !403, size: 8, offset: 24)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !621, file: !586, line: 98, baseType: !135, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ibnd", scope: !612, file: !586, line: 103, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !612, file: !586, line: 101, size: 64, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !629, file: !586, line: 102, baseType: !144, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "xprs", scope: !612, file: !586, line: 106, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !612, file: !586, line: 104, size: 64, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !633, file: !586, line: 105, baseType: !144, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "htpt", scope: !612, file: !586, line: 109, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !612, file: !586, line: 107, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !637, file: !586, line: 108, baseType: !144, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !612, file: !586, line: 112, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !612, file: !586, line: 110, size: 64, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !641, file: !586, line: 111, baseType: !144, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "device_path", scope: !595, file: !586, line: 168, baseType: !645, size: 128, offset: 448)
!645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !586, line: 114, size: 128, elements: !646)
!646 = !{!647, !655, !664, !671, !676, !681, !686, !691, !697, !705}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ata", scope: !645, file: !586, line: 121, baseType: !648, size: 128)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !586, line: 115, size: 128, elements: !649)
!649 = !{!650, !651, !652, !653, !654}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !648, file: !586, line: 116, baseType: !403, size: 8)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !648, file: !586, line: 117, baseType: !403, size: 8, offset: 8)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !648, file: !586, line: 118, baseType: !406, size: 16, offset: 16)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !648, file: !586, line: 119, baseType: !135, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !648, file: !586, line: 120, baseType: !144, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "atapi", scope: !645, file: !586, line: 129, baseType: !656, size: 128)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !586, line: 122, size: 128, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !656, file: !586, line: 123, baseType: !403, size: 8)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !656, file: !586, line: 124, baseType: !403, size: 8, offset: 8)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !656, file: !586, line: 125, baseType: !403, size: 8, offset: 16)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !656, file: !586, line: 126, baseType: !403, size: 8, offset: 24)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !656, file: !586, line: 127, baseType: !135, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !656, file: !586, line: 128, baseType: !144, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "scsi", scope: !645, file: !586, line: 135, baseType: !665, size: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !586, line: 130, size: 128, elements: !666)
!666 = !{!667, !668, !669, !670}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !665, file: !586, line: 131, baseType: !406, size: 16)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !665, file: !586, line: 132, baseType: !144, size: 64, offset: 16)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !665, file: !586, line: 133, baseType: !406, size: 16, offset: 80)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !665, file: !586, line: 134, baseType: !135, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "usb", scope: !645, file: !586, line: 139, baseType: !672, size: 128)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !586, line: 136, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !672, file: !586, line: 137, baseType: !144, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !672, file: !586, line: 138, baseType: !144, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i1394", scope: !645, file: !586, line: 143, baseType: !677, size: 128)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !586, line: 140, size: 128, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "eui", scope: !677, file: !586, line: 141, baseType: !144, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !677, file: !586, line: 142, baseType: !144, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "fibre", scope: !645, file: !586, line: 147, baseType: !682, size: 128)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !586, line: 144, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "wwid", scope: !682, file: !586, line: 145, baseType: !144, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !682, file: !586, line: 146, baseType: !144, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i2o", scope: !645, file: !586, line: 151, baseType: !687, size: 128)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !586, line: 148, size: 128, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "identity_tag", scope: !687, file: !586, line: 149, baseType: !144, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !687, file: !586, line: 150, baseType: !144, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "raid", scope: !645, file: !586, line: 156, baseType: !692, size: 128)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !586, line: 152, size: 128, elements: !693)
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "array_number", scope: !692, file: !586, line: 153, baseType: !135, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !692, file: !586, line: 154, baseType: !135, size: 32, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !692, file: !586, line: 155, baseType: !144, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sata", scope: !645, file: !586, line: 163, baseType: !698, size: 128)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !586, line: 157, size: 128, elements: !699)
!699 = !{!700, !701, !702, !703, !704}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !698, file: !586, line: 158, baseType: !403, size: 8)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !698, file: !586, line: 159, baseType: !403, size: 8, offset: 8)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !698, file: !586, line: 160, baseType: !406, size: 16, offset: 16)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !698, file: !586, line: 161, baseType: !135, size: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !698, file: !586, line: 162, baseType: !144, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !645, file: !586, line: 167, baseType: !706, size: 128)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !586, line: 164, size: 128, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !706, file: !586, line: 165, baseType: !144, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !706, file: !586, line: 166, baseType: !144, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !595, file: !586, line: 169, baseType: !403, size: 8, offset: 576)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !595, file: !586, line: 170, baseType: !403, size: 8, offset: 584)
!712 = !{!713}
!713 = !DISubrange(count: 6)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_pad9", scope: !395, file: !396, line: 232, baseType: !715, size: 2208, offset: 30560)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 2208, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 276)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "pio_ops", scope: !2, file: !3, line: 51, type: !720, isLocal: false, isDefinition: true)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "port_io_ops", file: !721, line: 14, size: 192, elements: !722)
!721 = !DIFile(filename: "arch/x86/boot/compressed/../io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3eae878608090f3626da203e8d7145d")
!722 = !{!723, !729, !733}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "f_inb", scope: !720, file: !721, line: 15, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !134, line: 17, baseType: !403)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !134, line: 19, baseType: !406)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "f_outb", scope: !720, file: !721, line: 16, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !727, !728}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "f_outw", scope: !720, file: !721, line: 17, baseType: !734, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !728, !728}
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "free_mem_ptr", scope: !2, file: !3, line: 53, type: !111, isLocal: false, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(name: "free_mem_end_ptr", scope: !2, file: !3, line: 54, type: !111, isLocal: false, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(name: "vidmem", scope: !2, file: !3, line: 56, type: !109, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "vidport", scope: !2, file: !3, line: 57, type: !54, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(name: "lines", scope: !2, file: !3, line: 60, type: !54, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(name: "cols", scope: !2, file: !3, line: 61, type: !54, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(name: "boot_heap", scope: !2, file: !3, line: 336, type: !751, isLocal: true, isDefinition: true, align: 32)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 524288, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 65536)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(name: "lenfix", scope: !756, file: !761, line: 10, type: !762, isLocal: true, isDefinition: true)
!756 = distinct !DISubprogram(name: "zlib_fixedtables", scope: !220, file: !220, line: 97, type: !757, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !55}
!759 = !{!760}
!760 = !DILocalVariable(name: "state", arg: 1, scope: !756, file: !220, line: 97, type: !55)
!761 = !DIFile(filename: "arch/x86/boot/compressed/../../../../lib/zlib_inflate/inffixed.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28aabce27feb2810caf634a39abb9d8b")
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16384, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 512)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(name: "distfix", scope: !756, file: !761, line: 87, type: !767, isLocal: true, isDefinition: true)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 1024, elements: !197)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !770, line: 61, type: !771, isLocal: true, isDefinition: true)
!770 = !DIFile(filename: "arch/x86/boot/compressed/../../../../lib/decompress_inflate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "496642670b0213029d1d85012a4b3264")
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 360, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 45)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !770, line: 72, type: !776, isLocal: true, isDefinition: true)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 352, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 44)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !770, line: 78, type: !781, isLocal: true, isDefinition: true)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 320, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 40)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !770, line: 90, type: !786, isLocal: true, isDefinition: true)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 328, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 41)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !770, line: 105, type: !353, isLocal: true, isDefinition: true)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !770, line: 123, type: !793, isLocal: true, isDefinition: true)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 104, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 13)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !770, line: 150, type: !344, isLocal: true, isDefinition: true)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !770, line: 163, type: !800, isLocal: true, isDefinition: true)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 96, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 12)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !770, line: 175, type: !282, isLocal: true, isDefinition: true)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !807, isLocal: true, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 248, elements: !190)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !353, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 280, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 35)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 384, elements: !581)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !300, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !277, isLocal: true, isDefinition: true)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !824, isLocal: true, isDefinition: true)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 304, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 38)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !829, isLocal: true, isDefinition: true)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 368, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 46)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !824, isLocal: true, isDefinition: true)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 367, type: !329, isLocal: true, isDefinition: true)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !353, isLocal: true, isDefinition: true)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(name: "scratch", scope: !840, file: !841, line: 52, type: !395, isLocal: true, isDefinition: true)
!840 = distinct !DISubprogram(name: "sanitize_boot_params", scope: !841, file: !841, line: 35, type: !842, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !844)
!841 = !DIFile(filename: "./arch/x86/include/asm/bootparam_utils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e9aa2b9a98721d89505e57893f0cd6")
!842 = !DISubroutineType(types: !843)
!843 = !{null, !394}
!844 = !{!845, !846, !849, !850, !851}
!845 = !DILocalVariable(name: "boot_params", arg: 1, scope: !840, file: !841, line: 35, type: !394)
!846 = !DILocalVariable(name: "bp_base", scope: !847, file: !841, line: 53, type: !109)
!847 = distinct !DILexicalBlock(scope: !848, file: !841, line: 51, column: 29)
!848 = distinct !DILexicalBlock(scope: !840, file: !841, line: 51, column: 6)
!849 = !DILocalVariable(name: "save_base", scope: !847, file: !841, line: 54, type: !109)
!850 = !DILocalVariable(name: "i", scope: !847, file: !841, line: 55, type: !54)
!851 = !DILocalVariable(name: "to_save", scope: !847, file: !841, line: 57, type: !852)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 1280, elements: !283)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params_to_save", file: !841, line: 30, size: 64, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !854, file: !841, line: 31, baseType: !7, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !854, file: !841, line: 32, baseType: !7, size: 32, offset: 32)
!858 = !{i32 7, !"Dwarf Version", i32 5}
!859 = !{i32 2, !"Debug Info Version", i32 3}
!860 = !{i32 1, !"wchar_size", i32 2}
!861 = !{i32 8, !"PIC Level", i32 2}
!862 = !{i32 7, !"PIE Level", i32 2}
!863 = !{i32 1, !"Code Model", i32 1}
!864 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!865 = distinct !DISubprogram(name: "malloc", scope: !391, file: !391, line: 42, type: !866, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{!51, !54}
!868 = !{!869, !870}
!869 = !DILocalVariable(name: "size", arg: 1, scope: !865, file: !391, line: 42, type: !54)
!870 = !DILocalVariable(name: "p", scope: !865, file: !391, line: 44, type: !51)
!871 = !DILocation(line: 42, column: 33, scope: !865)
!872 = !DILocation(line: 44, column: 2, scope: !865)
!873 = !DILocation(line: 44, column: 8, scope: !865)
!874 = !DILocation(line: 46, column: 6, scope: !875)
!875 = distinct !DILexicalBlock(scope: !865, file: !391, line: 46, column: 6)
!876 = !DILocation(line: 46, column: 11, scope: !875)
!877 = !DILocation(line: 46, column: 6, scope: !865)
!878 = !DILocation(line: 47, column: 3, scope: !875)
!879 = !DILocation(line: 48, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !865, file: !391, line: 48, column: 6)
!881 = !DILocation(line: 48, column: 6, scope: !865)
!882 = !DILocation(line: 49, column: 16, scope: !880)
!883 = !DILocation(line: 49, column: 14, scope: !880)
!884 = !DILocation(line: 49, column: 3, scope: !880)
!885 = !DILocation(line: 51, column: 16, scope: !865)
!886 = !DILocation(line: 51, column: 27, scope: !865)
!887 = !DILocation(line: 51, column: 32, scope: !865)
!888 = !DILocation(line: 51, column: 13, scope: !865)
!889 = !DILocation(line: 53, column: 14, scope: !865)
!890 = !DILocation(line: 53, column: 6, scope: !865)
!891 = !DILocation(line: 53, column: 4, scope: !865)
!892 = !DILocation(line: 54, column: 16, scope: !865)
!893 = !DILocation(line: 54, column: 13, scope: !865)
!894 = !DILocation(line: 56, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !865, file: !391, line: 56, column: 6)
!896 = !DILocation(line: 56, column: 23, scope: !895)
!897 = !DILocation(line: 56, column: 26, scope: !895)
!898 = !DILocation(line: 56, column: 40, scope: !895)
!899 = !DILocation(line: 56, column: 37, scope: !895)
!900 = !DILocation(line: 56, column: 6, scope: !865)
!901 = !DILocation(line: 57, column: 3, scope: !895)
!902 = !DILocation(line: 59, column: 14, scope: !865)
!903 = !DILocation(line: 60, column: 9, scope: !865)
!904 = !DILocation(line: 60, column: 2, scope: !865)
!905 = !DILocation(line: 61, column: 1, scope: !865)
!906 = distinct !DISubprogram(name: "free", scope: !391, file: !391, line: 63, type: !907, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !51}
!909 = !{!910}
!910 = !DILocalVariable(name: "where", arg: 1, scope: !906, file: !391, line: 63, type: !51)
!911 = !DILocation(line: 63, column: 32, scope: !906)
!912 = !DILocation(line: 65, column: 14, scope: !906)
!913 = !DILocation(line: 66, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !906, file: !391, line: 66, column: 6)
!915 = !DILocation(line: 66, column: 6, scope: !906)
!916 = !DILocation(line: 67, column: 16, scope: !914)
!917 = !DILocation(line: 67, column: 14, scope: !914)
!918 = !DILocation(line: 67, column: 3, scope: !914)
!919 = !DILocation(line: 68, column: 1, scope: !906)
!920 = !DILocation(line: 23, column: 33, scope: !149)
!921 = !DILocation(line: 23, column: 55, scope: !149)
!922 = !DILocation(line: 23, column: 70, scope: !149)
!923 = !DILocation(line: 24, column: 11, scope: !149)
!924 = !DILocation(line: 24, column: 28, scope: !149)
!925 = !DILocation(line: 24, column: 50, scope: !149)
!926 = !DILocation(line: 26, column: 5, scope: !149)
!927 = !DILocation(line: 26, column: 14, scope: !149)
!928 = !DILocation(line: 27, column: 5, scope: !149)
!929 = !DILocation(line: 27, column: 14, scope: !149)
!930 = !DILocation(line: 28, column: 5, scope: !149)
!931 = !DILocation(line: 28, column: 14, scope: !149)
!932 = !DILocation(line: 28, column: 19, scope: !149)
!933 = !DILocation(line: 29, column: 5, scope: !149)
!934 = !DILocation(line: 29, column: 14, scope: !149)
!935 = !DILocation(line: 30, column: 5, scope: !149)
!936 = !DILocation(line: 30, column: 14, scope: !149)
!937 = !DILocation(line: 31, column: 5, scope: !149)
!938 = !DILocation(line: 31, column: 14, scope: !149)
!939 = !DILocation(line: 32, column: 5, scope: !149)
!940 = !DILocation(line: 32, column: 9, scope: !149)
!941 = !DILocation(line: 33, column: 5, scope: !149)
!942 = !DILocation(line: 33, column: 14, scope: !149)
!943 = !DILocation(line: 34, column: 5, scope: !149)
!944 = !DILocation(line: 34, column: 14, scope: !149)
!945 = !DILocation(line: 35, column: 5, scope: !149)
!946 = !DILocation(line: 35, column: 14, scope: !149)
!947 = !DILocation(line: 36, column: 5, scope: !149)
!948 = !DILocation(line: 36, column: 14, scope: !149)
!949 = !DILocation(line: 37, column: 5, scope: !149)
!950 = !DILocation(line: 37, column: 14, scope: !149)
!951 = !DILocation(line: 38, column: 5, scope: !149)
!952 = !DILocation(line: 38, column: 14, scope: !149)
!953 = !DILocation(line: 39, column: 5, scope: !149)
!954 = !DILocation(line: 39, column: 10, scope: !149)
!955 = !DILocation(line: 40, column: 5, scope: !149)
!956 = !DILocation(line: 40, column: 11, scope: !149)
!957 = !DILocation(line: 41, column: 5, scope: !149)
!958 = !DILocation(line: 41, column: 27, scope: !149)
!959 = !DILocation(line: 42, column: 5, scope: !149)
!960 = !DILocation(line: 42, column: 27, scope: !149)
!961 = !DILocation(line: 43, column: 5, scope: !149)
!962 = !DILocation(line: 43, column: 9, scope: !149)
!963 = !DILocation(line: 44, column: 5, scope: !149)
!964 = !DILocation(line: 44, column: 20, scope: !149)
!965 = !DILocation(line: 45, column: 5, scope: !149)
!966 = !DILocation(line: 45, column: 20, scope: !149)
!967 = !DILocation(line: 93, column: 14, scope: !968)
!968 = distinct !DILexicalBlock(scope: !149, file: !150, line: 93, column: 5)
!969 = !DILocation(line: 93, column: 10, scope: !968)
!970 = !DILocation(line: 93, column: 19, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !150, line: 93, column: 5)
!972 = !DILocation(line: 93, column: 23, scope: !971)
!973 = !DILocation(line: 93, column: 5, scope: !968)
!974 = !DILocation(line: 94, column: 15, scope: !971)
!975 = !DILocation(line: 94, column: 9, scope: !971)
!976 = !DILocation(line: 94, column: 20, scope: !971)
!977 = !DILocation(line: 93, column: 38, scope: !971)
!978 = !DILocation(line: 93, column: 5, scope: !971)
!979 = distinct !{!979, !973, !980, !981, !982}
!980 = !DILocation(line: 94, column: 22, scope: !968)
!981 = !{!"llvm.loop.mustprogress"}
!982 = !{!"llvm.loop.unroll.disable"}
!983 = !DILocation(line: 95, column: 14, scope: !984)
!984 = distinct !DILexicalBlock(scope: !149, file: !150, line: 95, column: 5)
!985 = !DILocation(line: 95, column: 10, scope: !984)
!986 = !DILocation(line: 95, column: 19, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !150, line: 95, column: 5)
!988 = !DILocation(line: 95, column: 25, scope: !987)
!989 = !DILocation(line: 95, column: 23, scope: !987)
!990 = !DILocation(line: 95, column: 5, scope: !984)
!991 = !DILocation(line: 96, column: 15, scope: !987)
!992 = !DILocation(line: 96, column: 20, scope: !987)
!993 = !DILocation(line: 96, column: 9, scope: !987)
!994 = !DILocation(line: 96, column: 25, scope: !987)
!995 = !DILocation(line: 95, column: 35, scope: !987)
!996 = !DILocation(line: 95, column: 5, scope: !987)
!997 = distinct !{!997, !990, !998, !981, !982}
!998 = !DILocation(line: 96, column: 25, scope: !984)
!999 = !DILocation(line: 99, column: 13, scope: !149)
!1000 = !DILocation(line: 99, column: 12, scope: !149)
!1001 = !DILocation(line: 99, column: 10, scope: !149)
!1002 = !DILocation(line: 100, column: 14, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !149, file: !150, line: 100, column: 5)
!1004 = !DILocation(line: 100, column: 10, scope: !1003)
!1005 = !DILocation(line: 100, column: 25, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !150, line: 100, column: 5)
!1007 = !DILocation(line: 100, column: 29, scope: !1006)
!1008 = !DILocation(line: 100, column: 5, scope: !1003)
!1009 = !DILocation(line: 101, column: 19, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !150, line: 101, column: 13)
!1011 = !DILocation(line: 101, column: 13, scope: !1010)
!1012 = !DILocation(line: 101, column: 24, scope: !1010)
!1013 = !DILocation(line: 101, column: 13, scope: !1006)
!1014 = !DILocation(line: 101, column: 30, scope: !1010)
!1015 = !DILocation(line: 101, column: 27, scope: !1010)
!1016 = !DILocation(line: 100, column: 38, scope: !1006)
!1017 = !DILocation(line: 100, column: 5, scope: !1006)
!1018 = distinct !{!1018, !1008, !1019, !981, !982}
!1019 = !DILocation(line: 101, column: 30, scope: !1003)
!1020 = !DILocation(line: 102, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !149, file: !150, line: 102, column: 9)
!1022 = !DILocation(line: 102, column: 16, scope: !1021)
!1023 = !DILocation(line: 102, column: 14, scope: !1021)
!1024 = !DILocation(line: 102, column: 9, scope: !149)
!1025 = !DILocation(line: 102, column: 28, scope: !1021)
!1026 = !DILocation(line: 102, column: 26, scope: !1021)
!1027 = !DILocation(line: 102, column: 21, scope: !1021)
!1028 = !DILocation(line: 103, column: 9, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !149, file: !150, line: 103, column: 9)
!1030 = !DILocation(line: 103, column: 13, scope: !1029)
!1031 = !DILocation(line: 103, column: 9, scope: !149)
!1032 = !DILocation(line: 104, column: 14, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !150, line: 103, column: 19)
!1034 = !DILocation(line: 104, column: 17, scope: !1033)
!1035 = !DILocation(line: 105, column: 14, scope: !1033)
!1036 = !DILocation(line: 105, column: 19, scope: !1033)
!1037 = !DILocation(line: 106, column: 14, scope: !1033)
!1038 = !DILocation(line: 106, column: 18, scope: !1033)
!1039 = !DILocation(line: 107, column: 12, scope: !1033)
!1040 = !DILocation(line: 107, column: 18, scope: !1033)
!1041 = !DILocation(line: 107, column: 23, scope: !1033)
!1042 = !DILocation(line: 108, column: 12, scope: !1033)
!1043 = !DILocation(line: 108, column: 18, scope: !1033)
!1044 = !DILocation(line: 108, column: 23, scope: !1033)
!1045 = !DILocation(line: 109, column: 10, scope: !1033)
!1046 = !DILocation(line: 109, column: 15, scope: !1033)
!1047 = !DILocation(line: 110, column: 9, scope: !1033)
!1048 = !DILocation(line: 112, column: 14, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !149, file: !150, line: 112, column: 5)
!1050 = !DILocation(line: 112, column: 10, scope: !1049)
!1051 = !DILocation(line: 112, column: 19, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !150, line: 112, column: 5)
!1053 = !DILocation(line: 112, column: 23, scope: !1052)
!1054 = !DILocation(line: 112, column: 5, scope: !1049)
!1055 = !DILocation(line: 113, column: 19, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !150, line: 113, column: 13)
!1057 = !DILocation(line: 113, column: 13, scope: !1056)
!1058 = !DILocation(line: 113, column: 24, scope: !1056)
!1059 = !DILocation(line: 113, column: 13, scope: !1052)
!1060 = !DILocation(line: 113, column: 30, scope: !1056)
!1061 = !DILocation(line: 113, column: 27, scope: !1056)
!1062 = !DILocation(line: 112, column: 37, scope: !1052)
!1063 = !DILocation(line: 112, column: 5, scope: !1052)
!1064 = distinct !{!1064, !1054, !1065, !981, !982}
!1065 = !DILocation(line: 113, column: 30, scope: !1049)
!1066 = !DILocation(line: 114, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !149, file: !150, line: 114, column: 9)
!1068 = !DILocation(line: 114, column: 16, scope: !1067)
!1069 = !DILocation(line: 114, column: 14, scope: !1067)
!1070 = !DILocation(line: 114, column: 9, scope: !149)
!1071 = !DILocation(line: 114, column: 28, scope: !1067)
!1072 = !DILocation(line: 114, column: 26, scope: !1067)
!1073 = !DILocation(line: 114, column: 21, scope: !1067)
!1074 = !DILocation(line: 117, column: 10, scope: !149)
!1075 = !DILocation(line: 118, column: 14, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !149, file: !150, line: 118, column: 5)
!1077 = !DILocation(line: 118, column: 10, scope: !1076)
!1078 = !DILocation(line: 118, column: 19, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !150, line: 118, column: 5)
!1080 = !DILocation(line: 118, column: 23, scope: !1079)
!1081 = !DILocation(line: 118, column: 5, scope: !1076)
!1082 = !DILocation(line: 119, column: 14, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !150, line: 118, column: 42)
!1084 = !DILocation(line: 120, column: 23, scope: !1083)
!1085 = !DILocation(line: 120, column: 17, scope: !1083)
!1086 = !DILocation(line: 120, column: 14, scope: !1083)
!1087 = !DILocation(line: 121, column: 13, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !150, line: 121, column: 13)
!1089 = !DILocation(line: 121, column: 18, scope: !1088)
!1090 = !DILocation(line: 121, column: 13, scope: !1083)
!1091 = !DILocation(line: 121, column: 23, scope: !1088)
!1092 = !DILocation(line: 122, column: 5, scope: !1083)
!1093 = !DILocation(line: 118, column: 38, scope: !1079)
!1094 = !DILocation(line: 118, column: 5, scope: !1079)
!1095 = distinct !{!1095, !1081, !1096, !981, !982}
!1096 = !DILocation(line: 122, column: 5, scope: !1076)
!1097 = !DILocation(line: 123, column: 9, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !149, file: !150, line: 123, column: 9)
!1099 = !DILocation(line: 123, column: 14, scope: !1098)
!1100 = !DILocation(line: 123, column: 18, scope: !1098)
!1101 = !DILocation(line: 123, column: 22, scope: !1098)
!1102 = !DILocation(line: 123, column: 27, scope: !1098)
!1103 = !DILocation(line: 123, column: 36, scope: !1098)
!1104 = !DILocation(line: 123, column: 39, scope: !1098)
!1105 = !DILocation(line: 123, column: 43, scope: !1098)
!1106 = !DILocation(line: 123, column: 9, scope: !149)
!1107 = !DILocation(line: 124, column: 9, scope: !1098)
!1108 = !DILocation(line: 127, column: 5, scope: !149)
!1109 = !DILocation(line: 127, column: 13, scope: !149)
!1110 = !DILocation(line: 128, column: 14, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !149, file: !150, line: 128, column: 5)
!1112 = !DILocation(line: 128, column: 10, scope: !1111)
!1113 = !DILocation(line: 128, column: 19, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !150, line: 128, column: 5)
!1115 = !DILocation(line: 128, column: 23, scope: !1114)
!1116 = !DILocation(line: 128, column: 5, scope: !1111)
!1117 = !DILocation(line: 129, column: 30, scope: !1114)
!1118 = !DILocation(line: 129, column: 25, scope: !1114)
!1119 = !DILocation(line: 129, column: 43, scope: !1114)
!1120 = !DILocation(line: 129, column: 37, scope: !1114)
!1121 = !DILocation(line: 129, column: 35, scope: !1114)
!1122 = !DILocation(line: 129, column: 14, scope: !1114)
!1123 = !DILocation(line: 129, column: 18, scope: !1114)
!1124 = !DILocation(line: 129, column: 9, scope: !1114)
!1125 = !DILocation(line: 129, column: 23, scope: !1114)
!1126 = !DILocation(line: 128, column: 37, scope: !1114)
!1127 = !DILocation(line: 128, column: 5, scope: !1114)
!1128 = distinct !{!1128, !1116, !1129, !981, !982}
!1129 = !DILocation(line: 129, column: 46, scope: !1111)
!1130 = !DILocation(line: 132, column: 14, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !149, file: !150, line: 132, column: 5)
!1132 = !DILocation(line: 132, column: 10, scope: !1131)
!1133 = !DILocation(line: 132, column: 19, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !150, line: 132, column: 5)
!1135 = !DILocation(line: 132, column: 25, scope: !1134)
!1136 = !DILocation(line: 132, column: 23, scope: !1134)
!1137 = !DILocation(line: 132, column: 5, scope: !1131)
!1138 = !DILocation(line: 133, column: 13, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !150, line: 133, column: 13)
!1140 = !DILocation(line: 133, column: 18, scope: !1139)
!1141 = !DILocation(line: 133, column: 23, scope: !1139)
!1142 = !DILocation(line: 133, column: 13, scope: !1134)
!1143 = !DILocation(line: 133, column: 71, scope: !1139)
!1144 = !DILocation(line: 133, column: 55, scope: !1139)
!1145 = !DILocation(line: 133, column: 29, scope: !1139)
!1146 = !DILocation(line: 133, column: 39, scope: !1139)
!1147 = !DILocation(line: 133, column: 44, scope: !1139)
!1148 = !DILocation(line: 133, column: 34, scope: !1139)
!1149 = !DILocation(line: 133, column: 49, scope: !1139)
!1150 = !DILocation(line: 133, column: 53, scope: !1139)
!1151 = !DILocation(line: 133, column: 26, scope: !1139)
!1152 = !DILocation(line: 132, column: 35, scope: !1134)
!1153 = !DILocation(line: 132, column: 5, scope: !1134)
!1154 = distinct !{!1154, !1137, !1155, !981, !982}
!1155 = !DILocation(line: 133, column: 71, scope: !1131)
!1156 = !DILocation(line: 168, column: 13, scope: !149)
!1157 = !DILocation(line: 168, column: 5, scope: !149)
!1158 = !DILocation(line: 170, column: 24, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !149, file: !150, line: 168, column: 19)
!1160 = !DILocation(line: 170, column: 22, scope: !1159)
!1161 = !DILocation(line: 170, column: 14, scope: !1159)
!1162 = !DILocation(line: 171, column: 13, scope: !1159)
!1163 = !DILocation(line: 172, column: 9, scope: !1159)
!1164 = !DILocation(line: 174, column: 14, scope: !1159)
!1165 = !DILocation(line: 175, column: 14, scope: !1159)
!1166 = !DILocation(line: 176, column: 15, scope: !1159)
!1167 = !DILocation(line: 177, column: 15, scope: !1159)
!1168 = !DILocation(line: 178, column: 13, scope: !1159)
!1169 = !DILocation(line: 179, column: 9, scope: !1159)
!1170 = !DILocation(line: 181, column: 14, scope: !1159)
!1171 = !DILocation(line: 182, column: 15, scope: !1159)
!1172 = !DILocation(line: 183, column: 13, scope: !1159)
!1173 = !DILocation(line: 184, column: 5, scope: !1159)
!1174 = !DILocation(line: 187, column: 10, scope: !149)
!1175 = !DILocation(line: 188, column: 9, scope: !149)
!1176 = !DILocation(line: 189, column: 11, scope: !149)
!1177 = !DILocation(line: 189, column: 9, scope: !149)
!1178 = !DILocation(line: 190, column: 13, scope: !149)
!1179 = !DILocation(line: 190, column: 12, scope: !149)
!1180 = !DILocation(line: 190, column: 10, scope: !149)
!1181 = !DILocation(line: 191, column: 12, scope: !149)
!1182 = !DILocation(line: 191, column: 10, scope: !149)
!1183 = !DILocation(line: 192, column: 10, scope: !149)
!1184 = !DILocation(line: 193, column: 9, scope: !149)
!1185 = !DILocation(line: 194, column: 18, scope: !149)
!1186 = !DILocation(line: 194, column: 15, scope: !149)
!1187 = !DILocation(line: 194, column: 10, scope: !149)
!1188 = !DILocation(line: 195, column: 12, scope: !149)
!1189 = !DILocation(line: 195, column: 17, scope: !149)
!1190 = !DILocation(line: 195, column: 10, scope: !149)
!1191 = !DILocation(line: 198, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !149, file: !150, line: 198, column: 9)
!1193 = !DILocation(line: 198, column: 14, scope: !1192)
!1194 = !DILocation(line: 198, column: 22, scope: !1192)
!1195 = !DILocation(line: 198, column: 25, scope: !1192)
!1196 = !DILocation(line: 198, column: 30, scope: !1192)
!1197 = !DILocation(line: 198, column: 9, scope: !149)
!1198 = !DILocation(line: 199, column: 9, scope: !1192)
!1199 = !DILocation(line: 202, column: 5, scope: !149)
!1200 = !DILocation(line: 204, column: 37, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !150, line: 202, column: 14)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !150, line: 202, column: 5)
!1203 = distinct !DILexicalBlock(scope: !149, file: !150, line: 202, column: 5)
!1204 = !DILocation(line: 204, column: 43, scope: !1201)
!1205 = !DILocation(line: 204, column: 41, scope: !1201)
!1206 = !DILocation(line: 204, column: 21, scope: !1201)
!1207 = !DILocation(line: 204, column: 14, scope: !1201)
!1208 = !DILocation(line: 204, column: 19, scope: !1201)
!1209 = !DILocation(line: 205, column: 19, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1201, file: !150, line: 205, column: 13)
!1211 = !DILocation(line: 205, column: 24, scope: !1210)
!1212 = !DILocation(line: 205, column: 13, scope: !1210)
!1213 = !DILocation(line: 205, column: 32, scope: !1210)
!1214 = !DILocation(line: 205, column: 30, scope: !1210)
!1215 = !DILocation(line: 205, column: 13, scope: !1201)
!1216 = !DILocation(line: 206, column: 18, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1210, file: !150, line: 205, column: 37)
!1218 = !DILocation(line: 206, column: 21, scope: !1217)
!1219 = !DILocation(line: 207, column: 24, scope: !1217)
!1220 = !DILocation(line: 207, column: 29, scope: !1217)
!1221 = !DILocation(line: 207, column: 18, scope: !1217)
!1222 = !DILocation(line: 207, column: 22, scope: !1217)
!1223 = !DILocation(line: 208, column: 9, scope: !1217)
!1224 = !DILocation(line: 209, column: 24, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1210, file: !150, line: 209, column: 18)
!1226 = !DILocation(line: 209, column: 29, scope: !1225)
!1227 = !DILocation(line: 209, column: 18, scope: !1225)
!1228 = !DILocation(line: 209, column: 37, scope: !1225)
!1229 = !DILocation(line: 209, column: 35, scope: !1225)
!1230 = !DILocation(line: 209, column: 18, scope: !1210)
!1231 = !DILocation(line: 210, column: 39, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1225, file: !150, line: 209, column: 42)
!1233 = !DILocation(line: 210, column: 45, scope: !1232)
!1234 = !DILocation(line: 210, column: 50, scope: !1232)
!1235 = !DILocation(line: 210, column: 23, scope: !1232)
!1236 = !DILocation(line: 210, column: 18, scope: !1232)
!1237 = !DILocation(line: 210, column: 21, scope: !1232)
!1238 = !DILocation(line: 211, column: 24, scope: !1232)
!1239 = !DILocation(line: 211, column: 29, scope: !1232)
!1240 = !DILocation(line: 211, column: 34, scope: !1232)
!1241 = !DILocation(line: 211, column: 18, scope: !1232)
!1242 = !DILocation(line: 211, column: 22, scope: !1232)
!1243 = !DILocation(line: 212, column: 9, scope: !1232)
!1244 = !DILocation(line: 214, column: 18, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1225, file: !150, line: 213, column: 14)
!1246 = !DILocation(line: 214, column: 21, scope: !1245)
!1247 = !DILocation(line: 215, column: 18, scope: !1245)
!1248 = !DILocation(line: 215, column: 22, scope: !1245)
!1249 = !DILocation(line: 219, column: 23, scope: !1201)
!1250 = !DILocation(line: 219, column: 29, scope: !1201)
!1251 = !DILocation(line: 219, column: 27, scope: !1201)
!1252 = !DILocation(line: 219, column: 19, scope: !1201)
!1253 = !DILocation(line: 219, column: 14, scope: !1201)
!1254 = !DILocation(line: 220, column: 22, scope: !1201)
!1255 = !DILocation(line: 220, column: 19, scope: !1201)
!1256 = !DILocation(line: 220, column: 14, scope: !1201)
!1257 = !DILocation(line: 221, column: 15, scope: !1201)
!1258 = !DILocation(line: 221, column: 13, scope: !1201)
!1259 = !DILocation(line: 222, column: 9, scope: !1201)
!1260 = !DILocation(line: 223, column: 21, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1201, file: !150, line: 222, column: 12)
!1262 = !DILocation(line: 223, column: 18, scope: !1261)
!1263 = !DILocation(line: 224, column: 13, scope: !1261)
!1264 = !DILocation(line: 224, column: 19, scope: !1261)
!1265 = !DILocation(line: 224, column: 27, scope: !1261)
!1266 = !DILocation(line: 224, column: 24, scope: !1261)
!1267 = !DILocation(line: 224, column: 35, scope: !1261)
!1268 = !DILocation(line: 224, column: 33, scope: !1261)
!1269 = !DILocation(line: 224, column: 43, scope: !1261)
!1270 = !DILocation(line: 225, column: 9, scope: !1261)
!1271 = !DILocation(line: 225, column: 18, scope: !1201)
!1272 = !DILocation(line: 225, column: 23, scope: !1201)
!1273 = distinct !{!1273, !1259, !1274, !981, !982}
!1274 = !DILocation(line: 225, column: 27, scope: !1201)
!1275 = !DILocation(line: 228, column: 23, scope: !1201)
!1276 = !DILocation(line: 228, column: 27, scope: !1201)
!1277 = !DILocation(line: 228, column: 19, scope: !1201)
!1278 = !DILocation(line: 228, column: 14, scope: !1201)
!1279 = !DILocation(line: 229, column: 9, scope: !1201)
!1280 = !DILocation(line: 229, column: 16, scope: !1201)
!1281 = !DILocation(line: 229, column: 23, scope: !1201)
!1282 = !DILocation(line: 229, column: 21, scope: !1201)
!1283 = !DILocation(line: 230, column: 18, scope: !1201)
!1284 = distinct !{!1284, !1279, !1285, !981, !982}
!1285 = !DILocation(line: 230, column: 22, scope: !1201)
!1286 = !DILocation(line: 231, column: 13, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1201, file: !150, line: 231, column: 13)
!1288 = !DILocation(line: 231, column: 18, scope: !1287)
!1289 = !DILocation(line: 231, column: 13, scope: !1201)
!1290 = !DILocation(line: 232, column: 21, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !150, line: 231, column: 24)
!1292 = !DILocation(line: 232, column: 26, scope: !1291)
!1293 = !DILocation(line: 232, column: 18, scope: !1291)
!1294 = !DILocation(line: 233, column: 21, scope: !1291)
!1295 = !DILocation(line: 233, column: 18, scope: !1291)
!1296 = !DILocation(line: 234, column: 9, scope: !1291)
!1297 = !DILocation(line: 236, column: 18, scope: !1287)
!1298 = !DILocation(line: 239, column: 12, scope: !1201)
!1299 = !DILocation(line: 240, column: 22, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1201, file: !150, line: 240, column: 13)
!1301 = !DILocation(line: 240, column: 16, scope: !1300)
!1302 = !DILocation(line: 240, column: 13, scope: !1300)
!1303 = !DILocation(line: 240, column: 28, scope: !1300)
!1304 = !DILocation(line: 240, column: 13, scope: !1201)
!1305 = !DILocation(line: 241, column: 17, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !150, line: 241, column: 17)
!1307 = distinct !DILexicalBlock(scope: !1300, file: !150, line: 240, column: 34)
!1308 = !DILocation(line: 241, column: 24, scope: !1306)
!1309 = !DILocation(line: 241, column: 21, scope: !1306)
!1310 = !DILocation(line: 241, column: 17, scope: !1307)
!1311 = !DILocation(line: 241, column: 29, scope: !1306)
!1312 = !DILocation(line: 242, column: 19, scope: !1307)
!1313 = !DILocation(line: 242, column: 24, scope: !1307)
!1314 = !DILocation(line: 242, column: 29, scope: !1307)
!1315 = !DILocation(line: 242, column: 17, scope: !1307)
!1316 = !DILocation(line: 243, column: 9, scope: !1307)
!1317 = !DILocation(line: 246, column: 13, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1201, file: !150, line: 246, column: 13)
!1319 = !DILocation(line: 246, column: 19, scope: !1318)
!1320 = !DILocation(line: 246, column: 17, scope: !1318)
!1321 = !DILocation(line: 246, column: 24, scope: !1318)
!1322 = !DILocation(line: 246, column: 28, scope: !1318)
!1323 = !DILocation(line: 246, column: 35, scope: !1318)
!1324 = !DILocation(line: 246, column: 33, scope: !1318)
!1325 = !DILocation(line: 246, column: 44, scope: !1318)
!1326 = !DILocation(line: 246, column: 41, scope: !1318)
!1327 = !DILocation(line: 246, column: 13, scope: !1201)
!1328 = !DILocation(line: 248, column: 17, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !150, line: 248, column: 17)
!1330 = distinct !DILexicalBlock(scope: !1318, file: !150, line: 246, column: 49)
!1331 = !DILocation(line: 248, column: 22, scope: !1329)
!1332 = !DILocation(line: 248, column: 17, scope: !1330)
!1333 = !DILocation(line: 249, column: 24, scope: !1329)
!1334 = !DILocation(line: 249, column: 22, scope: !1329)
!1335 = !DILocation(line: 249, column: 17, scope: !1329)
!1336 = !DILocation(line: 252, column: 21, scope: !1330)
!1337 = !DILocation(line: 252, column: 18, scope: !1330)
!1338 = !DILocation(line: 255, column: 20, scope: !1330)
!1339 = !DILocation(line: 255, column: 26, scope: !1330)
!1340 = !DILocation(line: 255, column: 24, scope: !1330)
!1341 = !DILocation(line: 255, column: 18, scope: !1330)
!1342 = !DILocation(line: 256, column: 31, scope: !1330)
!1343 = !DILocation(line: 256, column: 28, scope: !1330)
!1344 = !DILocation(line: 256, column: 18, scope: !1330)
!1345 = !DILocation(line: 257, column: 13, scope: !1330)
!1346 = !DILocation(line: 257, column: 20, scope: !1330)
!1347 = !DILocation(line: 257, column: 27, scope: !1330)
!1348 = !DILocation(line: 257, column: 25, scope: !1330)
!1349 = !DILocation(line: 257, column: 34, scope: !1330)
!1350 = !DILocation(line: 257, column: 32, scope: !1330)
!1351 = !DILocation(line: 258, column: 31, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1330, file: !150, line: 257, column: 39)
!1353 = !DILocation(line: 258, column: 38, scope: !1352)
!1354 = !DILocation(line: 258, column: 36, scope: !1352)
!1355 = !DILocation(line: 258, column: 25, scope: !1352)
!1356 = !DILocation(line: 258, column: 22, scope: !1352)
!1357 = !DILocation(line: 259, column: 21, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1352, file: !150, line: 259, column: 21)
!1359 = !DILocation(line: 259, column: 26, scope: !1358)
!1360 = !DILocation(line: 259, column: 21, scope: !1352)
!1361 = !DILocation(line: 259, column: 32, scope: !1358)
!1362 = !DILocation(line: 260, column: 21, scope: !1352)
!1363 = !DILocation(line: 261, column: 22, scope: !1352)
!1364 = distinct !{!1364, !1345, !1365, !981, !982}
!1365 = !DILocation(line: 262, column: 13, scope: !1330)
!1366 = !DILocation(line: 265, column: 27, scope: !1330)
!1367 = !DILocation(line: 265, column: 24, scope: !1330)
!1368 = !DILocation(line: 265, column: 18, scope: !1330)
!1369 = !DILocation(line: 266, column: 17, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1330, file: !150, line: 266, column: 17)
!1371 = !DILocation(line: 266, column: 22, scope: !1370)
!1372 = !DILocation(line: 266, column: 30, scope: !1370)
!1373 = !DILocation(line: 266, column: 33, scope: !1370)
!1374 = !DILocation(line: 266, column: 38, scope: !1370)
!1375 = !DILocation(line: 266, column: 17, scope: !1330)
!1376 = !DILocation(line: 267, column: 17, scope: !1370)
!1377 = !DILocation(line: 270, column: 19, scope: !1330)
!1378 = !DILocation(line: 270, column: 26, scope: !1330)
!1379 = !DILocation(line: 270, column: 24, scope: !1330)
!1380 = !DILocation(line: 270, column: 17, scope: !1330)
!1381 = !DILocation(line: 271, column: 47, scope: !1330)
!1382 = !DILocation(line: 271, column: 32, scope: !1330)
!1383 = !DILocation(line: 271, column: 15, scope: !1330)
!1384 = !DILocation(line: 271, column: 14, scope: !1330)
!1385 = !DILocation(line: 271, column: 22, scope: !1330)
!1386 = !DILocation(line: 271, column: 13, scope: !1330)
!1387 = !DILocation(line: 271, column: 27, scope: !1330)
!1388 = !DILocation(line: 271, column: 30, scope: !1330)
!1389 = !DILocation(line: 272, column: 49, scope: !1330)
!1390 = !DILocation(line: 272, column: 34, scope: !1330)
!1391 = !DILocation(line: 272, column: 15, scope: !1330)
!1392 = !DILocation(line: 272, column: 14, scope: !1330)
!1393 = !DILocation(line: 272, column: 22, scope: !1330)
!1394 = !DILocation(line: 272, column: 13, scope: !1330)
!1395 = !DILocation(line: 272, column: 27, scope: !1330)
!1396 = !DILocation(line: 272, column: 32, scope: !1330)
!1397 = !DILocation(line: 273, column: 50, scope: !1330)
!1398 = !DILocation(line: 273, column: 58, scope: !1330)
!1399 = !DILocation(line: 273, column: 57, scope: !1330)
!1400 = !DILocation(line: 273, column: 55, scope: !1330)
!1401 = !DILocation(line: 273, column: 33, scope: !1330)
!1402 = !DILocation(line: 273, column: 15, scope: !1330)
!1403 = !DILocation(line: 273, column: 14, scope: !1330)
!1404 = !DILocation(line: 273, column: 22, scope: !1330)
!1405 = !DILocation(line: 273, column: 13, scope: !1330)
!1406 = !DILocation(line: 273, column: 27, scope: !1330)
!1407 = !DILocation(line: 273, column: 31, scope: !1330)
!1408 = !DILocation(line: 274, column: 9, scope: !1330)
!1409 = !DILocation(line: 202, column: 5, scope: !1202)
!1410 = distinct !{!1410, !1411, !1412, !982}
!1411 = !DILocation(line: 202, column: 5, scope: !1203)
!1412 = !DILocation(line: 275, column: 5, scope: !1203)
!1413 = !DILocation(line: 284, column: 10, scope: !149)
!1414 = !DILocation(line: 284, column: 13, scope: !149)
!1415 = !DILocation(line: 285, column: 33, scope: !149)
!1416 = !DILocation(line: 285, column: 39, scope: !149)
!1417 = !DILocation(line: 285, column: 37, scope: !149)
!1418 = !DILocation(line: 285, column: 17, scope: !149)
!1419 = !DILocation(line: 285, column: 10, scope: !149)
!1420 = !DILocation(line: 285, column: 15, scope: !149)
!1421 = !DILocation(line: 286, column: 10, scope: !149)
!1422 = !DILocation(line: 286, column: 14, scope: !149)
!1423 = !DILocation(line: 287, column: 5, scope: !149)
!1424 = !DILocation(line: 287, column: 12, scope: !149)
!1425 = !DILocation(line: 287, column: 17, scope: !149)
!1426 = !DILocation(line: 289, column: 13, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !150, line: 289, column: 13)
!1428 = distinct !DILexicalBlock(scope: !149, file: !150, line: 287, column: 23)
!1429 = !DILocation(line: 289, column: 18, scope: !1427)
!1430 = !DILocation(line: 289, column: 23, scope: !1427)
!1431 = !DILocation(line: 289, column: 27, scope: !1427)
!1432 = !DILocation(line: 289, column: 34, scope: !1427)
!1433 = !DILocation(line: 289, column: 32, scope: !1427)
!1434 = !DILocation(line: 289, column: 43, scope: !1427)
!1435 = !DILocation(line: 289, column: 40, scope: !1427)
!1436 = !DILocation(line: 289, column: 13, scope: !1428)
!1437 = !DILocation(line: 290, column: 18, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1427, file: !150, line: 289, column: 48)
!1439 = !DILocation(line: 291, column: 19, scope: !1438)
!1440 = !DILocation(line: 291, column: 17, scope: !1438)
!1441 = !DILocation(line: 292, column: 21, scope: !1438)
!1442 = !DILocation(line: 292, column: 20, scope: !1438)
!1443 = !DILocation(line: 292, column: 18, scope: !1438)
!1444 = !DILocation(line: 293, column: 40, scope: !1438)
!1445 = !DILocation(line: 293, column: 25, scope: !1438)
!1446 = !DILocation(line: 293, column: 18, scope: !1438)
!1447 = !DILocation(line: 293, column: 23, scope: !1438)
!1448 = !DILocation(line: 294, column: 9, scope: !1438)
!1449 = !DILocation(line: 297, column: 9, scope: !1428)
!1450 = !DILocation(line: 297, column: 14, scope: !1428)
!1451 = !DILocation(line: 297, column: 22, scope: !1428)
!1452 = !DILocation(line: 297, column: 19, scope: !1428)
!1453 = !DILocation(line: 297, column: 30, scope: !1428)
!1454 = !DILocation(line: 300, column: 23, scope: !1428)
!1455 = !DILocation(line: 300, column: 27, scope: !1428)
!1456 = !DILocation(line: 300, column: 19, scope: !1428)
!1457 = !DILocation(line: 300, column: 14, scope: !1428)
!1458 = !DILocation(line: 301, column: 9, scope: !1428)
!1459 = !DILocation(line: 301, column: 16, scope: !1428)
!1460 = !DILocation(line: 301, column: 23, scope: !1428)
!1461 = !DILocation(line: 301, column: 21, scope: !1428)
!1462 = !DILocation(line: 302, column: 18, scope: !1428)
!1463 = distinct !{!1463, !1458, !1464, !981, !982}
!1464 = !DILocation(line: 302, column: 22, scope: !1428)
!1465 = !DILocation(line: 303, column: 13, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1428, file: !150, line: 303, column: 13)
!1467 = !DILocation(line: 303, column: 18, scope: !1466)
!1468 = !DILocation(line: 303, column: 13, scope: !1428)
!1469 = !DILocation(line: 304, column: 21, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !150, line: 303, column: 24)
!1471 = !DILocation(line: 304, column: 26, scope: !1470)
!1472 = !DILocation(line: 304, column: 18, scope: !1470)
!1473 = !DILocation(line: 305, column: 21, scope: !1470)
!1474 = !DILocation(line: 305, column: 18, scope: !1470)
!1475 = !DILocation(line: 306, column: 9, scope: !1470)
!1476 = !DILocation(line: 308, column: 18, scope: !1466)
!1477 = distinct !{!1477, !1423, !1478, !981, !982}
!1478 = !DILocation(line: 309, column: 5, scope: !149)
!1479 = !DILocation(line: 312, column: 15, scope: !149)
!1480 = !DILocation(line: 312, column: 6, scope: !149)
!1481 = !DILocation(line: 312, column: 12, scope: !149)
!1482 = !DILocation(line: 313, column: 13, scope: !149)
!1483 = !DILocation(line: 313, column: 6, scope: !149)
!1484 = !DILocation(line: 313, column: 11, scope: !149)
!1485 = !DILocation(line: 314, column: 5, scope: !149)
!1486 = !DILocation(line: 315, column: 1, scope: !149)
!1487 = distinct !DISubprogram(name: "inflate_fast", scope: !203, file: !203, line: 67, type: !1488, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !223, !7}
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1516, !1520, !1525, !1526, !1529, !1531}
!1491 = !DILocalVariable(name: "strm", arg: 1, scope: !1487, file: !203, line: 67, type: !223)
!1492 = !DILocalVariable(name: "start", arg: 2, scope: !1487, file: !203, line: 67, type: !7)
!1493 = !DILocalVariable(name: "state", scope: !1487, file: !203, line: 69, type: !55)
!1494 = !DILocalVariable(name: "in", scope: !1487, file: !203, line: 70, type: !251)
!1495 = !DILocalVariable(name: "last", scope: !1487, file: !203, line: 71, type: !251)
!1496 = !DILocalVariable(name: "out", scope: !1487, file: !203, line: 72, type: !73)
!1497 = !DILocalVariable(name: "beg", scope: !1487, file: !203, line: 73, type: !73)
!1498 = !DILocalVariable(name: "end", scope: !1487, file: !203, line: 74, type: !73)
!1499 = !DILocalVariable(name: "wsize", scope: !1487, file: !203, line: 78, type: !7)
!1500 = !DILocalVariable(name: "whave", scope: !1487, file: !203, line: 79, type: !7)
!1501 = !DILocalVariable(name: "write", scope: !1487, file: !203, line: 80, type: !7)
!1502 = !DILocalVariable(name: "window", scope: !1487, file: !203, line: 81, type: !73)
!1503 = !DILocalVariable(name: "hold", scope: !1487, file: !203, line: 82, type: !66)
!1504 = !DILocalVariable(name: "bits", scope: !1487, file: !203, line: 83, type: !7)
!1505 = !DILocalVariable(name: "lcode", scope: !1487, file: !203, line: 84, type: !80)
!1506 = !DILocalVariable(name: "dcode", scope: !1487, file: !203, line: 85, type: !80)
!1507 = !DILocalVariable(name: "lmask", scope: !1487, file: !203, line: 86, type: !7)
!1508 = !DILocalVariable(name: "dmask", scope: !1487, file: !203, line: 87, type: !7)
!1509 = !DILocalVariable(name: "this", scope: !1487, file: !203, line: 88, type: !82)
!1510 = !DILocalVariable(name: "op", scope: !1487, file: !203, line: 89, type: !7)
!1511 = !DILocalVariable(name: "len", scope: !1487, file: !203, line: 91, type: !7)
!1512 = !DILocalVariable(name: "dist", scope: !1487, file: !203, line: 92, type: !7)
!1513 = !DILocalVariable(name: "from", scope: !1487, file: !203, line: 93, type: !73)
!1514 = !DILabel(scope: !1515, name: "dolen", file: !203, line: 126)
!1515 = distinct !DILexicalBlock(scope: !1487, file: !203, line: 118, column: 8)
!1516 = !DILabel(scope: !1517, name: "dodist", file: !203, line: 153)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !203, line: 134, column: 27)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !203, line: 134, column: 18)
!1519 = distinct !DILexicalBlock(scope: !1515, file: !203, line: 131, column: 13)
!1520 = !DILocalVariable(name: "sout", scope: !1521, file: !203, line: 240, type: !112)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !203, line: 239, column: 22)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !203, line: 180, column: 21)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !203, line: 158, column: 26)
!1524 = distinct !DILexicalBlock(scope: !1517, file: !203, line: 158, column: 17)
!1525 = !DILocalVariable(name: "loops", scope: !1521, file: !203, line: 241, type: !66)
!1526 = !DILocalVariable(name: "sfrom", scope: !1527, file: !203, line: 252, type: !112)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !203, line: 251, column: 21)
!1528 = distinct !DILexicalBlock(scope: !1521, file: !203, line: 251, column: 11)
!1529 = !DILocalVariable(name: "pat16", scope: !1530, file: !203, line: 265, type: !53)
!1530 = distinct !DILexicalBlock(scope: !1528, file: !203, line: 264, column: 14)
!1531 = !DILocalVariable(name: "mm", scope: !1532, file: !203, line: 269, type: !1534)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !203, line: 268, column: 19)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !203, line: 268, column: 8)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "uu", file: !203, line: 13, size: 16, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "us", scope: !1534, file: !203, line: 14, baseType: !53, size: 16)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1534, file: !203, line: 15, baseType: !1538, size: 16)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 16, elements: !335)
!1539 = !DILocation(line: 67, column: 29, scope: !1487)
!1540 = !DILocation(line: 67, column: 44, scope: !1487)
!1541 = !DILocation(line: 69, column: 5, scope: !1487)
!1542 = !DILocation(line: 69, column: 27, scope: !1487)
!1543 = !DILocation(line: 70, column: 5, scope: !1487)
!1544 = !DILocation(line: 70, column: 26, scope: !1487)
!1545 = !DILocation(line: 71, column: 5, scope: !1487)
!1546 = !DILocation(line: 71, column: 26, scope: !1487)
!1547 = !DILocation(line: 72, column: 5, scope: !1487)
!1548 = !DILocation(line: 72, column: 20, scope: !1487)
!1549 = !DILocation(line: 73, column: 5, scope: !1487)
!1550 = !DILocation(line: 73, column: 20, scope: !1487)
!1551 = !DILocation(line: 74, column: 5, scope: !1487)
!1552 = !DILocation(line: 74, column: 20, scope: !1487)
!1553 = !DILocation(line: 78, column: 5, scope: !1487)
!1554 = !DILocation(line: 78, column: 14, scope: !1487)
!1555 = !DILocation(line: 79, column: 5, scope: !1487)
!1556 = !DILocation(line: 79, column: 14, scope: !1487)
!1557 = !DILocation(line: 80, column: 5, scope: !1487)
!1558 = !DILocation(line: 80, column: 14, scope: !1487)
!1559 = !DILocation(line: 81, column: 5, scope: !1487)
!1560 = !DILocation(line: 81, column: 20, scope: !1487)
!1561 = !DILocation(line: 82, column: 5, scope: !1487)
!1562 = !DILocation(line: 82, column: 19, scope: !1487)
!1563 = !DILocation(line: 83, column: 5, scope: !1487)
!1564 = !DILocation(line: 83, column: 14, scope: !1487)
!1565 = !DILocation(line: 84, column: 5, scope: !1487)
!1566 = !DILocation(line: 84, column: 17, scope: !1487)
!1567 = !DILocation(line: 85, column: 5, scope: !1487)
!1568 = !DILocation(line: 85, column: 17, scope: !1487)
!1569 = !DILocation(line: 86, column: 5, scope: !1487)
!1570 = !DILocation(line: 86, column: 14, scope: !1487)
!1571 = !DILocation(line: 87, column: 5, scope: !1487)
!1572 = !DILocation(line: 87, column: 14, scope: !1487)
!1573 = !DILocation(line: 88, column: 5, scope: !1487)
!1574 = !DILocation(line: 88, column: 10, scope: !1487)
!1575 = !DILocation(line: 89, column: 5, scope: !1487)
!1576 = !DILocation(line: 89, column: 14, scope: !1487)
!1577 = !DILocation(line: 91, column: 5, scope: !1487)
!1578 = !DILocation(line: 91, column: 14, scope: !1487)
!1579 = !DILocation(line: 92, column: 5, scope: !1487)
!1580 = !DILocation(line: 92, column: 14, scope: !1487)
!1581 = !DILocation(line: 93, column: 5, scope: !1487)
!1582 = !DILocation(line: 93, column: 20, scope: !1487)
!1583 = !DILocation(line: 96, column: 37, scope: !1487)
!1584 = !DILocation(line: 96, column: 43, scope: !1487)
!1585 = !DILocation(line: 96, column: 11, scope: !1487)
!1586 = !DILocation(line: 97, column: 10, scope: !1487)
!1587 = !DILocation(line: 97, column: 16, scope: !1487)
!1588 = !DILocation(line: 97, column: 8, scope: !1487)
!1589 = !DILocation(line: 98, column: 12, scope: !1487)
!1590 = !DILocation(line: 98, column: 18, scope: !1487)
!1591 = !DILocation(line: 98, column: 24, scope: !1487)
!1592 = !DILocation(line: 98, column: 33, scope: !1487)
!1593 = !DILocation(line: 98, column: 15, scope: !1487)
!1594 = !DILocation(line: 98, column: 10, scope: !1487)
!1595 = !DILocation(line: 99, column: 11, scope: !1487)
!1596 = !DILocation(line: 99, column: 17, scope: !1487)
!1597 = !DILocation(line: 99, column: 9, scope: !1487)
!1598 = !DILocation(line: 100, column: 11, scope: !1487)
!1599 = !DILocation(line: 100, column: 18, scope: !1487)
!1600 = !DILocation(line: 100, column: 26, scope: !1487)
!1601 = !DILocation(line: 100, column: 32, scope: !1487)
!1602 = !DILocation(line: 100, column: 24, scope: !1487)
!1603 = !DILocation(line: 100, column: 15, scope: !1487)
!1604 = !DILocation(line: 100, column: 9, scope: !1487)
!1605 = !DILocation(line: 101, column: 11, scope: !1487)
!1606 = !DILocation(line: 101, column: 18, scope: !1487)
!1607 = !DILocation(line: 101, column: 24, scope: !1487)
!1608 = !DILocation(line: 101, column: 34, scope: !1487)
!1609 = !DILocation(line: 101, column: 15, scope: !1487)
!1610 = !DILocation(line: 101, column: 9, scope: !1487)
!1611 = !DILocation(line: 105, column: 13, scope: !1487)
!1612 = !DILocation(line: 105, column: 20, scope: !1487)
!1613 = !DILocation(line: 105, column: 11, scope: !1487)
!1614 = !DILocation(line: 106, column: 13, scope: !1487)
!1615 = !DILocation(line: 106, column: 20, scope: !1487)
!1616 = !DILocation(line: 106, column: 11, scope: !1487)
!1617 = !DILocation(line: 107, column: 13, scope: !1487)
!1618 = !DILocation(line: 107, column: 20, scope: !1487)
!1619 = !DILocation(line: 107, column: 11, scope: !1487)
!1620 = !DILocation(line: 108, column: 14, scope: !1487)
!1621 = !DILocation(line: 108, column: 21, scope: !1487)
!1622 = !DILocation(line: 108, column: 12, scope: !1487)
!1623 = !DILocation(line: 109, column: 12, scope: !1487)
!1624 = !DILocation(line: 109, column: 19, scope: !1487)
!1625 = !DILocation(line: 109, column: 10, scope: !1487)
!1626 = !DILocation(line: 110, column: 12, scope: !1487)
!1627 = !DILocation(line: 110, column: 19, scope: !1487)
!1628 = !DILocation(line: 110, column: 10, scope: !1487)
!1629 = !DILocation(line: 111, column: 13, scope: !1487)
!1630 = !DILocation(line: 111, column: 20, scope: !1487)
!1631 = !DILocation(line: 111, column: 11, scope: !1487)
!1632 = !DILocation(line: 112, column: 13, scope: !1487)
!1633 = !DILocation(line: 112, column: 20, scope: !1487)
!1634 = !DILocation(line: 112, column: 11, scope: !1487)
!1635 = !DILocation(line: 113, column: 20, scope: !1487)
!1636 = !DILocation(line: 113, column: 27, scope: !1487)
!1637 = !DILocation(line: 113, column: 17, scope: !1487)
!1638 = !DILocation(line: 113, column: 36, scope: !1487)
!1639 = !DILocation(line: 113, column: 11, scope: !1487)
!1640 = !DILocation(line: 114, column: 20, scope: !1487)
!1641 = !DILocation(line: 114, column: 27, scope: !1487)
!1642 = !DILocation(line: 114, column: 17, scope: !1487)
!1643 = !DILocation(line: 114, column: 37, scope: !1487)
!1644 = !DILocation(line: 114, column: 11, scope: !1487)
!1645 = !DILocation(line: 118, column: 5, scope: !1487)
!1646 = !DILocation(line: 119, column: 13, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1515, file: !203, line: 119, column: 13)
!1648 = !DILocation(line: 119, column: 18, scope: !1647)
!1649 = !DILocation(line: 119, column: 13, scope: !1515)
!1650 = !DILocation(line: 120, column: 40, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !203, line: 119, column: 24)
!1652 = !DILocation(line: 120, column: 37, scope: !1651)
!1653 = !DILocation(line: 120, column: 21, scope: !1651)
!1654 = !DILocation(line: 120, column: 47, scope: !1651)
!1655 = !DILocation(line: 120, column: 44, scope: !1651)
!1656 = !DILocation(line: 120, column: 18, scope: !1651)
!1657 = !DILocation(line: 121, column: 18, scope: !1651)
!1658 = !DILocation(line: 122, column: 40, scope: !1651)
!1659 = !DILocation(line: 122, column: 37, scope: !1651)
!1660 = !DILocation(line: 122, column: 21, scope: !1651)
!1661 = !DILocation(line: 122, column: 47, scope: !1651)
!1662 = !DILocation(line: 122, column: 44, scope: !1651)
!1663 = !DILocation(line: 122, column: 18, scope: !1651)
!1664 = !DILocation(line: 123, column: 18, scope: !1651)
!1665 = !DILocation(line: 124, column: 9, scope: !1651)
!1666 = !DILocation(line: 125, column: 16, scope: !1515)
!1667 = !DILocation(line: 125, column: 22, scope: !1515)
!1668 = !DILocation(line: 125, column: 29, scope: !1515)
!1669 = !DILocation(line: 125, column: 27, scope: !1515)
!1670 = !DILocation(line: 125, column: 9, scope: !1515)
!1671 = !DILocation(line: 126, column: 7, scope: !1515)
!1672 = !DILocation(line: 127, column: 30, scope: !1515)
!1673 = !DILocation(line: 127, column: 14, scope: !1515)
!1674 = !DILocation(line: 127, column: 12, scope: !1515)
!1675 = !DILocation(line: 128, column: 18, scope: !1515)
!1676 = !DILocation(line: 128, column: 14, scope: !1515)
!1677 = !DILocation(line: 129, column: 17, scope: !1515)
!1678 = !DILocation(line: 129, column: 14, scope: !1515)
!1679 = !DILocation(line: 130, column: 30, scope: !1515)
!1680 = !DILocation(line: 130, column: 14, scope: !1515)
!1681 = !DILocation(line: 130, column: 12, scope: !1515)
!1682 = !DILocation(line: 131, column: 13, scope: !1519)
!1683 = !DILocation(line: 131, column: 16, scope: !1519)
!1684 = !DILocation(line: 131, column: 13, scope: !1515)
!1685 = !DILocation(line: 132, column: 43, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1519, file: !203, line: 131, column: 22)
!1687 = !DILocation(line: 132, column: 22, scope: !1686)
!1688 = !DILocation(line: 132, column: 17, scope: !1686)
!1689 = !DILocation(line: 132, column: 20, scope: !1686)
!1690 = !DILocation(line: 133, column: 9, scope: !1686)
!1691 = !DILocation(line: 134, column: 18, scope: !1518)
!1692 = !DILocation(line: 134, column: 21, scope: !1518)
!1693 = !DILocation(line: 134, column: 18, scope: !1519)
!1694 = !DILocation(line: 135, column: 35, scope: !1517)
!1695 = !DILocation(line: 135, column: 19, scope: !1517)
!1696 = !DILocation(line: 135, column: 17, scope: !1517)
!1697 = !DILocation(line: 136, column: 16, scope: !1517)
!1698 = !DILocation(line: 137, column: 17, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1517, file: !203, line: 137, column: 17)
!1700 = !DILocation(line: 137, column: 17, scope: !1517)
!1701 = !DILocation(line: 138, column: 21, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !203, line: 138, column: 21)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !203, line: 137, column: 21)
!1704 = !DILocation(line: 138, column: 28, scope: !1702)
!1705 = !DILocation(line: 138, column: 26, scope: !1702)
!1706 = !DILocation(line: 138, column: 21, scope: !1703)
!1707 = !DILocation(line: 139, column: 48, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1702, file: !203, line: 138, column: 32)
!1709 = !DILocation(line: 139, column: 45, scope: !1708)
!1710 = !DILocation(line: 139, column: 29, scope: !1708)
!1711 = !DILocation(line: 139, column: 55, scope: !1708)
!1712 = !DILocation(line: 139, column: 52, scope: !1708)
!1713 = !DILocation(line: 139, column: 26, scope: !1708)
!1714 = !DILocation(line: 140, column: 26, scope: !1708)
!1715 = !DILocation(line: 141, column: 17, scope: !1708)
!1716 = !DILocation(line: 142, column: 34, scope: !1703)
!1717 = !DILocation(line: 142, column: 24, scope: !1703)
!1718 = !DILocation(line: 142, column: 49, scope: !1703)
!1719 = !DILocation(line: 142, column: 46, scope: !1703)
!1720 = !DILocation(line: 142, column: 53, scope: !1703)
!1721 = !DILocation(line: 142, column: 39, scope: !1703)
!1722 = !DILocation(line: 142, column: 21, scope: !1703)
!1723 = !DILocation(line: 143, column: 26, scope: !1703)
!1724 = !DILocation(line: 143, column: 22, scope: !1703)
!1725 = !DILocation(line: 144, column: 25, scope: !1703)
!1726 = !DILocation(line: 144, column: 22, scope: !1703)
!1727 = !DILocation(line: 145, column: 13, scope: !1703)
!1728 = !DILocation(line: 146, column: 17, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1517, file: !203, line: 146, column: 17)
!1730 = !DILocation(line: 146, column: 22, scope: !1729)
!1731 = !DILocation(line: 146, column: 17, scope: !1517)
!1732 = !DILocation(line: 147, column: 44, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !203, line: 146, column: 28)
!1734 = !DILocation(line: 147, column: 41, scope: !1733)
!1735 = !DILocation(line: 147, column: 25, scope: !1733)
!1736 = !DILocation(line: 147, column: 51, scope: !1733)
!1737 = !DILocation(line: 147, column: 48, scope: !1733)
!1738 = !DILocation(line: 147, column: 22, scope: !1733)
!1739 = !DILocation(line: 148, column: 22, scope: !1733)
!1740 = !DILocation(line: 149, column: 44, scope: !1733)
!1741 = !DILocation(line: 149, column: 41, scope: !1733)
!1742 = !DILocation(line: 149, column: 25, scope: !1733)
!1743 = !DILocation(line: 149, column: 51, scope: !1733)
!1744 = !DILocation(line: 149, column: 48, scope: !1733)
!1745 = !DILocation(line: 149, column: 22, scope: !1733)
!1746 = !DILocation(line: 150, column: 22, scope: !1733)
!1747 = !DILocation(line: 151, column: 13, scope: !1733)
!1748 = !DILocation(line: 152, column: 20, scope: !1517)
!1749 = !DILocation(line: 152, column: 26, scope: !1517)
!1750 = !DILocation(line: 152, column: 33, scope: !1517)
!1751 = !DILocation(line: 152, column: 31, scope: !1517)
!1752 = !DILocation(line: 152, column: 13, scope: !1517)
!1753 = !DILocation(line: 153, column: 11, scope: !1517)
!1754 = !DILocation(line: 154, column: 34, scope: !1517)
!1755 = !DILocation(line: 154, column: 18, scope: !1517)
!1756 = !DILocation(line: 154, column: 16, scope: !1517)
!1757 = !DILocation(line: 155, column: 22, scope: !1517)
!1758 = !DILocation(line: 155, column: 18, scope: !1517)
!1759 = !DILocation(line: 156, column: 21, scope: !1517)
!1760 = !DILocation(line: 156, column: 18, scope: !1517)
!1761 = !DILocation(line: 157, column: 34, scope: !1517)
!1762 = !DILocation(line: 157, column: 18, scope: !1517)
!1763 = !DILocation(line: 157, column: 16, scope: !1517)
!1764 = !DILocation(line: 158, column: 17, scope: !1524)
!1765 = !DILocation(line: 158, column: 20, scope: !1524)
!1766 = !DILocation(line: 158, column: 17, scope: !1517)
!1767 = !DILocation(line: 159, column: 40, scope: !1523)
!1768 = !DILocation(line: 159, column: 24, scope: !1523)
!1769 = !DILocation(line: 159, column: 22, scope: !1523)
!1770 = !DILocation(line: 160, column: 20, scope: !1523)
!1771 = !DILocation(line: 161, column: 21, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1523, file: !203, line: 161, column: 21)
!1773 = !DILocation(line: 161, column: 28, scope: !1772)
!1774 = !DILocation(line: 161, column: 26, scope: !1772)
!1775 = !DILocation(line: 161, column: 21, scope: !1523)
!1776 = !DILocation(line: 162, column: 48, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !203, line: 161, column: 32)
!1778 = !DILocation(line: 162, column: 45, scope: !1777)
!1779 = !DILocation(line: 162, column: 29, scope: !1777)
!1780 = !DILocation(line: 162, column: 55, scope: !1777)
!1781 = !DILocation(line: 162, column: 52, scope: !1777)
!1782 = !DILocation(line: 162, column: 26, scope: !1777)
!1783 = !DILocation(line: 163, column: 26, scope: !1777)
!1784 = !DILocation(line: 164, column: 25, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1777, file: !203, line: 164, column: 25)
!1786 = !DILocation(line: 164, column: 32, scope: !1785)
!1787 = !DILocation(line: 164, column: 30, scope: !1785)
!1788 = !DILocation(line: 164, column: 25, scope: !1777)
!1789 = !DILocation(line: 165, column: 52, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1785, file: !203, line: 164, column: 36)
!1791 = !DILocation(line: 165, column: 49, scope: !1790)
!1792 = !DILocation(line: 165, column: 33, scope: !1790)
!1793 = !DILocation(line: 165, column: 59, scope: !1790)
!1794 = !DILocation(line: 165, column: 56, scope: !1790)
!1795 = !DILocation(line: 165, column: 30, scope: !1790)
!1796 = !DILocation(line: 166, column: 30, scope: !1790)
!1797 = !DILocation(line: 167, column: 21, scope: !1790)
!1798 = !DILocation(line: 168, column: 17, scope: !1777)
!1799 = !DILocation(line: 169, column: 35, scope: !1523)
!1800 = !DILocation(line: 169, column: 25, scope: !1523)
!1801 = !DILocation(line: 169, column: 50, scope: !1523)
!1802 = !DILocation(line: 169, column: 47, scope: !1523)
!1803 = !DILocation(line: 169, column: 54, scope: !1523)
!1804 = !DILocation(line: 169, column: 40, scope: !1523)
!1805 = !DILocation(line: 169, column: 22, scope: !1523)
!1806 = !DILocation(line: 177, column: 26, scope: !1523)
!1807 = !DILocation(line: 177, column: 22, scope: !1523)
!1808 = !DILocation(line: 178, column: 25, scope: !1523)
!1809 = !DILocation(line: 178, column: 22, scope: !1523)
!1810 = !DILocation(line: 179, column: 33, scope: !1523)
!1811 = !DILocation(line: 179, column: 39, scope: !1523)
!1812 = !DILocation(line: 179, column: 37, scope: !1523)
!1813 = !DILocation(line: 179, column: 22, scope: !1523)
!1814 = !DILocation(line: 179, column: 20, scope: !1523)
!1815 = !DILocation(line: 180, column: 21, scope: !1522)
!1816 = !DILocation(line: 180, column: 28, scope: !1522)
!1817 = !DILocation(line: 180, column: 26, scope: !1522)
!1818 = !DILocation(line: 180, column: 21, scope: !1523)
!1819 = !DILocation(line: 181, column: 26, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1522, file: !203, line: 180, column: 32)
!1821 = !DILocation(line: 181, column: 33, scope: !1820)
!1822 = !DILocation(line: 181, column: 31, scope: !1820)
!1823 = !DILocation(line: 181, column: 24, scope: !1820)
!1824 = !DILocation(line: 182, column: 25, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1820, file: !203, line: 182, column: 25)
!1826 = !DILocation(line: 182, column: 30, scope: !1825)
!1827 = !DILocation(line: 182, column: 28, scope: !1825)
!1828 = !DILocation(line: 182, column: 25, scope: !1820)
!1829 = !DILocation(line: 183, column: 25, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !203, line: 182, column: 37)
!1831 = !DILocation(line: 183, column: 31, scope: !1830)
!1832 = !DILocation(line: 183, column: 35, scope: !1830)
!1833 = !DILocation(line: 184, column: 25, scope: !1830)
!1834 = !DILocation(line: 184, column: 32, scope: !1830)
!1835 = !DILocation(line: 184, column: 37, scope: !1830)
!1836 = !DILocation(line: 185, column: 25, scope: !1830)
!1837 = !DILocation(line: 187, column: 28, scope: !1820)
!1838 = !DILocation(line: 187, column: 26, scope: !1820)
!1839 = !DILocation(line: 188, column: 25, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1820, file: !203, line: 188, column: 25)
!1841 = !DILocation(line: 188, column: 31, scope: !1840)
!1842 = !DILocation(line: 188, column: 25, scope: !1820)
!1843 = !DILocation(line: 189, column: 33, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !203, line: 188, column: 37)
!1845 = !DILocation(line: 189, column: 41, scope: !1844)
!1846 = !DILocation(line: 189, column: 39, scope: !1844)
!1847 = !DILocation(line: 189, column: 30, scope: !1844)
!1848 = !DILocation(line: 190, column: 29, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1844, file: !203, line: 190, column: 29)
!1850 = !DILocation(line: 190, column: 34, scope: !1849)
!1851 = !DILocation(line: 190, column: 32, scope: !1849)
!1852 = !DILocation(line: 190, column: 29, scope: !1844)
!1853 = !DILocation(line: 191, column: 36, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !203, line: 190, column: 39)
!1855 = !DILocation(line: 191, column: 33, scope: !1854)
!1856 = !DILocation(line: 192, column: 29, scope: !1854)
!1857 = !DILocation(line: 193, column: 47, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !203, line: 192, column: 32)
!1859 = !DILocation(line: 193, column: 42, scope: !1858)
!1860 = !DILocation(line: 193, column: 37, scope: !1858)
!1861 = !DILocation(line: 193, column: 40, scope: !1858)
!1862 = !DILocation(line: 194, column: 29, scope: !1858)
!1863 = !DILocation(line: 194, column: 38, scope: !1854)
!1864 = distinct !{!1864, !1856, !1865, !981, !982}
!1865 = !DILocation(line: 194, column: 42, scope: !1854)
!1866 = !DILocation(line: 195, column: 36, scope: !1854)
!1867 = !DILocation(line: 195, column: 42, scope: !1854)
!1868 = !DILocation(line: 195, column: 40, scope: !1854)
!1869 = !DILocation(line: 195, column: 34, scope: !1854)
!1870 = !DILocation(line: 196, column: 25, scope: !1854)
!1871 = !DILocation(line: 197, column: 21, scope: !1844)
!1872 = !DILocation(line: 198, column: 30, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1840, file: !203, line: 198, column: 30)
!1874 = !DILocation(line: 198, column: 38, scope: !1873)
!1875 = !DILocation(line: 198, column: 36, scope: !1873)
!1876 = !DILocation(line: 198, column: 30, scope: !1840)
!1877 = !DILocation(line: 199, column: 33, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1873, file: !203, line: 198, column: 42)
!1879 = !DILocation(line: 199, column: 41, scope: !1878)
!1880 = !DILocation(line: 199, column: 39, scope: !1878)
!1881 = !DILocation(line: 199, column: 49, scope: !1878)
!1882 = !DILocation(line: 199, column: 47, scope: !1878)
!1883 = !DILocation(line: 199, column: 30, scope: !1878)
!1884 = !DILocation(line: 200, column: 31, scope: !1878)
!1885 = !DILocation(line: 200, column: 28, scope: !1878)
!1886 = !DILocation(line: 201, column: 29, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1878, file: !203, line: 201, column: 29)
!1888 = !DILocation(line: 201, column: 34, scope: !1887)
!1889 = !DILocation(line: 201, column: 32, scope: !1887)
!1890 = !DILocation(line: 201, column: 29, scope: !1878)
!1891 = !DILocation(line: 202, column: 36, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1887, file: !203, line: 201, column: 39)
!1893 = !DILocation(line: 202, column: 33, scope: !1892)
!1894 = !DILocation(line: 203, column: 29, scope: !1892)
!1895 = !DILocation(line: 204, column: 47, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !203, line: 203, column: 32)
!1897 = !DILocation(line: 204, column: 42, scope: !1896)
!1898 = !DILocation(line: 204, column: 37, scope: !1896)
!1899 = !DILocation(line: 204, column: 40, scope: !1896)
!1900 = !DILocation(line: 205, column: 29, scope: !1896)
!1901 = !DILocation(line: 205, column: 38, scope: !1892)
!1902 = distinct !{!1902, !1894, !1903, !981, !982}
!1903 = !DILocation(line: 205, column: 42, scope: !1892)
!1904 = !DILocation(line: 206, column: 36, scope: !1892)
!1905 = !DILocation(line: 206, column: 34, scope: !1892)
!1906 = !DILocation(line: 207, column: 33, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1892, file: !203, line: 207, column: 33)
!1908 = !DILocation(line: 207, column: 41, scope: !1907)
!1909 = !DILocation(line: 207, column: 39, scope: !1907)
!1910 = !DILocation(line: 207, column: 33, scope: !1892)
!1911 = !DILocation(line: 208, column: 38, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1907, file: !203, line: 207, column: 46)
!1913 = !DILocation(line: 208, column: 36, scope: !1912)
!1914 = !DILocation(line: 209, column: 40, scope: !1912)
!1915 = !DILocation(line: 209, column: 37, scope: !1912)
!1916 = !DILocation(line: 210, column: 33, scope: !1912)
!1917 = !DILocation(line: 211, column: 51, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1912, file: !203, line: 210, column: 36)
!1919 = !DILocation(line: 211, column: 46, scope: !1918)
!1920 = !DILocation(line: 211, column: 41, scope: !1918)
!1921 = !DILocation(line: 211, column: 44, scope: !1918)
!1922 = !DILocation(line: 212, column: 33, scope: !1918)
!1923 = !DILocation(line: 212, column: 42, scope: !1912)
!1924 = distinct !{!1924, !1916, !1925, !981, !982}
!1925 = !DILocation(line: 212, column: 46, scope: !1912)
!1926 = !DILocation(line: 213, column: 40, scope: !1912)
!1927 = !DILocation(line: 213, column: 46, scope: !1912)
!1928 = !DILocation(line: 213, column: 44, scope: !1912)
!1929 = !DILocation(line: 213, column: 38, scope: !1912)
!1930 = !DILocation(line: 214, column: 29, scope: !1912)
!1931 = !DILocation(line: 215, column: 25, scope: !1892)
!1932 = !DILocation(line: 216, column: 21, scope: !1878)
!1933 = !DILocation(line: 218, column: 33, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1873, file: !203, line: 217, column: 26)
!1935 = !DILocation(line: 218, column: 41, scope: !1934)
!1936 = !DILocation(line: 218, column: 39, scope: !1934)
!1937 = !DILocation(line: 218, column: 30, scope: !1934)
!1938 = !DILocation(line: 219, column: 29, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !203, line: 219, column: 29)
!1940 = !DILocation(line: 219, column: 34, scope: !1939)
!1941 = !DILocation(line: 219, column: 32, scope: !1939)
!1942 = !DILocation(line: 219, column: 29, scope: !1934)
!1943 = !DILocation(line: 220, column: 36, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1939, file: !203, line: 219, column: 39)
!1945 = !DILocation(line: 220, column: 33, scope: !1944)
!1946 = !DILocation(line: 221, column: 29, scope: !1944)
!1947 = !DILocation(line: 222, column: 47, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !203, line: 221, column: 32)
!1949 = !DILocation(line: 222, column: 42, scope: !1948)
!1950 = !DILocation(line: 222, column: 37, scope: !1948)
!1951 = !DILocation(line: 222, column: 40, scope: !1948)
!1952 = !DILocation(line: 223, column: 29, scope: !1948)
!1953 = !DILocation(line: 223, column: 38, scope: !1944)
!1954 = distinct !{!1954, !1946, !1955, !981, !982}
!1955 = !DILocation(line: 223, column: 42, scope: !1944)
!1956 = !DILocation(line: 224, column: 36, scope: !1944)
!1957 = !DILocation(line: 224, column: 42, scope: !1944)
!1958 = !DILocation(line: 224, column: 40, scope: !1944)
!1959 = !DILocation(line: 224, column: 34, scope: !1944)
!1960 = !DILocation(line: 225, column: 25, scope: !1944)
!1961 = !DILocation(line: 227, column: 21, scope: !1820)
!1962 = !DILocation(line: 227, column: 28, scope: !1820)
!1963 = !DILocation(line: 227, column: 32, scope: !1820)
!1964 = !DILocation(line: 228, column: 39, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1820, file: !203, line: 227, column: 37)
!1966 = !DILocation(line: 228, column: 34, scope: !1965)
!1967 = !DILocation(line: 228, column: 29, scope: !1965)
!1968 = !DILocation(line: 228, column: 32, scope: !1965)
!1969 = !DILocation(line: 229, column: 39, scope: !1965)
!1970 = !DILocation(line: 229, column: 34, scope: !1965)
!1971 = !DILocation(line: 229, column: 29, scope: !1965)
!1972 = !DILocation(line: 229, column: 32, scope: !1965)
!1973 = !DILocation(line: 230, column: 39, scope: !1965)
!1974 = !DILocation(line: 230, column: 34, scope: !1965)
!1975 = !DILocation(line: 230, column: 29, scope: !1965)
!1976 = !DILocation(line: 230, column: 32, scope: !1965)
!1977 = !DILocation(line: 231, column: 29, scope: !1965)
!1978 = distinct !{!1978, !1961, !1979, !981, !982}
!1979 = !DILocation(line: 232, column: 21, scope: !1820)
!1980 = !DILocation(line: 233, column: 25, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1820, file: !203, line: 233, column: 25)
!1982 = !DILocation(line: 233, column: 25, scope: !1820)
!1983 = !DILocation(line: 234, column: 39, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !203, line: 233, column: 30)
!1985 = !DILocation(line: 234, column: 34, scope: !1984)
!1986 = !DILocation(line: 234, column: 29, scope: !1984)
!1987 = !DILocation(line: 234, column: 32, scope: !1984)
!1988 = !DILocation(line: 235, column: 29, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1984, file: !203, line: 235, column: 29)
!1990 = !DILocation(line: 235, column: 33, scope: !1989)
!1991 = !DILocation(line: 235, column: 29, scope: !1984)
!1992 = !DILocation(line: 236, column: 43, scope: !1989)
!1993 = !DILocation(line: 236, column: 38, scope: !1989)
!1994 = !DILocation(line: 236, column: 33, scope: !1989)
!1995 = !DILocation(line: 236, column: 36, scope: !1989)
!1996 = !DILocation(line: 236, column: 29, scope: !1989)
!1997 = !DILocation(line: 237, column: 21, scope: !1984)
!1998 = !DILocation(line: 238, column: 17, scope: !1820)
!1999 = !DILocation(line: 240, column: 7, scope: !1521)
!2000 = !DILocation(line: 240, column: 23, scope: !1521)
!2001 = !DILocation(line: 241, column: 7, scope: !1521)
!2002 = !DILocation(line: 241, column: 21, scope: !1521)
!2003 = !DILocation(line: 243, column: 28, scope: !1521)
!2004 = !DILocation(line: 243, column: 34, scope: !1521)
!2005 = !DILocation(line: 243, column: 32, scope: !1521)
!2006 = !DILocation(line: 243, column: 26, scope: !1521)
!2007 = !DILocation(line: 246, column: 20, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1521, file: !203, line: 246, column: 11)
!2009 = !DILocation(line: 246, column: 24, scope: !2008)
!2010 = !DILocation(line: 246, column: 13, scope: !2008)
!2011 = !DILocation(line: 246, column: 29, scope: !2008)
!2012 = !DILocation(line: 246, column: 11, scope: !1521)
!2013 = !DILocation(line: 247, column: 18, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2008, file: !203, line: 246, column: 35)
!2015 = !DILocation(line: 247, column: 13, scope: !2014)
!2016 = !DILocation(line: 247, column: 8, scope: !2014)
!2017 = !DILocation(line: 247, column: 11, scope: !2014)
!2018 = !DILocation(line: 248, column: 7, scope: !2014)
!2019 = !DILocation(line: 249, column: 7, scope: !2014)
!2020 = !DILocation(line: 250, column: 33, scope: !1521)
!2021 = !DILocation(line: 250, column: 12, scope: !1521)
!2022 = !DILocation(line: 251, column: 11, scope: !1528)
!2023 = !DILocation(line: 251, column: 16, scope: !1528)
!2024 = !DILocation(line: 251, column: 11, scope: !1521)
!2025 = !DILocation(line: 252, column: 4, scope: !1527)
!2026 = !DILocation(line: 252, column: 20, scope: !1527)
!2027 = !DILocation(line: 254, column: 31, scope: !1527)
!2028 = !DILocation(line: 254, column: 10, scope: !1527)
!2029 = !DILocation(line: 255, column: 12, scope: !1527)
!2030 = !DILocation(line: 255, column: 16, scope: !1527)
!2031 = !DILocation(line: 255, column: 10, scope: !1527)
!2032 = !DILocation(line: 256, column: 4, scope: !1527)
!2033 = !DILocation(line: 258, column: 21, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !203, line: 257, column: 12)
!2035 = distinct !DILexicalBlock(scope: !1527, file: !203, line: 256, column: 7)
!2036 = !DILocation(line: 258, column: 15, scope: !2034)
!2037 = !DILocation(line: 258, column: 10, scope: !2034)
!2038 = !DILocation(line: 258, column: 13, scope: !2034)
!2039 = !DILocation(line: 261, column: 4, scope: !2035)
!2040 = !DILocation(line: 261, column: 13, scope: !1527)
!2041 = distinct !{!2041, !2032, !2042, !981, !982}
!2042 = !DILocation(line: 261, column: 20, scope: !1527)
!2043 = !DILocation(line: 262, column: 27, scope: !1527)
!2044 = !DILocation(line: 262, column: 8, scope: !1527)
!2045 = !DILocation(line: 263, column: 28, scope: !1527)
!2046 = !DILocation(line: 263, column: 9, scope: !1527)
!2047 = !DILocation(line: 264, column: 7, scope: !1528)
!2048 = !DILocation(line: 264, column: 7, scope: !1527)
!2049 = !DILocation(line: 265, column: 4, scope: !1530)
!2050 = !DILocation(line: 265, column: 19, scope: !1530)
!2051 = !DILocation(line: 267, column: 14, scope: !1530)
!2052 = !DILocation(line: 267, column: 18, scope: !1530)
!2053 = !DILocation(line: 267, column: 12, scope: !1530)
!2054 = !DILocation(line: 267, column: 10, scope: !1530)
!2055 = !DILocation(line: 268, column: 8, scope: !1533)
!2056 = !DILocation(line: 268, column: 13, scope: !1533)
!2057 = !DILocation(line: 268, column: 8, scope: !1530)
!2058 = !DILocation(line: 269, column: 5, scope: !1532)
!2059 = !DILocation(line: 269, column: 14, scope: !1532)
!2060 = !DILocation(line: 271, column: 13, scope: !1532)
!2061 = !DILocation(line: 271, column: 11, scope: !1532)
!2062 = !DILocation(line: 272, column: 15, scope: !1532)
!2063 = !DILocation(line: 272, column: 5, scope: !1532)
!2064 = !DILocation(line: 272, column: 13, scope: !1532)
!2065 = !DILocation(line: 273, column: 16, scope: !1532)
!2066 = !DILocation(line: 273, column: 11, scope: !1532)
!2067 = !DILocation(line: 274, column: 4, scope: !1533)
!2068 = !DILocation(line: 274, column: 4, scope: !1532)
!2069 = !DILocation(line: 275, column: 12, scope: !1530)
!2070 = !DILocation(line: 275, column: 16, scope: !1530)
!2071 = !DILocation(line: 275, column: 10, scope: !1530)
!2072 = !DILocation(line: 276, column: 4, scope: !1530)
!2073 = !DILocation(line: 277, column: 18, scope: !1530)
!2074 = !DILocation(line: 277, column: 13, scope: !1530)
!2075 = !DILocation(line: 277, column: 16, scope: !1530)
!2076 = !DILocation(line: 277, column: 8, scope: !1530)
!2077 = !DILocation(line: 278, column: 11, scope: !1530)
!2078 = distinct !{!2078, !2072, !2079, !981, !982}
!2079 = !DILocation(line: 278, column: 18, scope: !1530)
!2080 = !DILocation(line: 279, column: 27, scope: !1530)
!2081 = !DILocation(line: 279, column: 8, scope: !1530)
!2082 = !DILocation(line: 280, column: 7, scope: !1528)
!2083 = !DILocation(line: 281, column: 11, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1521, file: !203, line: 281, column: 11)
!2085 = !DILocation(line: 281, column: 15, scope: !2084)
!2086 = !DILocation(line: 281, column: 11, scope: !1521)
!2087 = !DILocation(line: 282, column: 18, scope: !2084)
!2088 = !DILocation(line: 282, column: 13, scope: !2084)
!2089 = !DILocation(line: 282, column: 8, scope: !2084)
!2090 = !DILocation(line: 282, column: 11, scope: !2084)
!2091 = !DILocation(line: 282, column: 4, scope: !2084)
!2092 = !DILocation(line: 283, column: 17, scope: !1522)
!2093 = !DILocation(line: 284, column: 13, scope: !1523)
!2094 = !DILocation(line: 285, column: 23, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1524, file: !203, line: 285, column: 22)
!2096 = !DILocation(line: 285, column: 26, scope: !2095)
!2097 = !DILocation(line: 285, column: 32, scope: !2095)
!2098 = !DILocation(line: 285, column: 22, scope: !1524)
!2099 = !DILocation(line: 286, column: 24, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2095, file: !203, line: 285, column: 38)
!2101 = !DILocation(line: 286, column: 35, scope: !2100)
!2102 = !DILocation(line: 286, column: 30, scope: !2100)
!2103 = !DILocation(line: 286, column: 42, scope: !2100)
!2104 = !DILocation(line: 286, column: 57, scope: !2100)
!2105 = !DILocation(line: 286, column: 54, scope: !2100)
!2106 = !DILocation(line: 286, column: 61, scope: !2100)
!2107 = !DILocation(line: 286, column: 49, scope: !2100)
!2108 = !DILocation(line: 286, column: 47, scope: !2100)
!2109 = !DILocation(line: 286, column: 39, scope: !2100)
!2110 = !DILocation(line: 287, column: 17, scope: !2100)
!2111 = !DILocation(line: 290, column: 17, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2095, file: !203, line: 289, column: 18)
!2113 = !DILocation(line: 290, column: 23, scope: !2112)
!2114 = !DILocation(line: 290, column: 27, scope: !2112)
!2115 = !DILocation(line: 291, column: 17, scope: !2112)
!2116 = !DILocation(line: 291, column: 24, scope: !2112)
!2117 = !DILocation(line: 291, column: 29, scope: !2112)
!2118 = !DILocation(line: 292, column: 17, scope: !2112)
!2119 = !DILocation(line: 294, column: 9, scope: !1517)
!2120 = !DILocation(line: 295, column: 19, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1518, file: !203, line: 295, column: 18)
!2122 = !DILocation(line: 295, column: 22, scope: !2121)
!2123 = !DILocation(line: 295, column: 28, scope: !2121)
!2124 = !DILocation(line: 295, column: 18, scope: !1518)
!2125 = !DILocation(line: 296, column: 20, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2121, file: !203, line: 295, column: 34)
!2127 = !DILocation(line: 296, column: 31, scope: !2126)
!2128 = !DILocation(line: 296, column: 26, scope: !2126)
!2129 = !DILocation(line: 296, column: 38, scope: !2126)
!2130 = !DILocation(line: 296, column: 53, scope: !2126)
!2131 = !DILocation(line: 296, column: 50, scope: !2126)
!2132 = !DILocation(line: 296, column: 57, scope: !2126)
!2133 = !DILocation(line: 296, column: 45, scope: !2126)
!2134 = !DILocation(line: 296, column: 43, scope: !2126)
!2135 = !DILocation(line: 296, column: 35, scope: !2126)
!2136 = !DILocation(line: 297, column: 13, scope: !2126)
!2137 = !DILocation(line: 299, column: 18, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2121, file: !203, line: 299, column: 18)
!2139 = !DILocation(line: 299, column: 21, scope: !2138)
!2140 = !DILocation(line: 299, column: 18, scope: !2121)
!2141 = !DILocation(line: 300, column: 13, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !203, line: 299, column: 27)
!2143 = !DILocation(line: 300, column: 20, scope: !2142)
!2144 = !DILocation(line: 300, column: 25, scope: !2142)
!2145 = !DILocation(line: 301, column: 13, scope: !2142)
!2146 = !DILocation(line: 304, column: 13, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2138, file: !203, line: 303, column: 14)
!2148 = !DILocation(line: 304, column: 19, scope: !2147)
!2149 = !DILocation(line: 304, column: 23, scope: !2147)
!2150 = !DILocation(line: 305, column: 13, scope: !2147)
!2151 = !DILocation(line: 305, column: 20, scope: !2147)
!2152 = !DILocation(line: 305, column: 25, scope: !2147)
!2153 = !DILocation(line: 306, column: 13, scope: !2147)
!2154 = !DILocation(line: 308, column: 5, scope: !1515)
!2155 = !DILocation(line: 308, column: 14, scope: !1487)
!2156 = !DILocation(line: 308, column: 19, scope: !1487)
!2157 = !DILocation(line: 308, column: 17, scope: !1487)
!2158 = !DILocation(line: 308, column: 24, scope: !1487)
!2159 = !DILocation(line: 308, column: 27, scope: !1487)
!2160 = !DILocation(line: 308, column: 33, scope: !1487)
!2161 = !DILocation(line: 308, column: 31, scope: !1487)
!2162 = !DILocation(line: 0, scope: !1487)
!2163 = distinct !{!2163, !1645, !2164, !981, !982}
!2164 = !DILocation(line: 308, column: 36, scope: !1487)
!2165 = !DILocation(line: 311, column: 11, scope: !1487)
!2166 = !DILocation(line: 311, column: 16, scope: !1487)
!2167 = !DILocation(line: 311, column: 9, scope: !1487)
!2168 = !DILocation(line: 312, column: 11, scope: !1487)
!2169 = !DILocation(line: 312, column: 8, scope: !1487)
!2170 = !DILocation(line: 313, column: 13, scope: !1487)
!2171 = !DILocation(line: 313, column: 17, scope: !1487)
!2172 = !DILocation(line: 313, column: 10, scope: !1487)
!2173 = !DILocation(line: 314, column: 20, scope: !1487)
!2174 = !DILocation(line: 314, column: 17, scope: !1487)
!2175 = !DILocation(line: 314, column: 26, scope: !1487)
!2176 = !DILocation(line: 314, column: 13, scope: !1487)
!2177 = !DILocation(line: 314, column: 10, scope: !1487)
!2178 = !DILocation(line: 317, column: 21, scope: !1487)
!2179 = !DILocation(line: 317, column: 5, scope: !1487)
!2180 = !DILocation(line: 317, column: 11, scope: !1487)
!2181 = !DILocation(line: 317, column: 19, scope: !1487)
!2182 = !DILocation(line: 318, column: 22, scope: !1487)
!2183 = !DILocation(line: 318, column: 5, scope: !1487)
!2184 = !DILocation(line: 318, column: 11, scope: !1487)
!2185 = !DILocation(line: 318, column: 20, scope: !1487)
!2186 = !DILocation(line: 319, column: 33, scope: !1487)
!2187 = !DILocation(line: 319, column: 38, scope: !1487)
!2188 = !DILocation(line: 319, column: 36, scope: !1487)
!2189 = !DILocation(line: 319, column: 50, scope: !1487)
!2190 = !DILocation(line: 319, column: 57, scope: !1487)
!2191 = !DILocation(line: 319, column: 55, scope: !1487)
!2192 = !DILocation(line: 319, column: 47, scope: !1487)
!2193 = !DILocation(line: 319, column: 68, scope: !1487)
!2194 = !DILocation(line: 319, column: 73, scope: !1487)
!2195 = !DILocation(line: 319, column: 71, scope: !1487)
!2196 = !DILocation(line: 319, column: 65, scope: !1487)
!2197 = !DILocation(line: 319, column: 22, scope: !1487)
!2198 = !DILocation(line: 319, column: 5, scope: !1487)
!2199 = !DILocation(line: 319, column: 11, scope: !1487)
!2200 = !DILocation(line: 319, column: 20, scope: !1487)
!2201 = !DILocation(line: 320, column: 34, scope: !1487)
!2202 = !DILocation(line: 320, column: 40, scope: !1487)
!2203 = !DILocation(line: 320, column: 38, scope: !1487)
!2204 = !DILocation(line: 321, column: 41, scope: !1487)
!2205 = !DILocation(line: 321, column: 47, scope: !1487)
!2206 = !DILocation(line: 321, column: 45, scope: !1487)
!2207 = !DILocation(line: 321, column: 38, scope: !1487)
!2208 = !DILocation(line: 321, column: 61, scope: !1487)
!2209 = !DILocation(line: 321, column: 67, scope: !1487)
!2210 = !DILocation(line: 321, column: 65, scope: !1487)
!2211 = !DILocation(line: 321, column: 58, scope: !1487)
!2212 = !DILocation(line: 320, column: 23, scope: !1487)
!2213 = !DILocation(line: 320, column: 5, scope: !1487)
!2214 = !DILocation(line: 320, column: 11, scope: !1487)
!2215 = !DILocation(line: 320, column: 21, scope: !1487)
!2216 = !DILocation(line: 322, column: 19, scope: !1487)
!2217 = !DILocation(line: 322, column: 5, scope: !1487)
!2218 = !DILocation(line: 322, column: 12, scope: !1487)
!2219 = !DILocation(line: 322, column: 17, scope: !1487)
!2220 = !DILocation(line: 323, column: 19, scope: !1487)
!2221 = !DILocation(line: 323, column: 5, scope: !1487)
!2222 = !DILocation(line: 323, column: 12, scope: !1487)
!2223 = !DILocation(line: 323, column: 17, scope: !1487)
!2224 = !DILocation(line: 325, column: 1, scope: !1487)
!2225 = distinct !DISubprogram(name: "zlib_inflate_workspacesize", scope: !220, file: !220, line: 28, type: !2226, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!54}
!2228 = !DILocation(line: 30, column: 5, scope: !2225)
!2229 = distinct !DISubprogram(name: "zlib_inflateReset", scope: !220, file: !220, line: 33, type: !2230, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!54, !223}
!2232 = !{!2233, !2234}
!2233 = !DILocalVariable(name: "strm", arg: 1, scope: !2229, file: !220, line: 33, type: !223)
!2234 = !DILocalVariable(name: "state", scope: !2229, file: !220, line: 35, type: !55)
!2235 = !DILocation(line: 33, column: 33, scope: !2229)
!2236 = !DILocation(line: 35, column: 5, scope: !2229)
!2237 = !DILocation(line: 35, column: 27, scope: !2229)
!2238 = !DILocation(line: 37, column: 9, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2229, file: !220, line: 37, column: 9)
!2240 = !DILocation(line: 37, column: 14, scope: !2239)
!2241 = !DILocation(line: 37, column: 22, scope: !2239)
!2242 = !DILocation(line: 37, column: 25, scope: !2239)
!2243 = !DILocation(line: 37, column: 31, scope: !2239)
!2244 = !DILocation(line: 37, column: 37, scope: !2239)
!2245 = !DILocation(line: 37, column: 9, scope: !2229)
!2246 = !DILocation(line: 37, column: 46, scope: !2239)
!2247 = !DILocation(line: 38, column: 37, scope: !2229)
!2248 = !DILocation(line: 38, column: 43, scope: !2229)
!2249 = !DILocation(line: 38, column: 11, scope: !2229)
!2250 = !DILocation(line: 39, column: 40, scope: !2229)
!2251 = !DILocation(line: 39, column: 47, scope: !2229)
!2252 = !DILocation(line: 39, column: 53, scope: !2229)
!2253 = !DILocation(line: 39, column: 22, scope: !2229)
!2254 = !DILocation(line: 39, column: 28, scope: !2229)
!2255 = !DILocation(line: 39, column: 38, scope: !2229)
!2256 = !DILocation(line: 39, column: 5, scope: !2229)
!2257 = !DILocation(line: 39, column: 11, scope: !2229)
!2258 = !DILocation(line: 39, column: 20, scope: !2229)
!2259 = !DILocation(line: 40, column: 5, scope: !2229)
!2260 = !DILocation(line: 40, column: 11, scope: !2229)
!2261 = !DILocation(line: 40, column: 15, scope: !2229)
!2262 = !DILocation(line: 41, column: 5, scope: !2229)
!2263 = !DILocation(line: 41, column: 11, scope: !2229)
!2264 = !DILocation(line: 41, column: 17, scope: !2229)
!2265 = !DILocation(line: 42, column: 5, scope: !2229)
!2266 = !DILocation(line: 42, column: 12, scope: !2229)
!2267 = !DILocation(line: 42, column: 17, scope: !2229)
!2268 = !DILocation(line: 43, column: 5, scope: !2229)
!2269 = !DILocation(line: 43, column: 12, scope: !2229)
!2270 = !DILocation(line: 43, column: 17, scope: !2229)
!2271 = !DILocation(line: 44, column: 5, scope: !2229)
!2272 = !DILocation(line: 44, column: 12, scope: !2229)
!2273 = !DILocation(line: 44, column: 21, scope: !2229)
!2274 = !DILocation(line: 45, column: 5, scope: !2229)
!2275 = !DILocation(line: 45, column: 12, scope: !2229)
!2276 = !DILocation(line: 45, column: 17, scope: !2229)
!2277 = !DILocation(line: 46, column: 5, scope: !2229)
!2278 = !DILocation(line: 46, column: 12, scope: !2229)
!2279 = !DILocation(line: 46, column: 17, scope: !2229)
!2280 = !DILocation(line: 47, column: 5, scope: !2229)
!2281 = !DILocation(line: 47, column: 12, scope: !2229)
!2282 = !DILocation(line: 47, column: 17, scope: !2229)
!2283 = !DILocation(line: 48, column: 54, scope: !2229)
!2284 = !DILocation(line: 48, column: 61, scope: !2229)
!2285 = !DILocation(line: 48, column: 40, scope: !2229)
!2286 = !DILocation(line: 48, column: 47, scope: !2229)
!2287 = !DILocation(line: 48, column: 52, scope: !2229)
!2288 = !DILocation(line: 48, column: 22, scope: !2229)
!2289 = !DILocation(line: 48, column: 29, scope: !2229)
!2290 = !DILocation(line: 48, column: 38, scope: !2229)
!2291 = !DILocation(line: 48, column: 5, scope: !2229)
!2292 = !DILocation(line: 48, column: 12, scope: !2229)
!2293 = !DILocation(line: 48, column: 20, scope: !2229)
!2294 = !DILocation(line: 51, column: 26, scope: !2229)
!2295 = !DILocation(line: 51, column: 33, scope: !2229)
!2296 = !DILocation(line: 51, column: 23, scope: !2229)
!2297 = !DILocation(line: 51, column: 5, scope: !2229)
!2298 = !DILocation(line: 51, column: 12, scope: !2229)
!2299 = !DILocation(line: 51, column: 18, scope: !2229)
!2300 = !DILocation(line: 52, column: 5, scope: !2229)
!2301 = !DILocation(line: 52, column: 12, scope: !2229)
!2302 = !DILocation(line: 52, column: 18, scope: !2229)
!2303 = !DILocation(line: 53, column: 5, scope: !2229)
!2304 = !DILocation(line: 53, column: 12, scope: !2229)
!2305 = !DILocation(line: 53, column: 18, scope: !2229)
!2306 = !DILocation(line: 55, column: 5, scope: !2229)
!2307 = !DILocation(line: 55, column: 5, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2229, file: !220, line: 55, column: 5)
!2309 = !DILocation(line: 56, column: 5, scope: !2229)
!2310 = !DILocation(line: 57, column: 1, scope: !2229)
!2311 = distinct !DISubprogram(name: "zlib_inflateInit2", scope: !220, file: !220, line: 59, type: !221, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2312)
!2312 = !{!2313, !2314, !2315}
!2313 = !DILocalVariable(name: "strm", arg: 1, scope: !2311, file: !220, line: 59, type: !223)
!2314 = !DILocalVariable(name: "windowBits", arg: 2, scope: !2311, file: !220, line: 59, type: !54)
!2315 = !DILocalVariable(name: "state", scope: !2311, file: !220, line: 61, type: !55)
!2316 = !DILocation(line: 59, column: 33, scope: !2311)
!2317 = !DILocation(line: 59, column: 43, scope: !2311)
!2318 = !DILocation(line: 61, column: 5, scope: !2311)
!2319 = !DILocation(line: 61, column: 27, scope: !2311)
!2320 = !DILocation(line: 63, column: 9, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2311, file: !220, line: 63, column: 9)
!2322 = !DILocation(line: 63, column: 14, scope: !2321)
!2323 = !DILocation(line: 63, column: 9, scope: !2311)
!2324 = !DILocation(line: 63, column: 23, scope: !2321)
!2325 = !DILocation(line: 64, column: 5, scope: !2311)
!2326 = !DILocation(line: 64, column: 11, scope: !2311)
!2327 = !DILocation(line: 64, column: 15, scope: !2311)
!2328 = !DILocation(line: 66, column: 14, scope: !2311)
!2329 = !DILocation(line: 66, column: 24, scope: !2311)
!2330 = !DILocation(line: 66, column: 11, scope: !2311)
!2331 = !DILocation(line: 67, column: 44, scope: !2311)
!2332 = !DILocation(line: 67, column: 5, scope: !2311)
!2333 = !DILocation(line: 67, column: 11, scope: !2311)
!2334 = !DILocation(line: 67, column: 17, scope: !2311)
!2335 = !DILocation(line: 69, column: 9, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2311, file: !220, line: 69, column: 9)
!2337 = !DILocation(line: 69, column: 20, scope: !2336)
!2338 = !DILocation(line: 69, column: 9, scope: !2311)
!2339 = !DILocation(line: 70, column: 9, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !220, line: 69, column: 25)
!2341 = !DILocation(line: 70, column: 16, scope: !2340)
!2342 = !DILocation(line: 70, column: 21, scope: !2340)
!2343 = !DILocation(line: 71, column: 23, scope: !2340)
!2344 = !DILocation(line: 71, column: 22, scope: !2340)
!2345 = !DILocation(line: 71, column: 20, scope: !2340)
!2346 = !DILocation(line: 72, column: 5, scope: !2340)
!2347 = !DILocation(line: 74, column: 24, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2336, file: !220, line: 73, column: 10)
!2349 = !DILocation(line: 74, column: 35, scope: !2348)
!2350 = !DILocation(line: 74, column: 41, scope: !2348)
!2351 = !DILocation(line: 74, column: 9, scope: !2348)
!2352 = !DILocation(line: 74, column: 16, scope: !2348)
!2353 = !DILocation(line: 74, column: 21, scope: !2348)
!2354 = !DILocation(line: 76, column: 9, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2311, file: !220, line: 76, column: 9)
!2356 = !DILocation(line: 76, column: 20, scope: !2355)
!2357 = !DILocation(line: 76, column: 24, scope: !2355)
!2358 = !DILocation(line: 76, column: 27, scope: !2355)
!2359 = !DILocation(line: 76, column: 38, scope: !2355)
!2360 = !DILocation(line: 76, column: 9, scope: !2311)
!2361 = !DILocation(line: 77, column: 9, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2355, file: !220, line: 76, column: 44)
!2363 = !DILocation(line: 79, column: 30, scope: !2311)
!2364 = !DILocation(line: 79, column: 5, scope: !2311)
!2365 = !DILocation(line: 79, column: 12, scope: !2311)
!2366 = !DILocation(line: 79, column: 18, scope: !2311)
!2367 = !DILocation(line: 87, column: 22, scope: !2311)
!2368 = !DILocation(line: 87, column: 32, scope: !2311)
!2369 = !DILocation(line: 87, column: 5, scope: !2311)
!2370 = !DILocation(line: 87, column: 12, scope: !2311)
!2371 = !DILocation(line: 87, column: 19, scope: !2311)
!2372 = !DILocation(line: 90, column: 30, scope: !2311)
!2373 = !DILocation(line: 90, column: 12, scope: !2311)
!2374 = !DILocation(line: 90, column: 5, scope: !2311)
!2375 = !DILocation(line: 91, column: 1, scope: !2311)
!2376 = !DILocation(line: 331, column: 28, scope: !219)
!2377 = !DILocation(line: 331, column: 38, scope: !219)
!2378 = !DILocation(line: 333, column: 5, scope: !219)
!2379 = !DILocation(line: 333, column: 27, scope: !219)
!2380 = !DILocation(line: 334, column: 5, scope: !219)
!2381 = !DILocation(line: 334, column: 26, scope: !219)
!2382 = !DILocation(line: 335, column: 5, scope: !219)
!2383 = !DILocation(line: 335, column: 20, scope: !219)
!2384 = !DILocation(line: 336, column: 5, scope: !219)
!2385 = !DILocation(line: 336, column: 14, scope: !219)
!2386 = !DILocation(line: 336, column: 20, scope: !219)
!2387 = !DILocation(line: 337, column: 5, scope: !219)
!2388 = !DILocation(line: 337, column: 19, scope: !219)
!2389 = !DILocation(line: 338, column: 5, scope: !219)
!2390 = !DILocation(line: 338, column: 14, scope: !219)
!2391 = !DILocation(line: 339, column: 5, scope: !219)
!2392 = !DILocation(line: 339, column: 14, scope: !219)
!2393 = !DILocation(line: 339, column: 18, scope: !219)
!2394 = !DILocation(line: 340, column: 5, scope: !219)
!2395 = !DILocation(line: 340, column: 14, scope: !219)
!2396 = !DILocation(line: 341, column: 5, scope: !219)
!2397 = !DILocation(line: 341, column: 20, scope: !219)
!2398 = !DILocation(line: 342, column: 5, scope: !219)
!2399 = !DILocation(line: 342, column: 10, scope: !219)
!2400 = !DILocation(line: 343, column: 5, scope: !219)
!2401 = !DILocation(line: 343, column: 10, scope: !219)
!2402 = !DILocation(line: 344, column: 5, scope: !219)
!2403 = !DILocation(line: 344, column: 14, scope: !219)
!2404 = !DILocation(line: 345, column: 5, scope: !219)
!2405 = !DILocation(line: 345, column: 9, scope: !219)
!2406 = !DILocation(line: 352, column: 9, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !219, file: !220, line: 352, column: 9)
!2408 = !DILocation(line: 352, column: 14, scope: !2407)
!2409 = !DILocation(line: 352, column: 22, scope: !2407)
!2410 = !DILocation(line: 352, column: 25, scope: !2407)
!2411 = !DILocation(line: 352, column: 31, scope: !2407)
!2412 = !DILocation(line: 352, column: 37, scope: !2407)
!2413 = !DILocation(line: 352, column: 45, scope: !2407)
!2414 = !DILocation(line: 353, column: 10, scope: !2407)
!2415 = !DILocation(line: 353, column: 16, scope: !2407)
!2416 = !DILocation(line: 353, column: 24, scope: !2407)
!2417 = !DILocation(line: 353, column: 32, scope: !2407)
!2418 = !DILocation(line: 353, column: 35, scope: !2407)
!2419 = !DILocation(line: 353, column: 41, scope: !2407)
!2420 = !DILocation(line: 353, column: 50, scope: !2407)
!2421 = !DILocation(line: 352, column: 9, scope: !219)
!2422 = !DILocation(line: 354, column: 9, scope: !2407)
!2423 = !DILocation(line: 356, column: 37, scope: !219)
!2424 = !DILocation(line: 356, column: 43, scope: !219)
!2425 = !DILocation(line: 356, column: 11, scope: !219)
!2426 = !DILocation(line: 358, column: 9, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !219, file: !220, line: 358, column: 9)
!2428 = !DILocation(line: 358, column: 16, scope: !2427)
!2429 = !DILocation(line: 358, column: 21, scope: !2427)
!2430 = !DILocation(line: 358, column: 9, scope: !219)
!2431 = !DILocation(line: 358, column: 30, scope: !2427)
!2432 = !DILocation(line: 358, column: 37, scope: !2427)
!2433 = !DILocation(line: 358, column: 42, scope: !2427)
!2434 = !DILocation(line: 359, column: 5, scope: !219)
!2435 = !DILocation(line: 359, column: 5, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !219, file: !220, line: 359, column: 5)
!2437 = !DILocation(line: 360, column: 10, scope: !219)
!2438 = !DILocation(line: 360, column: 8, scope: !219)
!2439 = !DILocation(line: 361, column: 11, scope: !219)
!2440 = !DILocation(line: 361, column: 9, scope: !219)
!2441 = !DILocation(line: 362, column: 9, scope: !219)
!2442 = !DILocation(line: 363, column: 5, scope: !219)
!2443 = !DILocation(line: 364, column: 17, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !220, line: 363, column: 5)
!2445 = distinct !DILexicalBlock(scope: !219, file: !220, line: 363, column: 5)
!2446 = !DILocation(line: 364, column: 24, scope: !2444)
!2447 = !DILocation(line: 364, column: 9, scope: !2444)
!2448 = !DILocation(line: 366, column: 17, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 366, column: 17)
!2450 = distinct !DILexicalBlock(scope: !2444, file: !220, line: 364, column: 30)
!2451 = !DILocation(line: 366, column: 24, scope: !2449)
!2452 = !DILocation(line: 366, column: 29, scope: !2449)
!2453 = !DILocation(line: 366, column: 17, scope: !2450)
!2454 = !DILocation(line: 367, column: 17, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2449, file: !220, line: 366, column: 35)
!2456 = !DILocation(line: 367, column: 24, scope: !2455)
!2457 = !DILocation(line: 367, column: 29, scope: !2455)
!2458 = !DILocation(line: 368, column: 17, scope: !2455)
!2459 = !DILocation(line: 370, column: 13, scope: !2450)
!2460 = !DILocation(line: 370, column: 13, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 370, column: 13)
!2462 = !DILocation(line: 370, column: 13, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !220, line: 370, column: 13)
!2464 = distinct !DILexicalBlock(scope: !2461, file: !220, line: 370, column: 13)
!2465 = !DILocation(line: 370, column: 13, scope: !2464)
!2466 = distinct !{!2466, !2460, !2460, !981, !982}
!2467 = !DILocation(line: 372, column: 19, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 372, column: 17)
!2469 = !DILocation(line: 372, column: 27, scope: !2468)
!2470 = !DILocation(line: 372, column: 18, scope: !2468)
!2471 = !DILocation(line: 372, column: 36, scope: !2468)
!2472 = !DILocation(line: 372, column: 41, scope: !2468)
!2473 = !DILocation(line: 372, column: 33, scope: !2468)
!2474 = !DILocation(line: 372, column: 48, scope: !2468)
!2475 = !DILocation(line: 372, column: 17, scope: !2450)
!2476 = !DILocation(line: 373, column: 17, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2468, file: !220, line: 372, column: 54)
!2478 = !DILocation(line: 373, column: 23, scope: !2477)
!2479 = !DILocation(line: 373, column: 27, scope: !2477)
!2480 = !DILocation(line: 374, column: 17, scope: !2477)
!2481 = !DILocation(line: 374, column: 24, scope: !2477)
!2482 = !DILocation(line: 374, column: 29, scope: !2477)
!2483 = !DILocation(line: 375, column: 17, scope: !2477)
!2484 = !DILocation(line: 377, column: 17, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 377, column: 17)
!2486 = !DILocation(line: 377, column: 25, scope: !2485)
!2487 = !DILocation(line: 377, column: 17, scope: !2450)
!2488 = !DILocation(line: 378, column: 17, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !220, line: 377, column: 40)
!2490 = !DILocation(line: 378, column: 23, scope: !2489)
!2491 = !DILocation(line: 378, column: 27, scope: !2489)
!2492 = !DILocation(line: 379, column: 17, scope: !2489)
!2493 = !DILocation(line: 379, column: 24, scope: !2489)
!2494 = !DILocation(line: 379, column: 29, scope: !2489)
!2495 = !DILocation(line: 380, column: 17, scope: !2489)
!2496 = !DILocation(line: 382, column: 13, scope: !2450)
!2497 = !DILocation(line: 382, column: 13, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 382, column: 13)
!2499 = !DILocation(line: 383, column: 19, scope: !2450)
!2500 = !DILocation(line: 383, column: 27, scope: !2450)
!2501 = !DILocation(line: 383, column: 17, scope: !2450)
!2502 = !DILocation(line: 384, column: 17, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 384, column: 17)
!2504 = !DILocation(line: 384, column: 23, scope: !2503)
!2505 = !DILocation(line: 384, column: 30, scope: !2503)
!2506 = !DILocation(line: 384, column: 21, scope: !2503)
!2507 = !DILocation(line: 384, column: 17, scope: !2450)
!2508 = !DILocation(line: 385, column: 17, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2503, file: !220, line: 384, column: 37)
!2510 = !DILocation(line: 385, column: 23, scope: !2509)
!2511 = !DILocation(line: 385, column: 27, scope: !2509)
!2512 = !DILocation(line: 386, column: 17, scope: !2509)
!2513 = !DILocation(line: 386, column: 24, scope: !2509)
!2514 = !DILocation(line: 386, column: 29, scope: !2509)
!2515 = !DILocation(line: 387, column: 17, scope: !2509)
!2516 = !DILocation(line: 389, column: 33, scope: !2450)
!2517 = !DILocation(line: 389, column: 30, scope: !2450)
!2518 = !DILocation(line: 389, column: 13, scope: !2450)
!2519 = !DILocation(line: 389, column: 20, scope: !2450)
!2520 = !DILocation(line: 389, column: 25, scope: !2450)
!2521 = !DILocation(line: 390, column: 42, scope: !2450)
!2522 = !DILocation(line: 390, column: 27, scope: !2450)
!2523 = !DILocation(line: 390, column: 34, scope: !2450)
!2524 = !DILocation(line: 390, column: 40, scope: !2450)
!2525 = !DILocation(line: 390, column: 13, scope: !2450)
!2526 = !DILocation(line: 390, column: 19, scope: !2450)
!2527 = !DILocation(line: 390, column: 25, scope: !2450)
!2528 = !DILocation(line: 391, column: 27, scope: !2450)
!2529 = !DILocation(line: 391, column: 32, scope: !2450)
!2530 = !DILocation(line: 391, column: 13, scope: !2450)
!2531 = !DILocation(line: 391, column: 20, scope: !2450)
!2532 = !DILocation(line: 391, column: 25, scope: !2450)
!2533 = !DILocation(line: 392, column: 13, scope: !2450)
!2534 = !DILocation(line: 392, column: 13, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 392, column: 13)
!2536 = !DILocation(line: 393, column: 13, scope: !2450)
!2537 = !DILocation(line: 395, column: 13, scope: !2450)
!2538 = !DILocation(line: 395, column: 13, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 395, column: 13)
!2540 = !DILocation(line: 395, column: 13, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !220, line: 395, column: 13)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !220, line: 395, column: 13)
!2543 = !DILocation(line: 395, column: 13, scope: !2542)
!2544 = distinct !{!2544, !2538, !2538, !981, !982}
!2545 = !DILocation(line: 396, column: 42, scope: !2450)
!2546 = !DILocation(line: 396, column: 27, scope: !2450)
!2547 = !DILocation(line: 396, column: 34, scope: !2450)
!2548 = !DILocation(line: 396, column: 40, scope: !2450)
!2549 = !DILocation(line: 396, column: 13, scope: !2450)
!2550 = !DILocation(line: 396, column: 19, scope: !2450)
!2551 = !DILocation(line: 396, column: 25, scope: !2450)
!2552 = !DILocation(line: 397, column: 13, scope: !2450)
!2553 = !DILocation(line: 397, column: 13, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 397, column: 13)
!2555 = !DILocation(line: 398, column: 13, scope: !2450)
!2556 = !DILocation(line: 398, column: 20, scope: !2450)
!2557 = !DILocation(line: 398, column: 25, scope: !2450)
!2558 = !DILocation(line: 401, column: 17, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 401, column: 17)
!2560 = !DILocation(line: 401, column: 24, scope: !2559)
!2561 = !DILocation(line: 401, column: 33, scope: !2559)
!2562 = !DILocation(line: 401, column: 17, scope: !2450)
!2563 = !DILocation(line: 402, column: 17, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !220, line: 401, column: 39)
!2565 = !DILocation(line: 402, column: 17, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2564, file: !220, line: 402, column: 17)
!2567 = !DILocation(line: 403, column: 17, scope: !2564)
!2568 = !DILocation(line: 405, column: 42, scope: !2450)
!2569 = !DILocation(line: 405, column: 27, scope: !2450)
!2570 = !DILocation(line: 405, column: 34, scope: !2450)
!2571 = !DILocation(line: 405, column: 40, scope: !2450)
!2572 = !DILocation(line: 405, column: 13, scope: !2450)
!2573 = !DILocation(line: 405, column: 19, scope: !2450)
!2574 = !DILocation(line: 405, column: 25, scope: !2450)
!2575 = !DILocation(line: 406, column: 13, scope: !2450)
!2576 = !DILocation(line: 406, column: 20, scope: !2450)
!2577 = !DILocation(line: 406, column: 25, scope: !2450)
!2578 = !DILocation(line: 409, column: 17, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 409, column: 17)
!2580 = !DILocation(line: 409, column: 23, scope: !2579)
!2581 = !DILocation(line: 409, column: 17, scope: !2450)
!2582 = !DILocation(line: 409, column: 35, scope: !2579)
!2583 = !DILocation(line: 409, column: 26, scope: !2579)
!2584 = !DILocation(line: 412, column: 13, scope: !2450)
!2585 = !DILocation(line: 412, column: 13, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 412, column: 13)
!2587 = !DILocation(line: 413, column: 17, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 413, column: 17)
!2589 = !DILocation(line: 413, column: 24, scope: !2588)
!2590 = !DILocation(line: 413, column: 17, scope: !2450)
!2591 = !DILocation(line: 414, column: 17, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !220, line: 413, column: 30)
!2593 = !DILocation(line: 414, column: 17, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2592, file: !220, line: 414, column: 17)
!2595 = !DILocation(line: 415, column: 17, scope: !2592)
!2596 = !DILocation(line: 415, column: 24, scope: !2592)
!2597 = !DILocation(line: 415, column: 29, scope: !2592)
!2598 = !DILocation(line: 416, column: 17, scope: !2592)
!2599 = !DILocation(line: 418, column: 13, scope: !2450)
!2600 = !DILocation(line: 418, column: 13, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 418, column: 13)
!2602 = !DILocation(line: 418, column: 13, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !220, line: 418, column: 13)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !220, line: 418, column: 13)
!2605 = !DILocation(line: 418, column: 13, scope: !2604)
!2606 = distinct !{!2606, !2600, !2600, !981, !982}
!2607 = !DILocation(line: 419, column: 27, scope: !2450)
!2608 = !DILocation(line: 419, column: 13, scope: !2450)
!2609 = !DILocation(line: 419, column: 20, scope: !2450)
!2610 = !DILocation(line: 419, column: 25, scope: !2450)
!2611 = !DILocation(line: 420, column: 13, scope: !2450)
!2612 = !DILocation(line: 420, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 420, column: 13)
!2614 = !DILocation(line: 421, column: 21, scope: !2450)
!2615 = !DILocation(line: 421, column: 13, scope: !2450)
!2616 = !DILocation(line: 423, column: 17, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 421, column: 30)
!2618 = !DILocation(line: 423, column: 24, scope: !2617)
!2619 = !DILocation(line: 423, column: 29, scope: !2617)
!2620 = !DILocation(line: 424, column: 17, scope: !2617)
!2621 = !DILocation(line: 426, column: 34, scope: !2617)
!2622 = !DILocation(line: 426, column: 17, scope: !2617)
!2623 = !DILocation(line: 427, column: 17, scope: !2617)
!2624 = !DILocation(line: 427, column: 24, scope: !2617)
!2625 = !DILocation(line: 427, column: 29, scope: !2617)
!2626 = !DILocation(line: 428, column: 17, scope: !2617)
!2627 = !DILocation(line: 430, column: 17, scope: !2617)
!2628 = !DILocation(line: 430, column: 24, scope: !2617)
!2629 = !DILocation(line: 430, column: 29, scope: !2617)
!2630 = !DILocation(line: 431, column: 17, scope: !2617)
!2631 = !DILocation(line: 433, column: 17, scope: !2617)
!2632 = !DILocation(line: 433, column: 23, scope: !2617)
!2633 = !DILocation(line: 433, column: 27, scope: !2617)
!2634 = !DILocation(line: 434, column: 17, scope: !2617)
!2635 = !DILocation(line: 434, column: 24, scope: !2617)
!2636 = !DILocation(line: 434, column: 29, scope: !2617)
!2637 = !DILocation(line: 435, column: 13, scope: !2617)
!2638 = !DILocation(line: 436, column: 13, scope: !2450)
!2639 = !DILocation(line: 436, column: 13, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 436, column: 13)
!2641 = !DILocation(line: 437, column: 13, scope: !2450)
!2642 = !DILocation(line: 439, column: 13, scope: !2450)
!2643 = !DILocation(line: 439, column: 13, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 439, column: 13)
!2645 = !DILocation(line: 440, column: 13, scope: !2450)
!2646 = !DILocation(line: 440, column: 13, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 440, column: 13)
!2648 = !DILocation(line: 440, column: 13, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !220, line: 440, column: 13)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !220, line: 440, column: 13)
!2651 = !DILocation(line: 440, column: 13, scope: !2650)
!2652 = distinct !{!2652, !2646, !2646, !981, !982}
!2653 = !DILocation(line: 441, column: 18, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 441, column: 17)
!2655 = !DILocation(line: 441, column: 23, scope: !2654)
!2656 = !DILocation(line: 441, column: 38, scope: !2654)
!2657 = !DILocation(line: 441, column: 43, scope: !2654)
!2658 = !DILocation(line: 441, column: 50, scope: !2654)
!2659 = !DILocation(line: 441, column: 33, scope: !2654)
!2660 = !DILocation(line: 441, column: 17, scope: !2450)
!2661 = !DILocation(line: 442, column: 17, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2654, file: !220, line: 441, column: 61)
!2663 = !DILocation(line: 442, column: 23, scope: !2662)
!2664 = !DILocation(line: 442, column: 27, scope: !2662)
!2665 = !DILocation(line: 443, column: 17, scope: !2662)
!2666 = !DILocation(line: 443, column: 24, scope: !2662)
!2667 = !DILocation(line: 443, column: 29, scope: !2662)
!2668 = !DILocation(line: 444, column: 17, scope: !2662)
!2669 = !DILocation(line: 446, column: 39, scope: !2450)
!2670 = !DILocation(line: 446, column: 29, scope: !2450)
!2671 = !DILocation(line: 446, column: 44, scope: !2450)
!2672 = !DILocation(line: 446, column: 13, scope: !2450)
!2673 = !DILocation(line: 446, column: 20, scope: !2450)
!2674 = !DILocation(line: 446, column: 27, scope: !2450)
!2675 = !DILocation(line: 447, column: 13, scope: !2450)
!2676 = !DILocation(line: 447, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 447, column: 13)
!2678 = !DILocation(line: 448, column: 13, scope: !2450)
!2679 = !DILocation(line: 448, column: 20, scope: !2450)
!2680 = !DILocation(line: 448, column: 25, scope: !2450)
!2681 = !DILocation(line: 451, column: 20, scope: !2450)
!2682 = !DILocation(line: 451, column: 27, scope: !2450)
!2683 = !DILocation(line: 451, column: 18, scope: !2450)
!2684 = !DILocation(line: 452, column: 17, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 452, column: 17)
!2686 = !DILocation(line: 452, column: 17, scope: !2450)
!2687 = !DILocation(line: 453, column: 21, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !220, line: 453, column: 21)
!2689 = distinct !DILexicalBlock(scope: !2685, file: !220, line: 452, column: 23)
!2690 = !DILocation(line: 453, column: 28, scope: !2688)
!2691 = !DILocation(line: 453, column: 26, scope: !2688)
!2692 = !DILocation(line: 453, column: 21, scope: !2689)
!2693 = !DILocation(line: 453, column: 41, scope: !2688)
!2694 = !DILocation(line: 453, column: 39, scope: !2688)
!2695 = !DILocation(line: 453, column: 34, scope: !2688)
!2696 = !DILocation(line: 454, column: 21, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2689, file: !220, line: 454, column: 21)
!2698 = !DILocation(line: 454, column: 28, scope: !2697)
!2699 = !DILocation(line: 454, column: 26, scope: !2697)
!2700 = !DILocation(line: 454, column: 21, scope: !2689)
!2701 = !DILocation(line: 454, column: 41, scope: !2697)
!2702 = !DILocation(line: 454, column: 39, scope: !2697)
!2703 = !DILocation(line: 454, column: 34, scope: !2697)
!2704 = !DILocation(line: 455, column: 21, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2689, file: !220, line: 455, column: 21)
!2706 = !DILocation(line: 455, column: 26, scope: !2705)
!2707 = !DILocation(line: 455, column: 21, scope: !2689)
!2708 = !DILocation(line: 455, column: 32, scope: !2705)
!2709 = !DILocation(line: 456, column: 17, scope: !2689)
!2710 = !DILocation(line: 457, column: 25, scope: !2689)
!2711 = !DILocation(line: 457, column: 22, scope: !2689)
!2712 = !DILocation(line: 458, column: 25, scope: !2689)
!2713 = !DILocation(line: 458, column: 22, scope: !2689)
!2714 = !DILocation(line: 459, column: 25, scope: !2689)
!2715 = !DILocation(line: 459, column: 22, scope: !2689)
!2716 = !DILocation(line: 460, column: 24, scope: !2689)
!2717 = !DILocation(line: 460, column: 21, scope: !2689)
!2718 = !DILocation(line: 461, column: 34, scope: !2689)
!2719 = !DILocation(line: 461, column: 17, scope: !2689)
!2720 = !DILocation(line: 461, column: 24, scope: !2689)
!2721 = !DILocation(line: 461, column: 31, scope: !2689)
!2722 = !DILocation(line: 462, column: 17, scope: !2689)
!2723 = !DILocation(line: 464, column: 13, scope: !2450)
!2724 = !DILocation(line: 464, column: 20, scope: !2450)
!2725 = !DILocation(line: 464, column: 25, scope: !2450)
!2726 = !DILocation(line: 465, column: 13, scope: !2450)
!2727 = !DILocation(line: 467, column: 13, scope: !2450)
!2728 = !DILocation(line: 467, column: 13, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 467, column: 13)
!2730 = !DILocation(line: 467, column: 13, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !220, line: 467, column: 13)
!2732 = distinct !DILexicalBlock(scope: !2729, file: !220, line: 467, column: 13)
!2733 = !DILocation(line: 467, column: 13, scope: !2732)
!2734 = distinct !{!2734, !2728, !2728, !981, !982}
!2735 = !DILocation(line: 468, column: 27, scope: !2450)
!2736 = !DILocation(line: 468, column: 35, scope: !2450)
!2737 = !DILocation(line: 468, column: 13, scope: !2450)
!2738 = !DILocation(line: 468, column: 20, scope: !2450)
!2739 = !DILocation(line: 468, column: 25, scope: !2450)
!2740 = !DILocation(line: 469, column: 13, scope: !2450)
!2741 = !DILocation(line: 469, column: 13, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 469, column: 13)
!2743 = !DILocation(line: 470, column: 28, scope: !2450)
!2744 = !DILocation(line: 470, column: 36, scope: !2450)
!2745 = !DILocation(line: 470, column: 13, scope: !2450)
!2746 = !DILocation(line: 470, column: 20, scope: !2450)
!2747 = !DILocation(line: 470, column: 26, scope: !2450)
!2748 = !DILocation(line: 471, column: 13, scope: !2450)
!2749 = !DILocation(line: 471, column: 13, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 471, column: 13)
!2751 = !DILocation(line: 472, column: 28, scope: !2450)
!2752 = !DILocation(line: 472, column: 36, scope: !2450)
!2753 = !DILocation(line: 472, column: 13, scope: !2450)
!2754 = !DILocation(line: 472, column: 20, scope: !2450)
!2755 = !DILocation(line: 472, column: 26, scope: !2450)
!2756 = !DILocation(line: 473, column: 13, scope: !2450)
!2757 = !DILocation(line: 473, column: 13, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 473, column: 13)
!2759 = !DILocation(line: 475, column: 17, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 475, column: 17)
!2761 = !DILocation(line: 475, column: 24, scope: !2760)
!2762 = !DILocation(line: 475, column: 29, scope: !2760)
!2763 = !DILocation(line: 475, column: 35, scope: !2760)
!2764 = !DILocation(line: 475, column: 38, scope: !2760)
!2765 = !DILocation(line: 475, column: 45, scope: !2760)
!2766 = !DILocation(line: 475, column: 51, scope: !2760)
!2767 = !DILocation(line: 475, column: 17, scope: !2450)
!2768 = !DILocation(line: 476, column: 17, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2760, file: !220, line: 475, column: 57)
!2770 = !DILocation(line: 476, column: 23, scope: !2769)
!2771 = !DILocation(line: 476, column: 27, scope: !2769)
!2772 = !DILocation(line: 477, column: 17, scope: !2769)
!2773 = !DILocation(line: 477, column: 24, scope: !2769)
!2774 = !DILocation(line: 477, column: 29, scope: !2769)
!2775 = !DILocation(line: 478, column: 17, scope: !2769)
!2776 = !DILocation(line: 481, column: 13, scope: !2450)
!2777 = !DILocation(line: 481, column: 20, scope: !2450)
!2778 = !DILocation(line: 481, column: 25, scope: !2450)
!2779 = !DILocation(line: 482, column: 13, scope: !2450)
!2780 = !DILocation(line: 482, column: 20, scope: !2450)
!2781 = !DILocation(line: 482, column: 25, scope: !2450)
!2782 = !DILocation(line: 485, column: 13, scope: !2450)
!2783 = !DILocation(line: 485, column: 20, scope: !2450)
!2784 = !DILocation(line: 485, column: 27, scope: !2450)
!2785 = !DILocation(line: 485, column: 34, scope: !2450)
!2786 = !DILocation(line: 485, column: 41, scope: !2450)
!2787 = !DILocation(line: 485, column: 32, scope: !2450)
!2788 = !DILocation(line: 486, column: 17, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 485, column: 48)
!2790 = !DILocation(line: 486, column: 17, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2789, file: !220, line: 486, column: 17)
!2792 = !DILocation(line: 486, column: 17, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !220, line: 486, column: 17)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !220, line: 486, column: 17)
!2795 = !DILocation(line: 486, column: 17, scope: !2794)
!2796 = distinct !{!2796, !2790, !2790, !981, !982}
!2797 = !DILocation(line: 487, column: 69, scope: !2789)
!2798 = !DILocation(line: 487, column: 53, scope: !2789)
!2799 = !DILocation(line: 487, column: 17, scope: !2789)
!2800 = !DILocation(line: 487, column: 24, scope: !2789)
!2801 = !DILocation(line: 487, column: 35, scope: !2789)
!2802 = !DILocation(line: 487, column: 42, scope: !2789)
!2803 = !DILocation(line: 487, column: 46, scope: !2789)
!2804 = !DILocation(line: 487, column: 29, scope: !2789)
!2805 = !DILocation(line: 487, column: 51, scope: !2789)
!2806 = !DILocation(line: 488, column: 17, scope: !2789)
!2807 = !DILocation(line: 488, column: 17, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2789, file: !220, line: 488, column: 17)
!2809 = distinct !{!2809, !2782, !2810, !981, !982}
!2810 = !DILocation(line: 489, column: 13, scope: !2450)
!2811 = !DILocation(line: 490, column: 13, scope: !2450)
!2812 = !DILocation(line: 490, column: 20, scope: !2450)
!2813 = !DILocation(line: 490, column: 27, scope: !2450)
!2814 = !DILocation(line: 490, column: 32, scope: !2450)
!2815 = !DILocation(line: 491, column: 17, scope: !2450)
!2816 = !DILocation(line: 491, column: 24, scope: !2450)
!2817 = !DILocation(line: 491, column: 35, scope: !2450)
!2818 = !DILocation(line: 491, column: 42, scope: !2450)
!2819 = !DILocation(line: 491, column: 46, scope: !2450)
!2820 = !DILocation(line: 491, column: 29, scope: !2450)
!2821 = !DILocation(line: 491, column: 51, scope: !2450)
!2822 = distinct !{!2822, !2811, !2823, !981, !982}
!2823 = !DILocation(line: 491, column: 53, scope: !2450)
!2824 = !DILocation(line: 492, column: 27, scope: !2450)
!2825 = !DILocation(line: 492, column: 34, scope: !2450)
!2826 = !DILocation(line: 492, column: 13, scope: !2450)
!2827 = !DILocation(line: 492, column: 20, scope: !2450)
!2828 = !DILocation(line: 492, column: 25, scope: !2450)
!2829 = !DILocation(line: 493, column: 45, scope: !2450)
!2830 = !DILocation(line: 493, column: 52, scope: !2450)
!2831 = !DILocation(line: 493, column: 13, scope: !2450)
!2832 = !DILocation(line: 493, column: 20, scope: !2450)
!2833 = !DILocation(line: 493, column: 28, scope: !2450)
!2834 = !DILocation(line: 494, column: 13, scope: !2450)
!2835 = !DILocation(line: 494, column: 20, scope: !2450)
!2836 = !DILocation(line: 494, column: 28, scope: !2450)
!2837 = !DILocation(line: 495, column: 45, scope: !2450)
!2838 = !DILocation(line: 495, column: 52, scope: !2450)
!2839 = !DILocation(line: 495, column: 64, scope: !2450)
!2840 = !DILocation(line: 495, column: 71, scope: !2450)
!2841 = !DILocation(line: 496, column: 35, scope: !2450)
!2842 = !DILocation(line: 496, column: 42, scope: !2450)
!2843 = !DILocation(line: 496, column: 52, scope: !2450)
!2844 = !DILocation(line: 496, column: 59, scope: !2450)
!2845 = !DILocation(line: 495, column: 19, scope: !2450)
!2846 = !DILocation(line: 495, column: 17, scope: !2450)
!2847 = !DILocation(line: 497, column: 17, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 497, column: 17)
!2849 = !DILocation(line: 497, column: 17, scope: !2450)
!2850 = !DILocation(line: 498, column: 17, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2848, file: !220, line: 497, column: 22)
!2852 = !DILocation(line: 498, column: 23, scope: !2851)
!2853 = !DILocation(line: 498, column: 27, scope: !2851)
!2854 = !DILocation(line: 499, column: 17, scope: !2851)
!2855 = !DILocation(line: 499, column: 24, scope: !2851)
!2856 = !DILocation(line: 499, column: 29, scope: !2851)
!2857 = !DILocation(line: 500, column: 17, scope: !2851)
!2858 = !DILocation(line: 502, column: 13, scope: !2450)
!2859 = !DILocation(line: 502, column: 20, scope: !2450)
!2860 = !DILocation(line: 502, column: 25, scope: !2450)
!2861 = !DILocation(line: 503, column: 13, scope: !2450)
!2862 = !DILocation(line: 503, column: 20, scope: !2450)
!2863 = !DILocation(line: 503, column: 25, scope: !2450)
!2864 = !DILocation(line: 506, column: 13, scope: !2450)
!2865 = !DILocation(line: 506, column: 20, scope: !2450)
!2866 = !DILocation(line: 506, column: 27, scope: !2450)
!2867 = !DILocation(line: 506, column: 34, scope: !2450)
!2868 = !DILocation(line: 506, column: 41, scope: !2450)
!2869 = !DILocation(line: 506, column: 48, scope: !2450)
!2870 = !DILocation(line: 506, column: 55, scope: !2450)
!2871 = !DILocation(line: 506, column: 46, scope: !2450)
!2872 = !DILocation(line: 506, column: 32, scope: !2450)
!2873 = !DILocation(line: 507, column: 17, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 506, column: 62)
!2875 = !DILocation(line: 508, column: 28, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !220, line: 507, column: 26)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !220, line: 507, column: 17)
!2878 = distinct !DILexicalBlock(scope: !2874, file: !220, line: 507, column: 17)
!2879 = !DILocation(line: 508, column: 35, scope: !2876)
!2880 = !DILocation(line: 508, column: 43, scope: !2876)
!2881 = !DILocation(line: 509, column: 41, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2876, file: !220, line: 509, column: 25)
!2883 = !DILocation(line: 509, column: 25, scope: !2882)
!2884 = !DILocation(line: 509, column: 50, scope: !2882)
!2885 = !DILocation(line: 509, column: 47, scope: !2882)
!2886 = !DILocation(line: 509, column: 25, scope: !2876)
!2887 = !DILocation(line: 509, column: 56, scope: !2882)
!2888 = !DILocation(line: 510, column: 21, scope: !2876)
!2889 = !DILocation(line: 510, column: 21, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !220, line: 510, column: 21)
!2891 = distinct !DILexicalBlock(scope: !2876, file: !220, line: 510, column: 21)
!2892 = !DILocation(line: 510, column: 21, scope: !2891)
!2893 = !DILocation(line: 507, column: 17, scope: !2877)
!2894 = distinct !{!2894, !2895, !2896, !982}
!2895 = !DILocation(line: 507, column: 17, scope: !2878)
!2896 = !DILocation(line: 511, column: 17, scope: !2878)
!2897 = !DILocation(line: 512, column: 26, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2874, file: !220, line: 512, column: 21)
!2899 = !DILocation(line: 512, column: 21, scope: !2898)
!2900 = !DILocation(line: 512, column: 30, scope: !2898)
!2901 = !DILocation(line: 512, column: 21, scope: !2874)
!2902 = !DILocation(line: 513, column: 21, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2898, file: !220, line: 512, column: 36)
!2904 = !DILocation(line: 513, column: 21, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2903, file: !220, line: 513, column: 21)
!2906 = !DILocation(line: 513, column: 21, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !220, line: 513, column: 21)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !220, line: 513, column: 21)
!2909 = !DILocation(line: 513, column: 21, scope: !2908)
!2910 = distinct !{!2910, !2904, !2904, !981, !982}
!2911 = !DILocation(line: 514, column: 21, scope: !2903)
!2912 = !DILocation(line: 514, column: 21, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2903, file: !220, line: 514, column: 21)
!2914 = !DILocation(line: 515, column: 55, scope: !2903)
!2915 = !DILocation(line: 515, column: 21, scope: !2903)
!2916 = !DILocation(line: 515, column: 28, scope: !2903)
!2917 = !DILocation(line: 515, column: 33, scope: !2903)
!2918 = !DILocation(line: 515, column: 40, scope: !2903)
!2919 = !DILocation(line: 515, column: 44, scope: !2903)
!2920 = !DILocation(line: 515, column: 48, scope: !2903)
!2921 = !DILocation(line: 516, column: 17, scope: !2903)
!2922 = !DILocation(line: 518, column: 30, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !220, line: 518, column: 25)
!2924 = distinct !DILexicalBlock(scope: !2898, file: !220, line: 517, column: 22)
!2925 = !DILocation(line: 518, column: 25, scope: !2923)
!2926 = !DILocation(line: 518, column: 34, scope: !2923)
!2927 = !DILocation(line: 518, column: 25, scope: !2924)
!2928 = !DILocation(line: 519, column: 25, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2923, file: !220, line: 518, column: 41)
!2930 = !DILocation(line: 519, column: 25, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2929, file: !220, line: 519, column: 25)
!2932 = !DILocation(line: 519, column: 25, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !220, line: 519, column: 25)
!2934 = distinct !DILexicalBlock(scope: !2931, file: !220, line: 519, column: 25)
!2935 = !DILocation(line: 519, column: 25, scope: !2934)
!2936 = distinct !{!2936, !2930, !2930, !981, !982}
!2937 = !DILocation(line: 520, column: 25, scope: !2929)
!2938 = !DILocation(line: 520, column: 25, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2929, file: !220, line: 520, column: 25)
!2940 = !DILocation(line: 521, column: 29, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2929, file: !220, line: 521, column: 29)
!2942 = !DILocation(line: 521, column: 36, scope: !2941)
!2943 = !DILocation(line: 521, column: 41, scope: !2941)
!2944 = !DILocation(line: 521, column: 29, scope: !2929)
!2945 = !DILocation(line: 522, column: 29, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2941, file: !220, line: 521, column: 47)
!2947 = !DILocation(line: 522, column: 35, scope: !2946)
!2948 = !DILocation(line: 522, column: 39, scope: !2946)
!2949 = !DILocation(line: 523, column: 29, scope: !2946)
!2950 = !DILocation(line: 523, column: 36, scope: !2946)
!2951 = !DILocation(line: 523, column: 41, scope: !2946)
!2952 = !DILocation(line: 524, column: 29, scope: !2946)
!2953 = !DILocation(line: 526, column: 31, scope: !2929)
!2954 = !DILocation(line: 526, column: 38, scope: !2929)
!2955 = !DILocation(line: 526, column: 43, scope: !2929)
!2956 = !DILocation(line: 526, column: 50, scope: !2929)
!2957 = !DILocation(line: 526, column: 55, scope: !2929)
!2958 = !DILocation(line: 526, column: 29, scope: !2929)
!2959 = !DILocation(line: 527, column: 36, scope: !2929)
!2960 = !DILocation(line: 527, column: 34, scope: !2929)
!2961 = !DILocation(line: 527, column: 30, scope: !2929)
!2962 = !DILocation(line: 528, column: 25, scope: !2929)
!2963 = !DILocation(line: 528, column: 25, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2929, file: !220, line: 528, column: 25)
!2965 = !DILocation(line: 529, column: 21, scope: !2929)
!2966 = !DILocation(line: 530, column: 35, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2923, file: !220, line: 530, column: 30)
!2968 = !DILocation(line: 530, column: 30, scope: !2967)
!2969 = !DILocation(line: 530, column: 39, scope: !2967)
!2970 = !DILocation(line: 530, column: 30, scope: !2923)
!2971 = !DILocation(line: 531, column: 25, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2967, file: !220, line: 530, column: 46)
!2973 = !DILocation(line: 531, column: 25, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2972, file: !220, line: 531, column: 25)
!2975 = !DILocation(line: 531, column: 25, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !220, line: 531, column: 25)
!2977 = distinct !DILexicalBlock(scope: !2974, file: !220, line: 531, column: 25)
!2978 = !DILocation(line: 531, column: 25, scope: !2977)
!2979 = distinct !{!2979, !2973, !2973, !981, !982}
!2980 = !DILocation(line: 532, column: 25, scope: !2972)
!2981 = !DILocation(line: 532, column: 25, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2972, file: !220, line: 532, column: 25)
!2983 = !DILocation(line: 533, column: 29, scope: !2972)
!2984 = !DILocation(line: 534, column: 36, scope: !2972)
!2985 = !DILocation(line: 534, column: 34, scope: !2972)
!2986 = !DILocation(line: 534, column: 30, scope: !2972)
!2987 = !DILocation(line: 535, column: 25, scope: !2972)
!2988 = !DILocation(line: 535, column: 25, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2972, file: !220, line: 535, column: 25)
!2990 = !DILocation(line: 536, column: 21, scope: !2972)
!2991 = !DILocation(line: 538, column: 25, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2967, file: !220, line: 537, column: 26)
!2993 = !DILocation(line: 538, column: 25, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2992, file: !220, line: 538, column: 25)
!2995 = !DILocation(line: 538, column: 25, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !220, line: 538, column: 25)
!2997 = distinct !DILexicalBlock(scope: !2994, file: !220, line: 538, column: 25)
!2998 = !DILocation(line: 538, column: 25, scope: !2997)
!2999 = distinct !{!2999, !2993, !2993, !981, !982}
!3000 = !DILocation(line: 539, column: 25, scope: !2992)
!3001 = !DILocation(line: 539, column: 25, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2992, file: !220, line: 539, column: 25)
!3003 = !DILocation(line: 540, column: 29, scope: !2992)
!3004 = !DILocation(line: 541, column: 37, scope: !2992)
!3005 = !DILocation(line: 541, column: 35, scope: !2992)
!3006 = !DILocation(line: 541, column: 30, scope: !2992)
!3007 = !DILocation(line: 542, column: 25, scope: !2992)
!3008 = !DILocation(line: 542, column: 25, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2992, file: !220, line: 542, column: 25)
!3010 = !DILocation(line: 544, column: 25, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2924, file: !220, line: 544, column: 25)
!3012 = !DILocation(line: 544, column: 32, scope: !3011)
!3013 = !DILocation(line: 544, column: 39, scope: !3011)
!3014 = !DILocation(line: 544, column: 37, scope: !3011)
!3015 = !DILocation(line: 544, column: 46, scope: !3011)
!3016 = !DILocation(line: 544, column: 53, scope: !3011)
!3017 = !DILocation(line: 544, column: 60, scope: !3011)
!3018 = !DILocation(line: 544, column: 67, scope: !3011)
!3019 = !DILocation(line: 544, column: 58, scope: !3011)
!3020 = !DILocation(line: 544, column: 44, scope: !3011)
!3021 = !DILocation(line: 544, column: 25, scope: !2924)
!3022 = !DILocation(line: 545, column: 25, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3011, file: !220, line: 544, column: 74)
!3024 = !DILocation(line: 545, column: 31, scope: !3023)
!3025 = !DILocation(line: 545, column: 35, scope: !3023)
!3026 = !DILocation(line: 546, column: 25, scope: !3023)
!3027 = !DILocation(line: 546, column: 32, scope: !3023)
!3028 = !DILocation(line: 546, column: 37, scope: !3023)
!3029 = !DILocation(line: 547, column: 25, scope: !3023)
!3030 = !DILocation(line: 549, column: 21, scope: !2924)
!3031 = !DILocation(line: 549, column: 32, scope: !2924)
!3032 = !DILocation(line: 550, column: 70, scope: !2924)
!3033 = !DILocation(line: 550, column: 54, scope: !2924)
!3034 = !DILocation(line: 550, column: 25, scope: !2924)
!3035 = !DILocation(line: 550, column: 32, scope: !2924)
!3036 = !DILocation(line: 550, column: 37, scope: !2924)
!3037 = !DILocation(line: 550, column: 44, scope: !2924)
!3038 = !DILocation(line: 550, column: 48, scope: !2924)
!3039 = !DILocation(line: 550, column: 52, scope: !2924)
!3040 = distinct !{!3040, !3030, !3032, !981, !982}
!3041 = distinct !{!3041, !2864, !3042, !981, !982}
!3042 = !DILocation(line: 552, column: 13, scope: !2450)
!3043 = !DILocation(line: 555, column: 17, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 555, column: 17)
!3045 = !DILocation(line: 555, column: 24, scope: !3044)
!3046 = !DILocation(line: 555, column: 29, scope: !3044)
!3047 = !DILocation(line: 555, column: 17, scope: !2450)
!3048 = !DILocation(line: 555, column: 37, scope: !3044)
!3049 = !DILocation(line: 558, column: 27, scope: !2450)
!3050 = !DILocation(line: 558, column: 34, scope: !2450)
!3051 = !DILocation(line: 558, column: 13, scope: !2450)
!3052 = !DILocation(line: 558, column: 20, scope: !2450)
!3053 = !DILocation(line: 558, column: 25, scope: !2450)
!3054 = !DILocation(line: 559, column: 45, scope: !2450)
!3055 = !DILocation(line: 559, column: 52, scope: !2450)
!3056 = !DILocation(line: 559, column: 13, scope: !2450)
!3057 = !DILocation(line: 559, column: 20, scope: !2450)
!3058 = !DILocation(line: 559, column: 28, scope: !2450)
!3059 = !DILocation(line: 560, column: 13, scope: !2450)
!3060 = !DILocation(line: 560, column: 20, scope: !2450)
!3061 = !DILocation(line: 560, column: 28, scope: !2450)
!3062 = !DILocation(line: 561, column: 44, scope: !2450)
!3063 = !DILocation(line: 561, column: 51, scope: !2450)
!3064 = !DILocation(line: 561, column: 57, scope: !2450)
!3065 = !DILocation(line: 561, column: 64, scope: !2450)
!3066 = !DILocation(line: 561, column: 72, scope: !2450)
!3067 = !DILocation(line: 561, column: 79, scope: !2450)
!3068 = !DILocation(line: 562, column: 35, scope: !2450)
!3069 = !DILocation(line: 562, column: 42, scope: !2450)
!3070 = !DILocation(line: 562, column: 52, scope: !2450)
!3071 = !DILocation(line: 562, column: 59, scope: !2450)
!3072 = !DILocation(line: 561, column: 19, scope: !2450)
!3073 = !DILocation(line: 561, column: 17, scope: !2450)
!3074 = !DILocation(line: 563, column: 17, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 563, column: 17)
!3076 = !DILocation(line: 563, column: 17, scope: !2450)
!3077 = !DILocation(line: 564, column: 17, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3075, file: !220, line: 563, column: 22)
!3079 = !DILocation(line: 564, column: 23, scope: !3078)
!3080 = !DILocation(line: 564, column: 27, scope: !3078)
!3081 = !DILocation(line: 565, column: 17, scope: !3078)
!3082 = !DILocation(line: 565, column: 24, scope: !3078)
!3083 = !DILocation(line: 565, column: 29, scope: !3078)
!3084 = !DILocation(line: 566, column: 17, scope: !3078)
!3085 = !DILocation(line: 568, column: 46, scope: !2450)
!3086 = !DILocation(line: 568, column: 53, scope: !2450)
!3087 = !DILocation(line: 568, column: 13, scope: !2450)
!3088 = !DILocation(line: 568, column: 20, scope: !2450)
!3089 = !DILocation(line: 568, column: 29, scope: !2450)
!3090 = !DILocation(line: 569, column: 13, scope: !2450)
!3091 = !DILocation(line: 569, column: 20, scope: !2450)
!3092 = !DILocation(line: 569, column: 29, scope: !2450)
!3093 = !DILocation(line: 570, column: 45, scope: !2450)
!3094 = !DILocation(line: 570, column: 52, scope: !2450)
!3095 = !DILocation(line: 570, column: 59, scope: !2450)
!3096 = !DILocation(line: 570, column: 66, scope: !2450)
!3097 = !DILocation(line: 570, column: 57, scope: !2450)
!3098 = !DILocation(line: 570, column: 72, scope: !2450)
!3099 = !DILocation(line: 570, column: 79, scope: !2450)
!3100 = !DILocation(line: 571, column: 31, scope: !2450)
!3101 = !DILocation(line: 571, column: 38, scope: !2450)
!3102 = !DILocation(line: 571, column: 47, scope: !2450)
!3103 = !DILocation(line: 571, column: 54, scope: !2450)
!3104 = !DILocation(line: 571, column: 65, scope: !2450)
!3105 = !DILocation(line: 571, column: 72, scope: !2450)
!3106 = !DILocation(line: 570, column: 19, scope: !2450)
!3107 = !DILocation(line: 570, column: 17, scope: !2450)
!3108 = !DILocation(line: 572, column: 17, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 572, column: 17)
!3110 = !DILocation(line: 572, column: 17, scope: !2450)
!3111 = !DILocation(line: 573, column: 17, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !220, line: 572, column: 22)
!3113 = !DILocation(line: 573, column: 23, scope: !3112)
!3114 = !DILocation(line: 573, column: 27, scope: !3112)
!3115 = !DILocation(line: 574, column: 17, scope: !3112)
!3116 = !DILocation(line: 574, column: 24, scope: !3112)
!3117 = !DILocation(line: 574, column: 29, scope: !3112)
!3118 = !DILocation(line: 575, column: 17, scope: !3112)
!3119 = !DILocation(line: 577, column: 13, scope: !2450)
!3120 = !DILocation(line: 577, column: 20, scope: !2450)
!3121 = !DILocation(line: 577, column: 25, scope: !2450)
!3122 = !DILocation(line: 580, column: 17, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 580, column: 17)
!3124 = !DILocation(line: 580, column: 22, scope: !3123)
!3125 = !DILocation(line: 580, column: 27, scope: !3123)
!3126 = !DILocation(line: 580, column: 30, scope: !3123)
!3127 = !DILocation(line: 580, column: 35, scope: !3123)
!3128 = !DILocation(line: 580, column: 17, scope: !2450)
!3129 = !DILocation(line: 581, column: 17, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3123, file: !220, line: 580, column: 43)
!3131 = !DILocation(line: 581, column: 17, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3130, file: !220, line: 581, column: 17)
!3133 = !DILocation(line: 582, column: 30, scope: !3130)
!3134 = !DILocation(line: 582, column: 36, scope: !3130)
!3135 = !DILocation(line: 582, column: 17, scope: !3130)
!3136 = !DILocation(line: 583, column: 17, scope: !3130)
!3137 = !DILocation(line: 583, column: 17, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3130, file: !220, line: 583, column: 17)
!3139 = !DILocation(line: 584, column: 17, scope: !3130)
!3140 = !DILocation(line: 586, column: 13, scope: !2450)
!3141 = !DILocation(line: 587, column: 24, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !220, line: 586, column: 22)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !220, line: 586, column: 13)
!3144 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 586, column: 13)
!3145 = !DILocation(line: 587, column: 31, scope: !3142)
!3146 = !DILocation(line: 587, column: 39, scope: !3142)
!3147 = !DILocation(line: 588, column: 37, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3142, file: !220, line: 588, column: 21)
!3149 = !DILocation(line: 588, column: 21, scope: !3148)
!3150 = !DILocation(line: 588, column: 46, scope: !3148)
!3151 = !DILocation(line: 588, column: 43, scope: !3148)
!3152 = !DILocation(line: 588, column: 21, scope: !3142)
!3153 = !DILocation(line: 588, column: 52, scope: !3148)
!3154 = !DILocation(line: 589, column: 17, scope: !3142)
!3155 = !DILocation(line: 589, column: 17, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !220, line: 589, column: 17)
!3157 = distinct !DILexicalBlock(scope: !3142, file: !220, line: 589, column: 17)
!3158 = !DILocation(line: 589, column: 17, scope: !3157)
!3159 = !DILocation(line: 586, column: 13, scope: !3143)
!3160 = distinct !{!3160, !3161, !3162, !982}
!3161 = !DILocation(line: 586, column: 13, scope: !3144)
!3162 = !DILocation(line: 590, column: 13, scope: !3144)
!3163 = !DILocation(line: 591, column: 22, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 591, column: 17)
!3165 = !DILocation(line: 591, column: 17, scope: !3164)
!3166 = !DILocation(line: 591, column: 25, scope: !3164)
!3167 = !DILocation(line: 591, column: 34, scope: !3164)
!3168 = !DILocation(line: 591, column: 29, scope: !3164)
!3169 = !DILocation(line: 591, column: 37, scope: !3164)
!3170 = !DILocation(line: 591, column: 45, scope: !3164)
!3171 = !DILocation(line: 591, column: 17, scope: !2450)
!3172 = !DILocation(line: 592, column: 24, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3164, file: !220, line: 591, column: 51)
!3174 = !DILocation(line: 593, column: 17, scope: !3173)
!3175 = !DILocation(line: 594, column: 28, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !220, line: 593, column: 26)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !220, line: 593, column: 17)
!3178 = distinct !DILexicalBlock(scope: !3173, file: !220, line: 593, column: 17)
!3179 = !DILocation(line: 594, column: 35, scope: !3176)
!3180 = !DILocation(line: 594, column: 48, scope: !3176)
!3181 = !DILocation(line: 594, column: 43, scope: !3176)
!3182 = !DILocation(line: 595, column: 30, scope: !3176)
!3183 = !DILocation(line: 595, column: 64, scope: !3176)
!3184 = !DILocation(line: 595, column: 59, scope: !3176)
!3185 = !DILocation(line: 595, column: 56, scope: !3176)
!3186 = !DILocation(line: 594, column: 52, scope: !3176)
!3187 = !DILocation(line: 596, column: 41, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3176, file: !220, line: 596, column: 25)
!3189 = !DILocation(line: 596, column: 36, scope: !3188)
!3190 = !DILocation(line: 596, column: 53, scope: !3188)
!3191 = !DILocation(line: 596, column: 48, scope: !3188)
!3192 = !DILocation(line: 596, column: 46, scope: !3188)
!3193 = !DILocation(line: 596, column: 62, scope: !3188)
!3194 = !DILocation(line: 596, column: 59, scope: !3188)
!3195 = !DILocation(line: 596, column: 25, scope: !3176)
!3196 = !DILocation(line: 596, column: 68, scope: !3188)
!3197 = !DILocation(line: 597, column: 21, scope: !3176)
!3198 = !DILocation(line: 597, column: 21, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !220, line: 597, column: 21)
!3200 = distinct !DILexicalBlock(scope: !3176, file: !220, line: 597, column: 21)
!3201 = !DILocation(line: 597, column: 21, scope: !3200)
!3202 = !DILocation(line: 593, column: 17, scope: !3177)
!3203 = distinct !{!3203, !3204, !3205, !982}
!3204 = !DILocation(line: 593, column: 17, scope: !3178)
!3205 = !DILocation(line: 598, column: 17, scope: !3178)
!3206 = !DILocation(line: 599, column: 17, scope: !3173)
!3207 = !DILocation(line: 599, column: 17, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3173, file: !220, line: 599, column: 17)
!3209 = !DILocation(line: 600, column: 13, scope: !3173)
!3210 = !DILocation(line: 601, column: 13, scope: !2450)
!3211 = !DILocation(line: 601, column: 13, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 601, column: 13)
!3213 = !DILocation(line: 602, column: 44, scope: !2450)
!3214 = !DILocation(line: 602, column: 29, scope: !2450)
!3215 = !DILocation(line: 602, column: 13, scope: !2450)
!3216 = !DILocation(line: 602, column: 20, scope: !2450)
!3217 = !DILocation(line: 602, column: 27, scope: !2450)
!3218 = !DILocation(line: 603, column: 28, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 603, column: 17)
!3220 = !DILocation(line: 603, column: 17, scope: !3219)
!3221 = !DILocation(line: 603, column: 32, scope: !3219)
!3222 = !DILocation(line: 603, column: 17, scope: !2450)
!3223 = !DILocation(line: 604, column: 17, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3219, file: !220, line: 603, column: 38)
!3225 = !DILocation(line: 604, column: 24, scope: !3224)
!3226 = !DILocation(line: 604, column: 29, scope: !3224)
!3227 = !DILocation(line: 605, column: 17, scope: !3224)
!3228 = !DILocation(line: 607, column: 22, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 607, column: 17)
!3230 = !DILocation(line: 607, column: 17, scope: !3229)
!3231 = !DILocation(line: 607, column: 25, scope: !3229)
!3232 = !DILocation(line: 607, column: 17, scope: !2450)
!3233 = !DILocation(line: 608, column: 17, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3229, file: !220, line: 607, column: 31)
!3235 = !DILocation(line: 608, column: 24, scope: !3234)
!3236 = !DILocation(line: 608, column: 29, scope: !3234)
!3237 = !DILocation(line: 609, column: 17, scope: !3234)
!3238 = !DILocation(line: 611, column: 22, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 611, column: 17)
!3240 = !DILocation(line: 611, column: 17, scope: !3239)
!3241 = !DILocation(line: 611, column: 25, scope: !3239)
!3242 = !DILocation(line: 611, column: 17, scope: !2450)
!3243 = !DILocation(line: 612, column: 17, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3239, file: !220, line: 611, column: 31)
!3245 = !DILocation(line: 612, column: 23, scope: !3244)
!3246 = !DILocation(line: 612, column: 27, scope: !3244)
!3247 = !DILocation(line: 613, column: 17, scope: !3244)
!3248 = !DILocation(line: 613, column: 24, scope: !3244)
!3249 = !DILocation(line: 613, column: 29, scope: !3244)
!3250 = !DILocation(line: 614, column: 17, scope: !3244)
!3251 = !DILocation(line: 616, column: 44, scope: !2450)
!3252 = !DILocation(line: 616, column: 28, scope: !2450)
!3253 = !DILocation(line: 616, column: 48, scope: !2450)
!3254 = !DILocation(line: 616, column: 13, scope: !2450)
!3255 = !DILocation(line: 616, column: 20, scope: !2450)
!3256 = !DILocation(line: 616, column: 26, scope: !2450)
!3257 = !DILocation(line: 617, column: 13, scope: !2450)
!3258 = !DILocation(line: 617, column: 20, scope: !2450)
!3259 = !DILocation(line: 617, column: 25, scope: !2450)
!3260 = !DILocation(line: 620, column: 17, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 620, column: 17)
!3262 = !DILocation(line: 620, column: 24, scope: !3261)
!3263 = !DILocation(line: 620, column: 17, scope: !2450)
!3264 = !DILocation(line: 621, column: 17, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3261, file: !220, line: 620, column: 31)
!3266 = !DILocation(line: 621, column: 17, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3265, file: !220, line: 621, column: 17)
!3268 = !DILocation(line: 621, column: 17, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !220, line: 621, column: 17)
!3270 = distinct !DILexicalBlock(scope: !3267, file: !220, line: 621, column: 17)
!3271 = !DILocation(line: 621, column: 17, scope: !3270)
!3272 = distinct !{!3272, !3266, !3266, !981, !982}
!3273 = !DILocation(line: 622, column: 34, scope: !3265)
!3274 = !DILocation(line: 622, column: 17, scope: !3265)
!3275 = !DILocation(line: 622, column: 24, scope: !3265)
!3276 = !DILocation(line: 622, column: 31, scope: !3265)
!3277 = !DILocation(line: 623, column: 17, scope: !3265)
!3278 = !DILocation(line: 623, column: 17, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3265, file: !220, line: 623, column: 17)
!3280 = !DILocation(line: 624, column: 13, scope: !3265)
!3281 = !DILocation(line: 625, column: 13, scope: !2450)
!3282 = !DILocation(line: 625, column: 20, scope: !2450)
!3283 = !DILocation(line: 625, column: 25, scope: !2450)
!3284 = !DILocation(line: 628, column: 13, scope: !2450)
!3285 = !DILocation(line: 629, column: 24, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !220, line: 628, column: 22)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !220, line: 628, column: 13)
!3288 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 628, column: 13)
!3289 = !DILocation(line: 629, column: 31, scope: !3286)
!3290 = !DILocation(line: 629, column: 40, scope: !3286)
!3291 = !DILocation(line: 630, column: 37, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3286, file: !220, line: 630, column: 21)
!3293 = !DILocation(line: 630, column: 21, scope: !3292)
!3294 = !DILocation(line: 630, column: 46, scope: !3292)
!3295 = !DILocation(line: 630, column: 43, scope: !3292)
!3296 = !DILocation(line: 630, column: 21, scope: !3286)
!3297 = !DILocation(line: 630, column: 52, scope: !3292)
!3298 = !DILocation(line: 631, column: 17, scope: !3286)
!3299 = !DILocation(line: 631, column: 17, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !220, line: 631, column: 17)
!3301 = distinct !DILexicalBlock(scope: !3286, file: !220, line: 631, column: 17)
!3302 = !DILocation(line: 631, column: 17, scope: !3301)
!3303 = !DILocation(line: 628, column: 13, scope: !3287)
!3304 = distinct !{!3304, !3305, !3306, !982}
!3305 = !DILocation(line: 628, column: 13, scope: !3288)
!3306 = !DILocation(line: 632, column: 13, scope: !3288)
!3307 = !DILocation(line: 633, column: 23, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 633, column: 17)
!3309 = !DILocation(line: 633, column: 18, scope: !3308)
!3310 = !DILocation(line: 633, column: 26, scope: !3308)
!3311 = !DILocation(line: 633, column: 34, scope: !3308)
!3312 = !DILocation(line: 633, column: 17, scope: !2450)
!3313 = !DILocation(line: 634, column: 24, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3308, file: !220, line: 633, column: 40)
!3315 = !DILocation(line: 635, column: 17, scope: !3314)
!3316 = !DILocation(line: 636, column: 28, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !220, line: 635, column: 26)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !220, line: 635, column: 17)
!3319 = distinct !DILexicalBlock(scope: !3314, file: !220, line: 635, column: 17)
!3320 = !DILocation(line: 636, column: 35, scope: !3317)
!3321 = !DILocation(line: 636, column: 49, scope: !3317)
!3322 = !DILocation(line: 636, column: 44, scope: !3317)
!3323 = !DILocation(line: 637, column: 30, scope: !3317)
!3324 = !DILocation(line: 637, column: 64, scope: !3317)
!3325 = !DILocation(line: 637, column: 59, scope: !3317)
!3326 = !DILocation(line: 637, column: 56, scope: !3317)
!3327 = !DILocation(line: 636, column: 53, scope: !3317)
!3328 = !DILocation(line: 638, column: 41, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3317, file: !220, line: 638, column: 25)
!3330 = !DILocation(line: 638, column: 36, scope: !3329)
!3331 = !DILocation(line: 638, column: 53, scope: !3329)
!3332 = !DILocation(line: 638, column: 48, scope: !3329)
!3333 = !DILocation(line: 638, column: 46, scope: !3329)
!3334 = !DILocation(line: 638, column: 62, scope: !3329)
!3335 = !DILocation(line: 638, column: 59, scope: !3329)
!3336 = !DILocation(line: 638, column: 25, scope: !3317)
!3337 = !DILocation(line: 638, column: 68, scope: !3329)
!3338 = !DILocation(line: 639, column: 21, scope: !3317)
!3339 = !DILocation(line: 639, column: 21, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !220, line: 639, column: 21)
!3341 = distinct !DILexicalBlock(scope: !3317, file: !220, line: 639, column: 21)
!3342 = !DILocation(line: 639, column: 21, scope: !3341)
!3343 = !DILocation(line: 635, column: 17, scope: !3318)
!3344 = distinct !{!3344, !3345, !3346, !982}
!3345 = !DILocation(line: 635, column: 17, scope: !3319)
!3346 = !DILocation(line: 640, column: 17, scope: !3319)
!3347 = !DILocation(line: 641, column: 17, scope: !3314)
!3348 = !DILocation(line: 641, column: 17, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3314, file: !220, line: 641, column: 17)
!3350 = !DILocation(line: 642, column: 13, scope: !3314)
!3351 = !DILocation(line: 643, column: 13, scope: !2450)
!3352 = !DILocation(line: 643, column: 13, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 643, column: 13)
!3354 = !DILocation(line: 644, column: 22, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 644, column: 17)
!3356 = !DILocation(line: 644, column: 17, scope: !3355)
!3357 = !DILocation(line: 644, column: 25, scope: !3355)
!3358 = !DILocation(line: 644, column: 17, scope: !2450)
!3359 = !DILocation(line: 645, column: 17, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3355, file: !220, line: 644, column: 31)
!3361 = !DILocation(line: 645, column: 23, scope: !3360)
!3362 = !DILocation(line: 645, column: 27, scope: !3360)
!3363 = !DILocation(line: 646, column: 17, scope: !3360)
!3364 = !DILocation(line: 646, column: 24, scope: !3360)
!3365 = !DILocation(line: 646, column: 29, scope: !3360)
!3366 = !DILocation(line: 647, column: 17, scope: !3360)
!3367 = !DILocation(line: 649, column: 44, scope: !2450)
!3368 = !DILocation(line: 649, column: 29, scope: !2450)
!3369 = !DILocation(line: 649, column: 13, scope: !2450)
!3370 = !DILocation(line: 649, column: 20, scope: !2450)
!3371 = !DILocation(line: 649, column: 27, scope: !2450)
!3372 = !DILocation(line: 650, column: 44, scope: !2450)
!3373 = !DILocation(line: 650, column: 28, scope: !2450)
!3374 = !DILocation(line: 650, column: 48, scope: !2450)
!3375 = !DILocation(line: 650, column: 13, scope: !2450)
!3376 = !DILocation(line: 650, column: 20, scope: !2450)
!3377 = !DILocation(line: 650, column: 26, scope: !2450)
!3378 = !DILocation(line: 651, column: 13, scope: !2450)
!3379 = !DILocation(line: 651, column: 20, scope: !2450)
!3380 = !DILocation(line: 651, column: 25, scope: !2450)
!3381 = !DILocation(line: 654, column: 17, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 654, column: 17)
!3383 = !DILocation(line: 654, column: 24, scope: !3382)
!3384 = !DILocation(line: 654, column: 17, scope: !2450)
!3385 = !DILocation(line: 655, column: 17, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3382, file: !220, line: 654, column: 31)
!3387 = !DILocation(line: 655, column: 17, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3386, file: !220, line: 655, column: 17)
!3389 = !DILocation(line: 655, column: 17, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !220, line: 655, column: 17)
!3391 = distinct !DILexicalBlock(scope: !3388, file: !220, line: 655, column: 17)
!3392 = !DILocation(line: 655, column: 17, scope: !3391)
!3393 = distinct !{!3393, !3387, !3387, !981, !982}
!3394 = !DILocation(line: 656, column: 34, scope: !3386)
!3395 = !DILocation(line: 656, column: 17, scope: !3386)
!3396 = !DILocation(line: 656, column: 24, scope: !3386)
!3397 = !DILocation(line: 656, column: 31, scope: !3386)
!3398 = !DILocation(line: 657, column: 17, scope: !3386)
!3399 = !DILocation(line: 657, column: 17, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3386, file: !220, line: 657, column: 17)
!3401 = !DILocation(line: 658, column: 13, scope: !3386)
!3402 = !DILocation(line: 666, column: 17, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 666, column: 17)
!3404 = !DILocation(line: 666, column: 24, scope: !3403)
!3405 = !DILocation(line: 666, column: 33, scope: !3403)
!3406 = !DILocation(line: 666, column: 40, scope: !3403)
!3407 = !DILocation(line: 666, column: 48, scope: !3403)
!3408 = !DILocation(line: 666, column: 46, scope: !3403)
!3409 = !DILocation(line: 666, column: 54, scope: !3403)
!3410 = !DILocation(line: 666, column: 52, scope: !3403)
!3411 = !DILocation(line: 666, column: 31, scope: !3403)
!3412 = !DILocation(line: 666, column: 17, scope: !2450)
!3413 = !DILocation(line: 667, column: 17, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3403, file: !220, line: 666, column: 60)
!3415 = !DILocation(line: 667, column: 23, scope: !3414)
!3416 = !DILocation(line: 667, column: 27, scope: !3414)
!3417 = !DILocation(line: 668, column: 17, scope: !3414)
!3418 = !DILocation(line: 668, column: 24, scope: !3414)
!3419 = !DILocation(line: 668, column: 29, scope: !3414)
!3420 = !DILocation(line: 669, column: 17, scope: !3414)
!3421 = !DILocation(line: 671, column: 13, scope: !2450)
!3422 = !DILocation(line: 671, column: 20, scope: !2450)
!3423 = !DILocation(line: 671, column: 25, scope: !2450)
!3424 = !DILocation(line: 674, column: 17, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 674, column: 17)
!3426 = !DILocation(line: 674, column: 22, scope: !3425)
!3427 = !DILocation(line: 674, column: 17, scope: !2450)
!3428 = !DILocation(line: 674, column: 28, scope: !3425)
!3429 = !DILocation(line: 675, column: 20, scope: !2450)
!3430 = !DILocation(line: 675, column: 26, scope: !2450)
!3431 = !DILocation(line: 675, column: 24, scope: !2450)
!3432 = !DILocation(line: 675, column: 18, scope: !2450)
!3433 = !DILocation(line: 676, column: 17, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 676, column: 17)
!3435 = !DILocation(line: 676, column: 24, scope: !3434)
!3436 = !DILocation(line: 676, column: 33, scope: !3434)
!3437 = !DILocation(line: 676, column: 31, scope: !3434)
!3438 = !DILocation(line: 676, column: 17, scope: !2450)
!3439 = !DILocation(line: 677, column: 24, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3434, file: !220, line: 676, column: 39)
!3441 = !DILocation(line: 677, column: 31, scope: !3440)
!3442 = !DILocation(line: 677, column: 40, scope: !3440)
!3443 = !DILocation(line: 677, column: 38, scope: !3440)
!3444 = !DILocation(line: 677, column: 22, scope: !3440)
!3445 = !DILocation(line: 678, column: 21, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3440, file: !220, line: 678, column: 21)
!3447 = !DILocation(line: 678, column: 28, scope: !3446)
!3448 = !DILocation(line: 678, column: 35, scope: !3446)
!3449 = !DILocation(line: 678, column: 26, scope: !3446)
!3450 = !DILocation(line: 678, column: 21, scope: !3440)
!3451 = !DILocation(line: 679, column: 29, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3446, file: !220, line: 678, column: 42)
!3453 = !DILocation(line: 679, column: 36, scope: !3452)
!3454 = !DILocation(line: 679, column: 26, scope: !3452)
!3455 = !DILocation(line: 680, column: 28, scope: !3452)
!3456 = !DILocation(line: 680, column: 35, scope: !3452)
!3457 = !DILocation(line: 680, column: 45, scope: !3452)
!3458 = !DILocation(line: 680, column: 52, scope: !3452)
!3459 = !DILocation(line: 680, column: 60, scope: !3452)
!3460 = !DILocation(line: 680, column: 58, scope: !3452)
!3461 = !DILocation(line: 680, column: 42, scope: !3452)
!3462 = !DILocation(line: 680, column: 26, scope: !3452)
!3463 = !DILocation(line: 681, column: 17, scope: !3452)
!3464 = !DILocation(line: 683, column: 28, scope: !3446)
!3465 = !DILocation(line: 683, column: 35, scope: !3446)
!3466 = !DILocation(line: 683, column: 45, scope: !3446)
!3467 = !DILocation(line: 683, column: 52, scope: !3446)
!3468 = !DILocation(line: 683, column: 60, scope: !3446)
!3469 = !DILocation(line: 683, column: 58, scope: !3446)
!3470 = !DILocation(line: 683, column: 42, scope: !3446)
!3471 = !DILocation(line: 683, column: 26, scope: !3446)
!3472 = !DILocation(line: 684, column: 21, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3440, file: !220, line: 684, column: 21)
!3474 = !DILocation(line: 684, column: 28, scope: !3473)
!3475 = !DILocation(line: 684, column: 35, scope: !3473)
!3476 = !DILocation(line: 684, column: 26, scope: !3473)
!3477 = !DILocation(line: 684, column: 21, scope: !3440)
!3478 = !DILocation(line: 684, column: 50, scope: !3473)
!3479 = !DILocation(line: 684, column: 57, scope: !3473)
!3480 = !DILocation(line: 684, column: 48, scope: !3473)
!3481 = !DILocation(line: 684, column: 43, scope: !3473)
!3482 = !DILocation(line: 685, column: 13, scope: !3440)
!3483 = !DILocation(line: 687, column: 24, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3434, file: !220, line: 686, column: 18)
!3485 = !DILocation(line: 687, column: 30, scope: !3484)
!3486 = !DILocation(line: 687, column: 37, scope: !3484)
!3487 = !DILocation(line: 687, column: 28, scope: !3484)
!3488 = !DILocation(line: 687, column: 22, scope: !3484)
!3489 = !DILocation(line: 688, column: 24, scope: !3484)
!3490 = !DILocation(line: 688, column: 31, scope: !3484)
!3491 = !DILocation(line: 688, column: 22, scope: !3484)
!3492 = !DILocation(line: 690, column: 17, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 690, column: 17)
!3494 = !DILocation(line: 690, column: 24, scope: !3493)
!3495 = !DILocation(line: 690, column: 22, scope: !3493)
!3496 = !DILocation(line: 690, column: 17, scope: !2450)
!3497 = !DILocation(line: 690, column: 37, scope: !3493)
!3498 = !DILocation(line: 690, column: 35, scope: !3493)
!3499 = !DILocation(line: 690, column: 30, scope: !3493)
!3500 = !DILocation(line: 691, column: 21, scope: !2450)
!3501 = !DILocation(line: 691, column: 18, scope: !2450)
!3502 = !DILocation(line: 692, column: 30, scope: !2450)
!3503 = !DILocation(line: 692, column: 13, scope: !2450)
!3504 = !DILocation(line: 692, column: 20, scope: !2450)
!3505 = !DILocation(line: 692, column: 27, scope: !2450)
!3506 = !DILocation(line: 693, column: 13, scope: !2450)
!3507 = !DILocation(line: 694, column: 31, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 693, column: 16)
!3509 = !DILocation(line: 694, column: 26, scope: !3508)
!3510 = !DILocation(line: 694, column: 21, scope: !3508)
!3511 = !DILocation(line: 694, column: 24, scope: !3508)
!3512 = !DILocation(line: 695, column: 13, scope: !3508)
!3513 = !DILocation(line: 695, column: 22, scope: !2450)
!3514 = distinct !{!3514, !3506, !3515, !981, !982}
!3515 = !DILocation(line: 695, column: 28, scope: !2450)
!3516 = !DILocation(line: 696, column: 17, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 696, column: 17)
!3518 = !DILocation(line: 696, column: 24, scope: !3517)
!3519 = !DILocation(line: 696, column: 31, scope: !3517)
!3520 = !DILocation(line: 696, column: 17, scope: !2450)
!3521 = !DILocation(line: 696, column: 37, scope: !3517)
!3522 = !DILocation(line: 696, column: 44, scope: !3517)
!3523 = !DILocation(line: 696, column: 49, scope: !3517)
!3524 = !DILocation(line: 697, column: 13, scope: !2450)
!3525 = !DILocation(line: 699, column: 17, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 699, column: 17)
!3527 = !DILocation(line: 699, column: 22, scope: !3526)
!3528 = !DILocation(line: 699, column: 17, scope: !2450)
!3529 = !DILocation(line: 699, column: 28, scope: !3526)
!3530 = !DILocation(line: 700, column: 38, scope: !2450)
!3531 = !DILocation(line: 700, column: 45, scope: !2450)
!3532 = !DILocation(line: 700, column: 22, scope: !2450)
!3533 = !DILocation(line: 700, column: 17, scope: !2450)
!3534 = !DILocation(line: 700, column: 20, scope: !2450)
!3535 = !DILocation(line: 701, column: 17, scope: !2450)
!3536 = !DILocation(line: 702, column: 13, scope: !2450)
!3537 = !DILocation(line: 702, column: 20, scope: !2450)
!3538 = !DILocation(line: 702, column: 25, scope: !2450)
!3539 = !DILocation(line: 703, column: 13, scope: !2450)
!3540 = !DILocation(line: 705, column: 17, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !2450, file: !220, line: 705, column: 17)
!3542 = !DILocation(line: 705, column: 24, scope: !3541)
!3543 = !DILocation(line: 705, column: 17, scope: !2450)
!3544 = !DILocation(line: 706, column: 17, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !220, line: 705, column: 30)
!3546 = !DILocation(line: 706, column: 17, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3545, file: !220, line: 706, column: 17)
!3548 = !DILocation(line: 706, column: 17, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !220, line: 706, column: 17)
!3550 = distinct !DILexicalBlock(scope: !3547, file: !220, line: 706, column: 17)
!3551 = !DILocation(line: 706, column: 17, scope: !3550)
!3552 = distinct !{!3552, !3546, !3546, !981, !982}
!3553 = !DILocation(line: 707, column: 24, scope: !3545)
!3554 = !DILocation(line: 707, column: 21, scope: !3545)
!3555 = !DILocation(line: 708, column: 36, scope: !3545)
!3556 = !DILocation(line: 708, column: 17, scope: !3545)
!3557 = !DILocation(line: 708, column: 23, scope: !3545)
!3558 = !DILocation(line: 708, column: 33, scope: !3545)
!3559 = !DILocation(line: 709, column: 33, scope: !3545)
!3560 = !DILocation(line: 709, column: 17, scope: !3545)
!3561 = !DILocation(line: 709, column: 24, scope: !3545)
!3562 = !DILocation(line: 709, column: 30, scope: !3545)
!3563 = !DILocation(line: 710, column: 52, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3545, file: !220, line: 710, column: 21)
!3565 = !DILocation(line: 710, column: 21, scope: !3545)
!3566 = !DILocation(line: 712, column: 25, scope: !3564)
!3567 = !DILocation(line: 711, column: 35, scope: !3564)
!3568 = !DILocation(line: 711, column: 42, scope: !3564)
!3569 = !DILocation(line: 711, column: 48, scope: !3564)
!3570 = !DILocation(line: 711, column: 21, scope: !3564)
!3571 = !DILocation(line: 711, column: 27, scope: !3564)
!3572 = !DILocation(line: 711, column: 33, scope: !3564)
!3573 = !DILocation(line: 713, column: 23, scope: !3545)
!3574 = !DILocation(line: 713, column: 21, scope: !3545)
!3575 = !DILocation(line: 715, column: 22, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3545, file: !220, line: 714, column: 21)
!3577 = !DILocation(line: 715, column: 40, scope: !3576)
!3578 = !DILocation(line: 715, column: 47, scope: !3576)
!3579 = !DILocation(line: 715, column: 37, scope: !3576)
!3580 = !DILocation(line: 714, column: 21, scope: !3545)
!3581 = !DILocation(line: 716, column: 21, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3576, file: !220, line: 715, column: 54)
!3583 = !DILocation(line: 716, column: 27, scope: !3582)
!3584 = !DILocation(line: 716, column: 31, scope: !3582)
!3585 = !DILocation(line: 717, column: 21, scope: !3582)
!3586 = !DILocation(line: 717, column: 28, scope: !3582)
!3587 = !DILocation(line: 717, column: 33, scope: !3582)
!3588 = !DILocation(line: 718, column: 21, scope: !3582)
!3589 = !DILocation(line: 720, column: 17, scope: !3545)
!3590 = !DILocation(line: 720, column: 17, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3545, file: !220, line: 720, column: 17)
!3592 = !DILocation(line: 721, column: 13, scope: !3545)
!3593 = !DILocation(line: 722, column: 13, scope: !2450)
!3594 = !DILocation(line: 722, column: 20, scope: !2450)
!3595 = !DILocation(line: 722, column: 25, scope: !2450)
!3596 = !DILocation(line: 725, column: 17, scope: !2450)
!3597 = !DILocation(line: 726, column: 13, scope: !2450)
!3598 = !DILocation(line: 728, column: 17, scope: !2450)
!3599 = !DILocation(line: 729, column: 13, scope: !2450)
!3600 = !DILocation(line: 731, column: 13, scope: !2450)
!3601 = !DILocation(line: 732, column: 9, scope: !2450)
!3602 = !DILocation(line: 734, column: 13, scope: !2450)
!3603 = !DILocation(line: 363, column: 5, scope: !2444)
!3604 = distinct !{!3604, !3605, !3606, !982}
!3605 = !DILocation(line: 363, column: 5, scope: !2445)
!3606 = !DILocation(line: 735, column: 9, scope: !2445)
!3607 = !DILocation(line: 742, column: 3, scope: !219)
!3608 = !DILocation(line: 743, column: 5, scope: !219)
!3609 = !DILocation(line: 743, column: 5, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !219, file: !220, line: 743, column: 5)
!3611 = !DILocation(line: 745, column: 14, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !219, file: !220, line: 744, column: 9)
!3613 = !DILocation(line: 745, column: 21, scope: !3612)
!3614 = !DILocation(line: 745, column: 27, scope: !3612)
!3615 = !DILocation(line: 745, column: 31, scope: !3612)
!3616 = !DILocation(line: 745, column: 38, scope: !3612)
!3617 = !DILocation(line: 745, column: 43, scope: !3612)
!3618 = !DILocation(line: 745, column: 51, scope: !3612)
!3619 = !DILocation(line: 745, column: 54, scope: !3612)
!3620 = !DILocation(line: 745, column: 61, scope: !3612)
!3621 = !DILocation(line: 745, column: 67, scope: !3612)
!3622 = !DILocation(line: 745, column: 58, scope: !3612)
!3623 = !DILocation(line: 744, column: 9, scope: !219)
!3624 = !DILocation(line: 746, column: 27, scope: !3612)
!3625 = !DILocation(line: 746, column: 33, scope: !3612)
!3626 = !DILocation(line: 746, column: 9, scope: !3612)
!3627 = !DILocation(line: 748, column: 11, scope: !219)
!3628 = !DILocation(line: 748, column: 17, scope: !219)
!3629 = !DILocation(line: 748, column: 8, scope: !219)
!3630 = !DILocation(line: 749, column: 12, scope: !219)
!3631 = !DILocation(line: 749, column: 18, scope: !219)
!3632 = !DILocation(line: 749, column: 9, scope: !219)
!3633 = !DILocation(line: 750, column: 23, scope: !219)
!3634 = !DILocation(line: 750, column: 5, scope: !219)
!3635 = !DILocation(line: 750, column: 11, scope: !219)
!3636 = !DILocation(line: 750, column: 20, scope: !219)
!3637 = !DILocation(line: 751, column: 24, scope: !219)
!3638 = !DILocation(line: 751, column: 5, scope: !219)
!3639 = !DILocation(line: 751, column: 11, scope: !219)
!3640 = !DILocation(line: 751, column: 21, scope: !219)
!3641 = !DILocation(line: 752, column: 21, scope: !219)
!3642 = !DILocation(line: 752, column: 5, scope: !219)
!3643 = !DILocation(line: 752, column: 12, scope: !219)
!3644 = !DILocation(line: 752, column: 18, scope: !219)
!3645 = !DILocation(line: 753, column: 40, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !219, file: !220, line: 753, column: 9)
!3647 = !DILocation(line: 753, column: 47, scope: !3646)
!3648 = !DILocation(line: 753, column: 52, scope: !3646)
!3649 = !DILocation(line: 753, column: 55, scope: !3646)
!3650 = !DILocation(line: 753, column: 9, scope: !219)
!3651 = !DILocation(line: 755, column: 13, scope: !3646)
!3652 = !DILocation(line: 754, column: 23, scope: !3646)
!3653 = !DILocation(line: 754, column: 30, scope: !3646)
!3654 = !DILocation(line: 754, column: 36, scope: !3646)
!3655 = !DILocation(line: 754, column: 9, scope: !3646)
!3656 = !DILocation(line: 754, column: 15, scope: !3646)
!3657 = !DILocation(line: 754, column: 21, scope: !3646)
!3658 = !DILocation(line: 757, column: 23, scope: !219)
!3659 = !DILocation(line: 757, column: 30, scope: !219)
!3660 = !DILocation(line: 757, column: 38, scope: !219)
!3661 = !DILocation(line: 757, column: 45, scope: !219)
!3662 = !DILocation(line: 757, column: 35, scope: !219)
!3663 = !DILocation(line: 758, column: 24, scope: !219)
!3664 = !DILocation(line: 758, column: 31, scope: !219)
!3665 = !DILocation(line: 758, column: 36, scope: !219)
!3666 = !DILocation(line: 757, column: 60, scope: !219)
!3667 = !DILocation(line: 757, column: 5, scope: !219)
!3668 = !DILocation(line: 757, column: 11, scope: !219)
!3669 = !DILocation(line: 757, column: 21, scope: !219)
!3670 = !DILocation(line: 760, column: 9, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !219, file: !220, line: 760, column: 9)
!3672 = !DILocation(line: 760, column: 15, scope: !3671)
!3673 = !DILocation(line: 760, column: 33, scope: !3671)
!3674 = !DILocation(line: 760, column: 36, scope: !3671)
!3675 = !DILocation(line: 760, column: 40, scope: !3671)
!3676 = !DILocation(line: 760, column: 48, scope: !3671)
!3677 = !DILocation(line: 761, column: 13, scope: !3671)
!3678 = !DILocation(line: 761, column: 19, scope: !3671)
!3679 = !DILocation(line: 761, column: 29, scope: !3671)
!3680 = !DILocation(line: 761, column: 34, scope: !3671)
!3681 = !DILocation(line: 761, column: 37, scope: !3671)
!3682 = !DILocation(line: 761, column: 43, scope: !3671)
!3683 = !DILocation(line: 761, column: 52, scope: !3671)
!3684 = !DILocation(line: 760, column: 9, scope: !219)
!3685 = !DILocation(line: 762, column: 33, scope: !3671)
!3686 = !DILocation(line: 762, column: 10, scope: !3671)
!3687 = !DILocation(line: 762, column: 3, scope: !3671)
!3688 = !DILocation(line: 764, column: 11, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !219, file: !220, line: 764, column: 9)
!3690 = !DILocation(line: 764, column: 14, scope: !3689)
!3691 = !DILocation(line: 764, column: 19, scope: !3689)
!3692 = !DILocation(line: 764, column: 22, scope: !3689)
!3693 = !DILocation(line: 764, column: 26, scope: !3689)
!3694 = !DILocation(line: 764, column: 32, scope: !3689)
!3695 = !DILocation(line: 764, column: 35, scope: !3689)
!3696 = !DILocation(line: 764, column: 41, scope: !3689)
!3697 = !DILocation(line: 764, column: 54, scope: !3689)
!3698 = !DILocation(line: 764, column: 57, scope: !3689)
!3699 = !DILocation(line: 764, column: 61, scope: !3689)
!3700 = !DILocation(line: 764, column: 9, scope: !219)
!3701 = !DILocation(line: 765, column: 13, scope: !3689)
!3702 = !DILocation(line: 765, column: 9, scope: !3689)
!3703 = !DILocation(line: 767, column: 12, scope: !219)
!3704 = !DILocation(line: 767, column: 5, scope: !219)
!3705 = !DILocation(line: 768, column: 1, scope: !219)
!3706 = distinct !DISubprogram(name: "zlib_adler32", scope: !3707, file: !3707, line: 78, type: !3708, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3711)
!3707 = !DIFile(filename: "./include/linux/zutil.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e912e7345195f5db5905cb2a2b8db19")
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!234, !234, !229, !3710}
!3710 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !232, line: 53, baseType: !7)
!3711 = !{!3712, !3713, !3714, !3715, !3716, !3717}
!3712 = !DILocalVariable(name: "adler", arg: 1, scope: !3706, file: !3707, line: 78, type: !234)
!3713 = !DILocalVariable(name: "buf", arg: 2, scope: !3706, file: !3707, line: 79, type: !229)
!3714 = !DILocalVariable(name: "len", arg: 3, scope: !3706, file: !3707, line: 80, type: !3710)
!3715 = !DILocalVariable(name: "s1", scope: !3706, file: !3707, line: 82, type: !66)
!3716 = !DILocalVariable(name: "s2", scope: !3706, file: !3707, line: 83, type: !66)
!3717 = !DILocalVariable(name: "k", scope: !3706, file: !3707, line: 84, type: !54)
!3718 = !DILocation(line: 78, column: 40, scope: !3706)
!3719 = !DILocation(line: 79, column: 18, scope: !3706)
!3720 = !DILocation(line: 80, column: 11, scope: !3706)
!3721 = !DILocation(line: 82, column: 5, scope: !3706)
!3722 = !DILocation(line: 82, column: 19, scope: !3706)
!3723 = !DILocation(line: 82, column: 24, scope: !3706)
!3724 = !DILocation(line: 82, column: 30, scope: !3706)
!3725 = !DILocation(line: 83, column: 5, scope: !3706)
!3726 = !DILocation(line: 83, column: 19, scope: !3706)
!3727 = !DILocation(line: 83, column: 25, scope: !3706)
!3728 = !DILocation(line: 83, column: 31, scope: !3706)
!3729 = !DILocation(line: 83, column: 38, scope: !3706)
!3730 = !DILocation(line: 84, column: 5, scope: !3706)
!3731 = !DILocation(line: 84, column: 9, scope: !3706)
!3732 = !DILocation(line: 86, column: 9, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3706, file: !3707, line: 86, column: 9)
!3734 = !DILocation(line: 86, column: 13, scope: !3733)
!3735 = !DILocation(line: 86, column: 9, scope: !3706)
!3736 = !DILocation(line: 86, column: 22, scope: !3733)
!3737 = !DILocation(line: 88, column: 5, scope: !3706)
!3738 = !DILocation(line: 88, column: 12, scope: !3706)
!3739 = !DILocation(line: 88, column: 16, scope: !3706)
!3740 = !DILocation(line: 89, column: 13, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3706, file: !3707, line: 88, column: 21)
!3742 = !DILocation(line: 89, column: 17, scope: !3741)
!3743 = !DILocation(line: 89, column: 26, scope: !3741)
!3744 = !DILocation(line: 89, column: 11, scope: !3741)
!3745 = !DILocation(line: 90, column: 16, scope: !3741)
!3746 = !DILocation(line: 90, column: 13, scope: !3741)
!3747 = !DILocation(line: 91, column: 9, scope: !3741)
!3748 = !DILocation(line: 91, column: 16, scope: !3741)
!3749 = !DILocation(line: 91, column: 18, scope: !3741)
!3750 = !DILocation(line: 92, column: 13, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3752 = distinct !DILexicalBlock(scope: !3741, file: !3707, line: 91, column: 25)
!3753 = !DILocation(line: 92, column: 13, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3755 = !DILocation(line: 92, column: 13, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3757 = !DILocation(line: 92, column: 13, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3759 = !DILocation(line: 92, column: 13, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3761 = !DILocation(line: 92, column: 13, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3763 = !DILocation(line: 92, column: 13, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3765 = !DILocation(line: 92, column: 13, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3767 = !DILocation(line: 92, column: 13, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3769 = !DILocation(line: 92, column: 13, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3771 = !DILocation(line: 92, column: 13, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3773 = !DILocation(line: 92, column: 13, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3775 = !DILocation(line: 92, column: 13, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3777 = !DILocation(line: 92, column: 13, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3779 = !DILocation(line: 92, column: 13, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3781 = !DILocation(line: 92, column: 13, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3752, file: !3707, line: 92, column: 13)
!3783 = !DILocation(line: 93, column: 10, scope: !3752)
!3784 = !DILocation(line: 94, column: 15, scope: !3752)
!3785 = distinct !{!3785, !3747, !3786, !981, !982}
!3786 = !DILocation(line: 95, column: 9, scope: !3741)
!3787 = !DILocation(line: 96, column: 13, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3741, file: !3707, line: 96, column: 13)
!3789 = !DILocation(line: 96, column: 15, scope: !3788)
!3790 = !DILocation(line: 96, column: 13, scope: !3741)
!3791 = !DILocation(line: 96, column: 21, scope: !3788)
!3792 = !DILocation(line: 97, column: 23, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3788, file: !3707, line: 96, column: 24)
!3794 = !DILocation(line: 97, column: 19, scope: !3793)
!3795 = !DILocation(line: 97, column: 16, scope: !3793)
!3796 = !DILocation(line: 98, column: 12, scope: !3793)
!3797 = !DILocation(line: 98, column: 9, scope: !3793)
!3798 = !DILocation(line: 99, column: 9, scope: !3793)
!3799 = !DILocation(line: 99, column: 18, scope: !3788)
!3800 = distinct !{!3800, !3791, !3801, !981, !982}
!3801 = !DILocation(line: 99, column: 21, scope: !3788)
!3802 = !DILocation(line: 100, column: 12, scope: !3741)
!3803 = !DILocation(line: 101, column: 12, scope: !3741)
!3804 = distinct !{!3804, !3737, !3805, !981, !982}
!3805 = !DILocation(line: 102, column: 5, scope: !3706)
!3806 = !DILocation(line: 103, column: 13, scope: !3706)
!3807 = !DILocation(line: 103, column: 16, scope: !3706)
!3808 = !DILocation(line: 103, column: 25, scope: !3706)
!3809 = !DILocation(line: 103, column: 23, scope: !3706)
!3810 = !DILocation(line: 103, column: 5, scope: !3706)
!3811 = !DILocation(line: 104, column: 1, scope: !3706)
!3812 = !DILocation(line: 97, column: 52, scope: !756)
!3813 = !DILocation(line: 100, column: 5, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !756, file: !220, discriminator: 0)
!3815 = !DILocation(line: 100, column: 12, scope: !3814)
!3816 = !DILocation(line: 100, column: 20, scope: !3814)
!3817 = !DILocation(line: 101, column: 5, scope: !3814)
!3818 = !DILocation(line: 101, column: 12, scope: !3814)
!3819 = !DILocation(line: 101, column: 20, scope: !3814)
!3820 = !DILocation(line: 102, column: 5, scope: !3814)
!3821 = !DILocation(line: 102, column: 12, scope: !3814)
!3822 = !DILocation(line: 102, column: 21, scope: !3814)
!3823 = !DILocation(line: 103, column: 5, scope: !3814)
!3824 = !DILocation(line: 103, column: 12, scope: !3814)
!3825 = !DILocation(line: 103, column: 21, scope: !3814)
!3826 = !DILocation(line: 104, column: 1, scope: !3814)
!3827 = distinct !DISubprogram(name: "zlib_updatewindow", scope: !220, file: !220, line: 120, type: !1488, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833}
!3829 = !DILocalVariable(name: "strm", arg: 1, scope: !3827, file: !220, line: 120, type: !223)
!3830 = !DILocalVariable(name: "out", arg: 2, scope: !3827, file: !220, line: 120, type: !7)
!3831 = !DILocalVariable(name: "state", scope: !3827, file: !220, line: 122, type: !55)
!3832 = !DILocalVariable(name: "copy", scope: !3827, file: !220, line: 123, type: !7)
!3833 = !DILocalVariable(name: "dist", scope: !3827, file: !220, line: 123, type: !7)
!3834 = !DILocation(line: 120, column: 41, scope: !3827)
!3835 = !DILocation(line: 120, column: 56, scope: !3827)
!3836 = !DILocation(line: 122, column: 5, scope: !3827)
!3837 = !DILocation(line: 122, column: 27, scope: !3827)
!3838 = !DILocation(line: 123, column: 5, scope: !3827)
!3839 = !DILocation(line: 123, column: 14, scope: !3827)
!3840 = !DILocation(line: 123, column: 20, scope: !3827)
!3841 = !DILocation(line: 125, column: 37, scope: !3827)
!3842 = !DILocation(line: 125, column: 43, scope: !3827)
!3843 = !DILocation(line: 125, column: 11, scope: !3827)
!3844 = !DILocation(line: 128, column: 12, scope: !3827)
!3845 = !DILocation(line: 128, column: 18, scope: !3827)
!3846 = !DILocation(line: 128, column: 24, scope: !3827)
!3847 = !DILocation(line: 128, column: 16, scope: !3827)
!3848 = !DILocation(line: 128, column: 10, scope: !3827)
!3849 = !DILocation(line: 129, column: 9, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3827, file: !220, line: 129, column: 9)
!3851 = !DILocation(line: 129, column: 17, scope: !3850)
!3852 = !DILocation(line: 129, column: 24, scope: !3850)
!3853 = !DILocation(line: 129, column: 14, scope: !3850)
!3854 = !DILocation(line: 129, column: 9, scope: !3827)
!3855 = !DILocation(line: 130, column: 9, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3850, file: !220, line: 129, column: 31)
!3857 = !DILocation(line: 131, column: 9, scope: !3856)
!3858 = !DILocation(line: 131, column: 16, scope: !3856)
!3859 = !DILocation(line: 131, column: 22, scope: !3856)
!3860 = !DILocation(line: 132, column: 24, scope: !3856)
!3861 = !DILocation(line: 132, column: 31, scope: !3856)
!3862 = !DILocation(line: 132, column: 9, scope: !3856)
!3863 = !DILocation(line: 132, column: 16, scope: !3856)
!3864 = !DILocation(line: 132, column: 22, scope: !3856)
!3865 = !DILocation(line: 133, column: 5, scope: !3856)
!3866 = !DILocation(line: 135, column: 16, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3850, file: !220, line: 134, column: 10)
!3868 = !DILocation(line: 135, column: 23, scope: !3867)
!3869 = !DILocation(line: 135, column: 31, scope: !3867)
!3870 = !DILocation(line: 135, column: 38, scope: !3867)
!3871 = !DILocation(line: 135, column: 29, scope: !3867)
!3872 = !DILocation(line: 135, column: 14, scope: !3867)
!3873 = !DILocation(line: 136, column: 13, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3867, file: !220, line: 136, column: 13)
!3875 = !DILocation(line: 136, column: 20, scope: !3874)
!3876 = !DILocation(line: 136, column: 18, scope: !3874)
!3877 = !DILocation(line: 136, column: 13, scope: !3867)
!3878 = !DILocation(line: 136, column: 33, scope: !3874)
!3879 = !DILocation(line: 136, column: 31, scope: !3874)
!3880 = !DILocation(line: 136, column: 26, scope: !3874)
!3881 = !DILocation(line: 137, column: 9, scope: !3867)
!3882 = !DILocation(line: 138, column: 17, scope: !3867)
!3883 = !DILocation(line: 138, column: 14, scope: !3867)
!3884 = !DILocation(line: 139, column: 13, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3867, file: !220, line: 139, column: 13)
!3886 = !DILocation(line: 139, column: 13, scope: !3867)
!3887 = !DILocation(line: 140, column: 13, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3885, file: !220, line: 139, column: 19)
!3889 = !DILocation(line: 141, column: 28, scope: !3888)
!3890 = !DILocation(line: 141, column: 13, scope: !3888)
!3891 = !DILocation(line: 141, column: 20, scope: !3888)
!3892 = !DILocation(line: 141, column: 26, scope: !3888)
!3893 = !DILocation(line: 142, column: 28, scope: !3888)
!3894 = !DILocation(line: 142, column: 35, scope: !3888)
!3895 = !DILocation(line: 142, column: 13, scope: !3888)
!3896 = !DILocation(line: 142, column: 20, scope: !3888)
!3897 = !DILocation(line: 142, column: 26, scope: !3888)
!3898 = !DILocation(line: 143, column: 9, scope: !3888)
!3899 = !DILocation(line: 145, column: 29, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3885, file: !220, line: 144, column: 14)
!3901 = !DILocation(line: 145, column: 13, scope: !3900)
!3902 = !DILocation(line: 145, column: 20, scope: !3900)
!3903 = !DILocation(line: 145, column: 26, scope: !3900)
!3904 = !DILocation(line: 146, column: 17, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3900, file: !220, line: 146, column: 17)
!3906 = !DILocation(line: 146, column: 24, scope: !3905)
!3907 = !DILocation(line: 146, column: 33, scope: !3905)
!3908 = !DILocation(line: 146, column: 40, scope: !3905)
!3909 = !DILocation(line: 146, column: 30, scope: !3905)
!3910 = !DILocation(line: 146, column: 17, scope: !3900)
!3911 = !DILocation(line: 146, column: 47, scope: !3905)
!3912 = !DILocation(line: 146, column: 54, scope: !3905)
!3913 = !DILocation(line: 146, column: 60, scope: !3905)
!3914 = !DILocation(line: 147, column: 17, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3900, file: !220, line: 147, column: 17)
!3916 = !DILocation(line: 147, column: 24, scope: !3915)
!3917 = !DILocation(line: 147, column: 32, scope: !3915)
!3918 = !DILocation(line: 147, column: 39, scope: !3915)
!3919 = !DILocation(line: 147, column: 30, scope: !3915)
!3920 = !DILocation(line: 147, column: 17, scope: !3900)
!3921 = !DILocation(line: 147, column: 62, scope: !3915)
!3922 = !DILocation(line: 147, column: 46, scope: !3915)
!3923 = !DILocation(line: 147, column: 53, scope: !3915)
!3924 = !DILocation(line: 147, column: 59, scope: !3915)
!3925 = !DILocation(line: 150, column: 1, scope: !3827)
!3926 = distinct !DISubprogram(name: "zlib_inflateSyncPacket", scope: !220, file: !220, line: 165, type: !2230, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3927)
!3927 = !{!3928, !3929}
!3928 = !DILocalVariable(name: "strm", arg: 1, scope: !3926, file: !220, line: 165, type: !223)
!3929 = !DILocalVariable(name: "state", scope: !3926, file: !220, line: 167, type: !55)
!3930 = !DILocation(line: 165, column: 45, scope: !3926)
!3931 = !DILocation(line: 167, column: 5, scope: !3926)
!3932 = !DILocation(line: 167, column: 27, scope: !3926)
!3933 = !DILocation(line: 169, column: 9, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3926, file: !220, line: 169, column: 9)
!3935 = !DILocation(line: 169, column: 14, scope: !3934)
!3936 = !DILocation(line: 169, column: 22, scope: !3934)
!3937 = !DILocation(line: 169, column: 25, scope: !3934)
!3938 = !DILocation(line: 169, column: 31, scope: !3934)
!3939 = !DILocation(line: 169, column: 37, scope: !3934)
!3940 = !DILocation(line: 169, column: 9, scope: !3926)
!3941 = !DILocation(line: 169, column: 46, scope: !3934)
!3942 = !DILocation(line: 170, column: 37, scope: !3926)
!3943 = !DILocation(line: 170, column: 43, scope: !3926)
!3944 = !DILocation(line: 170, column: 11, scope: !3926)
!3945 = !DILocation(line: 172, column: 9, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3926, file: !220, line: 172, column: 9)
!3947 = !DILocation(line: 172, column: 16, scope: !3946)
!3948 = !DILocation(line: 172, column: 21, scope: !3946)
!3949 = !DILocation(line: 172, column: 31, scope: !3946)
!3950 = !DILocation(line: 172, column: 34, scope: !3946)
!3951 = !DILocation(line: 172, column: 41, scope: !3946)
!3952 = !DILocation(line: 172, column: 46, scope: !3946)
!3953 = !DILocation(line: 172, column: 9, scope: !3926)
!3954 = !DILocation(line: 173, column: 2, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3946, file: !220, line: 172, column: 52)
!3956 = !DILocation(line: 173, column: 9, scope: !3955)
!3957 = !DILocation(line: 173, column: 14, scope: !3955)
!3958 = !DILocation(line: 174, column: 9, scope: !3955)
!3959 = !DILocation(line: 176, column: 5, scope: !3926)
!3960 = !DILocation(line: 177, column: 1, scope: !3926)
!3961 = distinct !DISubprogram(name: "zlib_inflateEnd", scope: !220, file: !220, line: 770, type: !2230, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3962)
!3962 = !{!3963}
!3963 = !DILocalVariable(name: "strm", arg: 1, scope: !3961, file: !220, line: 770, type: !223)
!3964 = !DILocation(line: 770, column: 31, scope: !3961)
!3965 = !DILocation(line: 772, column: 9, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3961, file: !220, line: 772, column: 9)
!3967 = !DILocation(line: 772, column: 14, scope: !3966)
!3968 = !DILocation(line: 772, column: 22, scope: !3966)
!3969 = !DILocation(line: 772, column: 25, scope: !3966)
!3970 = !DILocation(line: 772, column: 31, scope: !3966)
!3971 = !DILocation(line: 772, column: 37, scope: !3966)
!3972 = !DILocation(line: 772, column: 9, scope: !3961)
!3973 = !DILocation(line: 773, column: 9, scope: !3966)
!3974 = !DILocation(line: 774, column: 5, scope: !3961)
!3975 = !DILocation(line: 775, column: 1, scope: !3961)
!3976 = distinct !DISubprogram(name: "zlib_inflateIncomp", scope: !220, file: !220, line: 785, type: !3977, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!54, !224}
!3979 = !{!3980, !3981, !3982, !3983}
!3980 = !DILocalVariable(name: "z", arg: 1, scope: !3976, file: !220, line: 785, type: !224)
!3981 = !DILocalVariable(name: "state", scope: !3976, file: !220, line: 787, type: !55)
!3982 = !DILocalVariable(name: "saved_no", scope: !3976, file: !220, line: 788, type: !237)
!3983 = !DILocalVariable(name: "saved_ao", scope: !3976, file: !220, line: 789, type: !3710)
!3984 = !DILocation(line: 785, column: 34, scope: !3976)
!3985 = !DILocation(line: 787, column: 5, scope: !3976)
!3986 = !DILocation(line: 787, column: 27, scope: !3976)
!3987 = !DILocation(line: 787, column: 59, scope: !3976)
!3988 = !DILocation(line: 787, column: 62, scope: !3976)
!3989 = !DILocation(line: 788, column: 5, scope: !3976)
!3990 = !DILocation(line: 788, column: 11, scope: !3976)
!3991 = !DILocation(line: 788, column: 22, scope: !3976)
!3992 = !DILocation(line: 788, column: 25, scope: !3976)
!3993 = !DILocation(line: 789, column: 5, scope: !3976)
!3994 = !DILocation(line: 789, column: 10, scope: !3976)
!3995 = !DILocation(line: 789, column: 21, scope: !3976)
!3996 = !DILocation(line: 789, column: 24, scope: !3976)
!3997 = !DILocation(line: 791, column: 9, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3976, file: !220, line: 791, column: 9)
!3999 = !DILocation(line: 791, column: 16, scope: !3998)
!4000 = !DILocation(line: 791, column: 21, scope: !3998)
!4001 = !DILocation(line: 791, column: 29, scope: !3998)
!4002 = !DILocation(line: 791, column: 32, scope: !3998)
!4003 = !DILocation(line: 791, column: 39, scope: !3998)
!4004 = !DILocation(line: 791, column: 44, scope: !3998)
!4005 = !DILocation(line: 791, column: 9, scope: !3976)
!4006 = !DILocation(line: 792, column: 2, scope: !3998)
!4007 = !DILocation(line: 795, column: 5, scope: !3976)
!4008 = !DILocation(line: 795, column: 8, scope: !3976)
!4009 = !DILocation(line: 795, column: 18, scope: !3976)
!4010 = !DILocation(line: 796, column: 35, scope: !3976)
!4011 = !DILocation(line: 796, column: 38, scope: !3976)
!4012 = !DILocation(line: 796, column: 48, scope: !3976)
!4013 = !DILocation(line: 796, column: 51, scope: !3976)
!4014 = !DILocation(line: 796, column: 46, scope: !3976)
!4015 = !DILocation(line: 796, column: 5, scope: !3976)
!4016 = !DILocation(line: 796, column: 8, scope: !3976)
!4017 = !DILocation(line: 796, column: 17, scope: !3976)
!4018 = !DILocation(line: 798, column: 23, scope: !3976)
!4019 = !DILocation(line: 798, column: 26, scope: !3976)
!4020 = !DILocation(line: 798, column: 29, scope: !3976)
!4021 = !DILocation(line: 798, column: 5, scope: !3976)
!4022 = !DILocation(line: 801, column: 20, scope: !3976)
!4023 = !DILocation(line: 801, column: 5, scope: !3976)
!4024 = !DILocation(line: 801, column: 8, scope: !3976)
!4025 = !DILocation(line: 801, column: 18, scope: !3976)
!4026 = !DILocation(line: 802, column: 19, scope: !3976)
!4027 = !DILocation(line: 802, column: 5, scope: !3976)
!4028 = !DILocation(line: 802, column: 8, scope: !3976)
!4029 = !DILocation(line: 802, column: 17, scope: !3976)
!4030 = !DILocation(line: 805, column: 9, scope: !3976)
!4031 = !DILocation(line: 804, column: 16, scope: !3976)
!4032 = !DILocation(line: 804, column: 23, scope: !3976)
!4033 = !DILocation(line: 804, column: 29, scope: !3976)
!4034 = !DILocation(line: 804, column: 5, scope: !3976)
!4035 = !DILocation(line: 804, column: 8, scope: !3976)
!4036 = !DILocation(line: 804, column: 14, scope: !3976)
!4037 = !DILocation(line: 807, column: 21, scope: !3976)
!4038 = !DILocation(line: 807, column: 24, scope: !3976)
!4039 = !DILocation(line: 807, column: 5, scope: !3976)
!4040 = !DILocation(line: 807, column: 8, scope: !3976)
!4041 = !DILocation(line: 807, column: 18, scope: !3976)
!4042 = !DILocation(line: 808, column: 20, scope: !3976)
!4043 = !DILocation(line: 808, column: 23, scope: !3976)
!4044 = !DILocation(line: 808, column: 5, scope: !3976)
!4045 = !DILocation(line: 808, column: 8, scope: !3976)
!4046 = !DILocation(line: 808, column: 17, scope: !3976)
!4047 = !DILocation(line: 809, column: 19, scope: !3976)
!4048 = !DILocation(line: 809, column: 22, scope: !3976)
!4049 = !DILocation(line: 809, column: 5, scope: !3976)
!4050 = !DILocation(line: 809, column: 8, scope: !3976)
!4051 = !DILocation(line: 809, column: 16, scope: !3976)
!4052 = !DILocation(line: 810, column: 21, scope: !3976)
!4053 = !DILocation(line: 810, column: 24, scope: !3976)
!4054 = !DILocation(line: 810, column: 5, scope: !3976)
!4055 = !DILocation(line: 810, column: 12, scope: !3976)
!4056 = !DILocation(line: 810, column: 18, scope: !3976)
!4057 = !DILocation(line: 811, column: 5, scope: !3976)
!4058 = !DILocation(line: 811, column: 8, scope: !3976)
!4059 = !DILocation(line: 811, column: 17, scope: !3976)
!4060 = !DILocation(line: 813, column: 5, scope: !3976)
!4061 = !DILocation(line: 814, column: 1, scope: !3976)
!4062 = distinct !DISubprogram(name: "__putstr", scope: !3, file: !3, line: 118, type: !4063, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4067)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{null, !4065}
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4073}
!4068 = !DILocalVariable(name: "s", arg: 1, scope: !4062, file: !3, line: 118, type: !4065)
!4069 = !DILocalVariable(name: "x", scope: !4062, file: !3, line: 120, type: !54)
!4070 = !DILocalVariable(name: "y", scope: !4062, file: !3, line: 120, type: !54)
!4071 = !DILocalVariable(name: "pos", scope: !4062, file: !3, line: 120, type: !54)
!4072 = !DILocalVariable(name: "c", scope: !4062, file: !3, line: 121, type: !110)
!4073 = !DILocalVariable(name: "str", scope: !4074, file: !3, line: 124, type: !4065)
!4074 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 123, column: 25)
!4075 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 123, column: 6)
!4076 = !DILocation(line: 118, column: 27, scope: !4062)
!4077 = !DILocation(line: 120, column: 2, scope: !4062)
!4078 = !DILocation(line: 120, column: 6, scope: !4062)
!4079 = !DILocation(line: 120, column: 9, scope: !4062)
!4080 = !DILocation(line: 120, column: 12, scope: !4062)
!4081 = !DILocation(line: 121, column: 2, scope: !4062)
!4082 = !DILocation(line: 121, column: 7, scope: !4062)
!4083 = !DILocation(line: 123, column: 6, scope: !4075)
!4084 = !DILocation(line: 123, column: 6, scope: !4062)
!4085 = !DILocation(line: 124, column: 3, scope: !4074)
!4086 = !DILocation(line: 124, column: 15, scope: !4074)
!4087 = !DILocation(line: 124, column: 21, scope: !4074)
!4088 = !DILocation(line: 125, column: 3, scope: !4074)
!4089 = !DILocation(line: 125, column: 11, scope: !4074)
!4090 = !DILocation(line: 125, column: 10, scope: !4074)
!4091 = !DILocation(line: 126, column: 9, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 126, column: 8)
!4093 = distinct !DILexicalBlock(scope: !4074, file: !3, line: 125, column: 16)
!4094 = !DILocation(line: 126, column: 8, scope: !4092)
!4095 = !DILocation(line: 126, column: 13, scope: !4092)
!4096 = !DILocation(line: 126, column: 8, scope: !4093)
!4097 = !DILocation(line: 127, column: 5, scope: !4092)
!4098 = !DILocation(line: 128, column: 23, scope: !4093)
!4099 = !DILocation(line: 128, column: 19, scope: !4093)
!4100 = !DILocation(line: 128, column: 4, scope: !4093)
!4101 = distinct !{!4101, !4088, !4102, !981, !982}
!4102 = !DILocation(line: 129, column: 3, scope: !4074)
!4103 = !DILocation(line: 130, column: 2, scope: !4075)
!4104 = !DILocation(line: 130, column: 2, scope: !4074)
!4105 = !DILocation(line: 132, column: 6, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 132, column: 6)
!4107 = !DILocation(line: 132, column: 12, scope: !4106)
!4108 = !DILocation(line: 132, column: 17, scope: !4106)
!4109 = !DILocation(line: 132, column: 20, scope: !4106)
!4110 = !DILocation(line: 132, column: 25, scope: !4106)
!4111 = !DILocation(line: 132, column: 6, scope: !4062)
!4112 = !DILocation(line: 133, column: 3, scope: !4106)
!4113 = !DILocation(line: 135, column: 6, scope: !4062)
!4114 = !DILocation(line: 135, column: 23, scope: !4062)
!4115 = !DILocation(line: 135, column: 35, scope: !4062)
!4116 = !DILocation(line: 135, column: 4, scope: !4062)
!4117 = !DILocation(line: 136, column: 6, scope: !4062)
!4118 = !DILocation(line: 136, column: 23, scope: !4062)
!4119 = !DILocation(line: 136, column: 35, scope: !4062)
!4120 = !DILocation(line: 136, column: 4, scope: !4062)
!4121 = !DILocation(line: 138, column: 2, scope: !4062)
!4122 = !DILocation(line: 138, column: 16, scope: !4062)
!4123 = !DILocation(line: 138, column: 14, scope: !4062)
!4124 = !DILocation(line: 138, column: 12, scope: !4062)
!4125 = !DILocation(line: 138, column: 9, scope: !4062)
!4126 = !DILocation(line: 138, column: 20, scope: !4062)
!4127 = !DILocation(line: 139, column: 7, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 139, column: 7)
!4129 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 138, column: 29)
!4130 = !DILocation(line: 139, column: 9, scope: !4128)
!4131 = !DILocation(line: 139, column: 7, scope: !4129)
!4132 = !DILocation(line: 140, column: 6, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 139, column: 18)
!4134 = !DILocation(line: 141, column: 8, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 141, column: 8)
!4136 = !DILocation(line: 141, column: 15, scope: !4135)
!4137 = !DILocation(line: 141, column: 12, scope: !4135)
!4138 = !DILocation(line: 141, column: 8, scope: !4133)
!4139 = !DILocation(line: 142, column: 5, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 141, column: 22)
!4141 = !DILocation(line: 143, column: 6, scope: !4140)
!4142 = !DILocation(line: 144, column: 4, scope: !4140)
!4143 = !DILocation(line: 145, column: 3, scope: !4133)
!4144 = !DILocation(line: 146, column: 33, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 145, column: 10)
!4146 = !DILocation(line: 146, column: 4, scope: !4145)
!4147 = !DILocation(line: 146, column: 12, scope: !4145)
!4148 = !DILocation(line: 146, column: 16, scope: !4145)
!4149 = !DILocation(line: 146, column: 23, scope: !4145)
!4150 = !DILocation(line: 146, column: 21, scope: !4145)
!4151 = !DILocation(line: 146, column: 14, scope: !4145)
!4152 = !DILocation(line: 146, column: 26, scope: !4145)
!4153 = !DILocation(line: 146, column: 31, scope: !4145)
!4154 = !DILocation(line: 147, column: 8, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 147, column: 8)
!4156 = !DILocation(line: 147, column: 15, scope: !4155)
!4157 = !DILocation(line: 147, column: 12, scope: !4155)
!4158 = !DILocation(line: 147, column: 8, scope: !4145)
!4159 = !DILocation(line: 148, column: 7, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 147, column: 21)
!4161 = !DILocation(line: 149, column: 9, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 149, column: 9)
!4163 = !DILocation(line: 149, column: 16, scope: !4162)
!4164 = !DILocation(line: 149, column: 13, scope: !4162)
!4165 = !DILocation(line: 149, column: 9, scope: !4160)
!4166 = !DILocation(line: 150, column: 6, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 149, column: 23)
!4168 = !DILocation(line: 151, column: 7, scope: !4167)
!4169 = !DILocation(line: 152, column: 5, scope: !4167)
!4170 = !DILocation(line: 153, column: 4, scope: !4160)
!4171 = distinct !{!4171, !4121, !4172, !981, !982}
!4172 = !DILocation(line: 155, column: 2, scope: !4062)
!4173 = !DILocation(line: 157, column: 40, scope: !4062)
!4174 = !DILocation(line: 157, column: 2, scope: !4062)
!4175 = !DILocation(line: 157, column: 19, scope: !4062)
!4176 = !DILocation(line: 157, column: 31, scope: !4062)
!4177 = !DILocation(line: 157, column: 38, scope: !4062)
!4178 = !DILocation(line: 158, column: 40, scope: !4062)
!4179 = !DILocation(line: 158, column: 2, scope: !4062)
!4180 = !DILocation(line: 158, column: 19, scope: !4062)
!4181 = !DILocation(line: 158, column: 31, scope: !4062)
!4182 = !DILocation(line: 158, column: 38, scope: !4062)
!4183 = !DILocation(line: 160, column: 9, scope: !4062)
!4184 = !DILocation(line: 160, column: 13, scope: !4062)
!4185 = !DILocation(line: 160, column: 20, scope: !4062)
!4186 = !DILocation(line: 160, column: 18, scope: !4062)
!4187 = !DILocation(line: 160, column: 11, scope: !4062)
!4188 = !DILocation(line: 160, column: 23, scope: !4062)
!4189 = !DILocation(line: 160, column: 6, scope: !4062)
!4190 = !DILocation(line: 161, column: 2, scope: !4062)
!4191 = !DILocation(line: 161, column: 11, scope: !4062)
!4192 = !DILocation(line: 162, column: 2, scope: !4062)
!4193 = !DILocation(line: 162, column: 15, scope: !4062)
!4194 = !DILocation(line: 162, column: 19, scope: !4062)
!4195 = !DILocation(line: 162, column: 12, scope: !4062)
!4196 = !DILocation(line: 162, column: 7, scope: !4062)
!4197 = !DILocation(line: 162, column: 26, scope: !4062)
!4198 = !DILocation(line: 162, column: 33, scope: !4062)
!4199 = !DILocation(line: 163, column: 2, scope: !4062)
!4200 = !DILocation(line: 163, column: 11, scope: !4062)
!4201 = !DILocation(line: 164, column: 2, scope: !4062)
!4202 = !DILocation(line: 164, column: 15, scope: !4062)
!4203 = !DILocation(line: 164, column: 19, scope: !4062)
!4204 = !DILocation(line: 164, column: 12, scope: !4062)
!4205 = !DILocation(line: 164, column: 7, scope: !4062)
!4206 = !DILocation(line: 164, column: 26, scope: !4062)
!4207 = !DILocation(line: 164, column: 33, scope: !4062)
!4208 = !DILocation(line: 165, column: 1, scope: !4062)
!4209 = distinct !DISubprogram(name: "serial_putchar", scope: !3, file: !3, line: 108, type: !4210, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !54}
!4212 = !{!4213, !4214}
!4213 = !DILocalVariable(name: "ch", arg: 1, scope: !4209, file: !3, line: 108, type: !54)
!4214 = !DILocalVariable(name: "timeout", scope: !4209, file: !3, line: 110, type: !7)
!4215 = !DILocation(line: 108, column: 32, scope: !4209)
!4216 = !DILocation(line: 110, column: 2, scope: !4209)
!4217 = !DILocation(line: 110, column: 11, scope: !4209)
!4218 = !DILocation(line: 112, column: 2, scope: !4209)
!4219 = !DILocation(line: 112, column: 10, scope: !4209)
!4220 = !DILocation(line: 112, column: 14, scope: !4209)
!4221 = !DILocation(line: 112, column: 32, scope: !4209)
!4222 = !DILocation(line: 112, column: 39, scope: !4209)
!4223 = !DILocation(line: 112, column: 49, scope: !4209)
!4224 = !DILocation(line: 112, column: 54, scope: !4209)
!4225 = !DILocation(line: 112, column: 57, scope: !4209)
!4226 = !DILocation(line: 0, scope: !4209)
!4227 = !DILocation(line: 113, column: 3, scope: !4209)
!4228 = distinct !{!4228, !4218, !4229, !981, !982}
!4229 = !DILocation(line: 113, column: 13, scope: !4209)
!4230 = !DILocation(line: 115, column: 2, scope: !4209)
!4231 = !DILocation(line: 115, column: 7, scope: !4209)
!4232 = !DILocation(line: 115, column: 11, scope: !4209)
!4233 = !DILocation(line: 115, column: 29, scope: !4209)
!4234 = !DILocation(line: 116, column: 1, scope: !4209)
!4235 = distinct !DISubprogram(name: "scroll", scope: !3, file: !3, line: 95, type: !4236, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4238)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null}
!4238 = !{!4239}
!4239 = !DILocalVariable(name: "i", scope: !4235, file: !3, line: 97, type: !54)
!4240 = !DILocation(line: 97, column: 2, scope: !4235)
!4241 = !DILocation(line: 97, column: 6, scope: !4235)
!4242 = !DILocation(line: 99, column: 10, scope: !4235)
!4243 = !DILocation(line: 99, column: 18, scope: !4235)
!4244 = !DILocation(line: 99, column: 27, scope: !4235)
!4245 = !DILocation(line: 99, column: 32, scope: !4235)
!4246 = !DILocation(line: 99, column: 25, scope: !4235)
!4247 = !DILocation(line: 99, column: 38, scope: !4235)
!4248 = !DILocation(line: 99, column: 44, scope: !4235)
!4249 = !DILocation(line: 99, column: 51, scope: !4235)
!4250 = !DILocation(line: 99, column: 49, scope: !4235)
!4251 = !DILocation(line: 99, column: 56, scope: !4235)
!4252 = !DILocation(line: 99, column: 37, scope: !4235)
!4253 = !DILocation(line: 99, column: 2, scope: !4235)
!4254 = !DILocation(line: 100, column: 12, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 100, column: 2)
!4256 = !DILocation(line: 100, column: 18, scope: !4255)
!4257 = !DILocation(line: 100, column: 25, scope: !4255)
!4258 = !DILocation(line: 100, column: 23, scope: !4255)
!4259 = !DILocation(line: 100, column: 30, scope: !4255)
!4260 = !DILocation(line: 100, column: 9, scope: !4255)
!4261 = !DILocation(line: 100, column: 7, scope: !4255)
!4262 = !DILocation(line: 100, column: 35, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 100, column: 2)
!4264 = !DILocation(line: 100, column: 39, scope: !4263)
!4265 = !DILocation(line: 100, column: 47, scope: !4263)
!4266 = !DILocation(line: 100, column: 45, scope: !4263)
!4267 = !DILocation(line: 100, column: 52, scope: !4263)
!4268 = !DILocation(line: 100, column: 37, scope: !4263)
!4269 = !DILocation(line: 100, column: 2, scope: !4255)
!4270 = !DILocation(line: 101, column: 3, scope: !4263)
!4271 = !DILocation(line: 101, column: 10, scope: !4263)
!4272 = !DILocation(line: 101, column: 13, scope: !4263)
!4273 = !DILocation(line: 100, column: 59, scope: !4263)
!4274 = !DILocation(line: 100, column: 2, scope: !4263)
!4275 = distinct !{!4275, !4269, !4276, !981, !982}
!4276 = !DILocation(line: 101, column: 15, scope: !4255)
!4277 = !DILocation(line: 102, column: 1, scope: !4235)
!4278 = distinct !DISubprogram(name: "__puthex", scope: !3, file: !3, line: 167, type: !4279, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4281)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{null, !66}
!4281 = !{!4282, !4283, !4284, !4285}
!4282 = !DILocalVariable(name: "value", arg: 1, scope: !4278, file: !3, line: 167, type: !66)
!4283 = !DILocalVariable(name: "alpha", scope: !4278, file: !3, line: 169, type: !334)
!4284 = !DILocalVariable(name: "bits", scope: !4278, file: !3, line: 170, type: !54)
!4285 = !DILocalVariable(name: "digit", scope: !4286, file: !3, line: 173, type: !66)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !3, line: 172, column: 59)
!4287 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 172, column: 2)
!4288 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 172, column: 2)
!4289 = !DILocation(line: 167, column: 29, scope: !4278)
!4290 = !DILocation(line: 169, column: 2, scope: !4278)
!4291 = !DILocation(line: 169, column: 7, scope: !4278)
!4292 = !DILocation(line: 170, column: 2, scope: !4278)
!4293 = !DILocation(line: 170, column: 6, scope: !4278)
!4294 = !DILocation(line: 172, column: 12, scope: !4288)
!4295 = !DILocation(line: 172, column: 7, scope: !4288)
!4296 = !DILocation(line: 172, column: 37, scope: !4287)
!4297 = !DILocation(line: 172, column: 42, scope: !4287)
!4298 = !DILocation(line: 172, column: 2, scope: !4288)
!4299 = !DILocation(line: 173, column: 3, scope: !4286)
!4300 = !DILocation(line: 173, column: 17, scope: !4286)
!4301 = !DILocation(line: 173, column: 26, scope: !4286)
!4302 = !DILocation(line: 173, column: 35, scope: !4286)
!4303 = !DILocation(line: 173, column: 32, scope: !4286)
!4304 = !DILocation(line: 173, column: 41, scope: !4286)
!4305 = !DILocation(line: 175, column: 7, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 175, column: 7)
!4307 = !DILocation(line: 175, column: 13, scope: !4306)
!4308 = !DILocation(line: 175, column: 7, scope: !4286)
!4309 = !DILocation(line: 176, column: 21, scope: !4306)
!4310 = !DILocation(line: 176, column: 19, scope: !4306)
!4311 = !DILocation(line: 176, column: 15, scope: !4306)
!4312 = !DILocation(line: 176, column: 4, scope: !4306)
!4313 = !DILocation(line: 176, column: 13, scope: !4306)
!4314 = !DILocation(line: 178, column: 22, scope: !4306)
!4315 = !DILocation(line: 178, column: 28, scope: !4306)
!4316 = !DILocation(line: 178, column: 19, scope: !4306)
!4317 = !DILocation(line: 178, column: 15, scope: !4306)
!4318 = !DILocation(line: 178, column: 4, scope: !4306)
!4319 = !DILocation(line: 178, column: 13, scope: !4306)
!4320 = !DILocation(line: 180, column: 12, scope: !4286)
!4321 = !DILocation(line: 180, column: 3, scope: !4286)
!4322 = !DILocation(line: 181, column: 2, scope: !4287)
!4323 = !DILocation(line: 181, column: 2, scope: !4286)
!4324 = !DILocation(line: 172, column: 53, scope: !4287)
!4325 = !DILocation(line: 172, column: 2, scope: !4287)
!4326 = distinct !{!4326, !4298, !4327, !981, !982}
!4327 = !DILocation(line: 181, column: 2, scope: !4288)
!4328 = !DILocation(line: 182, column: 1, scope: !4278)
!4329 = distinct !DISubprogram(name: "decompress_kernel", scope: !3, file: !3, line: 341, type: !4330, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4335)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!66, !73, !66, !4332}
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !109}
!4335 = !{!4336, !4337, !4338, !4339}
!4336 = !DILocalVariable(name: "outbuf", arg: 1, scope: !4329, file: !3, line: 341, type: !73)
!4337 = !DILocalVariable(name: "virt_addr", arg: 2, scope: !4329, file: !3, line: 341, type: !66)
!4338 = !DILocalVariable(name: "error", arg: 3, scope: !4329, file: !3, line: 342, type: !4332)
!4339 = !DILocalVariable(name: "entry", scope: !4329, file: !3, line: 344, type: !66)
!4340 = !DILocation(line: 341, column: 48, scope: !4329)
!4341 = !DILocation(line: 341, column: 70, scope: !4329)
!4342 = !DILocation(line: 342, column: 12, scope: !4329)
!4343 = !DILocation(line: 344, column: 2, scope: !4329)
!4344 = !DILocation(line: 344, column: 16, scope: !4329)
!4345 = !DILocation(line: 346, column: 7, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 346, column: 6)
!4347 = !DILocation(line: 346, column: 6, scope: !4329)
!4348 = !DILocation(line: 347, column: 20, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 346, column: 21)
!4350 = !DILocation(line: 348, column: 20, scope: !4349)
!4351 = !DILocation(line: 349, column: 2, scope: !4349)
!4352 = !DILocation(line: 351, column: 31, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 351, column: 6)
!4354 = !DILocation(line: 351, column: 54, scope: !4353)
!4355 = !DILocation(line: 351, column: 62, scope: !4353)
!4356 = !DILocation(line: 352, column: 11, scope: !4353)
!4357 = !DILocation(line: 351, column: 6, scope: !4353)
!4358 = !DILocation(line: 352, column: 18, scope: !4353)
!4359 = !DILocation(line: 351, column: 6, scope: !4329)
!4360 = !DILocation(line: 353, column: 3, scope: !4353)
!4361 = !DILocation(line: 355, column: 20, scope: !4329)
!4362 = !DILocation(line: 355, column: 10, scope: !4329)
!4363 = !DILocation(line: 355, column: 8, scope: !4329)
!4364 = !DILocation(line: 356, column: 21, scope: !4329)
!4365 = !DILocation(line: 356, column: 29, scope: !4329)
!4366 = !DILocation(line: 356, column: 41, scope: !4329)
!4367 = !DILocation(line: 356, column: 2, scope: !4329)
!4368 = !DILocation(line: 358, column: 9, scope: !4329)
!4369 = !DILocation(line: 358, column: 2, scope: !4329)
!4370 = !DILocation(line: 359, column: 1, scope: !4329)
!4371 = distinct !DISubprogram(name: "__decompress", scope: !770, file: !770, line: 210, type: !4372, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4378)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!54, !73, !111, !4374, !4374, !73, !111, !4377, !4332}
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!111, !51, !66}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!4378 = !{!4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386}
!4379 = !DILocalVariable(name: "buf", arg: 1, scope: !4371, file: !770, line: 210, type: !73)
!4380 = !DILocalVariable(name: "len", arg: 2, scope: !4371, file: !770, line: 210, type: !111)
!4381 = !DILocalVariable(name: "fill", arg: 3, scope: !4371, file: !770, line: 211, type: !4374)
!4382 = !DILocalVariable(name: "flush", arg: 4, scope: !4371, file: !770, line: 212, type: !4374)
!4383 = !DILocalVariable(name: "out_buf", arg: 5, scope: !4371, file: !770, line: 213, type: !73)
!4384 = !DILocalVariable(name: "out_len", arg: 6, scope: !4371, file: !770, line: 213, type: !111)
!4385 = !DILocalVariable(name: "pos", arg: 7, scope: !4371, file: !770, line: 214, type: !4377)
!4386 = !DILocalVariable(name: "error", arg: 8, scope: !4371, file: !770, line: 215, type: !4332)
!4387 = !DILocation(line: 210, column: 45, scope: !4371)
!4388 = !DILocation(line: 210, column: 55, scope: !4371)
!4389 = !DILocation(line: 211, column: 14, scope: !4371)
!4390 = !DILocation(line: 212, column: 14, scope: !4371)
!4391 = !DILocation(line: 213, column: 22, scope: !4371)
!4392 = !DILocation(line: 213, column: 36, scope: !4371)
!4393 = !DILocation(line: 214, column: 13, scope: !4371)
!4394 = !DILocation(line: 215, column: 14, scope: !4371)
!4395 = !DILocation(line: 217, column: 18, scope: !4371)
!4396 = !DILocation(line: 217, column: 23, scope: !4371)
!4397 = !DILocation(line: 217, column: 28, scope: !4371)
!4398 = !DILocation(line: 217, column: 34, scope: !4371)
!4399 = !DILocation(line: 217, column: 41, scope: !4371)
!4400 = !DILocation(line: 217, column: 50, scope: !4371)
!4401 = !DILocation(line: 217, column: 59, scope: !4371)
!4402 = !DILocation(line: 217, column: 64, scope: !4371)
!4403 = !DILocation(line: 217, column: 9, scope: !4371)
!4404 = !DILocation(line: 217, column: 2, scope: !4371)
!4405 = distinct !DISubprogram(name: "parse_elf", scope: !3, file: !3, line: 280, type: !4406, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4408)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!126, !51}
!4408 = !{!4409, !4410, !4434, !4448, !4449, !4450}
!4409 = !DILocalVariable(name: "output", arg: 1, scope: !4405, file: !3, line: 280, type: !51)
!4410 = !DILocalVariable(name: "ehdr", scope: !4405, file: !3, line: 283, type: !4411)
!4411 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Ehdr", file: !4412, line: 241, baseType: !4413)
!4412 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_hdr", file: !4412, line: 226, size: 512, elements: !4414)
!4414 = !{!4415, !4417, !4419, !4420, !4422, !4424, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "e_ident", scope: !4413, file: !4412, line: 227, baseType: !4416, size: 128)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, elements: !186)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "e_type", scope: !4413, file: !4412, line: 228, baseType: !4418, size: 16, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4412, line: 17, baseType: !406)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !4413, file: !4412, line: 229, baseType: !4418, size: 16, offset: 144)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "e_version", scope: !4413, file: !4412, line: 230, baseType: !4421, size: 32, offset: 160)
!4421 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4412, line: 21, baseType: !135)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "e_entry", scope: !4413, file: !4412, line: 231, baseType: !4423, size: 64, offset: 192)
!4423 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4412, line: 16, baseType: !144)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "e_phoff", scope: !4413, file: !4412, line: 232, baseType: !4425, size: 64, offset: 256)
!4425 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Off", file: !4412, line: 19, baseType: !144)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "e_shoff", scope: !4413, file: !4412, line: 233, baseType: !4425, size: 64, offset: 320)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !4413, file: !4412, line: 234, baseType: !4421, size: 32, offset: 384)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "e_ehsize", scope: !4413, file: !4412, line: 235, baseType: !4418, size: 16, offset: 416)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "e_phentsize", scope: !4413, file: !4412, line: 236, baseType: !4418, size: 16, offset: 432)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "e_phnum", scope: !4413, file: !4412, line: 237, baseType: !4418, size: 16, offset: 448)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "e_shentsize", scope: !4413, file: !4412, line: 238, baseType: !4418, size: 16, offset: 464)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "e_shnum", scope: !4413, file: !4412, line: 239, baseType: !4418, size: 16, offset: 480)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "e_shstrndx", scope: !4413, file: !4412, line: 240, baseType: !4418, size: 16, offset: 496)
!4434 = !DILocalVariable(name: "phdrs", scope: !4405, file: !3, line: 284, type: !4435)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Phdr", file: !4412, line: 269, baseType: !4437)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_phdr", file: !4412, line: 260, size: 448, elements: !4438)
!4438 = !{!4439, !4440, !4441, !4442, !4443, !4444, !4446, !4447}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "p_type", scope: !4437, file: !4412, line: 261, baseType: !4421, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "p_flags", scope: !4437, file: !4412, line: 262, baseType: !4421, size: 32, offset: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "p_offset", scope: !4437, file: !4412, line: 263, baseType: !4425, size: 64, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "p_vaddr", scope: !4437, file: !4412, line: 264, baseType: !4423, size: 64, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "p_paddr", scope: !4437, file: !4412, line: 265, baseType: !4423, size: 64, offset: 192)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "p_filesz", scope: !4437, file: !4412, line: 266, baseType: !4445, size: 64, offset: 256)
!4445 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4412, line: 22, baseType: !144)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "p_memsz", scope: !4437, file: !4412, line: 267, baseType: !4445, size: 64, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "p_align", scope: !4437, file: !4412, line: 268, baseType: !4445, size: 64, offset: 384)
!4448 = !DILocalVariable(name: "phdr", scope: !4405, file: !3, line: 284, type: !4435)
!4449 = !DILocalVariable(name: "dest", scope: !4405, file: !3, line: 289, type: !51)
!4450 = !DILocalVariable(name: "i", scope: !4405, file: !3, line: 290, type: !54)
!4451 = !DILocation(line: 280, column: 31, scope: !4405)
!4452 = !DILocation(line: 283, column: 2, scope: !4405)
!4453 = !DILocation(line: 283, column: 13, scope: !4405)
!4454 = !DILocation(line: 284, column: 2, scope: !4405)
!4455 = !DILocation(line: 284, column: 14, scope: !4405)
!4456 = !DILocation(line: 284, column: 22, scope: !4405)
!4457 = !DILocation(line: 289, column: 2, scope: !4405)
!4458 = !DILocation(line: 289, column: 8, scope: !4405)
!4459 = !DILocation(line: 290, column: 2, scope: !4405)
!4460 = !DILocation(line: 290, column: 6, scope: !4405)
!4461 = !DILocation(line: 292, column: 2, scope: !4405)
!4462 = !DILocation(line: 293, column: 11, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 293, column: 6)
!4464 = !DILocation(line: 293, column: 6, scope: !4463)
!4465 = !DILocation(line: 293, column: 28, scope: !4463)
!4466 = !DILocation(line: 293, column: 39, scope: !4463)
!4467 = !DILocation(line: 294, column: 10, scope: !4463)
!4468 = !DILocation(line: 294, column: 5, scope: !4463)
!4469 = !DILocation(line: 294, column: 27, scope: !4463)
!4470 = !DILocation(line: 294, column: 38, scope: !4463)
!4471 = !DILocation(line: 295, column: 10, scope: !4463)
!4472 = !DILocation(line: 295, column: 5, scope: !4463)
!4473 = !DILocation(line: 295, column: 27, scope: !4463)
!4474 = !DILocation(line: 295, column: 38, scope: !4463)
!4475 = !DILocation(line: 296, column: 10, scope: !4463)
!4476 = !DILocation(line: 296, column: 5, scope: !4463)
!4477 = !DILocation(line: 296, column: 27, scope: !4463)
!4478 = !DILocation(line: 293, column: 6, scope: !4405)
!4479 = !DILocation(line: 297, column: 3, scope: !4463)
!4480 = !DILocation(line: 299, column: 2, scope: !4405)
!4481 = !DILocation(line: 301, column: 39, scope: !4405)
!4482 = !DILocation(line: 301, column: 34, scope: !4405)
!4483 = !DILocation(line: 301, column: 32, scope: !4405)
!4484 = !DILocation(line: 301, column: 17, scope: !4405)
!4485 = !DILocation(line: 301, column: 10, scope: !4405)
!4486 = !DILocation(line: 301, column: 8, scope: !4405)
!4487 = !DILocation(line: 302, column: 7, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 302, column: 6)
!4489 = !DILocation(line: 302, column: 6, scope: !4405)
!4490 = !DILocation(line: 303, column: 3, scope: !4488)
!4491 = !DILocation(line: 305, column: 2, scope: !4405)
!4492 = !DILocation(line: 307, column: 9, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 307, column: 2)
!4494 = !DILocation(line: 307, column: 7, scope: !4493)
!4495 = !DILocation(line: 307, column: 14, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 307, column: 2)
!4497 = !DILocation(line: 307, column: 23, scope: !4496)
!4498 = !DILocation(line: 307, column: 18, scope: !4496)
!4499 = !DILocation(line: 307, column: 16, scope: !4496)
!4500 = !DILocation(line: 307, column: 2, scope: !4493)
!4501 = !DILocation(line: 308, column: 11, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 307, column: 37)
!4503 = !DILocation(line: 308, column: 17, scope: !4502)
!4504 = !DILocation(line: 308, column: 8, scope: !4502)
!4505 = !DILocation(line: 310, column: 11, scope: !4502)
!4506 = !DILocation(line: 310, column: 17, scope: !4502)
!4507 = !DILocation(line: 310, column: 3, scope: !4502)
!4508 = !DILocation(line: 313, column: 9, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 313, column: 8)
!4510 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 310, column: 25)
!4511 = !DILocation(line: 313, column: 15, scope: !4509)
!4512 = !DILocation(line: 313, column: 23, scope: !4509)
!4513 = !DILocation(line: 313, column: 35, scope: !4509)
!4514 = !DILocation(line: 313, column: 8, scope: !4510)
!4515 = !DILocation(line: 314, column: 5, scope: !4509)
!4516 = !DILocation(line: 317, column: 11, scope: !4510)
!4517 = !DILocation(line: 317, column: 9, scope: !4510)
!4518 = !DILocation(line: 318, column: 13, scope: !4510)
!4519 = !DILocation(line: 318, column: 19, scope: !4510)
!4520 = !DILocation(line: 318, column: 27, scope: !4510)
!4521 = !DILocation(line: 318, column: 9, scope: !4510)
!4522 = !DILocation(line: 322, column: 12, scope: !4510)
!4523 = !DILocation(line: 322, column: 18, scope: !4510)
!4524 = !DILocation(line: 322, column: 27, scope: !4510)
!4525 = !DILocation(line: 322, column: 33, scope: !4510)
!4526 = !DILocation(line: 322, column: 25, scope: !4510)
!4527 = !DILocation(line: 322, column: 43, scope: !4510)
!4528 = !DILocation(line: 322, column: 49, scope: !4510)
!4529 = !DILocation(line: 322, column: 4, scope: !4510)
!4530 = !DILocation(line: 323, column: 4, scope: !4510)
!4531 = !DILocation(line: 324, column: 36, scope: !4510)
!4532 = !DILocation(line: 326, column: 2, scope: !4502)
!4533 = !DILocation(line: 307, column: 33, scope: !4496)
!4534 = !DILocation(line: 307, column: 2, scope: !4496)
!4535 = distinct !{!4535, !4500, !4536, !981, !982}
!4536 = !DILocation(line: 326, column: 2, scope: !4493)
!4537 = !DILocation(line: 328, column: 7, scope: !4405)
!4538 = !DILocation(line: 328, column: 2, scope: !4405)
!4539 = !DILocation(line: 330, column: 14, scope: !4405)
!4540 = !DILocation(line: 330, column: 22, scope: !4405)
!4541 = !DILocation(line: 331, column: 1, scope: !4405)
!4542 = !DILocation(line: 330, column: 2, scope: !4405)
!4543 = distinct !DISubprogram(name: "handle_relocations", scope: !3, file: !3, line: 185, type: !4544, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4546)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{null, !51, !66, !66}
!4546 = !{!4547, !4548, !4549, !4550, !4552, !4553, !4554, !4555, !4556, !4557, !4561, !4563}
!4547 = !DILocalVariable(name: "output", arg: 1, scope: !4543, file: !3, line: 185, type: !51)
!4548 = !DILocalVariable(name: "output_len", arg: 2, scope: !4543, file: !3, line: 185, type: !66)
!4549 = !DILocalVariable(name: "virt_addr", arg: 3, scope: !4543, file: !3, line: 186, type: !66)
!4550 = !DILocalVariable(name: "reloc", scope: !4543, file: !3, line: 188, type: !4551)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!4552 = !DILocalVariable(name: "delta", scope: !4543, file: !3, line: 189, type: !66)
!4553 = !DILocalVariable(name: "map", scope: !4543, file: !3, line: 189, type: !66)
!4554 = !DILocalVariable(name: "ptr", scope: !4543, file: !3, line: 189, type: !66)
!4555 = !DILocalVariable(name: "min_addr", scope: !4543, file: !3, line: 190, type: !66)
!4556 = !DILocalVariable(name: "max_addr", scope: !4543, file: !3, line: 191, type: !66)
!4557 = !DILocalVariable(name: "extended", scope: !4558, file: !3, line: 242, type: !111)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 241, column: 70)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 241, column: 2)
!4560 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 241, column: 2)
!4561 = !DILocalVariable(name: "extended", scope: !4562, file: !3, line: 253, type: !111)
!4562 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 252, column: 19)
!4563 = !DILocalVariable(name: "extended", scope: !4564, file: !3, line: 263, type: !111)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !3, line: 262, column: 33)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 262, column: 2)
!4566 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 262, column: 2)
!4567 = !DILocation(line: 185, column: 38, scope: !4543)
!4568 = !DILocation(line: 185, column: 60, scope: !4543)
!4569 = !DILocation(line: 186, column: 25, scope: !4543)
!4570 = !DILocation(line: 188, column: 2, scope: !4543)
!4571 = !DILocation(line: 188, column: 7, scope: !4543)
!4572 = !DILocation(line: 189, column: 2, scope: !4543)
!4573 = !DILocation(line: 189, column: 16, scope: !4543)
!4574 = !DILocation(line: 189, column: 23, scope: !4543)
!4575 = !DILocation(line: 189, column: 28, scope: !4543)
!4576 = !DILocation(line: 190, column: 2, scope: !4543)
!4577 = !DILocation(line: 190, column: 16, scope: !4543)
!4578 = !DILocation(line: 190, column: 42, scope: !4543)
!4579 = !DILocation(line: 190, column: 27, scope: !4543)
!4580 = !DILocation(line: 191, column: 2, scope: !4543)
!4581 = !DILocation(line: 191, column: 16, scope: !4543)
!4582 = !DILocation(line: 191, column: 27, scope: !4543)
!4583 = !DILocation(line: 191, column: 36, scope: !4543)
!4584 = !DILocation(line: 197, column: 10, scope: !4543)
!4585 = !DILocation(line: 197, column: 19, scope: !4543)
!4586 = !DILocation(line: 197, column: 8, scope: !4543)
!4587 = !DILocation(line: 206, column: 8, scope: !4543)
!4588 = !DILocation(line: 206, column: 14, scope: !4543)
!4589 = !DILocation(line: 206, column: 6, scope: !4543)
!4590 = !DILocation(line: 214, column: 11, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 213, column: 6)
!4592 = !DILocation(line: 214, column: 21, scope: !4591)
!4593 = !DILocation(line: 214, column: 9, scope: !4591)
!4594 = !DILocation(line: 216, column: 7, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 216, column: 6)
!4596 = !DILocation(line: 216, column: 6, scope: !4543)
!4597 = !DILocation(line: 217, column: 3, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 216, column: 14)
!4599 = !DILocation(line: 218, column: 3, scope: !4598)
!4600 = !DILocation(line: 220, column: 2, scope: !4543)
!4601 = !DILocation(line: 241, column: 15, scope: !4560)
!4602 = !DILocation(line: 241, column: 24, scope: !4560)
!4603 = !DILocation(line: 241, column: 22, scope: !4560)
!4604 = !DILocation(line: 241, column: 35, scope: !4560)
!4605 = !DILocation(line: 241, column: 13, scope: !4560)
!4606 = !DILocation(line: 241, column: 7, scope: !4560)
!4607 = !DILocation(line: 241, column: 54, scope: !4559)
!4608 = !DILocation(line: 241, column: 53, scope: !4559)
!4609 = !DILocation(line: 241, column: 2, scope: !4560)
!4610 = !DILocation(line: 242, column: 3, scope: !4558)
!4611 = !DILocation(line: 242, column: 8, scope: !4558)
!4612 = !DILocation(line: 242, column: 20, scope: !4558)
!4613 = !DILocation(line: 242, column: 19, scope: !4558)
!4614 = !DILocation(line: 243, column: 15, scope: !4558)
!4615 = !DILocation(line: 243, column: 12, scope: !4558)
!4616 = !DILocation(line: 245, column: 24, scope: !4558)
!4617 = !DILocation(line: 245, column: 7, scope: !4558)
!4618 = !DILocation(line: 246, column: 7, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 246, column: 7)
!4620 = !DILocation(line: 246, column: 13, scope: !4619)
!4621 = !DILocation(line: 246, column: 11, scope: !4619)
!4622 = !DILocation(line: 246, column: 22, scope: !4619)
!4623 = !DILocation(line: 246, column: 25, scope: !4619)
!4624 = !DILocation(line: 246, column: 31, scope: !4619)
!4625 = !DILocation(line: 246, column: 29, scope: !4619)
!4626 = !DILocation(line: 246, column: 7, scope: !4558)
!4627 = !DILocation(line: 247, column: 4, scope: !4619)
!4628 = !DILocation(line: 249, column: 23, scope: !4558)
!4629 = !DILocation(line: 249, column: 16, scope: !4558)
!4630 = !DILocation(line: 249, column: 4, scope: !4558)
!4631 = !DILocation(line: 249, column: 20, scope: !4558)
!4632 = !DILocation(line: 250, column: 2, scope: !4559)
!4633 = !DILocation(line: 250, column: 2, scope: !4558)
!4634 = !DILocation(line: 241, column: 66, scope: !4559)
!4635 = !DILocation(line: 241, column: 2, scope: !4559)
!4636 = distinct !{!4636, !4609, !4637, !981, !982}
!4637 = !DILocation(line: 250, column: 2, scope: !4560)
!4638 = !DILocation(line: 252, column: 2, scope: !4543)
!4639 = !DILocation(line: 252, column: 10, scope: !4543)
!4640 = !DILocation(line: 252, column: 9, scope: !4543)
!4641 = !DILocation(line: 253, column: 3, scope: !4562)
!4642 = !DILocation(line: 253, column: 8, scope: !4562)
!4643 = !DILocation(line: 253, column: 20, scope: !4562)
!4644 = !DILocation(line: 253, column: 19, scope: !4562)
!4645 = !DILocation(line: 254, column: 15, scope: !4562)
!4646 = !DILocation(line: 254, column: 12, scope: !4562)
!4647 = !DILocation(line: 256, column: 24, scope: !4562)
!4648 = !DILocation(line: 256, column: 7, scope: !4562)
!4649 = !DILocation(line: 257, column: 7, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 257, column: 7)
!4651 = !DILocation(line: 257, column: 13, scope: !4650)
!4652 = !DILocation(line: 257, column: 11, scope: !4650)
!4653 = !DILocation(line: 257, column: 22, scope: !4650)
!4654 = !DILocation(line: 257, column: 25, scope: !4650)
!4655 = !DILocation(line: 257, column: 31, scope: !4650)
!4656 = !DILocation(line: 257, column: 29, scope: !4650)
!4657 = !DILocation(line: 257, column: 7, scope: !4562)
!4658 = !DILocation(line: 258, column: 4, scope: !4650)
!4659 = !DILocation(line: 260, column: 22, scope: !4562)
!4660 = !DILocation(line: 260, column: 15, scope: !4562)
!4661 = !DILocation(line: 260, column: 4, scope: !4562)
!4662 = !DILocation(line: 260, column: 19, scope: !4562)
!4663 = !DILocation(line: 261, column: 2, scope: !4543)
!4664 = distinct !{!4664, !4638, !4663, !981, !982}
!4665 = !DILocation(line: 262, column: 12, scope: !4566)
!4666 = !DILocation(line: 262, column: 7, scope: !4566)
!4667 = !DILocation(line: 262, column: 17, scope: !4565)
!4668 = !DILocation(line: 262, column: 16, scope: !4565)
!4669 = !DILocation(line: 262, column: 2, scope: !4566)
!4670 = !DILocation(line: 263, column: 3, scope: !4564)
!4671 = !DILocation(line: 263, column: 8, scope: !4564)
!4672 = !DILocation(line: 263, column: 20, scope: !4564)
!4673 = !DILocation(line: 263, column: 19, scope: !4564)
!4674 = !DILocation(line: 264, column: 15, scope: !4564)
!4675 = !DILocation(line: 264, column: 12, scope: !4564)
!4676 = !DILocation(line: 266, column: 24, scope: !4564)
!4677 = !DILocation(line: 266, column: 7, scope: !4564)
!4678 = !DILocation(line: 267, column: 7, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 267, column: 7)
!4680 = !DILocation(line: 267, column: 13, scope: !4679)
!4681 = !DILocation(line: 267, column: 11, scope: !4679)
!4682 = !DILocation(line: 267, column: 22, scope: !4679)
!4683 = !DILocation(line: 267, column: 25, scope: !4679)
!4684 = !DILocation(line: 267, column: 31, scope: !4679)
!4685 = !DILocation(line: 267, column: 29, scope: !4679)
!4686 = !DILocation(line: 267, column: 7, scope: !4564)
!4687 = !DILocation(line: 268, column: 4, scope: !4679)
!4688 = !DILocation(line: 270, column: 23, scope: !4564)
!4689 = !DILocation(line: 270, column: 16, scope: !4564)
!4690 = !DILocation(line: 270, column: 4, scope: !4564)
!4691 = !DILocation(line: 270, column: 20, scope: !4564)
!4692 = !DILocation(line: 271, column: 2, scope: !4565)
!4693 = !DILocation(line: 271, column: 2, scope: !4564)
!4694 = !DILocation(line: 262, column: 29, scope: !4565)
!4695 = !DILocation(line: 262, column: 2, scope: !4565)
!4696 = distinct !{!4696, !4669, !4697, !981, !982}
!4697 = !DILocation(line: 271, column: 2, scope: !4566)
!4698 = !DILocation(line: 273, column: 1, scope: !4543)
!4699 = distinct !DISubprogram(name: "extract_kernel", scope: !3, file: !3, line: 391, type: !4700, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4702)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!51, !51, !73}
!4702 = !{!4703, !4704, !4705, !4706, !4707, !4708, !4709, !4711}
!4703 = !DILocalVariable(name: "rmode", arg: 1, scope: !4699, file: !3, line: 391, type: !51)
!4704 = !DILocalVariable(name: "output", arg: 2, scope: !4699, file: !3, line: 391, type: !73)
!4705 = !DILocalVariable(name: "virt_addr", scope: !4699, file: !3, line: 393, type: !66)
!4706 = !DILocalVariable(name: "heap", scope: !4699, file: !3, line: 394, type: !111)
!4707 = !DILocalVariable(name: "needed_size", scope: !4699, file: !3, line: 395, type: !66)
!4708 = !DILocalVariable(name: "entry_offset", scope: !4699, file: !3, line: 396, type: !126)
!4709 = !DILocalVariable(name: "__UNIQUE_ID___x204", scope: !4710, file: !3, line: 454, type: !66)
!4710 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 454, column: 16)
!4711 = !DILocalVariable(name: "__UNIQUE_ID___y205", scope: !4710, file: !3, line: 454, type: !66)
!4712 = !DILocation(line: 391, column: 49, scope: !4699)
!4713 = !DILocation(line: 391, column: 71, scope: !4699)
!4714 = !DILocation(line: 393, column: 2, scope: !4699)
!4715 = !DILocation(line: 393, column: 16, scope: !4699)
!4716 = !DILocation(line: 394, column: 2, scope: !4699)
!4717 = !DILocation(line: 394, column: 9, scope: !4699)
!4718 = !DILocation(line: 395, column: 2, scope: !4699)
!4719 = !DILocation(line: 395, column: 16, scope: !4699)
!4720 = !DILocation(line: 396, column: 2, scope: !4699)
!4721 = !DILocation(line: 396, column: 9, scope: !4699)
!4722 = !DILocation(line: 399, column: 20, scope: !4699)
!4723 = !DILocation(line: 399, column: 18, scope: !4699)
!4724 = !DILocation(line: 402, column: 2, scope: !4699)
!4725 = !DILocation(line: 402, column: 19, scope: !4699)
!4726 = !DILocation(line: 402, column: 23, scope: !4699)
!4727 = !DILocation(line: 402, column: 33, scope: !4699)
!4728 = !DILocation(line: 404, column: 21, scope: !4699)
!4729 = !DILocation(line: 404, column: 38, scope: !4699)
!4730 = !DILocation(line: 404, column: 2, scope: !4699)
!4731 = !DILocation(line: 406, column: 23, scope: !4699)
!4732 = !DILocation(line: 406, column: 2, scope: !4699)
!4733 = !DILocation(line: 408, column: 6, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 408, column: 6)
!4735 = !DILocation(line: 408, column: 23, scope: !4734)
!4736 = !DILocation(line: 408, column: 35, scope: !4734)
!4737 = !DILocation(line: 408, column: 51, scope: !4734)
!4738 = !DILocation(line: 408, column: 6, scope: !4699)
!4739 = !DILocation(line: 409, column: 10, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 408, column: 57)
!4741 = !DILocation(line: 410, column: 11, scope: !4740)
!4742 = !DILocation(line: 411, column: 2, scope: !4740)
!4743 = !DILocation(line: 412, column: 10, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 411, column: 9)
!4745 = !DILocation(line: 413, column: 11, scope: !4744)
!4746 = !DILocation(line: 416, column: 10, scope: !4699)
!4747 = !DILocation(line: 416, column: 27, scope: !4699)
!4748 = !DILocation(line: 416, column: 39, scope: !4699)
!4749 = !DILocation(line: 416, column: 8, scope: !4699)
!4750 = !DILocation(line: 417, column: 9, scope: !4699)
!4751 = !DILocation(line: 417, column: 26, scope: !4699)
!4752 = !DILocation(line: 417, column: 38, scope: !4699)
!4753 = !DILocation(line: 417, column: 7, scope: !4699)
!4754 = !DILocation(line: 419, column: 2, scope: !4699)
!4755 = !DILocation(line: 427, column: 2, scope: !4699)
!4756 = !DILocation(line: 429, column: 2, scope: !4699)
!4757 = !DILocation(line: 436, column: 36, scope: !4699)
!4758 = !DILocation(line: 436, column: 2, scope: !4699)
!4759 = !DILocation(line: 436, column: 19, scope: !4699)
!4760 = !DILocation(line: 436, column: 34, scope: !4699)
!4761 = !DILocation(line: 438, column: 2, scope: !4699)
!4762 = !DILocation(line: 440, column: 21, scope: !4699)
!4763 = !DILocation(line: 440, column: 19, scope: !4699)
!4764 = !DILocation(line: 441, column: 21, scope: !4699)
!4765 = !DILocation(line: 441, column: 26, scope: !4699)
!4766 = !DILocation(line: 441, column: 19, scope: !4699)
!4767 = !DILocation(line: 454, column: 16, scope: !4710)
!4768 = !DILocation(line: 454, column: 16, scope: !4699)
!4769 = !DILocation(line: 454, column: 14, scope: !4699)
!4770 = !DILocation(line: 456, column: 16, scope: !4699)
!4771 = !DILocation(line: 456, column: 14, scope: !4699)
!4772 = !DILocation(line: 460, column: 2, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 460, column: 2)
!4774 = !DILocation(line: 461, column: 2, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 461, column: 2)
!4776 = !DILocation(line: 462, column: 2, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 462, column: 2)
!4778 = !DILocation(line: 463, column: 2, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 463, column: 2)
!4780 = !DILocation(line: 464, column: 2, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 464, column: 2)
!4782 = !DILocation(line: 465, column: 2, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 465, column: 2)
!4784 = !DILocation(line: 469, column: 2, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 469, column: 2)
!4786 = !DILocation(line: 472, column: 52, scope: !4699)
!4787 = !DILocation(line: 474, column: 5, scope: !4699)
!4788 = !DILocation(line: 472, column: 2, scope: !4699)
!4789 = !DILocation(line: 478, column: 21, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 478, column: 6)
!4791 = !DILocation(line: 478, column: 6, scope: !4790)
!4792 = !DILocation(line: 478, column: 28, scope: !4790)
!4793 = !DILocation(line: 478, column: 6, scope: !4699)
!4794 = !DILocation(line: 479, column: 3, scope: !4790)
!4795 = !DILocation(line: 480, column: 6, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 480, column: 6)
!4797 = !DILocation(line: 480, column: 16, scope: !4796)
!4798 = !DILocation(line: 480, column: 6, scope: !4699)
!4799 = !DILocation(line: 481, column: 3, scope: !4796)
!4800 = !DILocation(line: 483, column: 6, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 483, column: 6)
!4802 = !DILocation(line: 483, column: 11, scope: !4801)
!4803 = !DILocation(line: 483, column: 6, scope: !4699)
!4804 = !DILocation(line: 484, column: 3, scope: !4801)
!4805 = !DILocation(line: 485, column: 6, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 485, column: 6)
!4807 = !DILocation(line: 485, column: 18, scope: !4806)
!4808 = !DILocation(line: 485, column: 16, scope: !4806)
!4809 = !DILocation(line: 485, column: 30, scope: !4806)
!4810 = !DILocation(line: 485, column: 6, scope: !4699)
!4811 = !DILocation(line: 486, column: 3, scope: !4806)
!4812 = !DILocation(line: 496, column: 2, scope: !4699)
!4813 = !DILocation(line: 498, column: 6, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 498, column: 6)
!4815 = !DILocation(line: 498, column: 6, scope: !4699)
!4816 = !DILocation(line: 499, column: 3, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 498, column: 32)
!4818 = !DILocation(line: 500, column: 17, scope: !4817)
!4819 = !DILocation(line: 500, column: 31, scope: !4817)
!4820 = !DILocation(line: 500, column: 46, scope: !4817)
!4821 = !DILocation(line: 500, column: 44, scope: !4817)
!4822 = !DILocation(line: 500, column: 3, scope: !4817)
!4823 = !DILocation(line: 501, column: 2, scope: !4817)
!4824 = !DILocation(line: 503, column: 35, scope: !4699)
!4825 = !DILocation(line: 503, column: 43, scope: !4699)
!4826 = !DILocation(line: 503, column: 17, scope: !4699)
!4827 = !DILocation(line: 503, column: 15, scope: !4699)
!4828 = !DILocation(line: 505, column: 2, scope: !4699)
!4829 = !DILocation(line: 506, column: 2, scope: !4699)
!4830 = !DILocation(line: 507, column: 2, scope: !4699)
!4831 = !DILocation(line: 510, column: 2, scope: !4699)
!4832 = !DILocation(line: 512, column: 9, scope: !4699)
!4833 = !DILocation(line: 512, column: 18, scope: !4699)
!4834 = !DILocation(line: 512, column: 16, scope: !4699)
!4835 = !DILocation(line: 513, column: 1, scope: !4699)
!4836 = !DILocation(line: 512, column: 2, scope: !4699)
!4837 = distinct !DISubprogram(name: "parse_mem_encrypt", scope: !3, file: !3, line: 365, type: !4838, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4841)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{null, !4840}
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!4841 = !{!4842, !4843, !4844}
!4842 = !DILocalVariable(name: "hdr", arg: 1, scope: !4837, file: !3, line: 365, type: !4840)
!4843 = !DILocalVariable(name: "on", scope: !4837, file: !3, line: 367, type: !54)
!4844 = !DILocalVariable(name: "off", scope: !4837, file: !3, line: 368, type: !54)
!4845 = !DILocation(line: 365, column: 52, scope: !4837)
!4846 = !DILocation(line: 367, column: 2, scope: !4837)
!4847 = !DILocation(line: 367, column: 6, scope: !4837)
!4848 = !DILocation(line: 367, column: 11, scope: !4837)
!4849 = !DILocation(line: 368, column: 2, scope: !4837)
!4850 = !DILocation(line: 368, column: 6, scope: !4837)
!4851 = !DILocation(line: 368, column: 12, scope: !4837)
!4852 = !DILocation(line: 370, column: 6, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 370, column: 6)
!4854 = !DILocation(line: 370, column: 11, scope: !4853)
!4855 = !DILocation(line: 370, column: 9, scope: !4853)
!4856 = !DILocation(line: 370, column: 6, scope: !4837)
!4857 = !DILocation(line: 371, column: 3, scope: !4853)
!4858 = !DILocation(line: 371, column: 8, scope: !4853)
!4859 = !DILocation(line: 371, column: 19, scope: !4853)
!4860 = !DILocation(line: 372, column: 1, scope: !4837)
!4861 = !DILocation(line: 35, column: 54, scope: !840)
!4862 = !DILocation(line: 51, column: 6, scope: !848)
!4863 = !DILocation(line: 51, column: 19, scope: !848)
!4864 = !DILocation(line: 51, column: 6, scope: !840)
!4865 = !DILocation(line: 53, column: 3, scope: !847)
!4866 = !DILocation(line: 53, column: 9, scope: !847)
!4867 = !DILocation(line: 53, column: 27, scope: !847)
!4868 = !DILocation(line: 54, column: 3, scope: !847)
!4869 = !DILocation(line: 54, column: 9, scope: !847)
!4870 = !DILocation(line: 55, column: 3, scope: !847)
!4871 = !DILocation(line: 55, column: 7, scope: !847)
!4872 = !DILocation(line: 57, column: 3, scope: !847)
!4873 = !DILocation(line: 57, column: 36, scope: !847)
!4874 = !DILocation(line: 80, column: 3, scope: !847)
!4875 = !DILocation(line: 82, column: 10, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !847, file: !841, line: 82, column: 3)
!4877 = !DILocation(line: 82, column: 8, scope: !4876)
!4878 = !DILocation(line: 82, column: 15, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4876, file: !841, line: 82, column: 3)
!4880 = !DILocation(line: 82, column: 17, scope: !4879)
!4881 = !DILocation(line: 82, column: 3, scope: !4876)
!4882 = !DILocation(line: 83, column: 4, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4879, file: !841, line: 82, column: 45)
!4884 = !DILocation(line: 85, column: 3, scope: !4883)
!4885 = !DILocation(line: 82, column: 41, scope: !4879)
!4886 = !DILocation(line: 82, column: 3, scope: !4879)
!4887 = distinct !{!4887, !4881, !4888, !981, !982}
!4888 = !DILocation(line: 85, column: 3, scope: !4876)
!4889 = !DILocation(line: 87, column: 3, scope: !847)
!4890 = !DILocation(line: 88, column: 2, scope: !848)
!4891 = !DILocation(line: 88, column: 2, scope: !847)
!4892 = !DILocation(line: 89, column: 1, scope: !840)
!4893 = distinct !DISubprogram(name: "init_default_io_ops", scope: !721, file: !721, line: 26, type: !4236, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4894 = !DILocation(line: 28, column: 17, scope: !4893)
!4895 = !DILocation(line: 29, column: 17, scope: !4893)
!4896 = !DILocation(line: 30, column: 17, scope: !4893)
!4897 = !DILocation(line: 31, column: 1, scope: !4893)
!4898 = distinct !DISubprogram(name: "early_tdx_detect", scope: !4899, file: !4899, line: 10, type: !4236, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4899 = !DIFile(filename: "arch/x86/boot/compressed/tdx.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc6d16ef8eb4fd6a96f37ac38d6b6f32")
!4900 = !DILocation(line: 10, column: 45, scope: !4898)
!4901 = !DISubprogram(name: "console_init", scope: !4902, file: !4902, line: 128, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4902 = !DIFile(filename: "arch/x86/boot/compressed/misc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31b219c11b56e2bcf8daba9cc959bca7")
!4903 = !DISubprogram(name: "get_rsdp_addr", scope: !4902, file: !4902, line: 168, type: !4904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!4906}
!4906 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !4907, line: 129, baseType: !143)
!4907 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!4908 = !DISubprogram(name: "choose_random_location", scope: !4902, file: !4902, line: 100, type: !4909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{null, !66, !66, !125, !66, !125}
!4911 = !DISubprogram(name: "error", scope: !4912, file: !4912, line: 8, type: !4333, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4912 = !DIFile(filename: "arch/x86/boot/compressed/error.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b20f0f8db8d544195cf5a95e28d98dc")
!4913 = distinct !DISubprogram(name: "init_unaccepted_memory", scope: !4902, file: !4902, line: 251, type: !4914, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!4916}
!4916 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !127, line: 35, baseType: !4917)
!4917 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!4918 = !DILocation(line: 251, column: 51, scope: !4913)
!4919 = !DISubprogram(name: "accept_memory", scope: !4902, file: !4902, line: 256, type: !4920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{null, !4922, !4922}
!4922 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !127, line: 159, baseType: !143)
!4923 = !DISubprogram(name: "cleanup_exception_handling", scope: !4902, file: !4902, line: 192, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4924 = distinct !DISubprogram(name: "fortify_panic", scope: !3, file: !3, line: 515, type: !4063, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4925)
!4925 = !{!4926}
!4926 = !DILocalVariable(name: "name", arg: 1, scope: !4924, file: !3, line: 515, type: !4065)
!4927 = !DILocation(line: 515, column: 32, scope: !4924)
!4928 = !DILocation(line: 517, column: 2, scope: !4924)
!4929 = distinct !DISubprogram(name: "cpu_relax", scope: !4930, file: !4930, line: 16, type: !4236, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4930 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!4931 = !DILocation(line: 18, column: 2, scope: !4929)
!4932 = !DILocation(line: 19, column: 1, scope: !4929)
!4933 = distinct !DISubprogram(name: "rep_nop", scope: !4930, file: !4930, line: 11, type: !4236, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4934 = !DILocation(line: 13, column: 2, scope: !4933)
!4935 = !{i64 1803162}
!4936 = !DILocation(line: 14, column: 1, scope: !4933)
!4937 = !DISubprogram(name: "memmove", scope: !3, file: !3, line: 43, type: !4938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!51, !51, !4940, !126}
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4942 = distinct !DISubprogram(name: "__gunzip", scope: !770, file: !770, line: 42, type: !4372, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4943)
!4943 = !{!4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4954, !4956, !4957, !4961, !4962, !4963, !4964, !4965}
!4944 = !DILocalVariable(name: "buf", arg: 1, scope: !4942, file: !770, line: 42, type: !73)
!4945 = !DILocalVariable(name: "len", arg: 2, scope: !4942, file: !770, line: 42, type: !111)
!4946 = !DILocalVariable(name: "fill", arg: 3, scope: !4942, file: !770, line: 43, type: !4374)
!4947 = !DILocalVariable(name: "flush", arg: 4, scope: !4942, file: !770, line: 44, type: !4374)
!4948 = !DILocalVariable(name: "out_buf", arg: 5, scope: !4942, file: !770, line: 45, type: !73)
!4949 = !DILocalVariable(name: "out_len", arg: 6, scope: !4942, file: !770, line: 45, type: !111)
!4950 = !DILocalVariable(name: "pos", arg: 7, scope: !4942, file: !770, line: 46, type: !4377)
!4951 = !DILocalVariable(name: "error", arg: 8, scope: !4942, file: !770, line: 47, type: !4332)
!4952 = !DILocalVariable(name: "zbuf", scope: !4942, file: !770, line: 48, type: !4953)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!4954 = !DILocalVariable(name: "strm", scope: !4942, file: !770, line: 49, type: !4955)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!4956 = !DILocalVariable(name: "rc", scope: !4942, file: !770, line: 50, type: !54)
!4957 = !DILocalVariable(name: "l", scope: !4958, file: !770, line: 160, type: !111)
!4958 = distinct !DILexicalBlock(scope: !4959, file: !770, line: 159, column: 42)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !770, line: 159, column: 7)
!4960 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 144, column: 21)
!4961 = !DILabel(scope: !4942, name: "gunzip_5", file: !770, line: 185)
!4962 = !DILabel(scope: !4942, name: "gunzip_nomem4", file: !770, line: 187)
!4963 = !DILabel(scope: !4942, name: "gunzip_nomem3", file: !770, line: 189)
!4964 = !DILabel(scope: !4942, name: "gunzip_nomem2", file: !770, line: 192)
!4965 = !DILabel(scope: !4942, name: "gunzip_nomem1", file: !770, line: 195)
!4966 = !DILocation(line: 42, column: 41, scope: !4942)
!4967 = !DILocation(line: 42, column: 51, scope: !4942)
!4968 = !DILocation(line: 43, column: 17, scope: !4942)
!4969 = !DILocation(line: 44, column: 17, scope: !4942)
!4970 = !DILocation(line: 45, column: 25, scope: !4942)
!4971 = !DILocation(line: 45, column: 39, scope: !4942)
!4972 = !DILocation(line: 46, column: 16, scope: !4942)
!4973 = !DILocation(line: 47, column: 16, scope: !4942)
!4974 = !DILocation(line: 48, column: 2, scope: !4942)
!4975 = !DILocation(line: 48, column: 6, scope: !4942)
!4976 = !DILocation(line: 49, column: 2, scope: !4942)
!4977 = !DILocation(line: 49, column: 21, scope: !4942)
!4978 = !DILocation(line: 50, column: 2, scope: !4942)
!4979 = !DILocation(line: 50, column: 6, scope: !4942)
!4980 = !DILocation(line: 52, column: 5, scope: !4942)
!4981 = !DILocation(line: 53, column: 6, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 53, column: 6)
!4983 = !DILocation(line: 53, column: 6, scope: !4942)
!4984 = !DILocation(line: 54, column: 11, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4982, file: !770, line: 53, column: 13)
!4986 = !DILocation(line: 55, column: 20, scope: !4985)
!4987 = !DILocation(line: 55, column: 13, scope: !4985)
!4988 = !DILocation(line: 55, column: 11, scope: !4985)
!4989 = !DILocation(line: 56, column: 2, scope: !4985)
!4990 = !DILocation(line: 57, column: 8, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4992, file: !770, line: 57, column: 7)
!4992 = distinct !DILexicalBlock(scope: !4982, file: !770, line: 56, column: 9)
!4993 = !DILocation(line: 57, column: 7, scope: !4992)
!4994 = !DILocation(line: 58, column: 37, scope: !4991)
!4995 = !DILocation(line: 58, column: 29, scope: !4991)
!4996 = !DILocation(line: 58, column: 27, scope: !4991)
!4997 = !DILocation(line: 58, column: 12, scope: !4991)
!4998 = !DILocation(line: 58, column: 4, scope: !4991)
!4999 = !DILocation(line: 60, column: 7, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 60, column: 6)
!5001 = !DILocation(line: 60, column: 6, scope: !4942)
!5002 = !DILocation(line: 61, column: 3, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5000, file: !770, line: 60, column: 16)
!5004 = !DILocation(line: 62, column: 3, scope: !5003)
!5005 = !DILocation(line: 65, column: 6, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 65, column: 6)
!5007 = !DILocation(line: 65, column: 6, scope: !4942)
!5008 = !DILocation(line: 66, column: 10, scope: !5006)
!5009 = !DILocation(line: 66, column: 8, scope: !5006)
!5010 = !DILocation(line: 66, column: 3, scope: !5006)
!5011 = !DILocation(line: 68, column: 10, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5006, file: !770, line: 67, column: 7)
!5013 = !DILocation(line: 68, column: 8, scope: !5012)
!5014 = !DILocation(line: 69, column: 7, scope: !5012)
!5015 = !DILocation(line: 71, column: 7, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 71, column: 6)
!5017 = !DILocation(line: 71, column: 6, scope: !4942)
!5018 = !DILocation(line: 72, column: 3, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5016, file: !770, line: 71, column: 13)
!5020 = !DILocation(line: 73, column: 3, scope: !5019)
!5021 = !DILocation(line: 76, column: 9, scope: !4942)
!5022 = !DILocation(line: 76, column: 7, scope: !4942)
!5023 = !DILocation(line: 77, column: 6, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 77, column: 6)
!5025 = !DILocation(line: 77, column: 11, scope: !5024)
!5026 = !DILocation(line: 77, column: 6, scope: !4942)
!5027 = !DILocation(line: 78, column: 3, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5024, file: !770, line: 77, column: 20)
!5029 = !DILocation(line: 79, column: 3, scope: !5028)
!5030 = !DILocation(line: 82, column: 27, scope: !4942)
!5031 = !DILocation(line: 82, column: 35, scope: !4942)
!5032 = !DILocation(line: 82, column: 20, scope: !4942)
!5033 = !DILocation(line: 82, column: 2, scope: !4942)
!5034 = !DILocation(line: 82, column: 8, scope: !4942)
!5035 = !DILocation(line: 82, column: 18, scope: !4942)
!5036 = !DILocation(line: 89, column: 6, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 89, column: 6)
!5038 = !DILocation(line: 89, column: 12, scope: !5037)
!5039 = !DILocation(line: 89, column: 22, scope: !5037)
!5040 = !DILocation(line: 89, column: 6, scope: !4942)
!5041 = !DILocation(line: 90, column: 3, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5037, file: !770, line: 89, column: 31)
!5043 = !DILocation(line: 91, column: 3, scope: !5042)
!5044 = !DILocation(line: 94, column: 7, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 94, column: 6)
!5046 = !DILocation(line: 94, column: 6, scope: !4942)
!5047 = !DILocation(line: 95, column: 8, scope: !5045)
!5048 = !DILocation(line: 95, column: 3, scope: !5045)
!5049 = !DILocation(line: 97, column: 6, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 97, column: 6)
!5051 = !DILocation(line: 97, column: 10, scope: !5050)
!5052 = !DILocation(line: 97, column: 6, scope: !4942)
!5053 = !DILocation(line: 98, column: 9, scope: !5050)
!5054 = !DILocation(line: 98, column: 14, scope: !5050)
!5055 = !DILocation(line: 98, column: 7, scope: !5050)
!5056 = !DILocation(line: 98, column: 3, scope: !5050)
!5057 = !DILocation(line: 101, column: 6, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 101, column: 6)
!5059 = !DILocation(line: 101, column: 10, scope: !5058)
!5060 = !DILocation(line: 101, column: 15, scope: !5058)
!5061 = !DILocation(line: 102, column: 5, scope: !5058)
!5062 = !DILocation(line: 102, column: 13, scope: !5058)
!5063 = !DILocation(line: 102, column: 21, scope: !5058)
!5064 = !DILocation(line: 102, column: 24, scope: !5058)
!5065 = !DILocation(line: 102, column: 32, scope: !5058)
!5066 = !DILocation(line: 102, column: 40, scope: !5058)
!5067 = !DILocation(line: 102, column: 43, scope: !5058)
!5068 = !DILocation(line: 102, column: 51, scope: !5058)
!5069 = !DILocation(line: 101, column: 6, scope: !4942)
!5070 = !DILocation(line: 103, column: 7, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5072, file: !770, line: 103, column: 7)
!5072 = distinct !DILexicalBlock(scope: !5058, file: !770, line: 102, column: 60)
!5073 = !DILocation(line: 103, column: 7, scope: !5072)
!5074 = !DILocation(line: 104, column: 5, scope: !5071)
!5075 = !DILocation(line: 104, column: 9, scope: !5071)
!5076 = !DILocation(line: 104, column: 4, scope: !5071)
!5077 = !DILocation(line: 105, column: 3, scope: !5072)
!5078 = !DILocation(line: 106, column: 3, scope: !5072)
!5079 = !DILocation(line: 112, column: 18, scope: !4942)
!5080 = !DILocation(line: 112, column: 23, scope: !4942)
!5081 = !DILocation(line: 112, column: 2, scope: !4942)
!5082 = !DILocation(line: 112, column: 8, scope: !4942)
!5083 = !DILocation(line: 112, column: 16, scope: !4942)
!5084 = !DILocation(line: 113, column: 19, scope: !4942)
!5085 = !DILocation(line: 113, column: 23, scope: !4942)
!5086 = !DILocation(line: 113, column: 2, scope: !4942)
!5087 = !DILocation(line: 113, column: 8, scope: !4942)
!5088 = !DILocation(line: 113, column: 17, scope: !4942)
!5089 = !DILocation(line: 115, column: 6, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 115, column: 6)
!5091 = !DILocation(line: 115, column: 14, scope: !5090)
!5092 = !DILocation(line: 115, column: 6, scope: !4942)
!5093 = !DILocation(line: 116, column: 3, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5090, file: !770, line: 115, column: 21)
!5095 = !DILocation(line: 122, column: 8, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !770, line: 122, column: 8)
!5097 = distinct !DILexicalBlock(scope: !5094, file: !770, line: 116, column: 6)
!5098 = !DILocation(line: 122, column: 14, scope: !5096)
!5099 = !DILocation(line: 122, column: 23, scope: !5096)
!5100 = !DILocation(line: 122, column: 8, scope: !5097)
!5101 = !DILocation(line: 123, column: 5, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5096, file: !770, line: 122, column: 29)
!5103 = !DILocation(line: 124, column: 5, scope: !5102)
!5104 = !DILocation(line: 126, column: 6, scope: !5097)
!5105 = !DILocation(line: 126, column: 12, scope: !5097)
!5106 = !DILocation(line: 126, column: 4, scope: !5097)
!5107 = !DILocation(line: 127, column: 3, scope: !5097)
!5108 = !DILocation(line: 127, column: 13, scope: !5094)
!5109 = !DILocation(line: 127, column: 19, scope: !5094)
!5110 = !DILocation(line: 127, column: 26, scope: !5094)
!5111 = !DILocation(line: 127, column: 12, scope: !5094)
!5112 = distinct !{!5112, !5093, !5113, !981, !982}
!5113 = !DILocation(line: 127, column: 28, scope: !5094)
!5114 = !DILocation(line: 128, column: 2, scope: !5094)
!5115 = !DILocation(line: 130, column: 19, scope: !4942)
!5116 = !DILocation(line: 130, column: 2, scope: !4942)
!5117 = !DILocation(line: 130, column: 8, scope: !4942)
!5118 = !DILocation(line: 130, column: 17, scope: !4942)
!5119 = !DILocation(line: 131, column: 20, scope: !4942)
!5120 = !DILocation(line: 131, column: 2, scope: !4942)
!5121 = !DILocation(line: 131, column: 8, scope: !4942)
!5122 = !DILocation(line: 131, column: 18, scope: !4942)
!5123 = !DILocation(line: 133, column: 25, scope: !4942)
!5124 = !DILocation(line: 133, column: 7, scope: !4942)
!5125 = !DILocation(line: 133, column: 5, scope: !4942)
!5126 = !DILocation(line: 138, column: 7, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 138, column: 6)
!5128 = !DILocation(line: 138, column: 6, scope: !4942)
!5129 = !DILocation(line: 139, column: 3, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5127, file: !770, line: 138, column: 14)
!5131 = !DILocation(line: 139, column: 13, scope: !5130)
!5132 = !DILocation(line: 139, column: 27, scope: !5130)
!5133 = !DILocation(line: 139, column: 33, scope: !5130)
!5134 = !DILocation(line: 140, column: 3, scope: !5130)
!5135 = !DILocation(line: 140, column: 13, scope: !5130)
!5136 = !DILocation(line: 140, column: 27, scope: !5130)
!5137 = !DILocation(line: 140, column: 34, scope: !5130)
!5138 = !DILocation(line: 141, column: 2, scope: !5130)
!5139 = !DILocation(line: 144, column: 2, scope: !4942)
!5140 = !DILocation(line: 144, column: 9, scope: !4942)
!5141 = !DILocation(line: 144, column: 12, scope: !4942)
!5142 = !DILocation(line: 145, column: 7, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !4960, file: !770, line: 145, column: 7)
!5144 = !DILocation(line: 145, column: 13, scope: !5143)
!5145 = !DILocation(line: 145, column: 22, scope: !5143)
!5146 = !DILocation(line: 145, column: 7, scope: !4960)
!5147 = !DILocation(line: 147, column: 10, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5143, file: !770, line: 145, column: 28)
!5149 = !DILocation(line: 147, column: 15, scope: !5148)
!5150 = !DILocation(line: 147, column: 8, scope: !5148)
!5151 = !DILocation(line: 148, column: 8, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5148, file: !770, line: 148, column: 8)
!5153 = !DILocation(line: 148, column: 12, scope: !5152)
!5154 = !DILocation(line: 148, column: 8, scope: !5148)
!5155 = !DILocation(line: 149, column: 8, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5152, file: !770, line: 148, column: 17)
!5157 = !DILocation(line: 150, column: 5, scope: !5156)
!5158 = !DILocation(line: 151, column: 5, scope: !5156)
!5159 = !DILocation(line: 153, column: 20, scope: !5148)
!5160 = !DILocation(line: 153, column: 4, scope: !5148)
!5161 = !DILocation(line: 153, column: 10, scope: !5148)
!5162 = !DILocation(line: 153, column: 18, scope: !5148)
!5163 = !DILocation(line: 154, column: 21, scope: !5148)
!5164 = !DILocation(line: 154, column: 4, scope: !5148)
!5165 = !DILocation(line: 154, column: 10, scope: !5148)
!5166 = !DILocation(line: 154, column: 19, scope: !5148)
!5167 = !DILocation(line: 155, column: 3, scope: !5148)
!5168 = !DILocation(line: 156, column: 21, scope: !4960)
!5169 = !DILocation(line: 156, column: 8, scope: !4960)
!5170 = !DILocation(line: 156, column: 6, scope: !4960)
!5171 = !DILocation(line: 159, column: 7, scope: !4959)
!5172 = !DILocation(line: 159, column: 13, scope: !4959)
!5173 = !DILocation(line: 159, column: 16, scope: !4959)
!5174 = !DILocation(line: 159, column: 22, scope: !4959)
!5175 = !DILocation(line: 159, column: 33, scope: !4959)
!5176 = !DILocation(line: 159, column: 31, scope: !4959)
!5177 = !DILocation(line: 159, column: 7, scope: !4960)
!5178 = !DILocation(line: 160, column: 4, scope: !4958)
!5179 = !DILocation(line: 160, column: 9, scope: !4958)
!5180 = !DILocation(line: 160, column: 13, scope: !4958)
!5181 = !DILocation(line: 160, column: 19, scope: !4958)
!5182 = !DILocation(line: 160, column: 30, scope: !4958)
!5183 = !DILocation(line: 160, column: 28, scope: !4958)
!5184 = !DILocation(line: 161, column: 8, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !4958, file: !770, line: 161, column: 8)
!5186 = !DILocation(line: 161, column: 13, scope: !5185)
!5187 = !DILocation(line: 161, column: 19, scope: !5185)
!5188 = !DILocation(line: 161, column: 28, scope: !5185)
!5189 = !DILocation(line: 161, column: 10, scope: !5185)
!5190 = !DILocation(line: 161, column: 8, scope: !4958)
!5191 = !DILocation(line: 162, column: 8, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5185, file: !770, line: 161, column: 32)
!5193 = !DILocation(line: 163, column: 5, scope: !5192)
!5194 = !DILocation(line: 164, column: 5, scope: !5192)
!5195 = !DILocation(line: 166, column: 21, scope: !4958)
!5196 = !DILocation(line: 166, column: 4, scope: !4958)
!5197 = !DILocation(line: 166, column: 10, scope: !4958)
!5198 = !DILocation(line: 166, column: 19, scope: !4958)
!5199 = !DILocation(line: 167, column: 22, scope: !4958)
!5200 = !DILocation(line: 167, column: 4, scope: !4958)
!5201 = !DILocation(line: 167, column: 10, scope: !4958)
!5202 = !DILocation(line: 167, column: 20, scope: !4958)
!5203 = !DILocation(line: 168, column: 3, scope: !4959)
!5204 = !DILocation(line: 168, column: 3, scope: !4958)
!5205 = !DILocation(line: 171, column: 7, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !4960, file: !770, line: 171, column: 7)
!5207 = !DILocation(line: 171, column: 10, scope: !5206)
!5208 = !DILocation(line: 171, column: 7, scope: !4960)
!5209 = !DILocation(line: 172, column: 7, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5206, file: !770, line: 171, column: 27)
!5211 = !DILocation(line: 173, column: 4, scope: !5210)
!5212 = !DILocation(line: 174, column: 14, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5206, file: !770, line: 174, column: 14)
!5214 = !DILocation(line: 174, column: 17, scope: !5213)
!5215 = !DILocation(line: 174, column: 14, scope: !5206)
!5216 = !DILocation(line: 175, column: 4, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5213, file: !770, line: 174, column: 26)
!5218 = !DILocation(line: 176, column: 7, scope: !5217)
!5219 = !DILocation(line: 177, column: 3, scope: !5217)
!5220 = distinct !{!5220, !5139, !5221, !981, !982}
!5221 = !DILocation(line: 178, column: 2, scope: !4942)
!5222 = !DILocation(line: 180, column: 18, scope: !4942)
!5223 = !DILocation(line: 180, column: 2, scope: !4942)
!5224 = !DILocation(line: 181, column: 6, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 181, column: 6)
!5226 = !DILocation(line: 181, column: 6, scope: !4942)
!5227 = !DILocation(line: 183, column: 10, scope: !5225)
!5228 = !DILocation(line: 183, column: 16, scope: !5225)
!5229 = !DILocation(line: 183, column: 26, scope: !5225)
!5230 = !DILocation(line: 183, column: 24, scope: !5225)
!5231 = !DILocation(line: 183, column: 30, scope: !5225)
!5232 = !DILocation(line: 183, column: 4, scope: !5225)
!5233 = !DILocation(line: 183, column: 8, scope: !5225)
!5234 = !DILocation(line: 183, column: 3, scope: !5225)
!5235 = !DILocation(line: 185, column: 1, scope: !4942)
!5236 = !DILocation(line: 186, column: 7, scope: !4942)
!5237 = !DILocation(line: 186, column: 13, scope: !4942)
!5238 = !DILocation(line: 186, column: 2, scope: !4942)
!5239 = !DILocation(line: 187, column: 1, scope: !4942)
!5240 = !DILocation(line: 188, column: 7, scope: !4942)
!5241 = !DILocation(line: 188, column: 2, scope: !4942)
!5242 = !DILocation(line: 189, column: 1, scope: !4942)
!5243 = !DILocation(line: 190, column: 7, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 190, column: 6)
!5245 = !DILocation(line: 190, column: 6, scope: !4942)
!5246 = !DILocation(line: 191, column: 8, scope: !5244)
!5247 = !DILocation(line: 191, column: 3, scope: !5244)
!5248 = !DILocation(line: 192, column: 1, scope: !4942)
!5249 = !DILocation(line: 193, column: 6, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !4942, file: !770, line: 193, column: 6)
!5251 = !DILocation(line: 193, column: 6, scope: !4942)
!5252 = !DILocation(line: 194, column: 8, scope: !5250)
!5253 = !DILocation(line: 194, column: 3, scope: !5250)
!5254 = !DILocation(line: 195, column: 1, scope: !4942)
!5255 = !DILocation(line: 196, column: 9, scope: !4942)
!5256 = !DILocation(line: 197, column: 1, scope: !4942)
!5257 = !DILocation(line: 196, column: 2, scope: !4942)
!5258 = distinct !DISubprogram(name: "nofill", scope: !770, file: !770, line: 36, type: !4375, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5259 = !{!5260, !5261}
!5260 = !DILocalVariable(name: "buffer", arg: 1, scope: !5258, file: !770, line: 36, type: !51)
!5261 = !DILocalVariable(name: "len", arg: 2, scope: !5258, file: !770, line: 36, type: !66)
!5262 = !DILocation(line: 36, column: 31, scope: !5258)
!5263 = !DILocation(line: 36, column: 53, scope: !5258)
!5264 = !DILocation(line: 38, column: 2, scope: !5258)
!5265 = !DISubprogram(name: "cmdline_find_option_bool", scope: !4902, file: !4902, line: 91, type: !5266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!54, !4065}
!5268 = distinct !DISubprogram(name: "__inb", scope: !5269, file: !5269, line: 22, type: !725, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5270)
!5269 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!5270 = !{!5271, !5272}
!5271 = !DILocalVariable(name: "port", arg: 1, scope: !5268, file: !5269, line: 22, type: !728)
!5272 = !DILocalVariable(name: "value", scope: !5268, file: !5269, line: 22, type: !727)
!5273 = !DILocation(line: 22, column: 1, scope: !5268)
!5274 = !{i64 2153159651}
!5275 = distinct !DISubprogram(name: "__outb", scope: !5269, file: !5269, line: 22, type: !731, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5276)
!5276 = !{!5277, !5278}
!5277 = !DILocalVariable(name: "value", arg: 1, scope: !5275, file: !5269, line: 22, type: !727)
!5278 = !DILocalVariable(name: "port", arg: 2, scope: !5275, file: !5269, line: 22, type: !728)
!5279 = !DILocation(line: 22, column: 1, scope: !5275)
!5280 = !{i64 2153159455}
!5281 = distinct !DISubprogram(name: "__outw", scope: !5269, file: !5269, line: 23, type: !735, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5282)
!5282 = !{!5283, !5284}
!5283 = !DILocalVariable(name: "value", arg: 1, scope: !5281, file: !5269, line: 23, type: !728)
!5284 = !DILocalVariable(name: "port", arg: 2, scope: !5281, file: !5269, line: 23, type: !728)
!5285 = !DILocation(line: 23, column: 1, scope: !5281)
!5286 = !{i64 2153160296}
