; ModuleID = 'drivers/gpu/drm/drm_buddy.c'
source_filename = "drivers/gpu/drm/drm_buddy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_buddy_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_buddy_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_buddy_fini: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_buddy_fini ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_get_buddy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_get_buddy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_buddy_free_block: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_buddy_free_block ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_buddy_free_list: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_buddy_free_list ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_buddy_block_trim: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_buddy_block_trim ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_buddy_alloc_blocks: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_buddy_alloc_blocks ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_buddy_block_print: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_buddy_block_print ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_buddy_print: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_buddy_print ; .previous"
module asm ".section\09\22.initcall6.init..kmod_drm_buddy__284_821_drm_buddy_module_init\22, \22a\22\09\09"
module asm "__initcall__kmod_drm_buddy__284_821_drm_buddy_module_init6:\09\09\09"
module asm ".long\09__initstub__kmod_drm_buddy__284_821_drm_buddy_module_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }
%struct.drm_buddy = type { ptr, ptr, i32, i32, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.drm_buddy_block = type { i64, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }

@.str = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_buddy.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_drm_buddy_init267 = internal global ptr @drm_buddy_init, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_drm_buddy_fini268 = internal global ptr @drm_buddy_fini, section ".discard.addressable", align 8, !dbg !59
@__UNIQUE_ID___addressable_drm_get_buddy269 = internal global ptr @drm_get_buddy, section ".discard.addressable", align 8, !dbg !61
@__UNIQUE_ID___addressable_drm_buddy_free_block270 = internal global ptr @drm_buddy_free_block, section ".discard.addressable", align 8, !dbg !63
@__UNIQUE_ID___addressable_drm_buddy_free_list271 = internal global ptr @drm_buddy_free_list, section ".discard.addressable", align 8, !dbg !65
@__UNIQUE_ID___addressable_drm_buddy_block_trim278 = internal global ptr @drm_buddy_block_trim, section ".discard.addressable", align 8, !dbg !67
@__UNIQUE_ID___addressable_drm_buddy_alloc_blocks281 = internal global ptr @drm_buddy_alloc_blocks, section ".discard.addressable", align 8, !dbg !69
@.str.1 = private unnamed_addr constant [25 x i8] c"%#018llx-%#018llx: %llu\0A\00", align 1, !dbg !71
@__UNIQUE_ID___addressable_drm_buddy_block_print282 = internal global ptr @drm_buddy_block_print, section ".discard.addressable", align 8, !dbg !76
@.str.2 = private unnamed_addr constant [52 x i8] c"chunk_size: %lluKiB, total: %lluMiB, free: %lluMiB\0A\00", align 1, !dbg !78
@.str.3 = private unnamed_addr constant [11 x i8] c"order-%2d \00", align 1, !dbg !83
@.str.4 = private unnamed_addr constant [16 x i8] c"free: %8llu KiB\00", align 1, !dbg !88
@.str.5 = private unnamed_addr constant [16 x i8] c"free: %8llu MiB\00", align 1, !dbg !93
@.str.6 = private unnamed_addr constant [16 x i8] c", blocks: %llu\0A\00", align 1, !dbg !95
@__UNIQUE_ID___addressable_drm_buddy_print283 = internal global ptr @drm_buddy_print, section ".discard.addressable", align 8, !dbg !97
@__UNIQUE_ID___addressable___initstub__kmod_drm_buddy__284_821_drm_buddy_module_init6285 = internal global ptr @__initstub__kmod_drm_buddy__284_821_drm_buddy_module_init6, section ".discard.addressable", align 8, !dbg !99
@__exitcall_drm_buddy_module_exit = internal global ptr @drm_buddy_module_exit, section ".exitcall.exit", align 8, !dbg !101
@__UNIQUE_ID_description286 = internal constant [42 x i8] c"drm_buddy.description=DRM Buddy Allocator\00", section ".modinfo", align 1, !dbg !108
@__UNIQUE_ID_file287 = internal constant [41 x i8] c"drm_buddy.file=drivers/gpu/drm/drm_buddy\00", section ".modinfo", align 1, !dbg !114
@__UNIQUE_ID_license288 = internal constant [31 x i8] c"drm_buddy.license=Dual MIT/GPL\00", section ".modinfo", align 1, !dbg !119
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !124
@slab_blocks = internal global ptr null, align 8, !dbg !129
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched170 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !134
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"drm_buddy_block\00", align 1, !dbg !140
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID___addressable_drm_buddy_init267, ptr @__UNIQUE_ID___addressable_drm_buddy_fini268, ptr @__UNIQUE_ID___addressable_drm_get_buddy269, ptr @__UNIQUE_ID___addressable_drm_buddy_free_block270, ptr @__UNIQUE_ID___addressable_drm_buddy_free_list271, ptr @__UNIQUE_ID___addressable_drm_buddy_block_trim278, ptr @__UNIQUE_ID___addressable_drm_buddy_alloc_blocks281, ptr @__UNIQUE_ID___addressable_drm_buddy_block_print282, ptr @__UNIQUE_ID___addressable_drm_buddy_print283, ptr @__UNIQUE_ID___addressable___initstub__kmod_drm_buddy__284_821_drm_buddy_module_init6285, ptr @__exitcall_drm_buddy_module_exit, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched170], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_buddy_init(ptr noundef %mm, i64 noundef %size, i64 noundef %chunk_size) #0 align 16 !dbg !151 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %chunk_size.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %root = alloca ptr, align 8
  %order = alloca i32, align 4
  %root_size = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !166, metadata !DIExpression()), !dbg !177
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !167, metadata !DIExpression()), !dbg !178
  store i64 %chunk_size, ptr %chunk_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chunk_size.addr, metadata !168, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %i, metadata !169, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #16, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !170, metadata !DIExpression()), !dbg !183
  %0 = load i64, ptr %size.addr, align 8, !dbg !184
  %1 = load i64, ptr %chunk_size.addr, align 8, !dbg !186
  %cmp = icmp ult i64 %0, %1, !dbg !187
  br i1 %cmp, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup706, !dbg !189

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %chunk_size.addr, align 8, !dbg !190
  %cmp1 = icmp ult i64 %2, 4096, !dbg !192
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !193

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup706, !dbg !194

if.end3:                                          ; preds = %if.end
  %3 = load i64, ptr %chunk_size.addr, align 8, !dbg !195
  %call = call zeroext i1 @is_power_of_2(i64 noundef %3) #17, !dbg !197
  br i1 %call, label %if.end5, label %if.then4, !dbg !198

if.then4:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup706, !dbg !199

if.end5:                                          ; preds = %if.end3
  %4 = load i64, ptr %size.addr, align 8, !dbg !200
  %5 = load i64, ptr %chunk_size.addr, align 8, !dbg !200
  %sub = sub i64 %5, 1, !dbg !200
  %not = xor i64 %sub, -1, !dbg !200
  %and = and i64 %4, %not, !dbg !200
  store i64 %and, ptr %size.addr, align 8, !dbg !201
  %6 = load i64, ptr %size.addr, align 8, !dbg !202
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !203
  %size6 = getelementptr inbounds %struct.drm_buddy, ptr %7, i32 0, i32 5, !dbg !204
  store i64 %6, ptr %size6, align 8, !dbg !205
  %8 = load i64, ptr %size.addr, align 8, !dbg !206
  %9 = load ptr, ptr %mm.addr, align 8, !dbg !207
  %avail = getelementptr inbounds %struct.drm_buddy, ptr %9, i32 0, i32 6, !dbg !208
  store i64 %8, ptr %avail, align 8, !dbg !209
  %10 = load i64, ptr %chunk_size.addr, align 8, !dbg !210
  %11 = load ptr, ptr %mm.addr, align 8, !dbg !211
  %chunk_size7 = getelementptr inbounds %struct.drm_buddy, ptr %11, i32 0, i32 4, !dbg !212
  store i64 %10, ptr %chunk_size7, align 8, !dbg !213
  %12 = load i64, ptr %size.addr, align 8, !dbg !214
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !214
  br i1 %13, label %cond.true, label %cond.false11, !dbg !214

cond.true:                                        ; preds = %if.end5
  %14 = load i64, ptr %size.addr, align 8, !dbg !214
  %cmp8 = icmp ult i64 %14, 2, !dbg !214
  br i1 %cmp8, label %cond.true9, label %cond.false, !dbg !214

cond.true9:                                       ; preds = %cond.true
  br label %cond.end, !dbg !214

cond.false:                                       ; preds = %cond.true
  %15 = load i64, ptr %size.addr, align 8, !dbg !214
  %16 = call i64 @llvm.ctlz.i64(i64 %15, i1 true), !dbg !214
  %cast = trunc i64 %16 to i32, !dbg !214
  %sub10 = sub i32 63, %cast, !dbg !214
  br label %cond.end, !dbg !214

cond.end:                                         ; preds = %cond.false, %cond.true9
  %cond = phi i32 [ 0, %cond.true9 ], [ %sub10, %cond.false ], !dbg !214
  br label %cond.end13, !dbg !214

cond.false11:                                     ; preds = %if.end5
  %17 = load i64, ptr %size.addr, align 8, !dbg !214
  %call12 = call i32 @__ilog2_u64(i64 noundef %17) #17, !dbg !214
  br label %cond.end13, !dbg !214

cond.end13:                                       ; preds = %cond.false11, %cond.end
  %cond14 = phi i32 [ %cond, %cond.end ], [ %call12, %cond.false11 ], !dbg !214
  %18 = load i64, ptr %chunk_size.addr, align 8, !dbg !215
  %19 = call i1 @llvm.is.constant.i64(i64 %18), !dbg !215
  br i1 %19, label %cond.true15, label %cond.false23, !dbg !215

cond.true15:                                      ; preds = %cond.end13
  %20 = load i64, ptr %chunk_size.addr, align 8, !dbg !215
  %cmp16 = icmp ult i64 %20, 2, !dbg !215
  br i1 %cmp16, label %cond.true17, label %cond.false18, !dbg !215

cond.true17:                                      ; preds = %cond.true15
  br label %cond.end21, !dbg !215

cond.false18:                                     ; preds = %cond.true15
  %21 = load i64, ptr %chunk_size.addr, align 8, !dbg !215
  %22 = call i64 @llvm.ctlz.i64(i64 %21, i1 true), !dbg !215
  %cast19 = trunc i64 %22 to i32, !dbg !215
  %sub20 = sub i32 63, %cast19, !dbg !215
  br label %cond.end21, !dbg !215

cond.end21:                                       ; preds = %cond.false18, %cond.true17
  %cond22 = phi i32 [ 0, %cond.true17 ], [ %sub20, %cond.false18 ], !dbg !215
  br label %cond.end25, !dbg !215

cond.false23:                                     ; preds = %cond.end13
  %23 = load i64, ptr %chunk_size.addr, align 8, !dbg !215
  %call24 = call i32 @__ilog2_u64(i64 noundef %23) #17, !dbg !215
  br label %cond.end25, !dbg !215

cond.end25:                                       ; preds = %cond.false23, %cond.end21
  %cond26 = phi i32 [ %cond22, %cond.end21 ], [ %call24, %cond.false23 ], !dbg !215
  %sub27 = sub i32 %cond14, %cond26, !dbg !216
  %24 = load ptr, ptr %mm.addr, align 8, !dbg !217
  %max_order = getelementptr inbounds %struct.drm_buddy, ptr %24, i32 0, i32 3, !dbg !218
  store i32 %sub27, ptr %max_order, align 4, !dbg !219
  br label %do.body, !dbg !220

do.body:                                          ; preds = %cond.end25
  %25 = load ptr, ptr %mm.addr, align 8, !dbg !221
  %max_order28 = getelementptr inbounds %struct.drm_buddy, ptr %25, i32 0, i32 3, !dbg !221
  %26 = load i32, ptr %max_order28, align 4, !dbg !221
  %cmp29 = icmp ugt i32 %26, 51, !dbg !221
  %lnot = xor i1 %cmp29, true, !dbg !221
  %lnot30 = xor i1 %lnot, true, !dbg !221
  %lnot.ext = zext i1 %lnot30 to i32, !dbg !221
  %conv = sext i32 %lnot.ext to i64, !dbg !221
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !221
  %tobool = icmp ne i64 %expval, 0, !dbg !221
  br i1 %tobool, label %if.then31, label %if.end39, !dbg !224

if.then31:                                        ; preds = %do.body
  br label %do.body32, !dbg !221

do.body32:                                        ; preds = %if.then31
  br label %do.body33, !dbg !225

do.body33:                                        ; preds = %do.body32
  br label %do.cond, !dbg !227

do.cond:                                          ; preds = %do.body33
  br label %do.end, !dbg !227

do.end:                                           ; preds = %do.cond
  br label %do.body34, !dbg !225

do.body34:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 118, i32 0, i64 12) #16, !dbg !229, !srcloc !231
  br label %do.cond35, !dbg !229

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !229

do.end36:                                         ; preds = %do.cond35
  unreachable, !dbg !225

do.cond37:                                        ; No predecessors!
  br label %do.end38, !dbg !225

do.end38:                                         ; preds = %do.cond37
  br label %if.end39, !dbg !225

if.end39:                                         ; preds = %do.end38, %do.body
  br label %do.cond40, !dbg !224

do.cond40:                                        ; preds = %if.end39
  br label %do.end41, !dbg !224

do.end41:                                         ; preds = %do.cond40
  %27 = load ptr, ptr %mm.addr, align 8, !dbg !232
  %max_order42 = getelementptr inbounds %struct.drm_buddy, ptr %27, i32 0, i32 3, !dbg !233
  %28 = load i32, ptr %max_order42, align 4, !dbg !233
  %add = add i32 %28, 1, !dbg !234
  %conv43 = zext i32 %add to i64, !dbg !232
  %call44 = call noalias ptr @kmalloc_array(i64 noundef %conv43, i64 noundef 16, i32 noundef 3264) #18, !dbg !235
  %29 = load ptr, ptr %mm.addr, align 8, !dbg !236
  %free_list = getelementptr inbounds %struct.drm_buddy, ptr %29, i32 0, i32 0, !dbg !237
  store ptr %call44, ptr %free_list, align 8, !dbg !238
  %30 = load ptr, ptr %mm.addr, align 8, !dbg !239
  %free_list45 = getelementptr inbounds %struct.drm_buddy, ptr %30, i32 0, i32 0, !dbg !241
  %31 = load ptr, ptr %free_list45, align 8, !dbg !241
  %tobool46 = icmp ne ptr %31, null, !dbg !239
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !242

if.then47:                                        ; preds = %do.end41
  store i32 -12, ptr %retval, align 4, !dbg !243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup706, !dbg !243

if.end48:                                         ; preds = %do.end41
  store i32 0, ptr %i, align 4, !dbg !244
  br label %for.cond, !dbg !246

for.cond:                                         ; preds = %for.inc, %if.end48
  %32 = load i32, ptr %i, align 4, !dbg !247
  %33 = load ptr, ptr %mm.addr, align 8, !dbg !249
  %max_order49 = getelementptr inbounds %struct.drm_buddy, ptr %33, i32 0, i32 3, !dbg !250
  %34 = load i32, ptr %max_order49, align 4, !dbg !250
  %cmp50 = icmp ule i32 %32, %34, !dbg !251
  br i1 %cmp50, label %for.body, label %for.end, !dbg !252

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %mm.addr, align 8, !dbg !253
  %free_list52 = getelementptr inbounds %struct.drm_buddy, ptr %35, i32 0, i32 0, !dbg !254
  %36 = load ptr, ptr %free_list52, align 8, !dbg !254
  %37 = load i32, ptr %i, align 4, !dbg !255
  %idxprom = zext i32 %37 to i64, !dbg !253
  %arrayidx = getelementptr %struct.list_head, ptr %36, i64 %idxprom, !dbg !253
  call void @INIT_LIST_HEAD(ptr noundef %arrayidx) #19, !dbg !256
  br label %for.inc, !dbg !256

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %i, align 4, !dbg !257
  %inc = add i32 %38, 1, !dbg !257
  store i32 %inc, ptr %i, align 4, !dbg !257
  br label %for.cond, !dbg !258, !llvm.loop !259

for.end:                                          ; preds = %for.cond
  %39 = load i64, ptr %size.addr, align 8, !dbg !263
  %40 = call i1 @llvm.is.constant.i64(i64 %39), !dbg !263
  br i1 %40, label %cond.true53, label %cond.false597, !dbg !263

cond.true53:                                      ; preds = %for.end
  %41 = load i64, ptr %size.addr, align 8, !dbg !263
  %and54 = and i64 %41, 1, !dbg !263
  %tobool55 = icmp ne i64 %and54, 0, !dbg !263
  %lnot56 = xor i1 %tobool55, true, !dbg !263
  %lnot58 = xor i1 %lnot56, true, !dbg !263
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !263
  %42 = load i64, ptr %size.addr, align 8, !dbg !263
  %and60 = and i64 %42, 2, !dbg !263
  %tobool61 = icmp ne i64 %and60, 0, !dbg !263
  %lnot62 = xor i1 %tobool61, true, !dbg !263
  %lnot64 = xor i1 %lnot62, true, !dbg !263
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !263
  %add66 = add i32 %lnot.ext59, %lnot.ext65, !dbg !263
  %43 = load i64, ptr %size.addr, align 8, !dbg !263
  %and67 = and i64 %43, 4, !dbg !263
  %tobool68 = icmp ne i64 %and67, 0, !dbg !263
  %lnot69 = xor i1 %tobool68, true, !dbg !263
  %lnot71 = xor i1 %lnot69, true, !dbg !263
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !263
  %add73 = add i32 %add66, %lnot.ext72, !dbg !263
  %44 = load i64, ptr %size.addr, align 8, !dbg !263
  %and74 = and i64 %44, 8, !dbg !263
  %tobool75 = icmp ne i64 %and74, 0, !dbg !263
  %lnot76 = xor i1 %tobool75, true, !dbg !263
  %lnot78 = xor i1 %lnot76, true, !dbg !263
  %lnot.ext79 = zext i1 %lnot78 to i32, !dbg !263
  %add80 = add i32 %add73, %lnot.ext79, !dbg !263
  %45 = load i64, ptr %size.addr, align 8, !dbg !263
  %and81 = and i64 %45, 16, !dbg !263
  %tobool82 = icmp ne i64 %and81, 0, !dbg !263
  %lnot83 = xor i1 %tobool82, true, !dbg !263
  %lnot85 = xor i1 %lnot83, true, !dbg !263
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !263
  %add87 = add i32 %add80, %lnot.ext86, !dbg !263
  %46 = load i64, ptr %size.addr, align 8, !dbg !263
  %and88 = and i64 %46, 32, !dbg !263
  %tobool89 = icmp ne i64 %and88, 0, !dbg !263
  %lnot90 = xor i1 %tobool89, true, !dbg !263
  %lnot92 = xor i1 %lnot90, true, !dbg !263
  %lnot.ext93 = zext i1 %lnot92 to i32, !dbg !263
  %add94 = add i32 %add87, %lnot.ext93, !dbg !263
  %47 = load i64, ptr %size.addr, align 8, !dbg !263
  %and95 = and i64 %47, 64, !dbg !263
  %tobool96 = icmp ne i64 %and95, 0, !dbg !263
  %lnot97 = xor i1 %tobool96, true, !dbg !263
  %lnot99 = xor i1 %lnot97, true, !dbg !263
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !263
  %add101 = add i32 %add94, %lnot.ext100, !dbg !263
  %48 = load i64, ptr %size.addr, align 8, !dbg !263
  %and102 = and i64 %48, 128, !dbg !263
  %tobool103 = icmp ne i64 %and102, 0, !dbg !263
  %lnot104 = xor i1 %tobool103, true, !dbg !263
  %lnot106 = xor i1 %lnot104, true, !dbg !263
  %lnot.ext107 = zext i1 %lnot106 to i32, !dbg !263
  %add108 = add i32 %add101, %lnot.ext107, !dbg !263
  %49 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr = lshr i64 %49, 8, !dbg !263
  %and109 = and i64 %shr, 1, !dbg !263
  %tobool110 = icmp ne i64 %and109, 0, !dbg !263
  %lnot111 = xor i1 %tobool110, true, !dbg !263
  %lnot113 = xor i1 %lnot111, true, !dbg !263
  %lnot.ext114 = zext i1 %lnot113 to i32, !dbg !263
  %50 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr115 = lshr i64 %50, 8, !dbg !263
  %and116 = and i64 %shr115, 2, !dbg !263
  %tobool117 = icmp ne i64 %and116, 0, !dbg !263
  %lnot118 = xor i1 %tobool117, true, !dbg !263
  %lnot120 = xor i1 %lnot118, true, !dbg !263
  %lnot.ext121 = zext i1 %lnot120 to i32, !dbg !263
  %add122 = add i32 %lnot.ext114, %lnot.ext121, !dbg !263
  %51 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr123 = lshr i64 %51, 8, !dbg !263
  %and124 = and i64 %shr123, 4, !dbg !263
  %tobool125 = icmp ne i64 %and124, 0, !dbg !263
  %lnot126 = xor i1 %tobool125, true, !dbg !263
  %lnot128 = xor i1 %lnot126, true, !dbg !263
  %lnot.ext129 = zext i1 %lnot128 to i32, !dbg !263
  %add130 = add i32 %add122, %lnot.ext129, !dbg !263
  %52 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr131 = lshr i64 %52, 8, !dbg !263
  %and132 = and i64 %shr131, 8, !dbg !263
  %tobool133 = icmp ne i64 %and132, 0, !dbg !263
  %lnot134 = xor i1 %tobool133, true, !dbg !263
  %lnot136 = xor i1 %lnot134, true, !dbg !263
  %lnot.ext137 = zext i1 %lnot136 to i32, !dbg !263
  %add138 = add i32 %add130, %lnot.ext137, !dbg !263
  %53 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr139 = lshr i64 %53, 8, !dbg !263
  %and140 = and i64 %shr139, 16, !dbg !263
  %tobool141 = icmp ne i64 %and140, 0, !dbg !263
  %lnot142 = xor i1 %tobool141, true, !dbg !263
  %lnot144 = xor i1 %lnot142, true, !dbg !263
  %lnot.ext145 = zext i1 %lnot144 to i32, !dbg !263
  %add146 = add i32 %add138, %lnot.ext145, !dbg !263
  %54 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr147 = lshr i64 %54, 8, !dbg !263
  %and148 = and i64 %shr147, 32, !dbg !263
  %tobool149 = icmp ne i64 %and148, 0, !dbg !263
  %lnot150 = xor i1 %tobool149, true, !dbg !263
  %lnot152 = xor i1 %lnot150, true, !dbg !263
  %lnot.ext153 = zext i1 %lnot152 to i32, !dbg !263
  %add154 = add i32 %add146, %lnot.ext153, !dbg !263
  %55 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr155 = lshr i64 %55, 8, !dbg !263
  %and156 = and i64 %shr155, 64, !dbg !263
  %tobool157 = icmp ne i64 %and156, 0, !dbg !263
  %lnot158 = xor i1 %tobool157, true, !dbg !263
  %lnot160 = xor i1 %lnot158, true, !dbg !263
  %lnot.ext161 = zext i1 %lnot160 to i32, !dbg !263
  %add162 = add i32 %add154, %lnot.ext161, !dbg !263
  %56 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr163 = lshr i64 %56, 8, !dbg !263
  %and164 = and i64 %shr163, 128, !dbg !263
  %tobool165 = icmp ne i64 %and164, 0, !dbg !263
  %lnot166 = xor i1 %tobool165, true, !dbg !263
  %lnot168 = xor i1 %lnot166, true, !dbg !263
  %lnot.ext169 = zext i1 %lnot168 to i32, !dbg !263
  %add170 = add i32 %add162, %lnot.ext169, !dbg !263
  %add171 = add i32 %add108, %add170, !dbg !263
  %57 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr172 = lshr i64 %57, 16, !dbg !263
  %and173 = and i64 %shr172, 1, !dbg !263
  %tobool174 = icmp ne i64 %and173, 0, !dbg !263
  %lnot175 = xor i1 %tobool174, true, !dbg !263
  %lnot177 = xor i1 %lnot175, true, !dbg !263
  %lnot.ext178 = zext i1 %lnot177 to i32, !dbg !263
  %58 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr179 = lshr i64 %58, 16, !dbg !263
  %and180 = and i64 %shr179, 2, !dbg !263
  %tobool181 = icmp ne i64 %and180, 0, !dbg !263
  %lnot182 = xor i1 %tobool181, true, !dbg !263
  %lnot184 = xor i1 %lnot182, true, !dbg !263
  %lnot.ext185 = zext i1 %lnot184 to i32, !dbg !263
  %add186 = add i32 %lnot.ext178, %lnot.ext185, !dbg !263
  %59 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr187 = lshr i64 %59, 16, !dbg !263
  %and188 = and i64 %shr187, 4, !dbg !263
  %tobool189 = icmp ne i64 %and188, 0, !dbg !263
  %lnot190 = xor i1 %tobool189, true, !dbg !263
  %lnot192 = xor i1 %lnot190, true, !dbg !263
  %lnot.ext193 = zext i1 %lnot192 to i32, !dbg !263
  %add194 = add i32 %add186, %lnot.ext193, !dbg !263
  %60 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr195 = lshr i64 %60, 16, !dbg !263
  %and196 = and i64 %shr195, 8, !dbg !263
  %tobool197 = icmp ne i64 %and196, 0, !dbg !263
  %lnot198 = xor i1 %tobool197, true, !dbg !263
  %lnot200 = xor i1 %lnot198, true, !dbg !263
  %lnot.ext201 = zext i1 %lnot200 to i32, !dbg !263
  %add202 = add i32 %add194, %lnot.ext201, !dbg !263
  %61 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr203 = lshr i64 %61, 16, !dbg !263
  %and204 = and i64 %shr203, 16, !dbg !263
  %tobool205 = icmp ne i64 %and204, 0, !dbg !263
  %lnot206 = xor i1 %tobool205, true, !dbg !263
  %lnot208 = xor i1 %lnot206, true, !dbg !263
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !263
  %add210 = add i32 %add202, %lnot.ext209, !dbg !263
  %62 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr211 = lshr i64 %62, 16, !dbg !263
  %and212 = and i64 %shr211, 32, !dbg !263
  %tobool213 = icmp ne i64 %and212, 0, !dbg !263
  %lnot214 = xor i1 %tobool213, true, !dbg !263
  %lnot216 = xor i1 %lnot214, true, !dbg !263
  %lnot.ext217 = zext i1 %lnot216 to i32, !dbg !263
  %add218 = add i32 %add210, %lnot.ext217, !dbg !263
  %63 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr219 = lshr i64 %63, 16, !dbg !263
  %and220 = and i64 %shr219, 64, !dbg !263
  %tobool221 = icmp ne i64 %and220, 0, !dbg !263
  %lnot222 = xor i1 %tobool221, true, !dbg !263
  %lnot224 = xor i1 %lnot222, true, !dbg !263
  %lnot.ext225 = zext i1 %lnot224 to i32, !dbg !263
  %add226 = add i32 %add218, %lnot.ext225, !dbg !263
  %64 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr227 = lshr i64 %64, 16, !dbg !263
  %and228 = and i64 %shr227, 128, !dbg !263
  %tobool229 = icmp ne i64 %and228, 0, !dbg !263
  %lnot230 = xor i1 %tobool229, true, !dbg !263
  %lnot232 = xor i1 %lnot230, true, !dbg !263
  %lnot.ext233 = zext i1 %lnot232 to i32, !dbg !263
  %add234 = add i32 %add226, %lnot.ext233, !dbg !263
  %65 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr235 = lshr i64 %65, 16, !dbg !263
  %shr236 = lshr i64 %shr235, 8, !dbg !263
  %and237 = and i64 %shr236, 1, !dbg !263
  %tobool238 = icmp ne i64 %and237, 0, !dbg !263
  %lnot239 = xor i1 %tobool238, true, !dbg !263
  %lnot241 = xor i1 %lnot239, true, !dbg !263
  %lnot.ext242 = zext i1 %lnot241 to i32, !dbg !263
  %66 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr243 = lshr i64 %66, 16, !dbg !263
  %shr244 = lshr i64 %shr243, 8, !dbg !263
  %and245 = and i64 %shr244, 2, !dbg !263
  %tobool246 = icmp ne i64 %and245, 0, !dbg !263
  %lnot247 = xor i1 %tobool246, true, !dbg !263
  %lnot249 = xor i1 %lnot247, true, !dbg !263
  %lnot.ext250 = zext i1 %lnot249 to i32, !dbg !263
  %add251 = add i32 %lnot.ext242, %lnot.ext250, !dbg !263
  %67 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr252 = lshr i64 %67, 16, !dbg !263
  %shr253 = lshr i64 %shr252, 8, !dbg !263
  %and254 = and i64 %shr253, 4, !dbg !263
  %tobool255 = icmp ne i64 %and254, 0, !dbg !263
  %lnot256 = xor i1 %tobool255, true, !dbg !263
  %lnot258 = xor i1 %lnot256, true, !dbg !263
  %lnot.ext259 = zext i1 %lnot258 to i32, !dbg !263
  %add260 = add i32 %add251, %lnot.ext259, !dbg !263
  %68 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr261 = lshr i64 %68, 16, !dbg !263
  %shr262 = lshr i64 %shr261, 8, !dbg !263
  %and263 = and i64 %shr262, 8, !dbg !263
  %tobool264 = icmp ne i64 %and263, 0, !dbg !263
  %lnot265 = xor i1 %tobool264, true, !dbg !263
  %lnot267 = xor i1 %lnot265, true, !dbg !263
  %lnot.ext268 = zext i1 %lnot267 to i32, !dbg !263
  %add269 = add i32 %add260, %lnot.ext268, !dbg !263
  %69 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr270 = lshr i64 %69, 16, !dbg !263
  %shr271 = lshr i64 %shr270, 8, !dbg !263
  %and272 = and i64 %shr271, 16, !dbg !263
  %tobool273 = icmp ne i64 %and272, 0, !dbg !263
  %lnot274 = xor i1 %tobool273, true, !dbg !263
  %lnot276 = xor i1 %lnot274, true, !dbg !263
  %lnot.ext277 = zext i1 %lnot276 to i32, !dbg !263
  %add278 = add i32 %add269, %lnot.ext277, !dbg !263
  %70 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr279 = lshr i64 %70, 16, !dbg !263
  %shr280 = lshr i64 %shr279, 8, !dbg !263
  %and281 = and i64 %shr280, 32, !dbg !263
  %tobool282 = icmp ne i64 %and281, 0, !dbg !263
  %lnot283 = xor i1 %tobool282, true, !dbg !263
  %lnot285 = xor i1 %lnot283, true, !dbg !263
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !263
  %add287 = add i32 %add278, %lnot.ext286, !dbg !263
  %71 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr288 = lshr i64 %71, 16, !dbg !263
  %shr289 = lshr i64 %shr288, 8, !dbg !263
  %and290 = and i64 %shr289, 64, !dbg !263
  %tobool291 = icmp ne i64 %and290, 0, !dbg !263
  %lnot292 = xor i1 %tobool291, true, !dbg !263
  %lnot294 = xor i1 %lnot292, true, !dbg !263
  %lnot.ext295 = zext i1 %lnot294 to i32, !dbg !263
  %add296 = add i32 %add287, %lnot.ext295, !dbg !263
  %72 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr297 = lshr i64 %72, 16, !dbg !263
  %shr298 = lshr i64 %shr297, 8, !dbg !263
  %and299 = and i64 %shr298, 128, !dbg !263
  %tobool300 = icmp ne i64 %and299, 0, !dbg !263
  %lnot301 = xor i1 %tobool300, true, !dbg !263
  %lnot303 = xor i1 %lnot301, true, !dbg !263
  %lnot.ext304 = zext i1 %lnot303 to i32, !dbg !263
  %add305 = add i32 %add296, %lnot.ext304, !dbg !263
  %add306 = add i32 %add234, %add305, !dbg !263
  %add307 = add i32 %add171, %add306, !dbg !263
  %73 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr308 = lshr i64 %73, 32, !dbg !263
  %and309 = and i64 %shr308, 1, !dbg !263
  %tobool310 = icmp ne i64 %and309, 0, !dbg !263
  %lnot311 = xor i1 %tobool310, true, !dbg !263
  %lnot313 = xor i1 %lnot311, true, !dbg !263
  %lnot.ext314 = zext i1 %lnot313 to i32, !dbg !263
  %74 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr315 = lshr i64 %74, 32, !dbg !263
  %and316 = and i64 %shr315, 2, !dbg !263
  %tobool317 = icmp ne i64 %and316, 0, !dbg !263
  %lnot318 = xor i1 %tobool317, true, !dbg !263
  %lnot320 = xor i1 %lnot318, true, !dbg !263
  %lnot.ext321 = zext i1 %lnot320 to i32, !dbg !263
  %add322 = add i32 %lnot.ext314, %lnot.ext321, !dbg !263
  %75 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr323 = lshr i64 %75, 32, !dbg !263
  %and324 = and i64 %shr323, 4, !dbg !263
  %tobool325 = icmp ne i64 %and324, 0, !dbg !263
  %lnot326 = xor i1 %tobool325, true, !dbg !263
  %lnot328 = xor i1 %lnot326, true, !dbg !263
  %lnot.ext329 = zext i1 %lnot328 to i32, !dbg !263
  %add330 = add i32 %add322, %lnot.ext329, !dbg !263
  %76 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr331 = lshr i64 %76, 32, !dbg !263
  %and332 = and i64 %shr331, 8, !dbg !263
  %tobool333 = icmp ne i64 %and332, 0, !dbg !263
  %lnot334 = xor i1 %tobool333, true, !dbg !263
  %lnot336 = xor i1 %lnot334, true, !dbg !263
  %lnot.ext337 = zext i1 %lnot336 to i32, !dbg !263
  %add338 = add i32 %add330, %lnot.ext337, !dbg !263
  %77 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr339 = lshr i64 %77, 32, !dbg !263
  %and340 = and i64 %shr339, 16, !dbg !263
  %tobool341 = icmp ne i64 %and340, 0, !dbg !263
  %lnot342 = xor i1 %tobool341, true, !dbg !263
  %lnot344 = xor i1 %lnot342, true, !dbg !263
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !263
  %add346 = add i32 %add338, %lnot.ext345, !dbg !263
  %78 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr347 = lshr i64 %78, 32, !dbg !263
  %and348 = and i64 %shr347, 32, !dbg !263
  %tobool349 = icmp ne i64 %and348, 0, !dbg !263
  %lnot350 = xor i1 %tobool349, true, !dbg !263
  %lnot352 = xor i1 %lnot350, true, !dbg !263
  %lnot.ext353 = zext i1 %lnot352 to i32, !dbg !263
  %add354 = add i32 %add346, %lnot.ext353, !dbg !263
  %79 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr355 = lshr i64 %79, 32, !dbg !263
  %and356 = and i64 %shr355, 64, !dbg !263
  %tobool357 = icmp ne i64 %and356, 0, !dbg !263
  %lnot358 = xor i1 %tobool357, true, !dbg !263
  %lnot360 = xor i1 %lnot358, true, !dbg !263
  %lnot.ext361 = zext i1 %lnot360 to i32, !dbg !263
  %add362 = add i32 %add354, %lnot.ext361, !dbg !263
  %80 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr363 = lshr i64 %80, 32, !dbg !263
  %and364 = and i64 %shr363, 128, !dbg !263
  %tobool365 = icmp ne i64 %and364, 0, !dbg !263
  %lnot366 = xor i1 %tobool365, true, !dbg !263
  %lnot368 = xor i1 %lnot366, true, !dbg !263
  %lnot.ext369 = zext i1 %lnot368 to i32, !dbg !263
  %add370 = add i32 %add362, %lnot.ext369, !dbg !263
  %81 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr371 = lshr i64 %81, 32, !dbg !263
  %shr372 = lshr i64 %shr371, 8, !dbg !263
  %and373 = and i64 %shr372, 1, !dbg !263
  %tobool374 = icmp ne i64 %and373, 0, !dbg !263
  %lnot375 = xor i1 %tobool374, true, !dbg !263
  %lnot377 = xor i1 %lnot375, true, !dbg !263
  %lnot.ext378 = zext i1 %lnot377 to i32, !dbg !263
  %82 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr379 = lshr i64 %82, 32, !dbg !263
  %shr380 = lshr i64 %shr379, 8, !dbg !263
  %and381 = and i64 %shr380, 2, !dbg !263
  %tobool382 = icmp ne i64 %and381, 0, !dbg !263
  %lnot383 = xor i1 %tobool382, true, !dbg !263
  %lnot385 = xor i1 %lnot383, true, !dbg !263
  %lnot.ext386 = zext i1 %lnot385 to i32, !dbg !263
  %add387 = add i32 %lnot.ext378, %lnot.ext386, !dbg !263
  %83 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr388 = lshr i64 %83, 32, !dbg !263
  %shr389 = lshr i64 %shr388, 8, !dbg !263
  %and390 = and i64 %shr389, 4, !dbg !263
  %tobool391 = icmp ne i64 %and390, 0, !dbg !263
  %lnot392 = xor i1 %tobool391, true, !dbg !263
  %lnot394 = xor i1 %lnot392, true, !dbg !263
  %lnot.ext395 = zext i1 %lnot394 to i32, !dbg !263
  %add396 = add i32 %add387, %lnot.ext395, !dbg !263
  %84 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr397 = lshr i64 %84, 32, !dbg !263
  %shr398 = lshr i64 %shr397, 8, !dbg !263
  %and399 = and i64 %shr398, 8, !dbg !263
  %tobool400 = icmp ne i64 %and399, 0, !dbg !263
  %lnot401 = xor i1 %tobool400, true, !dbg !263
  %lnot403 = xor i1 %lnot401, true, !dbg !263
  %lnot.ext404 = zext i1 %lnot403 to i32, !dbg !263
  %add405 = add i32 %add396, %lnot.ext404, !dbg !263
  %85 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr406 = lshr i64 %85, 32, !dbg !263
  %shr407 = lshr i64 %shr406, 8, !dbg !263
  %and408 = and i64 %shr407, 16, !dbg !263
  %tobool409 = icmp ne i64 %and408, 0, !dbg !263
  %lnot410 = xor i1 %tobool409, true, !dbg !263
  %lnot412 = xor i1 %lnot410, true, !dbg !263
  %lnot.ext413 = zext i1 %lnot412 to i32, !dbg !263
  %add414 = add i32 %add405, %lnot.ext413, !dbg !263
  %86 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr415 = lshr i64 %86, 32, !dbg !263
  %shr416 = lshr i64 %shr415, 8, !dbg !263
  %and417 = and i64 %shr416, 32, !dbg !263
  %tobool418 = icmp ne i64 %and417, 0, !dbg !263
  %lnot419 = xor i1 %tobool418, true, !dbg !263
  %lnot421 = xor i1 %lnot419, true, !dbg !263
  %lnot.ext422 = zext i1 %lnot421 to i32, !dbg !263
  %add423 = add i32 %add414, %lnot.ext422, !dbg !263
  %87 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr424 = lshr i64 %87, 32, !dbg !263
  %shr425 = lshr i64 %shr424, 8, !dbg !263
  %and426 = and i64 %shr425, 64, !dbg !263
  %tobool427 = icmp ne i64 %and426, 0, !dbg !263
  %lnot428 = xor i1 %tobool427, true, !dbg !263
  %lnot430 = xor i1 %lnot428, true, !dbg !263
  %lnot.ext431 = zext i1 %lnot430 to i32, !dbg !263
  %add432 = add i32 %add423, %lnot.ext431, !dbg !263
  %88 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr433 = lshr i64 %88, 32, !dbg !263
  %shr434 = lshr i64 %shr433, 8, !dbg !263
  %and435 = and i64 %shr434, 128, !dbg !263
  %tobool436 = icmp ne i64 %and435, 0, !dbg !263
  %lnot437 = xor i1 %tobool436, true, !dbg !263
  %lnot439 = xor i1 %lnot437, true, !dbg !263
  %lnot.ext440 = zext i1 %lnot439 to i32, !dbg !263
  %add441 = add i32 %add432, %lnot.ext440, !dbg !263
  %add442 = add i32 %add370, %add441, !dbg !263
  %89 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr443 = lshr i64 %89, 32, !dbg !263
  %shr444 = lshr i64 %shr443, 16, !dbg !263
  %and445 = and i64 %shr444, 1, !dbg !263
  %tobool446 = icmp ne i64 %and445, 0, !dbg !263
  %lnot447 = xor i1 %tobool446, true, !dbg !263
  %lnot449 = xor i1 %lnot447, true, !dbg !263
  %lnot.ext450 = zext i1 %lnot449 to i32, !dbg !263
  %90 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr451 = lshr i64 %90, 32, !dbg !263
  %shr452 = lshr i64 %shr451, 16, !dbg !263
  %and453 = and i64 %shr452, 2, !dbg !263
  %tobool454 = icmp ne i64 %and453, 0, !dbg !263
  %lnot455 = xor i1 %tobool454, true, !dbg !263
  %lnot457 = xor i1 %lnot455, true, !dbg !263
  %lnot.ext458 = zext i1 %lnot457 to i32, !dbg !263
  %add459 = add i32 %lnot.ext450, %lnot.ext458, !dbg !263
  %91 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr460 = lshr i64 %91, 32, !dbg !263
  %shr461 = lshr i64 %shr460, 16, !dbg !263
  %and462 = and i64 %shr461, 4, !dbg !263
  %tobool463 = icmp ne i64 %and462, 0, !dbg !263
  %lnot464 = xor i1 %tobool463, true, !dbg !263
  %lnot466 = xor i1 %lnot464, true, !dbg !263
  %lnot.ext467 = zext i1 %lnot466 to i32, !dbg !263
  %add468 = add i32 %add459, %lnot.ext467, !dbg !263
  %92 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr469 = lshr i64 %92, 32, !dbg !263
  %shr470 = lshr i64 %shr469, 16, !dbg !263
  %and471 = and i64 %shr470, 8, !dbg !263
  %tobool472 = icmp ne i64 %and471, 0, !dbg !263
  %lnot473 = xor i1 %tobool472, true, !dbg !263
  %lnot475 = xor i1 %lnot473, true, !dbg !263
  %lnot.ext476 = zext i1 %lnot475 to i32, !dbg !263
  %add477 = add i32 %add468, %lnot.ext476, !dbg !263
  %93 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr478 = lshr i64 %93, 32, !dbg !263
  %shr479 = lshr i64 %shr478, 16, !dbg !263
  %and480 = and i64 %shr479, 16, !dbg !263
  %tobool481 = icmp ne i64 %and480, 0, !dbg !263
  %lnot482 = xor i1 %tobool481, true, !dbg !263
  %lnot484 = xor i1 %lnot482, true, !dbg !263
  %lnot.ext485 = zext i1 %lnot484 to i32, !dbg !263
  %add486 = add i32 %add477, %lnot.ext485, !dbg !263
  %94 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr487 = lshr i64 %94, 32, !dbg !263
  %shr488 = lshr i64 %shr487, 16, !dbg !263
  %and489 = and i64 %shr488, 32, !dbg !263
  %tobool490 = icmp ne i64 %and489, 0, !dbg !263
  %lnot491 = xor i1 %tobool490, true, !dbg !263
  %lnot493 = xor i1 %lnot491, true, !dbg !263
  %lnot.ext494 = zext i1 %lnot493 to i32, !dbg !263
  %add495 = add i32 %add486, %lnot.ext494, !dbg !263
  %95 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr496 = lshr i64 %95, 32, !dbg !263
  %shr497 = lshr i64 %shr496, 16, !dbg !263
  %and498 = and i64 %shr497, 64, !dbg !263
  %tobool499 = icmp ne i64 %and498, 0, !dbg !263
  %lnot500 = xor i1 %tobool499, true, !dbg !263
  %lnot502 = xor i1 %lnot500, true, !dbg !263
  %lnot.ext503 = zext i1 %lnot502 to i32, !dbg !263
  %add504 = add i32 %add495, %lnot.ext503, !dbg !263
  %96 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr505 = lshr i64 %96, 32, !dbg !263
  %shr506 = lshr i64 %shr505, 16, !dbg !263
  %and507 = and i64 %shr506, 128, !dbg !263
  %tobool508 = icmp ne i64 %and507, 0, !dbg !263
  %lnot509 = xor i1 %tobool508, true, !dbg !263
  %lnot511 = xor i1 %lnot509, true, !dbg !263
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !263
  %add513 = add i32 %add504, %lnot.ext512, !dbg !263
  %97 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr514 = lshr i64 %97, 32, !dbg !263
  %shr515 = lshr i64 %shr514, 16, !dbg !263
  %shr516 = lshr i64 %shr515, 8, !dbg !263
  %and517 = and i64 %shr516, 1, !dbg !263
  %tobool518 = icmp ne i64 %and517, 0, !dbg !263
  %lnot519 = xor i1 %tobool518, true, !dbg !263
  %lnot521 = xor i1 %lnot519, true, !dbg !263
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !263
  %98 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr523 = lshr i64 %98, 32, !dbg !263
  %shr524 = lshr i64 %shr523, 16, !dbg !263
  %shr525 = lshr i64 %shr524, 8, !dbg !263
  %and526 = and i64 %shr525, 2, !dbg !263
  %tobool527 = icmp ne i64 %and526, 0, !dbg !263
  %lnot528 = xor i1 %tobool527, true, !dbg !263
  %lnot530 = xor i1 %lnot528, true, !dbg !263
  %lnot.ext531 = zext i1 %lnot530 to i32, !dbg !263
  %add532 = add i32 %lnot.ext522, %lnot.ext531, !dbg !263
  %99 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr533 = lshr i64 %99, 32, !dbg !263
  %shr534 = lshr i64 %shr533, 16, !dbg !263
  %shr535 = lshr i64 %shr534, 8, !dbg !263
  %and536 = and i64 %shr535, 4, !dbg !263
  %tobool537 = icmp ne i64 %and536, 0, !dbg !263
  %lnot538 = xor i1 %tobool537, true, !dbg !263
  %lnot540 = xor i1 %lnot538, true, !dbg !263
  %lnot.ext541 = zext i1 %lnot540 to i32, !dbg !263
  %add542 = add i32 %add532, %lnot.ext541, !dbg !263
  %100 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr543 = lshr i64 %100, 32, !dbg !263
  %shr544 = lshr i64 %shr543, 16, !dbg !263
  %shr545 = lshr i64 %shr544, 8, !dbg !263
  %and546 = and i64 %shr545, 8, !dbg !263
  %tobool547 = icmp ne i64 %and546, 0, !dbg !263
  %lnot548 = xor i1 %tobool547, true, !dbg !263
  %lnot550 = xor i1 %lnot548, true, !dbg !263
  %lnot.ext551 = zext i1 %lnot550 to i32, !dbg !263
  %add552 = add i32 %add542, %lnot.ext551, !dbg !263
  %101 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr553 = lshr i64 %101, 32, !dbg !263
  %shr554 = lshr i64 %shr553, 16, !dbg !263
  %shr555 = lshr i64 %shr554, 8, !dbg !263
  %and556 = and i64 %shr555, 16, !dbg !263
  %tobool557 = icmp ne i64 %and556, 0, !dbg !263
  %lnot558 = xor i1 %tobool557, true, !dbg !263
  %lnot560 = xor i1 %lnot558, true, !dbg !263
  %lnot.ext561 = zext i1 %lnot560 to i32, !dbg !263
  %add562 = add i32 %add552, %lnot.ext561, !dbg !263
  %102 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr563 = lshr i64 %102, 32, !dbg !263
  %shr564 = lshr i64 %shr563, 16, !dbg !263
  %shr565 = lshr i64 %shr564, 8, !dbg !263
  %and566 = and i64 %shr565, 32, !dbg !263
  %tobool567 = icmp ne i64 %and566, 0, !dbg !263
  %lnot568 = xor i1 %tobool567, true, !dbg !263
  %lnot570 = xor i1 %lnot568, true, !dbg !263
  %lnot.ext571 = zext i1 %lnot570 to i32, !dbg !263
  %add572 = add i32 %add562, %lnot.ext571, !dbg !263
  %103 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr573 = lshr i64 %103, 32, !dbg !263
  %shr574 = lshr i64 %shr573, 16, !dbg !263
  %shr575 = lshr i64 %shr574, 8, !dbg !263
  %and576 = and i64 %shr575, 64, !dbg !263
  %tobool577 = icmp ne i64 %and576, 0, !dbg !263
  %lnot578 = xor i1 %tobool577, true, !dbg !263
  %lnot580 = xor i1 %lnot578, true, !dbg !263
  %lnot.ext581 = zext i1 %lnot580 to i32, !dbg !263
  %add582 = add i32 %add572, %lnot.ext581, !dbg !263
  %104 = load i64, ptr %size.addr, align 8, !dbg !263
  %shr583 = lshr i64 %104, 32, !dbg !263
  %shr584 = lshr i64 %shr583, 16, !dbg !263
  %shr585 = lshr i64 %shr584, 8, !dbg !263
  %and586 = and i64 %shr585, 128, !dbg !263
  %tobool587 = icmp ne i64 %and586, 0, !dbg !263
  %lnot588 = xor i1 %tobool587, true, !dbg !263
  %lnot590 = xor i1 %lnot588, true, !dbg !263
  %lnot.ext591 = zext i1 %lnot590 to i32, !dbg !263
  %add592 = add i32 %add582, %lnot.ext591, !dbg !263
  %add593 = add i32 %add513, %add592, !dbg !263
  %add594 = add i32 %add442, %add593, !dbg !263
  %add595 = add i32 %add307, %add594, !dbg !263
  %conv596 = zext i32 %add595 to i64, !dbg !263
  br label %cond.end599, !dbg !263

cond.false597:                                    ; preds = %for.end
  %105 = load i64, ptr %size.addr, align 8, !dbg !263
  %call598 = call i64 @__arch_hweight64(i64 noundef %105) #19, !dbg !263
  br label %cond.end599, !dbg !263

cond.end599:                                      ; preds = %cond.false597, %cond.true53
  %cond600 = phi i64 [ %conv596, %cond.true53 ], [ %call598, %cond.false597 ], !dbg !263
  %conv601 = trunc i64 %cond600 to i32, !dbg !263
  %106 = load ptr, ptr %mm.addr, align 8, !dbg !264
  %n_roots = getelementptr inbounds %struct.drm_buddy, ptr %106, i32 0, i32 2, !dbg !265
  store i32 %conv601, ptr %n_roots, align 8, !dbg !266
  %107 = load ptr, ptr %mm.addr, align 8, !dbg !267
  %n_roots602 = getelementptr inbounds %struct.drm_buddy, ptr %107, i32 0, i32 2, !dbg !268
  %108 = load i32, ptr %n_roots602, align 8, !dbg !268
  %conv603 = zext i32 %108 to i64, !dbg !267
  %call604 = call noalias ptr @kmalloc_array(i64 noundef %conv603, i64 noundef 8, i32 noundef 3264) #18, !dbg !269
  %109 = load ptr, ptr %mm.addr, align 8, !dbg !270
  %roots = getelementptr inbounds %struct.drm_buddy, ptr %109, i32 0, i32 1, !dbg !271
  store ptr %call604, ptr %roots, align 8, !dbg !272
  %110 = load ptr, ptr %mm.addr, align 8, !dbg !273
  %roots605 = getelementptr inbounds %struct.drm_buddy, ptr %110, i32 0, i32 1, !dbg !275
  %111 = load ptr, ptr %roots605, align 8, !dbg !275
  %tobool606 = icmp ne ptr %111, null, !dbg !273
  br i1 %tobool606, label %if.end608, label %if.then607, !dbg !276

if.then607:                                       ; preds = %cond.end599
  br label %out_free_list, !dbg !277

if.end608:                                        ; preds = %cond.end599
  store i64 0, ptr %offset, align 8, !dbg !278
  store i32 0, ptr %i, align 4, !dbg !279
  br label %do.body609, !dbg !280

do.body609:                                       ; preds = %do.cond697, %if.end608
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #16, !dbg !281
  call void @llvm.dbg.declare(metadata ptr %root, metadata !171, metadata !DIExpression()), !dbg !282
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #16, !dbg !283
  call void @llvm.dbg.declare(metadata ptr %order, metadata !173, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_size) #16, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %root_size, metadata !174, metadata !DIExpression()), !dbg !286
  %112 = load i64, ptr %size.addr, align 8, !dbg !287
  %113 = call i1 @llvm.is.constant.i64(i64 %112), !dbg !287
  br i1 %113, label %cond.true610, label %cond.false619, !dbg !287

cond.true610:                                     ; preds = %do.body609
  %114 = load i64, ptr %size.addr, align 8, !dbg !287
  %cmp611 = icmp ult i64 %114, 2, !dbg !287
  br i1 %cmp611, label %cond.true613, label %cond.false614, !dbg !287

cond.true613:                                     ; preds = %cond.true610
  br label %cond.end617, !dbg !287

cond.false614:                                    ; preds = %cond.true610
  %115 = load i64, ptr %size.addr, align 8, !dbg !287
  %116 = call i64 @llvm.ctlz.i64(i64 %115, i1 true), !dbg !287
  %cast615 = trunc i64 %116 to i32, !dbg !287
  %sub616 = sub i32 63, %cast615, !dbg !287
  br label %cond.end617, !dbg !287

cond.end617:                                      ; preds = %cond.false614, %cond.true613
  %cond618 = phi i32 [ 0, %cond.true613 ], [ %sub616, %cond.false614 ], !dbg !287
  br label %cond.end621, !dbg !287

cond.false619:                                    ; preds = %do.body609
  %117 = load i64, ptr %size.addr, align 8, !dbg !287
  %call620 = call i32 @__ilog2_u64(i64 noundef %117) #17, !dbg !287
  br label %cond.end621, !dbg !287

cond.end621:                                      ; preds = %cond.false619, %cond.end617
  %cond622 = phi i32 [ %cond618, %cond.end617 ], [ %call620, %cond.false619 ], !dbg !287
  %118 = load i64, ptr %chunk_size.addr, align 8, !dbg !288
  %119 = call i1 @llvm.is.constant.i64(i64 %118), !dbg !288
  br i1 %119, label %cond.true623, label %cond.false632, !dbg !288

cond.true623:                                     ; preds = %cond.end621
  %120 = load i64, ptr %chunk_size.addr, align 8, !dbg !288
  %cmp624 = icmp ult i64 %120, 2, !dbg !288
  br i1 %cmp624, label %cond.true626, label %cond.false627, !dbg !288

cond.true626:                                     ; preds = %cond.true623
  br label %cond.end630, !dbg !288

cond.false627:                                    ; preds = %cond.true623
  %121 = load i64, ptr %chunk_size.addr, align 8, !dbg !288
  %122 = call i64 @llvm.ctlz.i64(i64 %121, i1 true), !dbg !288
  %cast628 = trunc i64 %122 to i32, !dbg !288
  %sub629 = sub i32 63, %cast628, !dbg !288
  br label %cond.end630, !dbg !288

cond.end630:                                      ; preds = %cond.false627, %cond.true626
  %cond631 = phi i32 [ 0, %cond.true626 ], [ %sub629, %cond.false627 ], !dbg !288
  br label %cond.end634, !dbg !288

cond.false632:                                    ; preds = %cond.end621
  %123 = load i64, ptr %chunk_size.addr, align 8, !dbg !288
  %call633 = call i32 @__ilog2_u64(i64 noundef %123) #17, !dbg !288
  br label %cond.end634, !dbg !288

cond.end634:                                      ; preds = %cond.false632, %cond.end630
  %cond635 = phi i32 [ %cond631, %cond.end630 ], [ %call633, %cond.false632 ], !dbg !288
  %sub636 = sub i32 %cond622, %cond635, !dbg !289
  store i32 %sub636, ptr %order, align 4, !dbg !290
  %124 = load i64, ptr %chunk_size.addr, align 8, !dbg !291
  %125 = load i32, ptr %order, align 4, !dbg !292
  %sh_prom = zext i32 %125 to i64, !dbg !293
  %shl = shl i64 %124, %sh_prom, !dbg !293
  store i64 %shl, ptr %root_size, align 8, !dbg !294
  %126 = load ptr, ptr %mm.addr, align 8, !dbg !295
  %127 = load i32, ptr %order, align 4, !dbg !296
  %128 = load i64, ptr %offset, align 8, !dbg !297
  %call637 = call ptr @drm_block_alloc(ptr noundef %126, ptr noundef null, i32 noundef %127, i64 noundef %128) #19, !dbg !298
  store ptr %call637, ptr %root, align 8, !dbg !299
  %129 = load ptr, ptr %root, align 8, !dbg !300
  %tobool638 = icmp ne ptr %129, null, !dbg !300
  br i1 %tobool638, label %if.end640, label %if.then639, !dbg !302

if.then639:                                       ; preds = %cond.end634
  store i32 16, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !303

if.end640:                                        ; preds = %cond.end634
  %130 = load ptr, ptr %mm.addr, align 8, !dbg !304
  %131 = load ptr, ptr %root, align 8, !dbg !305
  call void @mark_free(ptr noundef %130, ptr noundef %131) #19, !dbg !306
  br label %do.body641, !dbg !307

do.body641:                                       ; preds = %if.end640
  %132 = load i32, ptr %i, align 4, !dbg !308
  %133 = load ptr, ptr %mm.addr, align 8, !dbg !308
  %max_order642 = getelementptr inbounds %struct.drm_buddy, ptr %133, i32 0, i32 3, !dbg !308
  %134 = load i32, ptr %max_order642, align 4, !dbg !308
  %cmp643 = icmp ugt i32 %132, %134, !dbg !308
  %lnot645 = xor i1 %cmp643, true, !dbg !308
  %lnot647 = xor i1 %lnot645, true, !dbg !308
  %lnot.ext648 = zext i1 %lnot647 to i32, !dbg !308
  %conv649 = sext i32 %lnot.ext648 to i64, !dbg !308
  %expval650 = call i64 @llvm.expect.i64(i64 %conv649, i64 0), !dbg !308
  %tobool651 = icmp ne i64 %expval650, 0, !dbg !308
  br i1 %tobool651, label %if.then652, label %if.end662, !dbg !311

if.then652:                                       ; preds = %do.body641
  br label %do.body653, !dbg !308

do.body653:                                       ; preds = %if.then652
  br label %do.body654, !dbg !312

do.body654:                                       ; preds = %do.body653
  br label %do.cond655, !dbg !314

do.cond655:                                       ; preds = %do.body654
  br label %do.end656, !dbg !314

do.end656:                                        ; preds = %do.cond655
  br label %do.body657, !dbg !312

do.body657:                                       ; preds = %do.end656
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 158, i32 0, i64 12) #16, !dbg !316, !srcloc !318
  br label %do.cond658, !dbg !316

do.cond658:                                       ; preds = %do.body657
  br label %do.end659, !dbg !316

do.end659:                                        ; preds = %do.cond658
  unreachable, !dbg !312

do.cond660:                                       ; No predecessors!
  br label %do.end661, !dbg !312

do.end661:                                        ; preds = %do.cond660
  br label %if.end662, !dbg !312

if.end662:                                        ; preds = %do.end661, %do.body641
  br label %do.cond663, !dbg !311

do.cond663:                                       ; preds = %if.end662
  br label %do.end664, !dbg !311

do.end664:                                        ; preds = %do.cond663
  br label %do.body665, !dbg !319

do.body665:                                       ; preds = %do.end664
  %135 = load ptr, ptr %mm.addr, align 8, !dbg !320
  %136 = load ptr, ptr %root, align 8, !dbg !320
  %call666 = call i64 @drm_buddy_block_size(ptr noundef %135, ptr noundef %136) #19, !dbg !320
  %137 = load i64, ptr %chunk_size.addr, align 8, !dbg !320
  %cmp667 = icmp ult i64 %call666, %137, !dbg !320
  %lnot669 = xor i1 %cmp667, true, !dbg !320
  %lnot671 = xor i1 %lnot669, true, !dbg !320
  %lnot.ext672 = zext i1 %lnot671 to i32, !dbg !320
  %conv673 = sext i32 %lnot.ext672 to i64, !dbg !320
  %expval674 = call i64 @llvm.expect.i64(i64 %conv673, i64 0), !dbg !320
  %tobool675 = icmp ne i64 %expval674, 0, !dbg !320
  br i1 %tobool675, label %if.then676, label %if.end686, !dbg !323

if.then676:                                       ; preds = %do.body665
  br label %do.body677, !dbg !320

do.body677:                                       ; preds = %if.then676
  br label %do.body678, !dbg !324

do.body678:                                       ; preds = %do.body677
  br label %do.cond679, !dbg !326

do.cond679:                                       ; preds = %do.body678
  br label %do.end680, !dbg !326

do.end680:                                        ; preds = %do.cond679
  br label %do.body681, !dbg !324

do.body681:                                       ; preds = %do.end680
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 159, i32 0, i64 12) #16, !dbg !328, !srcloc !330
  br label %do.cond682, !dbg !328

do.cond682:                                       ; preds = %do.body681
  br label %do.end683, !dbg !328

do.end683:                                        ; preds = %do.cond682
  unreachable, !dbg !324

do.cond684:                                       ; No predecessors!
  br label %do.end685, !dbg !324

do.end685:                                        ; preds = %do.cond684
  br label %if.end686, !dbg !324

if.end686:                                        ; preds = %do.end685, %do.body665
  br label %do.cond687, !dbg !323

do.cond687:                                       ; preds = %if.end686
  br label %do.end688, !dbg !323

do.end688:                                        ; preds = %do.cond687
  %138 = load ptr, ptr %root, align 8, !dbg !331
  %139 = load ptr, ptr %mm.addr, align 8, !dbg !332
  %roots689 = getelementptr inbounds %struct.drm_buddy, ptr %139, i32 0, i32 1, !dbg !333
  %140 = load ptr, ptr %roots689, align 8, !dbg !333
  %141 = load i32, ptr %i, align 4, !dbg !334
  %idxprom690 = zext i32 %141 to i64, !dbg !332
  %arrayidx691 = getelementptr ptr, ptr %140, i64 %idxprom690, !dbg !332
  store ptr %138, ptr %arrayidx691, align 8, !dbg !335
  %142 = load i64, ptr %root_size, align 8, !dbg !336
  %143 = load i64, ptr %offset, align 8, !dbg !337
  %add692 = add i64 %143, %142, !dbg !337
  store i64 %add692, ptr %offset, align 8, !dbg !337
  %144 = load i64, ptr %root_size, align 8, !dbg !338
  %145 = load i64, ptr %size.addr, align 8, !dbg !339
  %sub693 = sub i64 %145, %144, !dbg !339
  store i64 %sub693, ptr %size.addr, align 8, !dbg !339
  %146 = load i32, ptr %i, align 4, !dbg !340
  %inc694 = add i32 %146, 1, !dbg !340
  store i32 %inc694, ptr %i, align 4, !dbg !340
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !341
  br label %cleanup, !dbg !341

cleanup:                                          ; preds = %if.then639, %do.end688
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_size) #16, !dbg !341
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #16, !dbg !341
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #16, !dbg !341
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup706 [
    i32 0, label %cleanup.cont
    i32 16, label %out_free_roots
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond697, !dbg !342

do.cond697:                                       ; preds = %cleanup.cont
  %147 = load i64, ptr %size.addr, align 8, !dbg !343
  %tobool698 = icmp ne i64 %147, 0, !dbg !342
  br i1 %tobool698, label %do.body609, label %do.end699, !dbg !342, !llvm.loop !344

do.end699:                                        ; preds = %do.cond697
  store i32 0, ptr %retval, align 4, !dbg !346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup706, !dbg !346

out_free_roots:                                   ; preds = %cleanup
  call void @llvm.dbg.label(metadata !175), !dbg !347
  br label %while.cond, !dbg !348

while.cond:                                       ; preds = %while.body, %out_free_roots
  %148 = load i32, ptr %i, align 4, !dbg !349
  %dec = add i32 %148, -1, !dbg !349
  store i32 %dec, ptr %i, align 4, !dbg !349
  %tobool700 = icmp ne i32 %148, 0, !dbg !348
  br i1 %tobool700, label %while.body, label %while.end, !dbg !348

while.body:                                       ; preds = %while.cond
  %149 = load ptr, ptr %mm.addr, align 8, !dbg !350
  %150 = load ptr, ptr %mm.addr, align 8, !dbg !351
  %roots701 = getelementptr inbounds %struct.drm_buddy, ptr %150, i32 0, i32 1, !dbg !352
  %151 = load ptr, ptr %roots701, align 8, !dbg !352
  %152 = load i32, ptr %i, align 4, !dbg !353
  %idxprom702 = zext i32 %152 to i64, !dbg !351
  %arrayidx703 = getelementptr ptr, ptr %151, i64 %idxprom702, !dbg !351
  %153 = load ptr, ptr %arrayidx703, align 8, !dbg !351
  call void @drm_block_free(ptr noundef %149, ptr noundef %153) #19, !dbg !354
  br label %while.cond, !dbg !348, !llvm.loop !355

while.end:                                        ; preds = %while.cond
  %154 = load ptr, ptr %mm.addr, align 8, !dbg !357
  %roots704 = getelementptr inbounds %struct.drm_buddy, ptr %154, i32 0, i32 1, !dbg !358
  %155 = load ptr, ptr %roots704, align 8, !dbg !358
  call void @kfree(ptr noundef %155) #19, !dbg !359
  br label %out_free_list, !dbg !359

out_free_list:                                    ; preds = %while.end, %if.then607
  call void @llvm.dbg.label(metadata !176), !dbg !360
  %156 = load ptr, ptr %mm.addr, align 8, !dbg !361
  %free_list705 = getelementptr inbounds %struct.drm_buddy, ptr %156, i32 0, i32 0, !dbg !362
  %157 = load ptr, ptr %free_list705, align 8, !dbg !362
  call void @kfree(ptr noundef %157) #19, !dbg !363
  store i32 -12, ptr %retval, align 4, !dbg !364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup706, !dbg !364

cleanup706:                                       ; preds = %out_free_list, %do.end699, %cleanup, %if.then47, %if.then4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #16, !dbg !365
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !365
  %158 = load i32, ptr %retval, align 4, !dbg !365
  ret i32 %158, !dbg !365
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #3 align 16 !dbg !366 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = load i64, ptr %n.addr, align 8, !dbg !375
  %cmp = icmp ne i64 %0, 0, !dbg !376
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !377

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !378
  %2 = load i64, ptr %n.addr, align 8, !dbg !379
  %sub = sub i64 %2, 1, !dbg !380
  %and = and i64 %1, %sub, !dbg !381
  %cmp1 = icmp eq i64 %and, 0, !dbg !382
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !383
  ret i1 %3, !dbg !384
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #5 align 16 !dbg !385 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load i64, ptr %n.addr, align 8, !dbg !391
  %call = call i32 @fls64(i64 noundef %0) #19, !dbg !392
  %sub = sub i32 %call, 1, !dbg !393
  ret i32 %sub, !dbg !394
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !395 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !403, metadata !DIExpression()), !dbg !407
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !404, metadata !DIExpression()), !dbg !408
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !405, metadata !DIExpression()), !dbg !409
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !406, metadata !DIExpression()), !dbg !411
  %0 = load i64, ptr %n.addr, align 8, !dbg !412
  %1 = load i64, ptr %size.addr, align 8, !dbg !412
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !412
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !412
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !412
  store i64 %4, ptr %bytes, align 8, !dbg !412
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #19, !dbg !412
  %lnot = xor i1 %call, true, !dbg !412
  %lnot1 = xor i1 %lnot, true, !dbg !412
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !412
  %conv = sext i32 %lnot.ext to i64, !dbg !412
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !412
  %tobool = icmp ne i64 %expval, 0, !dbg !412
  br i1 %tobool, label %if.then, label %if.end, !dbg !414

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !415

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !416
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !418
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !419

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !420
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !421
  br i1 %8, label %if.then2, label %if.end4, !dbg !422

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !423
  %10 = load i32, ptr %flags.addr, align 4, !dbg !424
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #20, !dbg !425
  store ptr %call3, ptr %retval, align 8, !dbg !426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !426

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !427
  %12 = load i32, ptr %flags.addr, align 4, !dbg !428
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #20, !dbg !429
  store ptr %call5, ptr %retval, align 8, !dbg !430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !430

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !431
  %13 = load ptr, ptr %retval, align 8, !dbg !431
  ret ptr %13, !dbg !431
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #8 align 16 !dbg !432 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !437, metadata !DIExpression()), !dbg !438
  br label %do.body, !dbg !439

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !440

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !442

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !440

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !444
  %1 = load ptr, ptr %list.addr, align 8, !dbg !444
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !444
  store volatile ptr %0, ptr %next, align 8, !dbg !444
  br label %do.end3, !dbg !444

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !440

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !446

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !447

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !449

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !447

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !451
  %3 = load ptr, ptr %list.addr, align 8, !dbg !451
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !451
  store volatile ptr %2, ptr %prev, align 8, !dbg !451
  br label %do.end9, !dbg !451

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !447

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !453
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #9 align 16 !dbg !454 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !459, metadata !DIExpression()), !dbg !461
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %res, metadata !460, metadata !DIExpression()), !dbg !463
  %0 = load i64, ptr %w.addr, align 8, !dbg !464
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !465, !srcloc !466
  store i64 %1, ptr %res, align 8, !dbg !465
  %2 = load i64, ptr %res, align 8, !dbg !467
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !468
  ret i64 %2, !dbg !469
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_block_alloc(ptr noundef %mm, ptr noundef %parent, i32 noundef %order, i64 noundef %offset) #0 align 16 !dbg !470 {
entry:
  %retval = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %block = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !474, metadata !DIExpression()), !dbg !479
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !475, metadata !DIExpression()), !dbg !480
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !476, metadata !DIExpression()), !dbg !481
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !477, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %block, metadata !478, metadata !DIExpression()), !dbg !484
  br label %do.body, !dbg !485

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %order.addr, align 4, !dbg !486
  %cmp = icmp ugt i32 %0, 51, !dbg !486
  %lnot = xor i1 %cmp, true, !dbg !486
  %lnot1 = xor i1 %lnot, true, !dbg !486
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !486
  %conv = sext i32 %lnot.ext to i64, !dbg !486
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !486
  %tobool = icmp ne i64 %expval, 0, !dbg !486
  br i1 %tobool, label %if.then, label %if.end, !dbg !489

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !486

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !490

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !492

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !492

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !490

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 21, i32 0, i64 12) #16, !dbg !494, !srcloc !496
  br label %do.cond5, !dbg !494

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !494

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !490

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !490

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !490

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !489

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !489

do.end10:                                         ; preds = %do.cond9
  %1 = load ptr, ptr @slab_blocks, align 8, !dbg !497
  %call = call ptr @kmem_cache_zalloc(ptr noundef %1, i32 noundef 3264) #19, !dbg !498
  store ptr %call, ptr %block, align 8, !dbg !499
  %2 = load ptr, ptr %block, align 8, !dbg !500
  %tobool11 = icmp ne ptr %2, null, !dbg !500
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !502

if.then12:                                        ; preds = %do.end10
  store ptr null, ptr %retval, align 8, !dbg !503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !503

if.end13:                                         ; preds = %do.end10
  %3 = load i64, ptr %offset.addr, align 8, !dbg !504
  %4 = load ptr, ptr %block, align 8, !dbg !505
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %4, i32 0, i32 0, !dbg !506
  store i64 %3, ptr %header, align 8, !dbg !507
  %5 = load i32, ptr %order.addr, align 4, !dbg !508
  %conv14 = zext i32 %5 to i64, !dbg !508
  %6 = load ptr, ptr %block, align 8, !dbg !509
  %header15 = getelementptr inbounds %struct.drm_buddy_block, ptr %6, i32 0, i32 0, !dbg !510
  %7 = load i64, ptr %header15, align 8, !dbg !511
  %or = or i64 %7, %conv14, !dbg !511
  store i64 %or, ptr %header15, align 8, !dbg !511
  %8 = load ptr, ptr %parent.addr, align 8, !dbg !512
  %9 = load ptr, ptr %block, align 8, !dbg !513
  %parent16 = getelementptr inbounds %struct.drm_buddy_block, ptr %9, i32 0, i32 3, !dbg !514
  store ptr %8, ptr %parent16, align 8, !dbg !515
  br label %do.body17, !dbg !516

do.body17:                                        ; preds = %if.end13
  %10 = load ptr, ptr %block, align 8, !dbg !517
  %header18 = getelementptr inbounds %struct.drm_buddy_block, ptr %10, i32 0, i32 0, !dbg !517
  %11 = load i64, ptr %header18, align 8, !dbg !517
  %and = and i64 %11, 960, !dbg !517
  %tobool19 = icmp ne i64 %and, 0, !dbg !517
  %lnot20 = xor i1 %tobool19, true, !dbg !517
  %lnot22 = xor i1 %lnot20, true, !dbg !517
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !517
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !517
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !517
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !517
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !520

if.then27:                                        ; preds = %do.body17
  br label %do.body28, !dbg !517

do.body28:                                        ; preds = %if.then27
  br label %do.body29, !dbg !521

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !523

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !523

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !521

do.body32:                                        ; preds = %do.end31
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 31, i32 0, i64 12) #16, !dbg !525, !srcloc !527
  br label %do.cond33, !dbg !525

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !525

do.end34:                                         ; preds = %do.cond33
  unreachable, !dbg !521

do.cond35:                                        ; No predecessors!
  br label %do.end36, !dbg !521

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !521

if.end37:                                         ; preds = %do.end36, %do.body17
  br label %do.cond38, !dbg !520

do.cond38:                                        ; preds = %if.end37
  br label %do.end39, !dbg !520

do.end39:                                         ; preds = %do.cond38
  %12 = load ptr, ptr %block, align 8, !dbg !528
  store ptr %12, ptr %retval, align 8, !dbg !529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !529

cleanup:                                          ; preds = %do.end39, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !530
  %13 = load ptr, ptr %retval, align 8, !dbg !530
  ret ptr %13, !dbg !530
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mark_free(ptr noundef %mm, ptr noundef %block) #0 align 16 !dbg !531 {
entry:
  %mm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !535, metadata !DIExpression()), !dbg !537
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !536, metadata !DIExpression()), !dbg !538
  %0 = load ptr, ptr %block.addr, align 8, !dbg !539
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 0, !dbg !540
  %1 = load i64, ptr %header, align 8, !dbg !541
  %and = and i64 %1, -3073, !dbg !541
  store i64 %and, ptr %header, align 8, !dbg !541
  %2 = load ptr, ptr %block.addr, align 8, !dbg !542
  %header1 = getelementptr inbounds %struct.drm_buddy_block, ptr %2, i32 0, i32 0, !dbg !543
  %3 = load i64, ptr %header1, align 8, !dbg !544
  %or = or i64 %3, 2048, !dbg !544
  store i64 %or, ptr %header1, align 8, !dbg !544
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !545
  %5 = load ptr, ptr %block.addr, align 8, !dbg !546
  call void @list_insert_sorted(ptr noundef %4, ptr noundef %5) #19, !dbg !547
  ret void, !dbg !548
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drm_buddy_block_size(ptr noundef %mm, ptr noundef %block) #8 align 16 !dbg !549 {
entry:
  %mm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !553, metadata !DIExpression()), !dbg !555
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !554, metadata !DIExpression()), !dbg !556
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !557
  %chunk_size = getelementptr inbounds %struct.drm_buddy, ptr %0, i32 0, i32 4, !dbg !558
  %1 = load i64, ptr %chunk_size, align 8, !dbg !558
  %2 = load ptr, ptr %block.addr, align 8, !dbg !559
  %call = call i32 @drm_buddy_block_order(ptr noundef %2) #19, !dbg !560
  %sh_prom = zext i32 %call to i64, !dbg !561
  %shl = shl i64 %1, %sh_prom, !dbg !561
  ret i64 %shl, !dbg !562
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_block_free(ptr noundef %mm, ptr noundef %block) #0 align 16 !dbg !563 {
entry:
  %mm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !565, metadata !DIExpression()), !dbg !567
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !566, metadata !DIExpression()), !dbg !568
  %0 = load ptr, ptr @slab_blocks, align 8, !dbg !569
  %1 = load ptr, ptr %block.addr, align 8, !dbg !570
  call void @kmem_cache_free(ptr noundef %0, ptr noundef %1) #19, !dbg !571
  ret void, !dbg !572
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !573 dso_local void @kfree(ptr noundef) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_buddy_fini(ptr noundef %mm) #0 align 16 !dbg !578 {
entry:
  %mm.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on27 = alloca i32, align 4
  %__flags44 = alloca i32, align 4
  %tmp57 = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !582, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %i, metadata !583, metadata !DIExpression()), !dbg !599
  store i32 0, ptr %i, align 4, !dbg !600
  br label %for.cond, !dbg !601

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !602
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !603
  %n_roots = getelementptr inbounds %struct.drm_buddy, ptr %1, i32 0, i32 2, !dbg !604
  %2 = load i32, ptr %n_roots, align 8, !dbg !604
  %cmp = icmp ult i32 %0, %2, !dbg !605
  br i1 %cmp, label %for.body, label %for.end, !dbg !606

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !584, metadata !DIExpression()), !dbg !607
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !607
  %roots = getelementptr inbounds %struct.drm_buddy, ptr %3, i32 0, i32 1, !dbg !607
  %4 = load ptr, ptr %roots, align 8, !dbg !607
  %5 = load i32, ptr %i, align 4, !dbg !607
  %idxprom = sext i32 %5 to i64, !dbg !607
  %arrayidx = getelementptr ptr, ptr %4, i64 %idxprom, !dbg !607
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !607
  %call = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %6) #19, !dbg !607
  %lnot = xor i1 %call, true, !dbg !607
  %lnot1 = xor i1 %lnot, true, !dbg !607
  %lnot2 = xor i1 %lnot1, true, !dbg !607
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !607
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !607
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !608
  %tobool = icmp ne i32 %7, 0, !dbg !608
  %lnot3 = xor i1 %tobool, true, !dbg !608
  %lnot5 = xor i1 %lnot3, true, !dbg !608
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !608
  %conv = sext i32 %lnot.ext6 to i64, !dbg !608
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !608
  %tobool7 = icmp ne i64 %expval, 0, !dbg !608
  br i1 %tobool7, label %if.then, label %if.end, !dbg !607

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !608

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !609
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !589, metadata !DIExpression()), !dbg !609
  store i32 2305, ptr %__flags, align 4, !dbg !609
  br label %do.body8, !dbg !609

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !610

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !610

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !609

do.body9:                                         ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !612
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 192, i32 %8, i64 12) #16, !dbg !612, !srcloc !614
  br label %do.cond10, !dbg !612

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !612

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !609

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !615

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !615

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !608
  br label %do.cond15, !dbg !609

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !609

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !609

if.end:                                           ; preds = %do.end16, %for.body
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !607
  %tobool17 = icmp ne i32 %9, 0, !dbg !607
  %lnot18 = xor i1 %tobool17, true, !dbg !607
  %lnot20 = xor i1 %lnot18, true, !dbg !607
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !607
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !607
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !607
  store i64 %expval23, ptr %tmp, align 8, !dbg !608
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !617
  %10 = load i64, ptr %tmp, align 8, !dbg !607
  %11 = load ptr, ptr %mm.addr, align 8, !dbg !618
  %12 = load ptr, ptr %mm.addr, align 8, !dbg !619
  %roots24 = getelementptr inbounds %struct.drm_buddy, ptr %12, i32 0, i32 1, !dbg !620
  %13 = load ptr, ptr %roots24, align 8, !dbg !620
  %14 = load i32, ptr %i, align 4, !dbg !621
  %idxprom25 = sext i32 %14 to i64, !dbg !619
  %arrayidx26 = getelementptr ptr, ptr %13, i64 %idxprom25, !dbg !619
  %15 = load ptr, ptr %arrayidx26, align 8, !dbg !619
  call void @drm_block_free(ptr noundef %11, ptr noundef %15) #19, !dbg !622
  br label %for.inc, !dbg !623

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4, !dbg !624
  %inc = add i32 %16, 1, !dbg !624
  store i32 %inc, ptr %i, align 4, !dbg !624
  br label %for.cond, !dbg !625, !llvm.loop !626

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on27) #16, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on27, metadata !592, metadata !DIExpression()), !dbg !628
  %17 = load ptr, ptr %mm.addr, align 8, !dbg !628
  %avail = getelementptr inbounds %struct.drm_buddy, ptr %17, i32 0, i32 6, !dbg !628
  %18 = load i64, ptr %avail, align 8, !dbg !628
  %19 = load ptr, ptr %mm.addr, align 8, !dbg !628
  %size = getelementptr inbounds %struct.drm_buddy, ptr %19, i32 0, i32 5, !dbg !628
  %20 = load i64, ptr %size, align 8, !dbg !628
  %cmp28 = icmp ne i64 %18, %20, !dbg !628
  %lnot30 = xor i1 %cmp28, true, !dbg !628
  %lnot32 = xor i1 %lnot30, true, !dbg !628
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !628
  store i32 %lnot.ext33, ptr %__ret_warn_on27, align 4, !dbg !628
  %21 = load i32, ptr %__ret_warn_on27, align 4, !dbg !629
  %tobool34 = icmp ne i32 %21, 0, !dbg !629
  %lnot35 = xor i1 %tobool34, true, !dbg !629
  %lnot37 = xor i1 %lnot35, true, !dbg !629
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !629
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !629
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !629
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !629
  br i1 %tobool41, label %if.then42, label %if.end56, !dbg !628

if.then42:                                        ; preds = %for.end
  br label %do.body43, !dbg !629

do.body43:                                        ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags44) #16, !dbg !630
  call void @llvm.dbg.declare(metadata ptr %__flags44, metadata !594, metadata !DIExpression()), !dbg !630
  store i32 2305, ptr %__flags44, align 4, !dbg !630
  br label %do.body45, !dbg !630

do.body45:                                        ; preds = %do.body43
  br label %do.cond46, !dbg !631

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !631

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !630

do.body48:                                        ; preds = %do.end47
  %22 = load i32, ptr %__flags44, align 4, !dbg !633
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 196, i32 %22, i64 12) #16, !dbg !633, !srcloc !635
  br label %do.cond49, !dbg !633

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !633

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !630

do.body51:                                        ; preds = %do.end50
  br label %do.cond52, !dbg !636

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !636

do.end53:                                         ; preds = %do.cond52
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags44) #16, !dbg !629
  br label %do.cond54, !dbg !630

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !630

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !630

if.end56:                                         ; preds = %do.end55, %for.end
  %23 = load i32, ptr %__ret_warn_on27, align 4, !dbg !628
  %tobool58 = icmp ne i32 %23, 0, !dbg !628
  %lnot59 = xor i1 %tobool58, true, !dbg !628
  %lnot61 = xor i1 %lnot59, true, !dbg !628
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !628
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !628
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !628
  store i64 %expval64, ptr %tmp57, align 8, !dbg !629
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on27) #16, !dbg !638
  %24 = load i64, ptr %tmp57, align 8, !dbg !628
  %25 = load ptr, ptr %mm.addr, align 8, !dbg !639
  %roots65 = getelementptr inbounds %struct.drm_buddy, ptr %25, i32 0, i32 1, !dbg !640
  %26 = load ptr, ptr %roots65, align 8, !dbg !640
  call void @kfree(ptr noundef %26) #19, !dbg !641
  %27 = load ptr, ptr %mm.addr, align 8, !dbg !642
  %free_list = getelementptr inbounds %struct.drm_buddy, ptr %27, i32 0, i32 0, !dbg !643
  %28 = load ptr, ptr %free_list, align 8, !dbg !643
  call void @kfree(ptr noundef %28) #19, !dbg !644
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !645
  ret void, !dbg !645
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_buddy_block_is_free(ptr noundef %block) #8 align 16 !dbg !646 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !650, metadata !DIExpression()), !dbg !651
  %0 = load ptr, ptr %block.addr, align 8, !dbg !652
  %call = call i32 @drm_buddy_block_state(ptr noundef %0) #19, !dbg !653
  %cmp = icmp eq i32 %call, 2048, !dbg !654
  ret i1 %cmp, !dbg !655
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_get_buddy(ptr noundef %block) #0 align 16 !dbg !656 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load ptr, ptr %block.addr, align 8, !dbg !662
  %call = call ptr @__get_buddy(ptr noundef %0) #19, !dbg !663
  ret ptr %call, !dbg !664
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__get_buddy(ptr noundef %block) #0 align 16 !dbg !665 {
entry:
  %retval = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !667, metadata !DIExpression()), !dbg !669
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !670
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !668, metadata !DIExpression()), !dbg !671
  %0 = load ptr, ptr %block.addr, align 8, !dbg !672
  %parent1 = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 3, !dbg !673
  %1 = load ptr, ptr %parent1, align 8, !dbg !673
  store ptr %1, ptr %parent, align 8, !dbg !674
  %2 = load ptr, ptr %parent, align 8, !dbg !675
  %tobool = icmp ne ptr %2, null, !dbg !675
  br i1 %tobool, label %if.end, label %if.then, !dbg !677

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !678

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %parent, align 8, !dbg !679
  %left = getelementptr inbounds %struct.drm_buddy_block, ptr %3, i32 0, i32 1, !dbg !681
  %4 = load ptr, ptr %left, align 8, !dbg !681
  %5 = load ptr, ptr %block.addr, align 8, !dbg !682
  %cmp = icmp eq ptr %4, %5, !dbg !683
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !684

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %parent, align 8, !dbg !685
  %right = getelementptr inbounds %struct.drm_buddy_block, ptr %6, i32 0, i32 2, !dbg !686
  %7 = load ptr, ptr %right, align 8, !dbg !686
  store ptr %7, ptr %retval, align 8, !dbg !687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !687

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %parent, align 8, !dbg !688
  %left4 = getelementptr inbounds %struct.drm_buddy_block, ptr %8, i32 0, i32 1, !dbg !689
  %9 = load ptr, ptr %left4, align 8, !dbg !689
  store ptr %9, ptr %retval, align 8, !dbg !690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !690

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !691
  %10 = load ptr, ptr %retval, align 8, !dbg !691
  ret ptr %10, !dbg !691
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_buddy_free_block(ptr noundef %mm, ptr noundef %block) #0 align 16 !dbg !692 {
entry:
  %mm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !694, metadata !DIExpression()), !dbg !696
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !695, metadata !DIExpression()), !dbg !697
  br label %do.body, !dbg !698

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %block.addr, align 8, !dbg !699
  %call = call zeroext i1 @drm_buddy_block_is_allocated(ptr noundef %0) #19, !dbg !699
  %lnot = xor i1 %call, true, !dbg !699
  %lnot1 = xor i1 %lnot, true, !dbg !699
  %lnot2 = xor i1 %lnot1, true, !dbg !699
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !699
  %conv = sext i32 %lnot.ext to i64, !dbg !699
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !699
  %tobool = icmp ne i64 %expval, 0, !dbg !699
  br i1 %tobool, label %if.then, label %if.end, !dbg !702

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !699

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !703

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !705

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !703

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 296, i32 0, i64 12) #16, !dbg !707, !srcloc !709
  br label %do.end6, !dbg !707

do.end6:                                          ; preds = %do.body5
  unreachable, !dbg !703

do.end7:                                          ; No predecessors!
  br label %if.end, !dbg !703

if.end:                                           ; preds = %do.end7, %do.body
  br label %do.end8, !dbg !702

do.end8:                                          ; preds = %if.end
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !710
  %2 = load ptr, ptr %block.addr, align 8, !dbg !711
  %call9 = call i64 @drm_buddy_block_size(ptr noundef %1, ptr noundef %2) #19, !dbg !712
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !713
  %avail = getelementptr inbounds %struct.drm_buddy, ptr %3, i32 0, i32 6, !dbg !714
  %4 = load i64, ptr %avail, align 8, !dbg !715
  %add = add i64 %4, %call9, !dbg !715
  store i64 %add, ptr %avail, align 8, !dbg !715
  %5 = load ptr, ptr %mm.addr, align 8, !dbg !716
  %6 = load ptr, ptr %block.addr, align 8, !dbg !717
  call void @__drm_buddy_free(ptr noundef %5, ptr noundef %6) #19, !dbg !718
  ret void, !dbg !719
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_buddy_block_is_allocated(ptr noundef %block) #8 align 16 !dbg !720 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load ptr, ptr %block.addr, align 8, !dbg !724
  %call = call i32 @drm_buddy_block_state(ptr noundef %0) #19, !dbg !725
  %cmp = icmp eq i32 %call, 1024, !dbg !726
  ret i1 %cmp, !dbg !727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__drm_buddy_free(ptr noundef %mm, ptr noundef %block) #0 align 16 !dbg !728 {
entry:
  %mm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %buddy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !730, metadata !DIExpression()), !dbg !735
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !731, metadata !DIExpression()), !dbg !736
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !737
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !732, metadata !DIExpression()), !dbg !738
  br label %while.cond, !dbg !739

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load ptr, ptr %block.addr, align 8, !dbg !740
  %parent1 = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 3, !dbg !741
  %1 = load ptr, ptr %parent1, align 8, !dbg !741
  store ptr %1, ptr %parent, align 8, !dbg !742
  %tobool = icmp ne ptr %1, null, !dbg !739
  br i1 %tobool, label %while.body, label %while.end, !dbg !739

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %buddy) #16, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %buddy, metadata !733, metadata !DIExpression()), !dbg !744
  %2 = load ptr, ptr %block.addr, align 8, !dbg !745
  %call = call ptr @__get_buddy(ptr noundef %2) #19, !dbg !746
  store ptr %call, ptr %buddy, align 8, !dbg !747
  %3 = load ptr, ptr %buddy, align 8, !dbg !748
  %call2 = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %3) #19, !dbg !750
  br i1 %call2, label %if.end, label %if.then, !dbg !751

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !752

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %buddy, align 8, !dbg !753
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %4, i32 0, i32 5, !dbg !754
  call void @list_del(ptr noundef %link) #19, !dbg !755
  %5 = load ptr, ptr %mm.addr, align 8, !dbg !756
  %6 = load ptr, ptr %block.addr, align 8, !dbg !757
  call void @drm_block_free(ptr noundef %5, ptr noundef %6) #19, !dbg !758
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !759
  %8 = load ptr, ptr %buddy, align 8, !dbg !760
  call void @drm_block_free(ptr noundef %7, ptr noundef %8) #19, !dbg !761
  %9 = load ptr, ptr %parent, align 8, !dbg !762
  store ptr %9, ptr %block.addr, align 8, !dbg !763
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !764
  br label %cleanup, !dbg !764

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buddy) #16, !dbg !764
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !739, !llvm.loop !765

while.end:                                        ; preds = %cleanup, %while.cond
  %10 = load ptr, ptr %mm.addr, align 8, !dbg !766
  %11 = load ptr, ptr %block.addr, align 8, !dbg !767
  call void @mark_free(ptr noundef %10, ptr noundef %11) #19, !dbg !768
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !769
  ret void, !dbg !769

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_buddy_free_list(ptr noundef %mm, ptr noundef %objects) #0 align 16 !dbg !770 {
entry:
  %mm.addr = alloca ptr, align 8
  %objects.addr = alloca ptr, align 8
  %block = alloca ptr, align 8
  %on = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %tmp6 = alloca i32, align 4
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !774, metadata !DIExpression()), !dbg !786
  store ptr %objects, ptr %objects.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %objects.addr, metadata !775, metadata !DIExpression()), !dbg !787
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %block, metadata !776, metadata !DIExpression()), !dbg !789
  call void @llvm.lifetime.start.p0(i64 8, ptr %on) #16, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %on, metadata !777, metadata !DIExpression()), !dbg !790
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !791
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !778, metadata !DIExpression()), !dbg !791
  %0 = load ptr, ptr %objects.addr, align 8, !dbg !791
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !791
  %1 = load ptr, ptr %next, align 8, !dbg !791
  store ptr %1, ptr %__mptr, align 8, !dbg !791
  %2 = load ptr, ptr %__mptr, align 8, !dbg !791
  %add.ptr = getelementptr i8, ptr %2, i64 -40, !dbg !791
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !792
  %3 = load ptr, ptr %tmp, align 8, !dbg !791
  store ptr %3, ptr %block, align 8, !dbg !792
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !793
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !781, metadata !DIExpression()), !dbg !793
  %4 = load ptr, ptr %block, align 8, !dbg !793
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %4, i32 0, i32 5, !dbg !793
  %next2 = getelementptr inbounds %struct.list_head, ptr %link, i32 0, i32 0, !dbg !793
  %5 = load ptr, ptr %next2, align 8, !dbg !793
  store ptr %5, ptr %__mptr1, align 8, !dbg !793
  %6 = load ptr, ptr %__mptr1, align 8, !dbg !793
  %add.ptr4 = getelementptr i8, ptr %6, i64 -40, !dbg !793
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !793
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !792
  %7 = load ptr, ptr %tmp3, align 8, !dbg !793
  store ptr %7, ptr %on, align 8, !dbg !792
  br label %for.cond, !dbg !792

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %block, align 8, !dbg !794
  %link5 = getelementptr inbounds %struct.drm_buddy_block, ptr %8, i32 0, i32 5, !dbg !794
  %9 = load ptr, ptr %objects.addr, align 8, !dbg !794
  %cmp = icmp eq ptr %link5, %9, !dbg !794
  %lnot = xor i1 %cmp, true, !dbg !794
  br i1 %lnot, label %for.body, label %for.end, !dbg !792

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %mm.addr, align 8, !dbg !795
  %11 = load ptr, ptr %block, align 8, !dbg !797
  call void @drm_buddy_free_block(ptr noundef %10, ptr noundef %11) #19, !dbg !798
  call void @__might_resched(ptr noundef @.str, i32 noundef 314, i32 noundef 0) #19, !dbg !799
  %call = call i32 @_cond_resched() #19, !dbg !799
  store i32 %call, ptr %tmp6, align 4, !dbg !799
  %12 = load i32, ptr %tmp6, align 4, !dbg !799
  br label %for.inc, !dbg !801

for.inc:                                          ; preds = %for.body
  %13 = load ptr, ptr %on, align 8, !dbg !794
  store ptr %13, ptr %block, align 8, !dbg !794
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #16, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !783, metadata !DIExpression()), !dbg !802
  %14 = load ptr, ptr %on, align 8, !dbg !802
  %link8 = getelementptr inbounds %struct.drm_buddy_block, ptr %14, i32 0, i32 5, !dbg !802
  %next9 = getelementptr inbounds %struct.list_head, ptr %link8, i32 0, i32 0, !dbg !802
  %15 = load ptr, ptr %next9, align 8, !dbg !802
  store ptr %15, ptr %__mptr7, align 8, !dbg !802
  %16 = load ptr, ptr %__mptr7, align 8, !dbg !802
  %add.ptr11 = getelementptr i8, ptr %16, i64 -40, !dbg !802
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !802
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #16, !dbg !794
  %17 = load ptr, ptr %tmp10, align 8, !dbg !802
  store ptr %17, ptr %on, align 8, !dbg !794
  br label %for.cond, !dbg !794, !llvm.loop !803

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %objects.addr, align 8, !dbg !805
  call void @INIT_LIST_HEAD(ptr noundef %18) #19, !dbg !806
  call void @llvm.lifetime.end.p0(i64 8, ptr %on) #16, !dbg !807
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !807
  ret void, !dbg !807
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #8 align 16 !dbg !808 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !814, metadata !DIExpression()), !dbg !817
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !815, metadata !DIExpression()), !dbg !818
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !816, metadata !DIExpression()), !dbg !819
  ret void, !dbg !820
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #9 align 16 !dbg !136 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !821
  %0 = load ptr, ptr %tmp, align 8, !dbg !821
  %call = call i32 %0() #19, !dbg !823
  ret i32 %call, !dbg !824
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_buddy_block_trim(ptr noundef %mm, i64 noundef %new_size, ptr noundef %blocks) #0 align 16 !dbg !825 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %new_size.addr = alloca i64, align 8
  %blocks.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %block = alloca ptr, align 8
  %dfs = alloca %struct.list_head, align 8
  %new_start = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp22 = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !829, metadata !DIExpression()), !dbg !845
  store i64 %new_size, ptr %new_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_size.addr, metadata !830, metadata !DIExpression()), !dbg !846
  store ptr %blocks, ptr %blocks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocks.addr, metadata !831, metadata !DIExpression()), !dbg !847
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !848
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !832, metadata !DIExpression()), !dbg !849
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !850
  call void @llvm.dbg.declare(metadata ptr %block, metadata !833, metadata !DIExpression()), !dbg !851
  call void @llvm.lifetime.start.p0(i64 16, ptr %dfs) #16, !dbg !852
  call void @llvm.dbg.declare(metadata ptr %dfs, metadata !834, metadata !DIExpression()), !dbg !852
  %next = getelementptr inbounds %struct.list_head, ptr %dfs, i32 0, i32 0, !dbg !852
  store ptr %dfs, ptr %next, align 8, !dbg !852
  %prev = getelementptr inbounds %struct.list_head, ptr %dfs, i32 0, i32 1, !dbg !852
  store ptr %dfs, ptr %prev, align 8, !dbg !852
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_start) #16, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %new_start, metadata !835, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %err, metadata !836, metadata !DIExpression()), !dbg !856
  %0 = load ptr, ptr %blocks.addr, align 8, !dbg !857
  %call = call i32 @list_is_singular(ptr noundef %0) #19, !dbg !859
  %tobool = icmp ne i32 %call, 0, !dbg !859
  br i1 %tobool, label %if.end, label %if.then, !dbg !860

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !861

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !837, metadata !DIExpression()), !dbg !862
  %1 = load ptr, ptr %blocks.addr, align 8, !dbg !862
  %next1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !862
  %2 = load ptr, ptr %next1, align 8, !dbg !862
  store ptr %2, ptr %__mptr, align 8, !dbg !862
  %3 = load ptr, ptr %__mptr, align 8, !dbg !862
  %add.ptr = getelementptr i8, ptr %3, i64 -40, !dbg !862
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !862
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !863
  %4 = load ptr, ptr %tmp, align 8, !dbg !862
  store ptr %4, ptr %block, align 8, !dbg !864
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !839, metadata !DIExpression()), !dbg !865
  %5 = load ptr, ptr %block, align 8, !dbg !865
  %call2 = call zeroext i1 @drm_buddy_block_is_allocated(ptr noundef %5) #19, !dbg !865
  %lnot = xor i1 %call2, true, !dbg !865
  %lnot3 = xor i1 %lnot, true, !dbg !865
  %lnot4 = xor i1 %lnot3, true, !dbg !865
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !865
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !865
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !866
  %tobool5 = icmp ne i32 %6, 0, !dbg !866
  %lnot6 = xor i1 %tobool5, true, !dbg !866
  %lnot8 = xor i1 %lnot6, true, !dbg !866
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !866
  %conv = sext i32 %lnot.ext9 to i64, !dbg !866
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !866
  %tobool10 = icmp ne i64 %expval, 0, !dbg !866
  br i1 %tobool10, label %if.then11, label %if.end21, !dbg !865

if.then11:                                        ; preds = %if.end
  br label %do.body, !dbg !866

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !842, metadata !DIExpression()), !dbg !867
  store i32 2305, ptr %__flags, align 4, !dbg !867
  br label %do.body12, !dbg !867

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !868

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !868

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !867

do.body13:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !870
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 617, i32 %7, i64 12) #16, !dbg !870, !srcloc !872
  br label %do.cond14, !dbg !870

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !870

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !867

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !873

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !873

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !866
  br label %do.cond19, !dbg !867

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !867

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !867

if.end21:                                         ; preds = %do.end20, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !865
  %tobool23 = icmp ne i32 %8, 0, !dbg !865
  %lnot24 = xor i1 %tobool23, true, !dbg !865
  %lnot26 = xor i1 %lnot24, true, !dbg !865
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !865
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !865
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !865
  store i64 %expval29, ptr %tmp22, align 8, !dbg !866
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !875
  %9 = load i64, ptr %tmp22, align 8, !dbg !865
  %tobool30 = icmp ne i64 %9, 0, !dbg !875
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !876

if.then31:                                        ; preds = %if.end21
  store i32 -22, ptr %retval, align 4, !dbg !877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !877

if.end32:                                         ; preds = %if.end21
  %10 = load i64, ptr %new_size.addr, align 8, !dbg !878
  %11 = load ptr, ptr %mm.addr, align 8, !dbg !880
  %12 = load ptr, ptr %block, align 8, !dbg !881
  %call33 = call i64 @drm_buddy_block_size(ptr noundef %11, ptr noundef %12) #19, !dbg !882
  %cmp = icmp ugt i64 %10, %call33, !dbg !883
  br i1 %cmp, label %if.then35, label %if.end36, !dbg !884

if.then35:                                        ; preds = %if.end32
  store i32 -22, ptr %retval, align 4, !dbg !885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !885

if.end36:                                         ; preds = %if.end32
  %13 = load i64, ptr %new_size.addr, align 8, !dbg !886
  %tobool37 = icmp ne i64 %13, 0, !dbg !886
  br i1 %tobool37, label %lor.lhs.false, label %if.then40, !dbg !888

lor.lhs.false:                                    ; preds = %if.end36
  %14 = load i64, ptr %new_size.addr, align 8, !dbg !889
  %15 = load ptr, ptr %mm.addr, align 8, !dbg !889
  %chunk_size = getelementptr inbounds %struct.drm_buddy, ptr %15, i32 0, i32 4, !dbg !889
  %16 = load i64, ptr %chunk_size, align 8, !dbg !889
  %sub = sub i64 %16, 1, !dbg !889
  %and = and i64 %14, %sub, !dbg !889
  %cmp38 = icmp eq i64 %and, 0, !dbg !889
  br i1 %cmp38, label %if.end41, label %if.then40, !dbg !890

if.then40:                                        ; preds = %lor.lhs.false, %if.end36
  store i32 -22, ptr %retval, align 4, !dbg !891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !891

if.end41:                                         ; preds = %lor.lhs.false
  %17 = load i64, ptr %new_size.addr, align 8, !dbg !892
  %18 = load ptr, ptr %mm.addr, align 8, !dbg !894
  %19 = load ptr, ptr %block, align 8, !dbg !895
  %call42 = call i64 @drm_buddy_block_size(ptr noundef %18, ptr noundef %19) #19, !dbg !896
  %cmp43 = icmp eq i64 %17, %call42, !dbg !897
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !898

if.then45:                                        ; preds = %if.end41
  store i32 0, ptr %retval, align 4, !dbg !899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !899

if.end46:                                         ; preds = %if.end41
  %20 = load ptr, ptr %block, align 8, !dbg !900
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %20, i32 0, i32 5, !dbg !901
  call void @list_del(ptr noundef %link) #19, !dbg !902
  %21 = load ptr, ptr %mm.addr, align 8, !dbg !903
  %22 = load ptr, ptr %block, align 8, !dbg !904
  call void @mark_free(ptr noundef %21, ptr noundef %22) #19, !dbg !905
  %23 = load ptr, ptr %mm.addr, align 8, !dbg !906
  %24 = load ptr, ptr %block, align 8, !dbg !907
  %call47 = call i64 @drm_buddy_block_size(ptr noundef %23, ptr noundef %24) #19, !dbg !908
  %25 = load ptr, ptr %mm.addr, align 8, !dbg !909
  %avail = getelementptr inbounds %struct.drm_buddy, ptr %25, i32 0, i32 6, !dbg !910
  %26 = load i64, ptr %avail, align 8, !dbg !911
  %add = add i64 %26, %call47, !dbg !911
  store i64 %add, ptr %avail, align 8, !dbg !911
  %27 = load ptr, ptr %block, align 8, !dbg !912
  %parent48 = getelementptr inbounds %struct.drm_buddy_block, ptr %27, i32 0, i32 3, !dbg !913
  %28 = load ptr, ptr %parent48, align 8, !dbg !913
  store ptr %28, ptr %parent, align 8, !dbg !914
  %29 = load ptr, ptr %block, align 8, !dbg !915
  %parent49 = getelementptr inbounds %struct.drm_buddy_block, ptr %29, i32 0, i32 3, !dbg !916
  store ptr null, ptr %parent49, align 8, !dbg !917
  %30 = load ptr, ptr %block, align 8, !dbg !918
  %call50 = call i64 @drm_buddy_block_offset(ptr noundef %30) #19, !dbg !919
  store i64 %call50, ptr %new_start, align 8, !dbg !920
  %31 = load ptr, ptr %block, align 8, !dbg !921
  %tmp_link = getelementptr inbounds %struct.drm_buddy_block, ptr %31, i32 0, i32 6, !dbg !922
  call void @list_add(ptr noundef %tmp_link, ptr noundef %dfs) #19, !dbg !923
  %32 = load ptr, ptr %mm.addr, align 8, !dbg !924
  %33 = load i64, ptr %new_start, align 8, !dbg !925
  %34 = load i64, ptr %new_size.addr, align 8, !dbg !926
  %35 = load ptr, ptr %blocks.addr, align 8, !dbg !927
  %call51 = call i32 @__alloc_range(ptr noundef %32, ptr noundef %dfs, i64 noundef %33, i64 noundef %34, ptr noundef %35) #19, !dbg !928
  store i32 %call51, ptr %err, align 4, !dbg !929
  %36 = load i32, ptr %err, align 4, !dbg !930
  %tobool52 = icmp ne i32 %36, 0, !dbg !930
  br i1 %tobool52, label %if.then53, label %if.end58, !dbg !932

if.then53:                                        ; preds = %if.end46
  %37 = load ptr, ptr %block, align 8, !dbg !933
  call void @mark_allocated(ptr noundef %37) #19, !dbg !935
  %38 = load ptr, ptr %mm.addr, align 8, !dbg !936
  %39 = load ptr, ptr %block, align 8, !dbg !937
  %call54 = call i64 @drm_buddy_block_size(ptr noundef %38, ptr noundef %39) #19, !dbg !938
  %40 = load ptr, ptr %mm.addr, align 8, !dbg !939
  %avail55 = getelementptr inbounds %struct.drm_buddy, ptr %40, i32 0, i32 6, !dbg !940
  %41 = load i64, ptr %avail55, align 8, !dbg !941
  %sub56 = sub i64 %41, %call54, !dbg !941
  store i64 %sub56, ptr %avail55, align 8, !dbg !941
  %42 = load ptr, ptr %block, align 8, !dbg !942
  %link57 = getelementptr inbounds %struct.drm_buddy_block, ptr %42, i32 0, i32 5, !dbg !943
  %43 = load ptr, ptr %blocks.addr, align 8, !dbg !944
  call void @list_add(ptr noundef %link57, ptr noundef %43) #19, !dbg !945
  br label %if.end58, !dbg !946

if.end58:                                         ; preds = %if.then53, %if.end46
  %44 = load ptr, ptr %parent, align 8, !dbg !947
  %45 = load ptr, ptr %block, align 8, !dbg !948
  %parent59 = getelementptr inbounds %struct.drm_buddy_block, ptr %45, i32 0, i32 3, !dbg !949
  store ptr %44, ptr %parent59, align 8, !dbg !950
  %46 = load i32, ptr %err, align 4, !dbg !951
  store i32 %46, ptr %retval, align 4, !dbg !952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !952

cleanup:                                          ; preds = %if.end58, %if.then45, %if.then40, %if.then35, %if.then31, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !953
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_start) #16, !dbg !953
  call void @llvm.lifetime.end.p0(i64 16, ptr %dfs) #16, !dbg !953
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !953
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !953
  %47 = load i32, ptr %retval, align 4, !dbg !953
  ret i32 %47, !dbg !953
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_singular(ptr noundef %head) #8 align 16 !dbg !954 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !960, metadata !DIExpression()), !dbg !961
  %0 = load ptr, ptr %head.addr, align 8, !dbg !962
  %call = call i32 @list_empty(ptr noundef %0) #19, !dbg !963
  %tobool = icmp ne i32 %call, 0, !dbg !963
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !964

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8, !dbg !965
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !966
  %2 = load ptr, ptr %next, align 8, !dbg !966
  %3 = load ptr, ptr %head.addr, align 8, !dbg !967
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !968
  %4 = load ptr, ptr %prev, align 8, !dbg !968
  %cmp = icmp eq ptr %2, %4, !dbg !969
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !970
  %land.ext = zext i1 %5 to i32, !dbg !964
  ret i32 %land.ext, !dbg !971
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #8 align 16 !dbg !972 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !974, metadata !DIExpression()), !dbg !975
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !976
  call void @__list_del_entry(ptr noundef %0) #19, !dbg !977
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !978
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !979
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !980
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !981
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !982
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !983
  ret void, !dbg !984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drm_buddy_block_offset(ptr noundef %block) #8 align 16 !dbg !985 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !989, metadata !DIExpression()), !dbg !990
  %0 = load ptr, ptr %block.addr, align 8, !dbg !991
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 0, !dbg !992
  %1 = load i64, ptr %header, align 8, !dbg !992
  %and = and i64 %1, -4096, !dbg !993
  ret i64 %and, !dbg !994
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #8 align 16 !dbg !995 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !999, metadata !DIExpression()), !dbg !1001
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1000, metadata !DIExpression()), !dbg !1002
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1003
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1004
  %2 = load ptr, ptr %head.addr, align 8, !dbg !1005
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !1006
  %3 = load ptr, ptr %next, align 8, !dbg !1006
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #19, !dbg !1007
  ret void, !dbg !1008
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__alloc_range(ptr noundef %mm, ptr noundef %dfs, i64 noundef %start, i64 noundef %size, ptr noundef %blocks) #0 align 16 !dbg !1009 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %dfs.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %blocks.addr = alloca ptr, align 8
  %block = alloca ptr, align 8
  %buddy = alloca ptr, align 8
  %allocated = alloca %struct.list_head, align 8
  %end = alloca i64, align 8
  %err = alloca i32, align 4
  %block_start = alloca i64, align 8
  %block_end = alloca i64, align 8
  %head__ = alloca ptr, align 8
  %pos__ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1013, metadata !DIExpression()), !dbg !1033
  store ptr %dfs, ptr %dfs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dfs.addr, metadata !1014, metadata !DIExpression()), !dbg !1034
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1015, metadata !DIExpression()), !dbg !1035
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1016, metadata !DIExpression()), !dbg !1036
  store ptr %blocks, ptr %blocks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocks.addr, metadata !1017, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %block, metadata !1018, metadata !DIExpression()), !dbg !1039
  call void @llvm.lifetime.start.p0(i64 8, ptr %buddy) #16, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %buddy, metadata !1019, metadata !DIExpression()), !dbg !1041
  call void @llvm.lifetime.start.p0(i64 16, ptr %allocated) #16, !dbg !1042
  call void @llvm.dbg.declare(metadata ptr %allocated, metadata !1020, metadata !DIExpression()), !dbg !1042
  %next = getelementptr inbounds %struct.list_head, ptr %allocated, i32 0, i32 0, !dbg !1042
  store ptr %allocated, ptr %next, align 8, !dbg !1042
  %prev = getelementptr inbounds %struct.list_head, ptr %allocated, i32 0, i32 1, !dbg !1042
  store ptr %allocated, ptr %prev, align 8, !dbg !1042
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #16, !dbg !1043
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1021, metadata !DIExpression()), !dbg !1044
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !1045
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1022, metadata !DIExpression()), !dbg !1046
  %0 = load i64, ptr %start.addr, align 8, !dbg !1047
  %1 = load i64, ptr %size.addr, align 8, !dbg !1048
  %add = add i64 %0, %1, !dbg !1049
  %sub = sub i64 %add, 1, !dbg !1050
  store i64 %sub, ptr %end, align 8, !dbg !1051
  br label %do.body, !dbg !1052

do.body:                                          ; preds = %do.cond34, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_start) #16, !dbg !1053
  call void @llvm.dbg.declare(metadata ptr %block_start, metadata !1023, metadata !DIExpression()), !dbg !1054
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_end) #16, !dbg !1055
  call void @llvm.dbg.declare(metadata ptr %block_end, metadata !1025, metadata !DIExpression()), !dbg !1056
  call void @llvm.lifetime.start.p0(i64 8, ptr %head__) #16, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %head__, metadata !1026, metadata !DIExpression()), !dbg !1057
  %2 = load ptr, ptr %dfs.addr, align 8, !dbg !1057
  store ptr %2, ptr %head__, align 8, !dbg !1057
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos__) #16, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %pos__, metadata !1028, metadata !DIExpression()), !dbg !1057
  br label %do.body1, !dbg !1058

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !1060

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1060

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %head__, align 8, !dbg !1058
  %next2 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !1058
  %4 = load volatile ptr, ptr %next2, align 8, !dbg !1058
  store ptr %4, ptr %tmp, align 8, !dbg !1060
  %5 = load ptr, ptr %tmp, align 8, !dbg !1058
  store ptr %5, ptr %pos__, align 8, !dbg !1057
  %6 = load ptr, ptr %pos__, align 8, !dbg !1057
  %7 = load ptr, ptr %head__, align 8, !dbg !1057
  %cmp = icmp ne ptr %6, %7, !dbg !1057
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1057

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1029, metadata !DIExpression()), !dbg !1062
  %8 = load ptr, ptr %pos__, align 8, !dbg !1062
  store ptr %8, ptr %__mptr, align 8, !dbg !1062
  %9 = load ptr, ptr %__mptr, align 8, !dbg !1062
  %add.ptr = getelementptr i8, ptr %9, i64 -56, !dbg !1062
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !1062
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !1057
  %10 = load ptr, ptr %tmp4, align 8, !dbg !1062
  br label %cond.end, !dbg !1057

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !1057

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !1057
  store ptr %cond, ptr %tmp3, align 8, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos__) #16, !dbg !1063
  call void @llvm.lifetime.end.p0(i64 8, ptr %head__) #16, !dbg !1063
  %11 = load ptr, ptr %tmp3, align 8, !dbg !1057
  store ptr %11, ptr %block, align 8, !dbg !1064
  %12 = load ptr, ptr %block, align 8, !dbg !1065
  %tobool = icmp ne ptr %12, null, !dbg !1065
  br i1 %tobool, label %if.end, label %if.then, !dbg !1067

if.then:                                          ; preds = %cond.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1068

if.end:                                           ; preds = %cond.end
  %13 = load ptr, ptr %block, align 8, !dbg !1069
  %tmp_link = getelementptr inbounds %struct.drm_buddy_block, ptr %13, i32 0, i32 6, !dbg !1070
  call void @list_del(ptr noundef %tmp_link) #19, !dbg !1071
  %14 = load ptr, ptr %block, align 8, !dbg !1072
  %call = call i64 @drm_buddy_block_offset(ptr noundef %14) #19, !dbg !1073
  store i64 %call, ptr %block_start, align 8, !dbg !1074
  %15 = load i64, ptr %block_start, align 8, !dbg !1075
  %16 = load ptr, ptr %mm.addr, align 8, !dbg !1076
  %17 = load ptr, ptr %block, align 8, !dbg !1077
  %call5 = call i64 @drm_buddy_block_size(ptr noundef %16, ptr noundef %17) #19, !dbg !1078
  %add6 = add i64 %15, %call5, !dbg !1079
  %sub7 = sub i64 %add6, 1, !dbg !1080
  store i64 %sub7, ptr %block_end, align 8, !dbg !1081
  %18 = load i64, ptr %start.addr, align 8, !dbg !1082
  %19 = load i64, ptr %end, align 8, !dbg !1084
  %20 = load i64, ptr %block_start, align 8, !dbg !1085
  %21 = load i64, ptr %block_end, align 8, !dbg !1086
  %call8 = call zeroext i1 @overlaps(i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21) #19, !dbg !1087
  br i1 %call8, label %if.end10, label %if.then9, !dbg !1088

if.then9:                                         ; preds = %if.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1089

if.end10:                                         ; preds = %if.end
  %22 = load ptr, ptr %block, align 8, !dbg !1090
  %call11 = call zeroext i1 @drm_buddy_block_is_allocated(ptr noundef %22) #19, !dbg !1092
  br i1 %call11, label %if.then12, label %if.end13, !dbg !1093

if.then12:                                        ; preds = %if.end10
  store i32 -28, ptr %err, align 4, !dbg !1094
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1096

if.end13:                                         ; preds = %if.end10
  %23 = load i64, ptr %start.addr, align 8, !dbg !1097
  %24 = load i64, ptr %end, align 8, !dbg !1099
  %25 = load i64, ptr %block_start, align 8, !dbg !1100
  %26 = load i64, ptr %block_end, align 8, !dbg !1101
  %call14 = call zeroext i1 @contains(i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26) #19, !dbg !1102
  br i1 %call14, label %if.then15, label %if.end21, !dbg !1103

if.then15:                                        ; preds = %if.end13
  %27 = load ptr, ptr %block, align 8, !dbg !1104
  %call16 = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %27) #19, !dbg !1107
  br i1 %call16, label %if.end18, label %if.then17, !dbg !1108

if.then17:                                        ; preds = %if.then15
  store i32 -28, ptr %err, align 4, !dbg !1109
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1111

if.end18:                                         ; preds = %if.then15
  %28 = load ptr, ptr %block, align 8, !dbg !1112
  call void @mark_allocated(ptr noundef %28) #19, !dbg !1113
  %29 = load ptr, ptr %mm.addr, align 8, !dbg !1114
  %30 = load ptr, ptr %block, align 8, !dbg !1115
  %call19 = call i64 @drm_buddy_block_size(ptr noundef %29, ptr noundef %30) #19, !dbg !1116
  %31 = load ptr, ptr %mm.addr, align 8, !dbg !1117
  %avail = getelementptr inbounds %struct.drm_buddy, ptr %31, i32 0, i32 6, !dbg !1118
  %32 = load i64, ptr %avail, align 8, !dbg !1119
  %sub20 = sub i64 %32, %call19, !dbg !1119
  store i64 %sub20, ptr %avail, align 8, !dbg !1119
  %33 = load ptr, ptr %block, align 8, !dbg !1120
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %33, i32 0, i32 5, !dbg !1121
  call void @list_add_tail(ptr noundef %link, ptr noundef %allocated) #19, !dbg !1122
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1123

if.end21:                                         ; preds = %if.end13
  %34 = load ptr, ptr %block, align 8, !dbg !1124
  %call22 = call zeroext i1 @drm_buddy_block_is_split(ptr noundef %34) #19, !dbg !1126
  br i1 %call22, label %if.end30, label %if.then23, !dbg !1127

if.then23:                                        ; preds = %if.end21
  %35 = load ptr, ptr %mm.addr, align 8, !dbg !1128
  %36 = load ptr, ptr %block, align 8, !dbg !1130
  %call24 = call i32 @split_block(ptr noundef %35, ptr noundef %36) #19, !dbg !1131
  store i32 %call24, ptr %err, align 4, !dbg !1132
  %37 = load i32, ptr %err, align 4, !dbg !1133
  %tobool25 = icmp ne i32 %37, 0, !dbg !1133
  %lnot = xor i1 %tobool25, true, !dbg !1133
  %lnot26 = xor i1 %lnot, true, !dbg !1133
  %lnot.ext = zext i1 %lnot26 to i32, !dbg !1133
  %conv = sext i32 %lnot.ext to i64, !dbg !1133
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1133
  %tobool27 = icmp ne i64 %expval, 0, !dbg !1133
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !1135

if.then28:                                        ; preds = %if.then23
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1136

if.end29:                                         ; preds = %if.then23
  br label %if.end30, !dbg !1137

if.end30:                                         ; preds = %if.end29, %if.end21
  %38 = load ptr, ptr %block, align 8, !dbg !1138
  %right = getelementptr inbounds %struct.drm_buddy_block, ptr %38, i32 0, i32 2, !dbg !1139
  %39 = load ptr, ptr %right, align 8, !dbg !1139
  %tmp_link31 = getelementptr inbounds %struct.drm_buddy_block, ptr %39, i32 0, i32 6, !dbg !1140
  %40 = load ptr, ptr %dfs.addr, align 8, !dbg !1141
  call void @list_add(ptr noundef %tmp_link31, ptr noundef %40) #19, !dbg !1142
  %41 = load ptr, ptr %block, align 8, !dbg !1143
  %left = getelementptr inbounds %struct.drm_buddy_block, ptr %41, i32 0, i32 1, !dbg !1144
  %42 = load ptr, ptr %left, align 8, !dbg !1144
  %tmp_link32 = getelementptr inbounds %struct.drm_buddy_block, ptr %42, i32 0, i32 6, !dbg !1145
  %43 = load ptr, ptr %dfs.addr, align 8, !dbg !1146
  call void @list_add(ptr noundef %tmp_link32, ptr noundef %43) #19, !dbg !1147
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1148
  br label %cleanup, !dbg !1148

cleanup:                                          ; preds = %if.then28, %if.then17, %if.then12, %if.end30, %if.end18, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_end) #16, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_start) #16, !dbg !1148
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
    i32 2, label %do.end35
    i32 3, label %do.cond34
    i32 7, label %err_undo
    i32 6, label %err_free
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond34, !dbg !1149

do.cond34:                                        ; preds = %cleanup.cont, %cleanup
  br i1 true, label %do.body, label %do.end35, !dbg !1149, !llvm.loop !1150

do.end35:                                         ; preds = %do.cond34, %cleanup
  %44 = load ptr, ptr %blocks.addr, align 8, !dbg !1152
  call void @list_splice_tail(ptr noundef %allocated, ptr noundef %44) #19, !dbg !1153
  store i32 0, ptr %retval, align 4, !dbg !1154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !1154

err_undo:                                         ; preds = %cleanup
  call void @llvm.dbg.label(metadata !1031), !dbg !1155
  %45 = load ptr, ptr %block, align 8, !dbg !1156
  %call36 = call ptr @__get_buddy(ptr noundef %45) #19, !dbg !1157
  store ptr %call36, ptr %buddy, align 8, !dbg !1158
  %46 = load ptr, ptr %buddy, align 8, !dbg !1159
  %tobool37 = icmp ne ptr %46, null, !dbg !1159
  br i1 %tobool37, label %land.lhs.true, label %if.end44, !dbg !1161

land.lhs.true:                                    ; preds = %err_undo
  %47 = load ptr, ptr %block, align 8, !dbg !1162
  %call38 = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %47) #19, !dbg !1163
  br i1 %call38, label %land.lhs.true40, label %if.end44, !dbg !1164

land.lhs.true40:                                  ; preds = %land.lhs.true
  %48 = load ptr, ptr %buddy, align 8, !dbg !1165
  %call41 = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %48) #19, !dbg !1166
  br i1 %call41, label %if.then43, label %if.end44, !dbg !1167

if.then43:                                        ; preds = %land.lhs.true40
  %49 = load ptr, ptr %mm.addr, align 8, !dbg !1168
  %50 = load ptr, ptr %block, align 8, !dbg !1169
  call void @__drm_buddy_free(ptr noundef %49, ptr noundef %50) #19, !dbg !1170
  br label %if.end44, !dbg !1170

if.end44:                                         ; preds = %if.then43, %land.lhs.true40, %land.lhs.true, %err_undo
  br label %err_free, !dbg !1171

err_free:                                         ; preds = %if.end44, %cleanup
  call void @llvm.dbg.label(metadata !1032), !dbg !1172
  %51 = load ptr, ptr %mm.addr, align 8, !dbg !1173
  call void @drm_buddy_free_list(ptr noundef %51, ptr noundef %allocated) #19, !dbg !1174
  %52 = load i32, ptr %err, align 4, !dbg !1175
  store i32 %52, ptr %retval, align 4, !dbg !1176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !1176

cleanup45:                                        ; preds = %err_free, %do.end35, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #16, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 16, ptr %allocated) #16, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 8, ptr %buddy) #16, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !1177
  %53 = load i32, ptr %retval, align 4, !dbg !1177
  ret i32 %53, !dbg !1177
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mark_allocated(ptr noundef %block) #0 align 16 !dbg !1178 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  %0 = load ptr, ptr %block.addr, align 8, !dbg !1184
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 0, !dbg !1185
  %1 = load i64, ptr %header, align 8, !dbg !1186
  %and = and i64 %1, -3073, !dbg !1186
  store i64 %and, ptr %header, align 8, !dbg !1186
  %2 = load ptr, ptr %block.addr, align 8, !dbg !1187
  %header1 = getelementptr inbounds %struct.drm_buddy_block, ptr %2, i32 0, i32 0, !dbg !1188
  %3 = load i64, ptr %header1, align 8, !dbg !1189
  %or = or i64 %3, 1024, !dbg !1189
  store i64 %or, ptr %header1, align 8, !dbg !1189
  %4 = load ptr, ptr %block.addr, align 8, !dbg !1190
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %4, i32 0, i32 5, !dbg !1191
  call void @list_del(ptr noundef %link) #19, !dbg !1192
  ret void, !dbg !1193
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_buddy_alloc_blocks(ptr noundef %mm, i64 noundef %start, i64 noundef %end, i64 noundef %size, i64 noundef %min_page_size, ptr noundef %blocks, i64 noundef %flags) #0 align 16 !dbg !1194 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %min_page_size.addr = alloca i64, align 8
  %blocks.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %block = alloca ptr, align 8
  %min_order = alloca i32, align 4
  %order = alloca i32, align 4
  %pages = alloca i64, align 8
  %allocated = alloca %struct.list_head, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %start__ = alloca i64, align 8
  %size__ = alloca i64, align 8
  %max__ = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x279 = alloca i32, align 4
  %__UNIQUE_ID___y280 = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1198, metadata !DIExpression()), !dbg !1221
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1199, metadata !DIExpression()), !dbg !1222
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1200, metadata !DIExpression()), !dbg !1223
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1201, metadata !DIExpression()), !dbg !1224
  store i64 %min_page_size, ptr %min_page_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min_page_size.addr, metadata !1202, metadata !DIExpression()), !dbg !1225
  store ptr %blocks, ptr %blocks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocks.addr, metadata !1203, metadata !DIExpression()), !dbg !1226
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1204, metadata !DIExpression()), !dbg !1227
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %block, metadata !1205, metadata !DIExpression()), !dbg !1229
  store ptr null, ptr %block, align 8, !dbg !1229
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_order) #16, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %min_order, metadata !1206, metadata !DIExpression()), !dbg !1231
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #16, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %order, metadata !1207, metadata !DIExpression()), !dbg !1232
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #16, !dbg !1233
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !1208, metadata !DIExpression()), !dbg !1234
  call void @llvm.lifetime.start.p0(i64 16, ptr %allocated) #16, !dbg !1235
  call void @llvm.dbg.declare(metadata ptr %allocated, metadata !1209, metadata !DIExpression()), !dbg !1235
  %next = getelementptr inbounds %struct.list_head, ptr %allocated, i32 0, i32 0, !dbg !1235
  store ptr %allocated, ptr %next, align 8, !dbg !1235
  %prev = getelementptr inbounds %struct.list_head, ptr %allocated, i32 0, i32 1, !dbg !1235
  store ptr %allocated, ptr %prev, align 8, !dbg !1235
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1210, metadata !DIExpression()), !dbg !1237
  %0 = load i64, ptr %size.addr, align 8, !dbg !1238
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !1240
  %chunk_size = getelementptr inbounds %struct.drm_buddy, ptr %1, i32 0, i32 4, !dbg !1241
  %2 = load i64, ptr %chunk_size, align 8, !dbg !1241
  %cmp = icmp ult i64 %0, %2, !dbg !1242
  br i1 %cmp, label %if.then, label %if.end, !dbg !1243

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1244

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %min_page_size.addr, align 8, !dbg !1245
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !1247
  %chunk_size1 = getelementptr inbounds %struct.drm_buddy, ptr %4, i32 0, i32 4, !dbg !1248
  %5 = load i64, ptr %chunk_size1, align 8, !dbg !1248
  %cmp2 = icmp ult i64 %3, %5, !dbg !1249
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1250

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1251

if.end4:                                          ; preds = %if.end
  %6 = load i64, ptr %min_page_size.addr, align 8, !dbg !1252
  %call = call zeroext i1 @is_power_of_2(i64 noundef %6) #17, !dbg !1254
  br i1 %call, label %if.end6, label %if.then5, !dbg !1255

if.then5:                                         ; preds = %if.end4
  store i32 -22, ptr %retval, align 4, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1256

if.end6:                                          ; preds = %if.end4
  %7 = load i64, ptr %start.addr, align 8, !dbg !1257
  %8 = load i64, ptr %end.addr, align 8, !dbg !1257
  %or = or i64 %7, %8, !dbg !1257
  %9 = load i64, ptr %size.addr, align 8, !dbg !1257
  %or7 = or i64 %or, %9, !dbg !1257
  %10 = load ptr, ptr %mm.addr, align 8, !dbg !1257
  %chunk_size8 = getelementptr inbounds %struct.drm_buddy, ptr %10, i32 0, i32 4, !dbg !1257
  %11 = load i64, ptr %chunk_size8, align 8, !dbg !1257
  %sub = sub i64 %11, 1, !dbg !1257
  %and = and i64 %or7, %sub, !dbg !1257
  %cmp9 = icmp eq i64 %and, 0, !dbg !1257
  br i1 %cmp9, label %if.end11, label %if.then10, !dbg !1259

if.then10:                                        ; preds = %if.end6
  store i32 -22, ptr %retval, align 4, !dbg !1260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1260

if.end11:                                         ; preds = %if.end6
  %12 = load i64, ptr %end.addr, align 8, !dbg !1261
  %13 = load ptr, ptr %mm.addr, align 8, !dbg !1263
  %size12 = getelementptr inbounds %struct.drm_buddy, ptr %13, i32 0, i32 5, !dbg !1264
  %14 = load i64, ptr %size12, align 8, !dbg !1264
  %cmp13 = icmp ugt i64 %12, %14, !dbg !1265
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1266

if.then14:                                        ; preds = %if.end11
  store i32 -22, ptr %retval, align 4, !dbg !1267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1267

if.end15:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %start__) #16, !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %start__, metadata !1211, metadata !DIExpression()), !dbg !1268
  %15 = load i64, ptr %start.addr, align 8, !dbg !1268
  store i64 %15, ptr %start__, align 8, !dbg !1268
  call void @llvm.lifetime.start.p0(i64 8, ptr %size__) #16, !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %size__, metadata !1214, metadata !DIExpression()), !dbg !1268
  %16 = load i64, ptr %size.addr, align 8, !dbg !1268
  store i64 %16, ptr %size__, align 8, !dbg !1268
  call void @llvm.lifetime.start.p0(i64 8, ptr %max__) #16, !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %max__, metadata !1215, metadata !DIExpression()), !dbg !1268
  %17 = load ptr, ptr %mm.addr, align 8, !dbg !1268
  %size16 = getelementptr inbounds %struct.drm_buddy, ptr %17, i32 0, i32 5, !dbg !1268
  %18 = load i64, ptr %size16, align 8, !dbg !1268
  store i64 %18, ptr %max__, align 8, !dbg !1268
  %cmp17 = icmp eq ptr %start__, %size__, !dbg !1268
  %conv = zext i1 %cmp17 to i32, !dbg !1268
  %cmp18 = icmp eq ptr %start__, %max__, !dbg !1268
  %conv19 = zext i1 %cmp18 to i32, !dbg !1268
  %19 = load i64, ptr %start__, align 8, !dbg !1268
  %20 = load i64, ptr %max__, align 8, !dbg !1268
  %cmp20 = icmp uge i64 %19, %20, !dbg !1268
  br i1 %cmp20, label %lor.end, label %lor.rhs, !dbg !1268

lor.rhs:                                          ; preds = %if.end15
  %21 = load i64, ptr %size__, align 8, !dbg !1268
  %22 = load i64, ptr %max__, align 8, !dbg !1268
  %23 = load i64, ptr %start__, align 8, !dbg !1268
  %sub22 = sub i64 %22, %23, !dbg !1268
  %cmp23 = icmp ugt i64 %21, %sub22, !dbg !1268
  br label %lor.end, !dbg !1268

lor.end:                                          ; preds = %lor.rhs, %if.end15
  %24 = phi i1 [ true, %if.end15 ], [ %cmp23, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32, !dbg !1268
  store i32 %lor.ext, ptr %tmp, align 4, !dbg !1268
  call void @llvm.lifetime.end.p0(i64 8, ptr %max__) #16, !dbg !1269
  call void @llvm.lifetime.end.p0(i64 8, ptr %size__) #16, !dbg !1269
  call void @llvm.lifetime.end.p0(i64 8, ptr %start__) #16, !dbg !1269
  %25 = load i32, ptr %tmp, align 4, !dbg !1268
  %tobool = icmp ne i32 %25, 0, !dbg !1269
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !1270

if.then25:                                        ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !1271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1271

if.end26:                                         ; preds = %lor.end
  %26 = load i64, ptr %start.addr, align 8, !dbg !1272
  %27 = load i64, ptr %size.addr, align 8, !dbg !1274
  %add = add i64 %26, %27, !dbg !1275
  %28 = load i64, ptr %end.addr, align 8, !dbg !1276
  %cmp27 = icmp eq i64 %add, %28, !dbg !1277
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !1278

if.then29:                                        ; preds = %if.end26
  %29 = load ptr, ptr %mm.addr, align 8, !dbg !1279
  %30 = load i64, ptr %start.addr, align 8, !dbg !1280
  %31 = load i64, ptr %size.addr, align 8, !dbg !1281
  %32 = load ptr, ptr %blocks.addr, align 8, !dbg !1282
  %call30 = call i32 @__drm_buddy_alloc_range(ptr noundef %29, i64 noundef %30, i64 noundef %31, ptr noundef %32) #19, !dbg !1283
  store i32 %call30, ptr %retval, align 4, !dbg !1284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1284

if.end31:                                         ; preds = %if.end26
  %33 = load i64, ptr %size.addr, align 8, !dbg !1285
  %34 = load i64, ptr %min_page_size.addr, align 8, !dbg !1285
  %sub32 = sub i64 %34, 1, !dbg !1285
  %and33 = and i64 %33, %sub32, !dbg !1285
  %cmp34 = icmp eq i64 %and33, 0, !dbg !1285
  br i1 %cmp34, label %if.end37, label %if.then36, !dbg !1287

if.then36:                                        ; preds = %if.end31
  store i32 -22, ptr %retval, align 4, !dbg !1288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1288

if.end37:                                         ; preds = %if.end31
  %35 = load i64, ptr %size.addr, align 8, !dbg !1289
  %36 = load ptr, ptr %mm.addr, align 8, !dbg !1290
  %chunk_size38 = getelementptr inbounds %struct.drm_buddy, ptr %36, i32 0, i32 4, !dbg !1290
  %37 = load i64, ptr %chunk_size38, align 8, !dbg !1290
  %38 = call i1 @llvm.is.constant.i64(i64 %37), !dbg !1290
  br i1 %38, label %cond.true, label %cond.false45, !dbg !1290

cond.true:                                        ; preds = %if.end37
  %39 = load ptr, ptr %mm.addr, align 8, !dbg !1290
  %chunk_size39 = getelementptr inbounds %struct.drm_buddy, ptr %39, i32 0, i32 4, !dbg !1290
  %40 = load i64, ptr %chunk_size39, align 8, !dbg !1290
  %cmp40 = icmp ult i64 %40, 2, !dbg !1290
  br i1 %cmp40, label %cond.true42, label %cond.false, !dbg !1290

cond.true42:                                      ; preds = %cond.true
  br label %cond.end, !dbg !1290

cond.false:                                       ; preds = %cond.true
  %41 = load ptr, ptr %mm.addr, align 8, !dbg !1290
  %chunk_size43 = getelementptr inbounds %struct.drm_buddy, ptr %41, i32 0, i32 4, !dbg !1290
  %42 = load i64, ptr %chunk_size43, align 8, !dbg !1290
  %43 = call i64 @llvm.ctlz.i64(i64 %42, i1 true), !dbg !1290
  %cast = trunc i64 %43 to i32, !dbg !1290
  %sub44 = sub i32 63, %cast, !dbg !1290
  br label %cond.end, !dbg !1290

cond.end:                                         ; preds = %cond.false, %cond.true42
  %cond = phi i32 [ 0, %cond.true42 ], [ %sub44, %cond.false ], !dbg !1290
  br label %cond.end48, !dbg !1290

cond.false45:                                     ; preds = %if.end37
  %44 = load ptr, ptr %mm.addr, align 8, !dbg !1290
  %chunk_size46 = getelementptr inbounds %struct.drm_buddy, ptr %44, i32 0, i32 4, !dbg !1290
  %45 = load i64, ptr %chunk_size46, align 8, !dbg !1290
  %call47 = call i32 @__ilog2_u64(i64 noundef %45) #17, !dbg !1290
  br label %cond.end48, !dbg !1290

cond.end48:                                       ; preds = %cond.false45, %cond.end
  %cond49 = phi i32 [ %cond, %cond.end ], [ %call47, %cond.false45 ], !dbg !1290
  %sh_prom = zext i32 %cond49 to i64, !dbg !1291
  %shr = lshr i64 %35, %sh_prom, !dbg !1291
  store i64 %shr, ptr %pages, align 8, !dbg !1292
  %46 = load i64, ptr %pages, align 8, !dbg !1293
  %conv50 = trunc i64 %46 to i32, !dbg !1293
  %call51 = call i32 @fls(i32 noundef %conv50) #19, !dbg !1294
  %sub52 = sub i32 %call51, 1, !dbg !1295
  store i32 %sub52, ptr %order, align 4, !dbg !1296
  %47 = load i64, ptr %min_page_size.addr, align 8, !dbg !1297
  %48 = call i1 @llvm.is.constant.i64(i64 %47), !dbg !1297
  br i1 %48, label %cond.true53, label %cond.false62, !dbg !1297

cond.true53:                                      ; preds = %cond.end48
  %49 = load i64, ptr %min_page_size.addr, align 8, !dbg !1297
  %cmp54 = icmp ult i64 %49, 2, !dbg !1297
  br i1 %cmp54, label %cond.true56, label %cond.false57, !dbg !1297

cond.true56:                                      ; preds = %cond.true53
  br label %cond.end60, !dbg !1297

cond.false57:                                     ; preds = %cond.true53
  %50 = load i64, ptr %min_page_size.addr, align 8, !dbg !1297
  %51 = call i64 @llvm.ctlz.i64(i64 %50, i1 true), !dbg !1297
  %cast58 = trunc i64 %51 to i32, !dbg !1297
  %sub59 = sub i32 63, %cast58, !dbg !1297
  br label %cond.end60, !dbg !1297

cond.end60:                                       ; preds = %cond.false57, %cond.true56
  %cond61 = phi i32 [ 0, %cond.true56 ], [ %sub59, %cond.false57 ], !dbg !1297
  br label %cond.end64, !dbg !1297

cond.false62:                                     ; preds = %cond.end48
  %52 = load i64, ptr %min_page_size.addr, align 8, !dbg !1297
  %call63 = call i32 @__ilog2_u64(i64 noundef %52) #17, !dbg !1297
  br label %cond.end64, !dbg !1297

cond.end64:                                       ; preds = %cond.false62, %cond.end60
  %cond65 = phi i32 [ %cond61, %cond.end60 ], [ %call63, %cond.false62 ], !dbg !1297
  %53 = load ptr, ptr %mm.addr, align 8, !dbg !1298
  %chunk_size66 = getelementptr inbounds %struct.drm_buddy, ptr %53, i32 0, i32 4, !dbg !1298
  %54 = load i64, ptr %chunk_size66, align 8, !dbg !1298
  %55 = call i1 @llvm.is.constant.i64(i64 %54), !dbg !1298
  br i1 %55, label %cond.true67, label %cond.false78, !dbg !1298

cond.true67:                                      ; preds = %cond.end64
  %56 = load ptr, ptr %mm.addr, align 8, !dbg !1298
  %chunk_size68 = getelementptr inbounds %struct.drm_buddy, ptr %56, i32 0, i32 4, !dbg !1298
  %57 = load i64, ptr %chunk_size68, align 8, !dbg !1298
  %cmp69 = icmp ult i64 %57, 2, !dbg !1298
  br i1 %cmp69, label %cond.true71, label %cond.false72, !dbg !1298

cond.true71:                                      ; preds = %cond.true67
  br label %cond.end76, !dbg !1298

cond.false72:                                     ; preds = %cond.true67
  %58 = load ptr, ptr %mm.addr, align 8, !dbg !1298
  %chunk_size73 = getelementptr inbounds %struct.drm_buddy, ptr %58, i32 0, i32 4, !dbg !1298
  %59 = load i64, ptr %chunk_size73, align 8, !dbg !1298
  %60 = call i64 @llvm.ctlz.i64(i64 %59, i1 true), !dbg !1298
  %cast74 = trunc i64 %60 to i32, !dbg !1298
  %sub75 = sub i32 63, %cast74, !dbg !1298
  br label %cond.end76, !dbg !1298

cond.end76:                                       ; preds = %cond.false72, %cond.true71
  %cond77 = phi i32 [ 0, %cond.true71 ], [ %sub75, %cond.false72 ], !dbg !1298
  br label %cond.end81, !dbg !1298

cond.false78:                                     ; preds = %cond.end64
  %61 = load ptr, ptr %mm.addr, align 8, !dbg !1298
  %chunk_size79 = getelementptr inbounds %struct.drm_buddy, ptr %61, i32 0, i32 4, !dbg !1298
  %62 = load i64, ptr %chunk_size79, align 8, !dbg !1298
  %call80 = call i32 @__ilog2_u64(i64 noundef %62) #17, !dbg !1298
  br label %cond.end81, !dbg !1298

cond.end81:                                       ; preds = %cond.false78, %cond.end76
  %cond82 = phi i32 [ %cond77, %cond.end76 ], [ %call80, %cond.false78 ], !dbg !1298
  %sub83 = sub i32 %cond65, %cond82, !dbg !1299
  store i32 %sub83, ptr %min_order, align 4, !dbg !1300
  br label %do.body, !dbg !1301

do.body:                                          ; preds = %do.cond157, %cond.end81
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x279) #16, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x279, metadata !1216, metadata !DIExpression()), !dbg !1302
  %63 = load i32, ptr %order, align 4, !dbg !1302
  store i32 %63, ptr %__UNIQUE_ID___x279, align 4, !dbg !1302
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y280) #16, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y280, metadata !1219, metadata !DIExpression()), !dbg !1302
  %64 = load i64, ptr %pages, align 8, !dbg !1302
  %conv84 = trunc i64 %64 to i32, !dbg !1302
  %call85 = call i32 @fls(i32 noundef %conv84) #19, !dbg !1302
  %sub86 = sub i32 %call85, 1, !dbg !1302
  store i32 %sub86, ptr %__UNIQUE_ID___y280, align 4, !dbg !1302
  %65 = load i32, ptr %__UNIQUE_ID___x279, align 4, !dbg !1302
  %66 = load i32, ptr %__UNIQUE_ID___y280, align 4, !dbg !1302
  %cmp88 = icmp ult i32 %65, %66, !dbg !1302
  br i1 %cmp88, label %cond.true90, label %cond.false91, !dbg !1302

cond.true90:                                      ; preds = %do.body
  %67 = load i32, ptr %__UNIQUE_ID___x279, align 4, !dbg !1302
  br label %cond.end92, !dbg !1302

cond.false91:                                     ; preds = %do.body
  %68 = load i32, ptr %__UNIQUE_ID___y280, align 4, !dbg !1302
  br label %cond.end92, !dbg !1302

cond.end92:                                       ; preds = %cond.false91, %cond.true90
  %cond93 = phi i32 [ %67, %cond.true90 ], [ %68, %cond.false91 ], !dbg !1302
  store i32 %cond93, ptr %tmp87, align 4, !dbg !1302
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y280) #16, !dbg !1303
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x279) #16, !dbg !1303
  %69 = load i32, ptr %tmp87, align 4, !dbg !1302
  store i32 %69, ptr %order, align 4, !dbg !1304
  br label %do.body94, !dbg !1305

do.body94:                                        ; preds = %cond.end92
  %70 = load i32, ptr %order, align 4, !dbg !1306
  %71 = load ptr, ptr %mm.addr, align 8, !dbg !1306
  %max_order = getelementptr inbounds %struct.drm_buddy, ptr %71, i32 0, i32 3, !dbg !1306
  %72 = load i32, ptr %max_order, align 4, !dbg !1306
  %cmp95 = icmp ugt i32 %70, %72, !dbg !1306
  %lnot = xor i1 %cmp95, true, !dbg !1306
  %lnot97 = xor i1 %lnot, true, !dbg !1306
  %lnot.ext = zext i1 %lnot97 to i32, !dbg !1306
  %conv98 = sext i32 %lnot.ext to i64, !dbg !1306
  %expval = call i64 @llvm.expect.i64(i64 %conv98, i64 0), !dbg !1306
  %tobool99 = icmp ne i64 %expval, 0, !dbg !1306
  br i1 %tobool99, label %if.then100, label %if.end108, !dbg !1309

if.then100:                                       ; preds = %do.body94
  br label %do.body101, !dbg !1306

do.body101:                                       ; preds = %if.then100
  br label %do.body102, !dbg !1310

do.body102:                                       ; preds = %do.body101
  br label %do.cond, !dbg !1312

do.cond:                                          ; preds = %do.body102
  br label %do.end, !dbg !1312

do.end:                                           ; preds = %do.cond
  br label %do.body103, !dbg !1310

do.body103:                                       ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 714, i32 0, i64 12) #16, !dbg !1314, !srcloc !1316
  br label %do.cond104, !dbg !1314

do.cond104:                                       ; preds = %do.body103
  br label %do.end105, !dbg !1314

do.end105:                                        ; preds = %do.cond104
  unreachable, !dbg !1310

do.cond106:                                       ; No predecessors!
  br label %do.end107, !dbg !1310

do.end107:                                        ; preds = %do.cond106
  br label %if.end108, !dbg !1310

if.end108:                                        ; preds = %do.end107, %do.body94
  br label %do.cond109, !dbg !1309

do.cond109:                                       ; preds = %if.end108
  br label %do.end110, !dbg !1309

do.end110:                                        ; preds = %do.cond109
  br label %do.body111, !dbg !1317

do.body111:                                       ; preds = %do.end110
  %73 = load i32, ptr %order, align 4, !dbg !1318
  %74 = load i32, ptr %min_order, align 4, !dbg !1318
  %cmp112 = icmp ult i32 %73, %74, !dbg !1318
  %lnot114 = xor i1 %cmp112, true, !dbg !1318
  %lnot116 = xor i1 %lnot114, true, !dbg !1318
  %lnot.ext117 = zext i1 %lnot116 to i32, !dbg !1318
  %conv118 = sext i32 %lnot.ext117 to i64, !dbg !1318
  %expval119 = call i64 @llvm.expect.i64(i64 %conv118, i64 0), !dbg !1318
  %tobool120 = icmp ne i64 %expval119, 0, !dbg !1318
  br i1 %tobool120, label %if.then121, label %if.end131, !dbg !1321

if.then121:                                       ; preds = %do.body111
  br label %do.body122, !dbg !1318

do.body122:                                       ; preds = %if.then121
  br label %do.body123, !dbg !1322

do.body123:                                       ; preds = %do.body122
  br label %do.cond124, !dbg !1324

do.cond124:                                       ; preds = %do.body123
  br label %do.end125, !dbg !1324

do.end125:                                        ; preds = %do.cond124
  br label %do.body126, !dbg !1322

do.body126:                                       ; preds = %do.end125
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 715, i32 0, i64 12) #16, !dbg !1326, !srcloc !1328
  br label %do.cond127, !dbg !1326

do.cond127:                                       ; preds = %do.body126
  br label %do.end128, !dbg !1326

do.end128:                                        ; preds = %do.cond127
  unreachable, !dbg !1322

do.cond129:                                       ; No predecessors!
  br label %do.end130, !dbg !1322

do.end130:                                        ; preds = %do.cond129
  br label %if.end131, !dbg !1322

if.end131:                                        ; preds = %do.end130, %do.body111
  br label %do.cond132, !dbg !1321

do.cond132:                                       ; preds = %if.end131
  br label %do.end133, !dbg !1321

do.end133:                                        ; preds = %do.cond132
  br label %do.body134, !dbg !1329

do.body134:                                       ; preds = %do.cond148, %do.end133
  %75 = load i64, ptr %flags.addr, align 8, !dbg !1330
  %and135 = and i64 %75, 1, !dbg !1333
  %tobool136 = icmp ne i64 %and135, 0, !dbg !1333
  br i1 %tobool136, label %if.then137, label %if.else, !dbg !1334

if.then137:                                       ; preds = %do.body134
  %76 = load ptr, ptr %mm.addr, align 8, !dbg !1335
  %77 = load i64, ptr %start.addr, align 8, !dbg !1336
  %78 = load i64, ptr %end.addr, align 8, !dbg !1337
  %79 = load i32, ptr %order, align 4, !dbg !1338
  %call138 = call ptr @alloc_range_bias(ptr noundef %76, i64 noundef %77, i64 noundef %78, i32 noundef %79) #19, !dbg !1339
  store ptr %call138, ptr %block, align 8, !dbg !1340
  br label %if.end140, !dbg !1341

if.else:                                          ; preds = %do.body134
  %80 = load ptr, ptr %mm.addr, align 8, !dbg !1342
  %81 = load i32, ptr %order, align 4, !dbg !1343
  %82 = load i64, ptr %flags.addr, align 8, !dbg !1344
  %call139 = call ptr @alloc_from_freelist(ptr noundef %80, i32 noundef %81, i64 noundef %82) #19, !dbg !1345
  store ptr %call139, ptr %block, align 8, !dbg !1346
  br label %if.end140

if.end140:                                        ; preds = %if.else, %if.then137
  %83 = load ptr, ptr %block, align 8, !dbg !1347
  %call141 = call zeroext i1 @IS_ERR(ptr noundef %83) #19, !dbg !1349
  br i1 %call141, label %if.end143, label %if.then142, !dbg !1350

if.then142:                                       ; preds = %if.end140
  br label %do.end149, !dbg !1351

if.end143:                                        ; preds = %if.end140
  %84 = load i32, ptr %order, align 4, !dbg !1352
  %dec = add i32 %84, -1, !dbg !1352
  store i32 %dec, ptr %order, align 4, !dbg !1352
  %85 = load i32, ptr %min_order, align 4, !dbg !1354
  %cmp144 = icmp eq i32 %84, %85, !dbg !1355
  br i1 %cmp144, label %if.then146, label %if.end147, !dbg !1356

if.then146:                                       ; preds = %if.end143
  store i32 -28, ptr %err, align 4, !dbg !1357
  br label %err_free, !dbg !1359

if.end147:                                        ; preds = %if.end143
  br label %do.cond148, !dbg !1360

do.cond148:                                       ; preds = %if.end147
  br i1 true, label %do.body134, label %do.end149, !dbg !1360, !llvm.loop !1361

do.end149:                                        ; preds = %do.cond148, %if.then142
  %86 = load ptr, ptr %block, align 8, !dbg !1363
  call void @mark_allocated(ptr noundef %86) #19, !dbg !1364
  %87 = load ptr, ptr %mm.addr, align 8, !dbg !1365
  %88 = load ptr, ptr %block, align 8, !dbg !1366
  %call150 = call i64 @drm_buddy_block_size(ptr noundef %87, ptr noundef %88) #19, !dbg !1367
  %89 = load ptr, ptr %mm.addr, align 8, !dbg !1368
  %avail = getelementptr inbounds %struct.drm_buddy, ptr %89, i32 0, i32 6, !dbg !1369
  %90 = load i64, ptr %avail, align 8, !dbg !1370
  %sub151 = sub i64 %90, %call150, !dbg !1370
  store i64 %sub151, ptr %avail, align 8, !dbg !1370
  %91 = load ptr, ptr %block, align 8, !dbg !1371
  call void @kmemleak_update_trace(ptr noundef %91) #19, !dbg !1372
  %92 = load ptr, ptr %block, align 8, !dbg !1373
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %92, i32 0, i32 5, !dbg !1374
  call void @list_add_tail(ptr noundef %link, ptr noundef %allocated) #19, !dbg !1375
  %93 = load i32, ptr %order, align 4, !dbg !1376
  %sh_prom152 = zext i32 %93 to i64, !dbg !1376
  %shl = shl i64 1, %sh_prom152, !dbg !1376
  %94 = load i64, ptr %pages, align 8, !dbg !1377
  %sub153 = sub i64 %94, %shl, !dbg !1377
  store i64 %sub153, ptr %pages, align 8, !dbg !1377
  %95 = load i64, ptr %pages, align 8, !dbg !1378
  %tobool154 = icmp ne i64 %95, 0, !dbg !1378
  br i1 %tobool154, label %if.end156, label %if.then155, !dbg !1380

if.then155:                                       ; preds = %do.end149
  br label %do.end158, !dbg !1381

if.end156:                                        ; preds = %do.end149
  br label %do.cond157, !dbg !1382

do.cond157:                                       ; preds = %if.end156
  br i1 true, label %do.body, label %do.end158, !dbg !1382, !llvm.loop !1383

do.end158:                                        ; preds = %do.cond157, %if.then155
  %96 = load ptr, ptr %blocks.addr, align 8, !dbg !1385
  call void @list_splice_tail(ptr noundef %allocated, ptr noundef %96) #19, !dbg !1386
  store i32 0, ptr %retval, align 4, !dbg !1387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1387

err_free:                                         ; preds = %if.then146
  call void @llvm.dbg.label(metadata !1220), !dbg !1388
  %97 = load ptr, ptr %mm.addr, align 8, !dbg !1389
  call void @drm_buddy_free_list(ptr noundef %97, ptr noundef %allocated) #19, !dbg !1390
  %98 = load i32, ptr %err, align 4, !dbg !1391
  store i32 %98, ptr %retval, align 4, !dbg !1392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1392

cleanup:                                          ; preds = %err_free, %do.end158, %if.then36, %if.then29, %if.then25, %if.then14, %if.then10, %if.then5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 16, ptr %allocated) #16, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #16, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #16, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_order) #16, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !1393
  %99 = load i32, ptr %retval, align 4, !dbg !1393
  ret i32 %99, !dbg !1393
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__drm_buddy_alloc_range(ptr noundef %mm, i64 noundef %start, i64 noundef %size, ptr noundef %blocks) #0 align 16 !dbg !1394 {
entry:
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %blocks.addr = alloca ptr, align 8
  %dfs = alloca %struct.list_head, align 8
  %i = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1398, metadata !DIExpression()), !dbg !1404
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1399, metadata !DIExpression()), !dbg !1405
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1400, metadata !DIExpression()), !dbg !1406
  store ptr %blocks, ptr %blocks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocks.addr, metadata !1401, metadata !DIExpression()), !dbg !1407
  call void @llvm.lifetime.start.p0(i64 16, ptr %dfs) #16, !dbg !1408
  call void @llvm.dbg.declare(metadata ptr %dfs, metadata !1402, metadata !DIExpression()), !dbg !1408
  %next = getelementptr inbounds %struct.list_head, ptr %dfs, i32 0, i32 0, !dbg !1408
  store ptr %dfs, ptr %next, align 8, !dbg !1408
  %prev = getelementptr inbounds %struct.list_head, ptr %dfs, i32 0, i32 1, !dbg !1408
  store ptr %dfs, ptr %prev, align 8, !dbg !1408
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !1409
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1403, metadata !DIExpression()), !dbg !1410
  store i32 0, ptr %i, align 4, !dbg !1411
  br label %for.cond, !dbg !1413

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1414
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !1416
  %n_roots = getelementptr inbounds %struct.drm_buddy, ptr %1, i32 0, i32 2, !dbg !1417
  %2 = load i32, ptr %n_roots, align 8, !dbg !1417
  %cmp = icmp ult i32 %0, %2, !dbg !1418
  br i1 %cmp, label %for.body, label %for.end, !dbg !1419

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !1420
  %roots = getelementptr inbounds %struct.drm_buddy, ptr %3, i32 0, i32 1, !dbg !1421
  %4 = load ptr, ptr %roots, align 8, !dbg !1421
  %5 = load i32, ptr %i, align 4, !dbg !1422
  %idxprom = sext i32 %5 to i64, !dbg !1420
  %arrayidx = getelementptr ptr, ptr %4, i64 %idxprom, !dbg !1420
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1420
  %tmp_link = getelementptr inbounds %struct.drm_buddy_block, ptr %6, i32 0, i32 6, !dbg !1423
  call void @list_add_tail(ptr noundef %tmp_link, ptr noundef %dfs) #19, !dbg !1424
  br label %for.inc, !dbg !1424

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !1425
  %inc = add i32 %7, 1, !dbg !1425
  store i32 %inc, ptr %i, align 4, !dbg !1425
  br label %for.cond, !dbg !1426, !llvm.loop !1427

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %mm.addr, align 8, !dbg !1429
  %9 = load i64, ptr %start.addr, align 8, !dbg !1430
  %10 = load i64, ptr %size.addr, align 8, !dbg !1431
  %11 = load ptr, ptr %blocks.addr, align 8, !dbg !1432
  %call = call i32 @__alloc_range(ptr noundef %8, ptr noundef %dfs, i64 noundef %9, i64 noundef %10, ptr noundef %11) #19, !dbg !1433
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 16, ptr %dfs) #16, !dbg !1434
  ret i32 %call, !dbg !1435
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #9 align 16 !dbg !1436 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1441, metadata !DIExpression()), !dbg !1443
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #16, !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %r, metadata !1442, metadata !DIExpression()), !dbg !1445
  %0 = load i32, ptr %x.addr, align 4, !dbg !1446
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #22, !dbg !1447, !srcloc !1448
  store i32 %1, ptr %r, align 4, !dbg !1447
  %2 = load i32, ptr %r, align 4, !dbg !1449
  %add = add i32 %2, 1, !dbg !1450
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #16, !dbg !1451
  ret i32 %add, !dbg !1452
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_range_bias(ptr noundef %mm, i64 noundef %start, i64 noundef %end, i32 noundef %order) #0 align 16 !dbg !1453 {
entry:
  %retval = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %req_size = alloca i64, align 8
  %block = alloca ptr, align 8
  %buddy = alloca ptr, align 8
  %dfs = alloca %struct.list_head, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %block_start = alloca i64, align 8
  %block_end = alloca i64, align 8
  %head__ = alloca ptr, align 8
  %pos__ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %adjusted_start = alloca i64, align 8
  %__UNIQUE_ID___x273 = alloca i64, align 8
  %__UNIQUE_ID___y274 = alloca i64, align 8
  %tmp22 = alloca i64, align 8
  %adjusted_end = alloca i64, align 8
  %__UNIQUE_ID___x275 = alloca i64, align 8
  %__UNIQUE_ID___y276 = alloca i64, align 8
  %tmp28 = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1457, metadata !DIExpression()), !dbg !1486
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1458, metadata !DIExpression()), !dbg !1487
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1459, metadata !DIExpression()), !dbg !1488
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !1460, metadata !DIExpression()), !dbg !1489
  call void @llvm.lifetime.start.p0(i64 8, ptr %req_size) #16, !dbg !1490
  call void @llvm.dbg.declare(metadata ptr %req_size, metadata !1461, metadata !DIExpression()), !dbg !1491
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !1492
  %chunk_size = getelementptr inbounds %struct.drm_buddy, ptr %0, i32 0, i32 4, !dbg !1493
  %1 = load i64, ptr %chunk_size, align 8, !dbg !1493
  %2 = load i32, ptr %order.addr, align 4, !dbg !1494
  %sh_prom = zext i32 %2 to i64, !dbg !1495
  %shl = shl i64 %1, %sh_prom, !dbg !1495
  store i64 %shl, ptr %req_size, align 8, !dbg !1491
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !1496
  call void @llvm.dbg.declare(metadata ptr %block, metadata !1462, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.start.p0(i64 8, ptr %buddy) #16, !dbg !1498
  call void @llvm.dbg.declare(metadata ptr %buddy, metadata !1463, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.start.p0(i64 16, ptr %dfs) #16, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %dfs, metadata !1464, metadata !DIExpression()), !dbg !1500
  %next = getelementptr inbounds %struct.list_head, ptr %dfs, i32 0, i32 0, !dbg !1500
  store ptr %dfs, ptr %next, align 8, !dbg !1500
  %prev = getelementptr inbounds %struct.list_head, ptr %dfs, i32 0, i32 1, !dbg !1500
  store ptr %dfs, ptr %prev, align 8, !dbg !1500
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !1501
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1465, metadata !DIExpression()), !dbg !1502
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !1503
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1466, metadata !DIExpression()), !dbg !1504
  %3 = load i64, ptr %end.addr, align 8, !dbg !1505
  %sub = sub i64 %3, 1, !dbg !1506
  store i64 %sub, ptr %end.addr, align 8, !dbg !1507
  store i32 0, ptr %i, align 4, !dbg !1508
  br label %for.cond, !dbg !1510

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !1511
  %5 = load ptr, ptr %mm.addr, align 8, !dbg !1513
  %n_roots = getelementptr inbounds %struct.drm_buddy, ptr %5, i32 0, i32 2, !dbg !1514
  %6 = load i32, ptr %n_roots, align 8, !dbg !1514
  %cmp = icmp ult i32 %4, %6, !dbg !1515
  br i1 %cmp, label %for.body, label %for.end, !dbg !1516

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !1517
  %roots = getelementptr inbounds %struct.drm_buddy, ptr %7, i32 0, i32 1, !dbg !1518
  %8 = load ptr, ptr %roots, align 8, !dbg !1518
  %9 = load i32, ptr %i, align 4, !dbg !1519
  %idxprom = sext i32 %9 to i64, !dbg !1517
  %arrayidx = getelementptr ptr, ptr %8, i64 %idxprom, !dbg !1517
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !1517
  %tmp_link = getelementptr inbounds %struct.drm_buddy_block, ptr %10, i32 0, i32 6, !dbg !1520
  call void @list_add_tail(ptr noundef %tmp_link, ptr noundef %dfs) #19, !dbg !1521
  br label %for.inc, !dbg !1521

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !1522
  %inc = add i32 %11, 1, !dbg !1522
  store i32 %inc, ptr %i, align 4, !dbg !1522
  br label %for.cond, !dbg !1523, !llvm.loop !1524

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !1526

do.body:                                          ; preds = %do.cond67, %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_start) #16, !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %block_start, metadata !1467, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_end) #16, !dbg !1529
  call void @llvm.dbg.declare(metadata ptr %block_end, metadata !1469, metadata !DIExpression()), !dbg !1530
  call void @llvm.lifetime.start.p0(i64 8, ptr %head__) #16, !dbg !1531
  call void @llvm.dbg.declare(metadata ptr %head__, metadata !1470, metadata !DIExpression()), !dbg !1531
  store ptr %dfs, ptr %head__, align 8, !dbg !1531
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos__) #16, !dbg !1531
  call void @llvm.dbg.declare(metadata ptr %pos__, metadata !1472, metadata !DIExpression()), !dbg !1531
  br label %do.body1, !dbg !1532

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !1534

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1534

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %head__, align 8, !dbg !1532
  %next2 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !1532
  %13 = load volatile ptr, ptr %next2, align 8, !dbg !1532
  store ptr %13, ptr %tmp, align 8, !dbg !1534
  %14 = load ptr, ptr %tmp, align 8, !dbg !1532
  store ptr %14, ptr %pos__, align 8, !dbg !1531
  %15 = load ptr, ptr %pos__, align 8, !dbg !1531
  %16 = load ptr, ptr %head__, align 8, !dbg !1531
  %cmp4 = icmp ne ptr %15, %16, !dbg !1531
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !1531

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !1536
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1473, metadata !DIExpression()), !dbg !1536
  %17 = load ptr, ptr %pos__, align 8, !dbg !1536
  store ptr %17, ptr %__mptr, align 8, !dbg !1536
  %18 = load ptr, ptr %__mptr, align 8, !dbg !1536
  %add.ptr = getelementptr i8, ptr %18, i64 -56, !dbg !1536
  store ptr %add.ptr, ptr %tmp5, align 8, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !1531
  %19 = load ptr, ptr %tmp5, align 8, !dbg !1536
  br label %cond.end, !dbg !1531

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !1531

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %19, %cond.true ], [ null, %cond.false ], !dbg !1531
  store ptr %cond, ptr %tmp3, align 8, !dbg !1531
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos__) #16, !dbg !1537
  call void @llvm.lifetime.end.p0(i64 8, ptr %head__) #16, !dbg !1537
  %20 = load ptr, ptr %tmp3, align 8, !dbg !1531
  store ptr %20, ptr %block, align 8, !dbg !1538
  %21 = load ptr, ptr %block, align 8, !dbg !1539
  %tobool = icmp ne ptr %21, null, !dbg !1539
  br i1 %tobool, label %if.end, label %if.then, !dbg !1541

if.then:                                          ; preds = %cond.end
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1542

if.end:                                           ; preds = %cond.end
  %22 = load ptr, ptr %block, align 8, !dbg !1543
  %tmp_link6 = getelementptr inbounds %struct.drm_buddy_block, ptr %22, i32 0, i32 6, !dbg !1544
  call void @list_del(ptr noundef %tmp_link6) #19, !dbg !1545
  %23 = load ptr, ptr %block, align 8, !dbg !1546
  %call = call i32 @drm_buddy_block_order(ptr noundef %23) #19, !dbg !1548
  %24 = load i32, ptr %order.addr, align 4, !dbg !1549
  %cmp7 = icmp ult i32 %call, %24, !dbg !1550
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1551

if.then8:                                         ; preds = %if.end
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1552

if.end9:                                          ; preds = %if.end
  %25 = load ptr, ptr %block, align 8, !dbg !1553
  %call10 = call i64 @drm_buddy_block_offset(ptr noundef %25) #19, !dbg !1554
  store i64 %call10, ptr %block_start, align 8, !dbg !1555
  %26 = load i64, ptr %block_start, align 8, !dbg !1556
  %27 = load ptr, ptr %mm.addr, align 8, !dbg !1557
  %28 = load ptr, ptr %block, align 8, !dbg !1558
  %call11 = call i64 @drm_buddy_block_size(ptr noundef %27, ptr noundef %28) #19, !dbg !1559
  %add = add i64 %26, %call11, !dbg !1560
  %sub12 = sub i64 %add, 1, !dbg !1561
  store i64 %sub12, ptr %block_end, align 8, !dbg !1562
  %29 = load i64, ptr %start.addr, align 8, !dbg !1563
  %30 = load i64, ptr %end.addr, align 8, !dbg !1565
  %31 = load i64, ptr %block_start, align 8, !dbg !1566
  %32 = load i64, ptr %block_end, align 8, !dbg !1567
  %call13 = call zeroext i1 @overlaps(i64 noundef %29, i64 noundef %30, i64 noundef %31, i64 noundef %32) #19, !dbg !1568
  br i1 %call13, label %if.end15, label %if.then14, !dbg !1569

if.then14:                                        ; preds = %if.end9
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1570

if.end15:                                         ; preds = %if.end9
  %33 = load ptr, ptr %block, align 8, !dbg !1571
  %call16 = call zeroext i1 @drm_buddy_block_is_allocated(ptr noundef %33) #19, !dbg !1573
  br i1 %call16, label %if.then17, label %if.end18, !dbg !1574

if.then17:                                        ; preds = %if.end15
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1575

if.end18:                                         ; preds = %if.end15
  %34 = load i64, ptr %block_start, align 8, !dbg !1576
  %35 = load i64, ptr %start.addr, align 8, !dbg !1577
  %cmp19 = icmp ult i64 %34, %35, !dbg !1578
  br i1 %cmp19, label %if.then21, label %lor.lhs.false, !dbg !1579

lor.lhs.false:                                    ; preds = %if.end18
  %36 = load i64, ptr %block_end, align 8, !dbg !1580
  %37 = load i64, ptr %end.addr, align 8, !dbg !1581
  %cmp20 = icmp ugt i64 %36, %37, !dbg !1582
  br i1 %cmp20, label %if.then21, label %if.end43, !dbg !1583

if.then21:                                        ; preds = %lor.lhs.false, %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjusted_start) #16, !dbg !1584
  call void @llvm.dbg.declare(metadata ptr %adjusted_start, metadata !1475, metadata !DIExpression()), !dbg !1585
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x273) #16, !dbg !1586
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x273, metadata !1478, metadata !DIExpression()), !dbg !1586
  %38 = load i64, ptr %block_start, align 8, !dbg !1586
  store i64 %38, ptr %__UNIQUE_ID___x273, align 8, !dbg !1586
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y274) #16, !dbg !1586
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y274, metadata !1480, metadata !DIExpression()), !dbg !1586
  %39 = load i64, ptr %start.addr, align 8, !dbg !1586
  store i64 %39, ptr %__UNIQUE_ID___y274, align 8, !dbg !1586
  %40 = load i64, ptr %__UNIQUE_ID___x273, align 8, !dbg !1586
  %41 = load i64, ptr %__UNIQUE_ID___y274, align 8, !dbg !1586
  %cmp23 = icmp ugt i64 %40, %41, !dbg !1586
  br i1 %cmp23, label %cond.true24, label %cond.false25, !dbg !1586

cond.true24:                                      ; preds = %if.then21
  %42 = load i64, ptr %__UNIQUE_ID___x273, align 8, !dbg !1586
  br label %cond.end26, !dbg !1586

cond.false25:                                     ; preds = %if.then21
  %43 = load i64, ptr %__UNIQUE_ID___y274, align 8, !dbg !1586
  br label %cond.end26, !dbg !1586

cond.end26:                                       ; preds = %cond.false25, %cond.true24
  %cond27 = phi i64 [ %42, %cond.true24 ], [ %43, %cond.false25 ], !dbg !1586
  store i64 %cond27, ptr %tmp22, align 8, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y274) #16, !dbg !1587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x273) #16, !dbg !1587
  %44 = load i64, ptr %tmp22, align 8, !dbg !1586
  store i64 %44, ptr %adjusted_start, align 8, !dbg !1585
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjusted_end) #16, !dbg !1588
  call void @llvm.dbg.declare(metadata ptr %adjusted_end, metadata !1481, metadata !DIExpression()), !dbg !1589
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x275) #16, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x275, metadata !1482, metadata !DIExpression()), !dbg !1590
  %45 = load i64, ptr %block_end, align 8, !dbg !1590
  store i64 %45, ptr %__UNIQUE_ID___x275, align 8, !dbg !1590
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y276) #16, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y276, metadata !1484, metadata !DIExpression()), !dbg !1590
  %46 = load i64, ptr %end.addr, align 8, !dbg !1590
  store i64 %46, ptr %__UNIQUE_ID___y276, align 8, !dbg !1590
  %47 = load i64, ptr %__UNIQUE_ID___x275, align 8, !dbg !1590
  %48 = load i64, ptr %__UNIQUE_ID___y276, align 8, !dbg !1590
  %cmp29 = icmp ult i64 %47, %48, !dbg !1590
  br i1 %cmp29, label %cond.true30, label %cond.false31, !dbg !1590

cond.true30:                                      ; preds = %cond.end26
  %49 = load i64, ptr %__UNIQUE_ID___x275, align 8, !dbg !1590
  br label %cond.end32, !dbg !1590

cond.false31:                                     ; preds = %cond.end26
  %50 = load i64, ptr %__UNIQUE_ID___y276, align 8, !dbg !1590
  br label %cond.end32, !dbg !1590

cond.end32:                                       ; preds = %cond.false31, %cond.true30
  %cond33 = phi i64 [ %49, %cond.true30 ], [ %50, %cond.false31 ], !dbg !1590
  store i64 %cond33, ptr %tmp28, align 8, !dbg !1590
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y276) #16, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x275) #16, !dbg !1591
  %51 = load i64, ptr %tmp28, align 8, !dbg !1590
  store i64 %51, ptr %adjusted_end, align 8, !dbg !1589
  %52 = load i64, ptr %adjusted_end, align 8, !dbg !1592
  %add34 = add i64 %52, 1, !dbg !1592
  %53 = load i64, ptr %req_size, align 8, !dbg !1592
  %sub35 = sub i64 %53, 1, !dbg !1592
  %not = xor i64 %sub35, -1, !dbg !1592
  %and = and i64 %add34, %not, !dbg !1592
  %54 = load i64, ptr %adjusted_start, align 8, !dbg !1594
  %sub36 = sub i64 %54, 1, !dbg !1594
  %55 = load i64, ptr %req_size, align 8, !dbg !1594
  %sub37 = sub i64 %55, 1, !dbg !1594
  %or = or i64 %sub36, %sub37, !dbg !1594
  %add38 = add i64 %or, 1, !dbg !1594
  %cmp39 = icmp ule i64 %and, %add38, !dbg !1595
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1596

if.then40:                                        ; preds = %cond.end32
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1597

if.end41:                                         ; preds = %cond.end32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1598
  br label %cleanup, !dbg !1598

cleanup:                                          ; preds = %if.end41, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjusted_end) #16, !dbg !1598
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjusted_start) #16, !dbg !1598
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end43, !dbg !1599

if.end43:                                         ; preds = %cleanup.cont, %lor.lhs.false
  %56 = load i64, ptr %start.addr, align 8, !dbg !1600
  %57 = load i64, ptr %end.addr, align 8, !dbg !1602
  %58 = load i64, ptr %block_start, align 8, !dbg !1603
  %59 = load i64, ptr %block_end, align 8, !dbg !1604
  %call44 = call zeroext i1 @contains(i64 noundef %56, i64 noundef %57, i64 noundef %58, i64 noundef %59) #19, !dbg !1605
  br i1 %call44, label %land.lhs.true, label %if.end51, !dbg !1606

land.lhs.true:                                    ; preds = %if.end43
  %60 = load i32, ptr %order.addr, align 4, !dbg !1607
  %61 = load ptr, ptr %block, align 8, !dbg !1608
  %call45 = call i32 @drm_buddy_block_order(ptr noundef %61) #19, !dbg !1609
  %cmp46 = icmp eq i32 %60, %call45, !dbg !1610
  br i1 %cmp46, label %if.then47, label %if.end51, !dbg !1611

if.then47:                                        ; preds = %land.lhs.true
  %62 = load ptr, ptr %block, align 8, !dbg !1612
  %call48 = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %62) #19, !dbg !1615
  br i1 %call48, label %if.then49, label %if.end50, !dbg !1616

if.then49:                                        ; preds = %if.then47
  %63 = load ptr, ptr %block, align 8, !dbg !1617
  store ptr %63, ptr %retval, align 8, !dbg !1618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1618

if.end50:                                         ; preds = %if.then47
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1619

if.end51:                                         ; preds = %land.lhs.true, %if.end43
  %64 = load ptr, ptr %block, align 8, !dbg !1620
  %call52 = call zeroext i1 @drm_buddy_block_is_split(ptr noundef %64) #19, !dbg !1622
  br i1 %call52, label %if.end60, label %if.then53, !dbg !1623

if.then53:                                        ; preds = %if.end51
  %65 = load ptr, ptr %mm.addr, align 8, !dbg !1624
  %66 = load ptr, ptr %block, align 8, !dbg !1626
  %call54 = call i32 @split_block(ptr noundef %65, ptr noundef %66) #19, !dbg !1627
  store i32 %call54, ptr %err, align 4, !dbg !1628
  %67 = load i32, ptr %err, align 4, !dbg !1629
  %tobool55 = icmp ne i32 %67, 0, !dbg !1629
  %lnot = xor i1 %tobool55, true, !dbg !1629
  %lnot56 = xor i1 %lnot, true, !dbg !1629
  %lnot.ext = zext i1 %lnot56 to i32, !dbg !1629
  %conv = sext i32 %lnot.ext to i64, !dbg !1629
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1629
  %tobool57 = icmp ne i64 %expval, 0, !dbg !1629
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !1631

if.then58:                                        ; preds = %if.then53
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1632

if.end59:                                         ; preds = %if.then53
  br label %if.end60, !dbg !1633

if.end60:                                         ; preds = %if.end59, %if.end51
  %68 = load ptr, ptr %block, align 8, !dbg !1634
  %right = getelementptr inbounds %struct.drm_buddy_block, ptr %68, i32 0, i32 2, !dbg !1635
  %69 = load ptr, ptr %right, align 8, !dbg !1635
  %tmp_link61 = getelementptr inbounds %struct.drm_buddy_block, ptr %69, i32 0, i32 6, !dbg !1636
  call void @list_add(ptr noundef %tmp_link61, ptr noundef %dfs) #19, !dbg !1637
  %70 = load ptr, ptr %block, align 8, !dbg !1638
  %left = getelementptr inbounds %struct.drm_buddy_block, ptr %70, i32 0, i32 1, !dbg !1639
  %71 = load ptr, ptr %left, align 8, !dbg !1639
  %tmp_link62 = getelementptr inbounds %struct.drm_buddy_block, ptr %71, i32 0, i32 6, !dbg !1640
  call void @list_add(ptr noundef %tmp_link62, ptr noundef %dfs) #19, !dbg !1641
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1642
  br label %cleanup63, !dbg !1642

cleanup63:                                        ; preds = %if.then58, %if.end60, %if.end50, %if.then49, %cleanup, %if.then17, %if.then14, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_end) #16, !dbg !1642
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_start) #16, !dbg !1642
  %cleanup.dest65 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest65, label %cleanup82 [
    i32 0, label %cleanup.cont66
    i32 5, label %do.end68
    i32 6, label %do.cond67
    i32 9, label %err_undo
  ]

cleanup.cont66:                                   ; preds = %cleanup63
  br label %do.cond67, !dbg !1643

do.cond67:                                        ; preds = %cleanup.cont66, %cleanup63
  br i1 true, label %do.body, label %do.end68, !dbg !1643, !llvm.loop !1644

do.end68:                                         ; preds = %do.cond67, %cleanup63
  %call69 = call ptr @ERR_PTR(i64 noundef -28) #19, !dbg !1646
  store ptr %call69, ptr %retval, align 8, !dbg !1647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82, !dbg !1647

err_undo:                                         ; preds = %cleanup63
  call void @llvm.dbg.label(metadata !1485), !dbg !1648
  %72 = load ptr, ptr %block, align 8, !dbg !1649
  %call70 = call ptr @__get_buddy(ptr noundef %72) #19, !dbg !1650
  store ptr %call70, ptr %buddy, align 8, !dbg !1651
  %73 = load ptr, ptr %buddy, align 8, !dbg !1652
  %tobool71 = icmp ne ptr %73, null, !dbg !1652
  br i1 %tobool71, label %land.lhs.true72, label %if.end79, !dbg !1654

land.lhs.true72:                                  ; preds = %err_undo
  %74 = load ptr, ptr %block, align 8, !dbg !1655
  %call73 = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %74) #19, !dbg !1656
  br i1 %call73, label %land.lhs.true75, label %if.end79, !dbg !1657

land.lhs.true75:                                  ; preds = %land.lhs.true72
  %75 = load ptr, ptr %buddy, align 8, !dbg !1658
  %call76 = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %75) #19, !dbg !1659
  br i1 %call76, label %if.then78, label %if.end79, !dbg !1660

if.then78:                                        ; preds = %land.lhs.true75
  %76 = load ptr, ptr %mm.addr, align 8, !dbg !1661
  %77 = load ptr, ptr %block, align 8, !dbg !1662
  call void @__drm_buddy_free(ptr noundef %76, ptr noundef %77) #19, !dbg !1663
  br label %if.end79, !dbg !1663

if.end79:                                         ; preds = %if.then78, %land.lhs.true75, %land.lhs.true72, %err_undo
  %78 = load i32, ptr %err, align 4, !dbg !1664
  %conv80 = sext i32 %78 to i64, !dbg !1664
  %call81 = call ptr @ERR_PTR(i64 noundef %conv80) #19, !dbg !1665
  store ptr %call81, ptr %retval, align 8, !dbg !1666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82, !dbg !1666

cleanup82:                                        ; preds = %if.end79, %do.end68, %cleanup63
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 16, ptr %dfs) #16, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 8, ptr %buddy) #16, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 8, ptr %req_size) #16, !dbg !1667
  %79 = load ptr, ptr %retval, align 8, !dbg !1667
  ret ptr %79, !dbg !1667
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_from_freelist(ptr noundef %mm, i32 noundef %order, i64 noundef %flags) #0 align 16 !dbg !1668 {
entry:
  %retval = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  %block = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %err = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1672, metadata !DIExpression()), !dbg !1688
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !1673, metadata !DIExpression()), !dbg !1689
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1674, metadata !DIExpression()), !dbg !1690
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %block, metadata !1675, metadata !DIExpression()), !dbg !1692
  store ptr null, ptr %block, align 8, !dbg !1692
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #16, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1676, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1677, metadata !DIExpression()), !dbg !1696
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1697
  %and = and i64 %0, 2, !dbg !1698
  %tobool = icmp ne i64 %and, 0, !dbg !1698
  br i1 %tobool, label %if.then, label %if.else, !dbg !1699

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !1700
  %2 = load i32, ptr %order.addr, align 4, !dbg !1702
  %call = call ptr @get_maxblock(ptr noundef %1, i32 noundef %2) #19, !dbg !1703
  store ptr %call, ptr %block, align 8, !dbg !1704
  %3 = load ptr, ptr %block, align 8, !dbg !1705
  %tobool1 = icmp ne ptr %3, null, !dbg !1705
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1707

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %block, align 8, !dbg !1708
  %call3 = call i32 @drm_buddy_block_order(ptr noundef %4) #19, !dbg !1709
  store i32 %call3, ptr %tmp, align 4, !dbg !1710
  br label %if.end, !dbg !1711

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end15, !dbg !1712

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %order.addr, align 4, !dbg !1713
  store i32 %5, ptr %tmp, align 4, !dbg !1714
  br label %for.cond, !dbg !1715

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load i32, ptr %tmp, align 4, !dbg !1716
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !1717
  %max_order = getelementptr inbounds %struct.drm_buddy, ptr %7, i32 0, i32 3, !dbg !1718
  %8 = load i32, ptr %max_order, align 4, !dbg !1718
  %cmp = icmp ule i32 %6, %8, !dbg !1719
  br i1 %cmp, label %for.body, label %for.end, !dbg !1720

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %mm.addr, align 8, !dbg !1721
  %free_list = getelementptr inbounds %struct.drm_buddy, ptr %9, i32 0, i32 0, !dbg !1722
  %10 = load ptr, ptr %free_list, align 8, !dbg !1722
  %11 = load i32, ptr %tmp, align 4, !dbg !1723
  %idxprom = zext i32 %11 to i64, !dbg !1721
  %arrayidx = getelementptr %struct.list_head, ptr %10, i64 %idxprom, !dbg !1721
  %call4 = call i32 @list_empty(ptr noundef %arrayidx) #19, !dbg !1724
  %tobool5 = icmp ne i32 %call4, 0, !dbg !1724
  br i1 %tobool5, label %if.end14, label %if.then6, !dbg !1725

if.then6:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !1726
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1678, metadata !DIExpression()), !dbg !1726
  %12 = load ptr, ptr %mm.addr, align 8, !dbg !1726
  %free_list7 = getelementptr inbounds %struct.drm_buddy, ptr %12, i32 0, i32 0, !dbg !1726
  %13 = load ptr, ptr %free_list7, align 8, !dbg !1726
  %14 = load i32, ptr %tmp, align 4, !dbg !1726
  %idxprom8 = zext i32 %14 to i64, !dbg !1726
  %arrayidx9 = getelementptr %struct.list_head, ptr %13, i64 %idxprom8, !dbg !1726
  %prev = getelementptr inbounds %struct.list_head, ptr %arrayidx9, i32 0, i32 1, !dbg !1726
  %15 = load ptr, ptr %prev, align 8, !dbg !1726
  store ptr %15, ptr %__mptr, align 8, !dbg !1726
  %16 = load ptr, ptr %__mptr, align 8, !dbg !1726
  %add.ptr = getelementptr i8, ptr %16, i64 -40, !dbg !1726
  store ptr %add.ptr, ptr %tmp10, align 8, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !1727
  %17 = load ptr, ptr %tmp10, align 8, !dbg !1726
  store ptr %17, ptr %block, align 8, !dbg !1728
  %18 = load ptr, ptr %block, align 8, !dbg !1729
  %tobool11 = icmp ne ptr %18, null, !dbg !1729
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1731

if.then12:                                        ; preds = %if.then6
  br label %for.end, !dbg !1732

if.end13:                                         ; preds = %if.then6
  br label %if.end14, !dbg !1733

if.end14:                                         ; preds = %if.end13, %for.body
  br label %for.inc, !dbg !1734

for.inc:                                          ; preds = %if.end14
  %19 = load i32, ptr %tmp, align 4, !dbg !1735
  %inc = add i32 %19, 1, !dbg !1735
  store i32 %inc, ptr %tmp, align 4, !dbg !1735
  br label %for.cond, !dbg !1736, !llvm.loop !1737

for.end:                                          ; preds = %if.then12, %for.cond
  br label %if.end15

if.end15:                                         ; preds = %for.end, %if.end
  %20 = load ptr, ptr %block, align 8, !dbg !1739
  %tobool16 = icmp ne ptr %20, null, !dbg !1739
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !1741

if.then17:                                        ; preds = %if.end15
  %call18 = call ptr @ERR_PTR(i64 noundef -28) #19, !dbg !1742
  store ptr %call18, ptr %retval, align 8, !dbg !1743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1743

if.end19:                                         ; preds = %if.end15
  br label %do.body, !dbg !1744

do.body:                                          ; preds = %if.end19
  %21 = load ptr, ptr %block, align 8, !dbg !1745
  %call20 = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %21) #19, !dbg !1745
  %lnot = xor i1 %call20, true, !dbg !1745
  %lnot21 = xor i1 %lnot, true, !dbg !1745
  %lnot22 = xor i1 %lnot21, true, !dbg !1745
  %lnot.ext = zext i1 %lnot22 to i32, !dbg !1745
  %conv = sext i32 %lnot.ext to i64, !dbg !1745
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1745
  %tobool23 = icmp ne i64 %expval, 0, !dbg !1745
  br i1 %tobool23, label %if.then24, label %if.end32, !dbg !1748

if.then24:                                        ; preds = %do.body
  br label %do.body25, !dbg !1745

do.body25:                                        ; preds = %if.then24
  br label %do.body26, !dbg !1749

do.body26:                                        ; preds = %do.body25
  br label %do.cond, !dbg !1751

do.cond:                                          ; preds = %do.body26
  br label %do.end, !dbg !1751

do.end:                                           ; preds = %do.cond
  br label %do.body27, !dbg !1749

do.body27:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 472, i32 0, i64 12) #16, !dbg !1753, !srcloc !1755
  br label %do.cond28, !dbg !1753

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !1753

do.end29:                                         ; preds = %do.cond28
  unreachable, !dbg !1749

do.cond30:                                        ; No predecessors!
  br label %do.end31, !dbg !1749

do.end31:                                         ; preds = %do.cond30
  br label %if.end32, !dbg !1749

if.end32:                                         ; preds = %do.end31, %do.body
  br label %do.cond33, !dbg !1748

do.cond33:                                        ; preds = %if.end32
  br label %do.end34, !dbg !1748

do.end34:                                         ; preds = %do.cond33
  br label %while.cond, !dbg !1756

while.cond:                                       ; preds = %if.end47, %do.end34
  %22 = load i32, ptr %tmp, align 4, !dbg !1757
  %23 = load i32, ptr %order.addr, align 4, !dbg !1758
  %cmp35 = icmp ne i32 %22, %23, !dbg !1759
  br i1 %cmp35, label %while.body, label %while.end, !dbg !1756

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr %mm.addr, align 8, !dbg !1760
  %25 = load ptr, ptr %block, align 8, !dbg !1762
  %call37 = call i32 @split_block(ptr noundef %24, ptr noundef %25) #19, !dbg !1763
  store i32 %call37, ptr %err, align 4, !dbg !1764
  %26 = load i32, ptr %err, align 4, !dbg !1765
  %tobool38 = icmp ne i32 %26, 0, !dbg !1765
  %lnot39 = xor i1 %tobool38, true, !dbg !1765
  %lnot41 = xor i1 %lnot39, true, !dbg !1765
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !1765
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !1765
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !1765
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !1765
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !1767

if.then46:                                        ; preds = %while.body
  br label %err_undo, !dbg !1768

if.end47:                                         ; preds = %while.body
  %27 = load ptr, ptr %block, align 8, !dbg !1769
  %right = getelementptr inbounds %struct.drm_buddy_block, ptr %27, i32 0, i32 2, !dbg !1770
  %28 = load ptr, ptr %right, align 8, !dbg !1770
  store ptr %28, ptr %block, align 8, !dbg !1771
  %29 = load i32, ptr %tmp, align 4, !dbg !1772
  %dec = add i32 %29, -1, !dbg !1772
  store i32 %dec, ptr %tmp, align 4, !dbg !1772
  br label %while.cond, !dbg !1756, !llvm.loop !1773

while.end:                                        ; preds = %while.cond
  %30 = load ptr, ptr %block, align 8, !dbg !1775
  store ptr %30, ptr %retval, align 8, !dbg !1776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1776

err_undo:                                         ; preds = %if.then46
  call void @llvm.dbg.label(metadata !1687), !dbg !1777
  %31 = load i32, ptr %tmp, align 4, !dbg !1778
  %32 = load i32, ptr %order.addr, align 4, !dbg !1780
  %cmp48 = icmp ne i32 %31, %32, !dbg !1781
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1782

if.then50:                                        ; preds = %err_undo
  %33 = load ptr, ptr %mm.addr, align 8, !dbg !1783
  %34 = load ptr, ptr %block, align 8, !dbg !1784
  call void @__drm_buddy_free(ptr noundef %33, ptr noundef %34) #19, !dbg !1785
  br label %if.end51, !dbg !1785

if.end51:                                         ; preds = %if.then50, %err_undo
  %35 = load i32, ptr %err, align 4, !dbg !1786
  %conv52 = sext i32 %35 to i64, !dbg !1786
  %call53 = call ptr @ERR_PTR(i64 noundef %conv52) #19, !dbg !1787
  store ptr %call53, ptr %retval, align 8, !dbg !1788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1788

cleanup:                                          ; preds = %if.end51, %while.end, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !1789
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #16, !dbg !1789
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !1789
  %36 = load ptr, ptr %retval, align 8, !dbg !1789
  ret ptr %36, !dbg !1789
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #8 align 16 !dbg !1790 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1795, metadata !DIExpression()), !dbg !1796
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1797
  %1 = ptrtoint ptr %0 to i64, !dbg !1797
  %2 = inttoptr i64 %1 to ptr, !dbg !1797
  %3 = ptrtoint ptr %2 to i64, !dbg !1797
  %cmp = icmp uge i64 %3, -4095, !dbg !1797
  %lnot = xor i1 %cmp, true, !dbg !1797
  %lnot1 = xor i1 %lnot, true, !dbg !1797
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1797
  %conv = sext i32 %lnot.ext to i64, !dbg !1797
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1797
  %tobool = icmp ne i64 %expval, 0, !dbg !1797
  ret i1 %tobool, !dbg !1798
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmemleak_update_trace(ptr noundef %ptr) #8 align 16 !dbg !1799 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1802, metadata !DIExpression()), !dbg !1803
  ret void, !dbg !1804
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #8 align 16 !dbg !1805 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1807, metadata !DIExpression()), !dbg !1809
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1808, metadata !DIExpression()), !dbg !1810
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1811
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1812
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1813
  %2 = load ptr, ptr %prev, align 8, !dbg !1813
  %3 = load ptr, ptr %head.addr, align 8, !dbg !1814
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #19, !dbg !1815
  ret void, !dbg !1816
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice_tail(ptr noundef %list, ptr noundef %head) #8 align 16 !dbg !1817 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1819, metadata !DIExpression()), !dbg !1821
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1820, metadata !DIExpression()), !dbg !1822
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1823
  %call = call i32 @list_empty(ptr noundef %0) #19, !dbg !1825
  %tobool = icmp ne i32 %call, 0, !dbg !1825
  br i1 %tobool, label %if.end, label %if.then, !dbg !1826

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1827
  %2 = load ptr, ptr %head.addr, align 8, !dbg !1828
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !1829
  %3 = load ptr, ptr %prev, align 8, !dbg !1829
  %4 = load ptr, ptr %head.addr, align 8, !dbg !1830
  call void @__list_splice(ptr noundef %1, ptr noundef %3, ptr noundef %4) #19, !dbg !1831
  br label %if.end, !dbg !1831

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1832
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_buddy_block_print(ptr noundef %mm, ptr noundef %block, ptr noundef %p) #0 align 16 !dbg !1833 {
entry:
  %mm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1870, metadata !DIExpression()), !dbg !1875
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !1871, metadata !DIExpression()), !dbg !1876
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1872, metadata !DIExpression()), !dbg !1877
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !1878
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1873, metadata !DIExpression()), !dbg !1879
  %0 = load ptr, ptr %block.addr, align 8, !dbg !1880
  %call = call i64 @drm_buddy_block_offset(ptr noundef %0) #19, !dbg !1881
  store i64 %call, ptr %start, align 8, !dbg !1879
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !1882
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1874, metadata !DIExpression()), !dbg !1883
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !1884
  %2 = load ptr, ptr %block.addr, align 8, !dbg !1885
  %call1 = call i64 @drm_buddy_block_size(ptr noundef %1, ptr noundef %2) #19, !dbg !1886
  store i64 %call1, ptr %size, align 8, !dbg !1883
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1887
  %4 = load i64, ptr %start, align 8, !dbg !1888
  %5 = load i64, ptr %start, align 8, !dbg !1889
  %6 = load i64, ptr %size, align 8, !dbg !1890
  %add = add i64 %5, %6, !dbg !1891
  %7 = load i64, ptr %size, align 8, !dbg !1892
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %3, ptr noundef @.str.1, i64 noundef %4, i64 noundef %add, i64 noundef %7) #19, !dbg !1893
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !1894
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !1894
  ret void, !dbg !1894
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1895 dso_local void @drm_printf(ptr noundef, ptr noundef, ...) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_buddy_print(ptr noundef %mm, ptr noundef %p) #0 align 16 !dbg !1898 {
entry:
  %mm.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %order = alloca i32, align 4
  %block = alloca ptr, align 8
  %count = alloca i64, align 8
  %free = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr21 = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1902, metadata !DIExpression()), !dbg !1917
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1903, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #16, !dbg !1919
  call void @llvm.dbg.declare(metadata ptr %order, metadata !1904, metadata !DIExpression()), !dbg !1920
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1921
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !1922
  %chunk_size = getelementptr inbounds %struct.drm_buddy, ptr %1, i32 0, i32 4, !dbg !1923
  %2 = load i64, ptr %chunk_size, align 8, !dbg !1923
  %shr = lshr i64 %2, 10, !dbg !1924
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !1925
  %size = getelementptr inbounds %struct.drm_buddy, ptr %3, i32 0, i32 5, !dbg !1926
  %4 = load i64, ptr %size, align 8, !dbg !1926
  %shr1 = lshr i64 %4, 20, !dbg !1927
  %5 = load ptr, ptr %mm.addr, align 8, !dbg !1928
  %avail = getelementptr inbounds %struct.drm_buddy, ptr %5, i32 0, i32 6, !dbg !1929
  %6 = load i64, ptr %avail, align 8, !dbg !1929
  %shr2 = lshr i64 %6, 20, !dbg !1930
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef @.str.2, i64 noundef %shr, i64 noundef %shr1, i64 noundef %shr2) #19, !dbg !1931
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !1932
  %max_order = getelementptr inbounds %struct.drm_buddy, ptr %7, i32 0, i32 3, !dbg !1933
  %8 = load i32, ptr %max_order, align 4, !dbg !1933
  store i32 %8, ptr %order, align 4, !dbg !1934
  br label %for.cond, !dbg !1935

for.cond:                                         ; preds = %for.inc33, %entry
  %9 = load i32, ptr %order, align 4, !dbg !1936
  %cmp = icmp sge i32 %9, 0, !dbg !1937
  br i1 %cmp, label %for.body, label %for.end34, !dbg !1938

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #16, !dbg !1939
  call void @llvm.dbg.declare(metadata ptr %block, metadata !1905, metadata !DIExpression()), !dbg !1940
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #16, !dbg !1941
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1909, metadata !DIExpression()), !dbg !1942
  store i64 0, ptr %count, align 8, !dbg !1942
  call void @llvm.lifetime.start.p0(i64 8, ptr %free) #16, !dbg !1941
  call void @llvm.dbg.declare(metadata ptr %free, metadata !1910, metadata !DIExpression()), !dbg !1943
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !1944
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1911, metadata !DIExpression()), !dbg !1944
  %10 = load ptr, ptr %mm.addr, align 8, !dbg !1944
  %free_list = getelementptr inbounds %struct.drm_buddy, ptr %10, i32 0, i32 0, !dbg !1944
  %11 = load ptr, ptr %free_list, align 8, !dbg !1944
  %12 = load i32, ptr %order, align 4, !dbg !1944
  %idxprom = sext i32 %12 to i64, !dbg !1944
  %arrayidx = getelementptr %struct.list_head, ptr %11, i64 %idxprom, !dbg !1944
  %next = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 0, !dbg !1944
  %13 = load ptr, ptr %next, align 8, !dbg !1944
  store ptr %13, ptr %__mptr, align 8, !dbg !1944
  %14 = load ptr, ptr %__mptr, align 8, !dbg !1944
  %add.ptr = getelementptr i8, ptr %14, i64 -40, !dbg !1944
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1944
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !1945
  %15 = load ptr, ptr %tmp, align 8, !dbg !1944
  store ptr %15, ptr %block, align 8, !dbg !1945
  br label %for.cond3, !dbg !1945

for.cond3:                                        ; preds = %for.inc, %for.body
  %16 = load ptr, ptr %block, align 8, !dbg !1946
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %16, i32 0, i32 5, !dbg !1946
  %17 = load ptr, ptr %mm.addr, align 8, !dbg !1946
  %free_list4 = getelementptr inbounds %struct.drm_buddy, ptr %17, i32 0, i32 0, !dbg !1946
  %18 = load ptr, ptr %free_list4, align 8, !dbg !1946
  %19 = load i32, ptr %order, align 4, !dbg !1946
  %idxprom5 = sext i32 %19 to i64, !dbg !1946
  %arrayidx6 = getelementptr %struct.list_head, ptr %18, i64 %idxprom5, !dbg !1946
  %cmp7 = icmp eq ptr %link, %arrayidx6, !dbg !1946
  %lnot = xor i1 %cmp7, true, !dbg !1946
  br i1 %lnot, label %for.body8, label %for.end, !dbg !1945

for.body8:                                        ; preds = %for.cond3
  br label %do.body, !dbg !1947

do.body:                                          ; preds = %for.body8
  %20 = load ptr, ptr %block, align 8, !dbg !1949
  %call = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %20) #19, !dbg !1949
  %lnot9 = xor i1 %call, true, !dbg !1949
  %lnot10 = xor i1 %lnot9, true, !dbg !1949
  %lnot11 = xor i1 %lnot10, true, !dbg !1949
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !1949
  %conv = sext i32 %lnot.ext to i64, !dbg !1949
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1949
  %tobool = icmp ne i64 %expval, 0, !dbg !1949
  br i1 %tobool, label %if.then, label %if.end, !dbg !1952

if.then:                                          ; preds = %do.body
  br label %do.body12, !dbg !1949

do.body12:                                        ; preds = %if.then
  br label %do.body13, !dbg !1953

do.body13:                                        ; preds = %do.body12
  br label %do.cond, !dbg !1955

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !1955

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !1953

do.body14:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 790, i32 0, i64 12) #16, !dbg !1957, !srcloc !1959
  br label %do.cond15, !dbg !1957

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1957

do.end16:                                         ; preds = %do.cond15
  unreachable, !dbg !1953

do.cond17:                                        ; No predecessors!
  br label %do.end18, !dbg !1953

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !1953

if.end:                                           ; preds = %do.end18, %do.body
  br label %do.cond19, !dbg !1952

do.cond19:                                        ; preds = %if.end
  br label %do.end20, !dbg !1952

do.end20:                                         ; preds = %do.cond19
  %21 = load i64, ptr %count, align 8, !dbg !1960
  %inc = add i64 %21, 1, !dbg !1960
  store i64 %inc, ptr %count, align 8, !dbg !1960
  br label %for.inc, !dbg !1961

for.inc:                                          ; preds = %do.end20
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr21) #16, !dbg !1962
  call void @llvm.dbg.declare(metadata ptr %__mptr21, metadata !1914, metadata !DIExpression()), !dbg !1962
  %22 = load ptr, ptr %block, align 8, !dbg !1962
  %link22 = getelementptr inbounds %struct.drm_buddy_block, ptr %22, i32 0, i32 5, !dbg !1962
  %next23 = getelementptr inbounds %struct.list_head, ptr %link22, i32 0, i32 0, !dbg !1962
  %23 = load ptr, ptr %next23, align 8, !dbg !1962
  store ptr %23, ptr %__mptr21, align 8, !dbg !1962
  %24 = load ptr, ptr %__mptr21, align 8, !dbg !1962
  %add.ptr25 = getelementptr i8, ptr %24, i64 -40, !dbg !1962
  store ptr %add.ptr25, ptr %tmp24, align 8, !dbg !1962
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr21) #16, !dbg !1946
  %25 = load ptr, ptr %tmp24, align 8, !dbg !1962
  store ptr %25, ptr %block, align 8, !dbg !1946
  br label %for.cond3, !dbg !1946, !llvm.loop !1963

for.end:                                          ; preds = %for.cond3
  %26 = load ptr, ptr %p.addr, align 8, !dbg !1965
  %27 = load i32, ptr %order, align 4, !dbg !1966
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %26, ptr noundef @.str.3, i32 noundef %27) #19, !dbg !1967
  %28 = load i64, ptr %count, align 8, !dbg !1968
  %29 = load ptr, ptr %mm.addr, align 8, !dbg !1969
  %chunk_size26 = getelementptr inbounds %struct.drm_buddy, ptr %29, i32 0, i32 4, !dbg !1970
  %30 = load i64, ptr %chunk_size26, align 8, !dbg !1970
  %31 = load i32, ptr %order, align 4, !dbg !1971
  %sh_prom = zext i32 %31 to i64, !dbg !1972
  %shl = shl i64 %30, %sh_prom, !dbg !1972
  %mul = mul i64 %28, %shl, !dbg !1973
  store i64 %mul, ptr %free, align 8, !dbg !1974
  %32 = load i64, ptr %free, align 8, !dbg !1975
  %cmp27 = icmp ult i64 %32, 1048576, !dbg !1977
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !1978

if.then29:                                        ; preds = %for.end
  %33 = load ptr, ptr %p.addr, align 8, !dbg !1979
  %34 = load i64, ptr %free, align 8, !dbg !1980
  %shr30 = lshr i64 %34, 10, !dbg !1981
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %33, ptr noundef @.str.4, i64 noundef %shr30) #19, !dbg !1982
  br label %if.end32, !dbg !1982

if.else:                                          ; preds = %for.end
  %35 = load ptr, ptr %p.addr, align 8, !dbg !1983
  %36 = load i64, ptr %free, align 8, !dbg !1984
  %shr31 = lshr i64 %36, 20, !dbg !1985
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %35, ptr noundef @.str.5, i64 noundef %shr31) #19, !dbg !1986
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then29
  %37 = load ptr, ptr %p.addr, align 8, !dbg !1987
  %38 = load i64, ptr %count, align 8, !dbg !1988
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %37, ptr noundef @.str.6, i64 noundef %38) #19, !dbg !1989
  call void @llvm.lifetime.end.p0(i64 8, ptr %free) #16, !dbg !1990
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #16, !dbg !1990
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #16, !dbg !1990
  br label %for.inc33, !dbg !1991

for.inc33:                                        ; preds = %if.end32
  %39 = load i32, ptr %order, align 4, !dbg !1992
  %dec = add i32 %39, -1, !dbg !1992
  store i32 %dec, ptr %order, align 4, !dbg !1992
  br label %for.cond, !dbg !1993, !llvm.loop !1994

for.end34:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #16, !dbg !1996
  ret void, !dbg !1996
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_drm_buddy__284_821_drm_buddy_module_init6() #11 section ".init.text" align 16 !dbg !1997 {
entry:
  %call = call i32 @drm_buddy_module_init() #23, !dbg !1998
  ret i32 %call, !dbg !1998
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @drm_buddy_module_init() #11 section ".init.text" align 16 !dbg !1999 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @kmem_cache_create(ptr noundef @.str.8, i32 noundef 72, i32 noundef 8, i32 noundef 0, ptr noundef null) #19, !dbg !2000
  store ptr %call, ptr @slab_blocks, align 8, !dbg !2001
  %0 = load ptr, ptr @slab_blocks, align 8, !dbg !2002
  %tobool = icmp ne ptr %0, null, !dbg !2002
  br i1 %tobool, label %if.end, label %if.then, !dbg !2004

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2005
  br label %return, !dbg !2005

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2006
  br label %return, !dbg !2006

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !2007
  ret i32 %1, !dbg !2007
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_buddy_module_exit() #0 align 16 !dbg !2008 {
entry:
  %0 = load ptr, ptr @slab_blocks, align 8, !dbg !2009
  call void @kmem_cache_destroy(ptr noundef %0) #19, !dbg !2010
  ret void, !dbg !2011
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #9 align 16 !dbg !2012 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2016, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #16, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !2017, metadata !DIExpression()), !dbg !2020
  store i32 -1, ptr %bitpos, align 4, !dbg !2020
  %0 = load i32, ptr %bitpos, align 4, !dbg !2021
  %1 = load i64, ptr %x.addr, align 8, !dbg !2022
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #22, !dbg !2021, !srcloc !2023
  store i32 %2, ptr %bitpos, align 4, !dbg !2021
  %3 = load i32, ptr %bitpos, align 4, !dbg !2024
  %add = add i32 %3, 1, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #16, !dbg !2026
  ret i32 %add, !dbg !2027
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #8 align 16 !dbg !2028 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2033, metadata !DIExpression()), !dbg !2034
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2035, !range !2036, !noundef !2037
  %tobool = trunc i8 %0 to i1, !dbg !2035
  %lnot = xor i1 %tobool, true, !dbg !2035
  %lnot1 = xor i1 %lnot, true, !dbg !2035
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2035
  %conv = sext i32 %lnot.ext to i64, !dbg !2035
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2035
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2035
  ret i1 %tobool2, !dbg !2038
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !2039 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2043, metadata !DIExpression()), !dbg !2048
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2044, metadata !DIExpression()), !dbg !2049
  %0 = load i64, ptr %size.addr, align 8, !dbg !2050
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2051
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2052

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2053
  %tobool = icmp ne i64 %2, 0, !dbg !2053
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2054

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !2055
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2045, metadata !DIExpression()), !dbg !2056
  %3 = load i64, ptr %size.addr, align 8, !dbg !2057
  %cmp = icmp ugt i64 %3, 8192, !dbg !2059
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2060

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2061
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2062
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !2063
  store ptr %call, ptr %retval, align 8, !dbg !2064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2064

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2065
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !2065
  store i32 %call2, ptr %index, align 4, !dbg !2066
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2067
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2068
  %9 = ptrtoint ptr %8 to i64, !dbg !2068
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !2069
  %idxprom = zext i32 %call3 to i64, !dbg !2070
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2070
  %10 = load i32, ptr %index, align 4, !dbg !2071
  %idxprom4 = zext i32 %10 to i64, !dbg !2070
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2070
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2070
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2072
  %13 = load i64, ptr %size.addr, align 8, !dbg !2073
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !2074
  store ptr %call6, ptr %retval, align 8, !dbg !2075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2075

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !2076
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2077
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2078
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !2079
  store ptr %call8, ptr %retval, align 8, !dbg !2080
  br label %return, !dbg !2080

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2081
  ret ptr %16, !dbg !2081
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2082 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2083 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !2084 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2088, metadata !DIExpression()), !dbg !2090
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2089, metadata !DIExpression()), !dbg !2091
  %0 = load i64, ptr %size.addr, align 8, !dbg !2092
  %tobool = icmp ne i64 %0, 0, !dbg !2092
  br i1 %tobool, label %if.end, label %if.then, !dbg !2094

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2095
  br label %return, !dbg !2095

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2096
  %cmp = icmp ule i64 %1, 8, !dbg !2098
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2099

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2100
  br label %return, !dbg !2100

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2101
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2103
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2104

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2105
  %cmp4 = icmp ule i64 %3, 96, !dbg !2106
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2107

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2108
  br label %return, !dbg !2108

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2109
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2111
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2112

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2113
  %cmp9 = icmp ule i64 %5, 192, !dbg !2114
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2115

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2116
  br label %return, !dbg !2116

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2117
  %cmp12 = icmp ule i64 %6, 8, !dbg !2119
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2120

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2121
  br label %return, !dbg !2121

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2122
  %cmp15 = icmp ule i64 %7, 16, !dbg !2124
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2125

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2126
  br label %return, !dbg !2126

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2127
  %cmp18 = icmp ule i64 %8, 32, !dbg !2129
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2130

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2131
  br label %return, !dbg !2131

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2132
  %cmp21 = icmp ule i64 %9, 64, !dbg !2134
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2135

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2136
  br label %return, !dbg !2136

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2137
  %cmp24 = icmp ule i64 %10, 128, !dbg !2139
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2140

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2141
  br label %return, !dbg !2141

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2142
  %cmp27 = icmp ule i64 %11, 256, !dbg !2144
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2145

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2146
  br label %return, !dbg !2146

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2147
  %cmp30 = icmp ule i64 %12, 512, !dbg !2149
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2150

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2151
  br label %return, !dbg !2151

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2152
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2154
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2155

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2156
  br label %return, !dbg !2156

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2157
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2159
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2160

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2161
  br label %return, !dbg !2161

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2162
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2164
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2165

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2166
  br label %return, !dbg !2166

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2167
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2169
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2170

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2171
  br label %return, !dbg !2171

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2172
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2174
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2175

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2176
  br label %return, !dbg !2176

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2177
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2179
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2180

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2181
  br label %return, !dbg !2181

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2182
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2184
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2185

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2186
  br label %return, !dbg !2186

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2187
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2189
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2190

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2191
  br label %return, !dbg !2191

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2192
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2194
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2195

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2196
  br label %return, !dbg !2196

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2197
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2199
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2200

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2201
  br label %return, !dbg !2201

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2202
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2204
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2205

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2206
  br label %return, !dbg !2206

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2207
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2209
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2210

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2211
  br label %return, !dbg !2211

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2212, !range !2036, !noundef !2037
  %tobool69 = trunc i8 %25 to i1, !dbg !2212
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2214

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2215

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #25, !dbg !2216, !srcloc !2219
  unreachable, !dbg !2216

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2220

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2221

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2222

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2224

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2222

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 480, i32 0, i64 12) #16, !dbg !2226, !srcloc !2228
  br label %do.end75, !dbg !2226

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2222

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2229
  br label %return, !dbg !2229

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2230
  ret i32 %26, !dbg !2230
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2231 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !2234 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2238, metadata !DIExpression()), !dbg !2240
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2239, metadata !DIExpression()), !dbg !2241
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2242
  %and = and i32 %0, 17, !dbg !2242
  %cmp = icmp eq i32 %and, 0, !dbg !2242
  %lnot = xor i1 %cmp, true, !dbg !2242
  %lnot1 = xor i1 %lnot, true, !dbg !2242
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2242
  %conv = sext i32 %lnot.ext to i64, !dbg !2242
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2242
  %tobool = icmp ne i64 %expval, 0, !dbg !2242
  br i1 %tobool, label %if.then, label %if.end, !dbg !2244

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2245
  br label %return, !dbg !2245

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2246
  %and2 = and i32 %1, 1, !dbg !2248
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2248
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2249

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2250
  br label %return, !dbg !2250

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2251
  br label %return, !dbg !2251

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2253
  ret i32 %2, !dbg !2253
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2254 dso_local void @__compiletime_assert_117() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #8 align 16 !dbg !2255 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !2259, metadata !DIExpression()), !dbg !2261
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2260, metadata !DIExpression()), !dbg !2262
  %0 = load ptr, ptr %k.addr, align 8, !dbg !2263
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2264
  %or = or i32 %1, 256, !dbg !2265
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #19, !dbg !2266
  ret ptr %call, !dbg !2267
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2268 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_insert_sorted(ptr noundef %mm, ptr noundef %block) #0 align 16 !dbg !2269 {
entry:
  %mm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %head = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !2271, metadata !DIExpression()), !dbg !2281
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !2272, metadata !DIExpression()), !dbg !2282
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !2283
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2273, metadata !DIExpression()), !dbg !2284
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #16, !dbg !2285
  call void @llvm.dbg.declare(metadata ptr %head, metadata !2274, metadata !DIExpression()), !dbg !2286
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !2287
  %free_list = getelementptr inbounds %struct.drm_buddy, ptr %0, i32 0, i32 0, !dbg !2288
  %1 = load ptr, ptr %free_list, align 8, !dbg !2288
  %2 = load ptr, ptr %block.addr, align 8, !dbg !2289
  %call = call i32 @drm_buddy_block_order(ptr noundef %2) #19, !dbg !2290
  %idxprom = zext i32 %call to i64, !dbg !2287
  %arrayidx = getelementptr %struct.list_head, ptr %1, i64 %idxprom, !dbg !2287
  store ptr %arrayidx, ptr %head, align 8, !dbg !2291
  %3 = load ptr, ptr %head, align 8, !dbg !2292
  %call1 = call i32 @list_empty(ptr noundef %3) #19, !dbg !2294
  %tobool = icmp ne i32 %call1, 0, !dbg !2294
  br i1 %tobool, label %if.then, label %if.end, !dbg !2295

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %block.addr, align 8, !dbg !2296
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %4, i32 0, i32 5, !dbg !2298
  %5 = load ptr, ptr %head, align 8, !dbg !2299
  call void @list_add(ptr noundef %link, ptr noundef %5) #19, !dbg !2300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2301

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2302
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2275, metadata !DIExpression()), !dbg !2302
  %6 = load ptr, ptr %head, align 8, !dbg !2302
  %next = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !2302
  %7 = load ptr, ptr %next, align 8, !dbg !2302
  store ptr %7, ptr %__mptr, align 8, !dbg !2302
  %8 = load ptr, ptr %__mptr, align 8, !dbg !2302
  %add.ptr = getelementptr i8, ptr %8, i64 -40, !dbg !2302
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2302
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2303
  %9 = load ptr, ptr %tmp, align 8, !dbg !2302
  store ptr %9, ptr %node, align 8, !dbg !2303
  br label %for.cond, !dbg !2303

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load ptr, ptr %node, align 8, !dbg !2304
  %link2 = getelementptr inbounds %struct.drm_buddy_block, ptr %10, i32 0, i32 5, !dbg !2304
  %11 = load ptr, ptr %head, align 8, !dbg !2304
  %cmp = icmp eq ptr %link2, %11, !dbg !2304
  %lnot = xor i1 %cmp, true, !dbg !2304
  br i1 %lnot, label %for.body, label %for.end, !dbg !2303

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %block.addr, align 8, !dbg !2305
  %call3 = call i64 @drm_buddy_block_offset(ptr noundef %12) #19, !dbg !2307
  %13 = load ptr, ptr %node, align 8, !dbg !2308
  %call4 = call i64 @drm_buddy_block_offset(ptr noundef %13) #19, !dbg !2309
  %cmp5 = icmp ult i64 %call3, %call4, !dbg !2310
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2311

if.then6:                                         ; preds = %for.body
  br label %for.end, !dbg !2312

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !2313

for.inc:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #16, !dbg !2314
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !2278, metadata !DIExpression()), !dbg !2314
  %14 = load ptr, ptr %node, align 8, !dbg !2314
  %link9 = getelementptr inbounds %struct.drm_buddy_block, ptr %14, i32 0, i32 5, !dbg !2314
  %next10 = getelementptr inbounds %struct.list_head, ptr %link9, i32 0, i32 0, !dbg !2314
  %15 = load ptr, ptr %next10, align 8, !dbg !2314
  store ptr %15, ptr %__mptr8, align 8, !dbg !2314
  %16 = load ptr, ptr %__mptr8, align 8, !dbg !2314
  %add.ptr12 = getelementptr i8, ptr %16, i64 -40, !dbg !2314
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !2314
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #16, !dbg !2304
  %17 = load ptr, ptr %tmp11, align 8, !dbg !2314
  store ptr %17, ptr %node, align 8, !dbg !2304
  br label %for.cond, !dbg !2304, !llvm.loop !2315

for.end:                                          ; preds = %if.then6, %for.cond
  %18 = load ptr, ptr %block.addr, align 8, !dbg !2317
  %link13 = getelementptr inbounds %struct.drm_buddy_block, ptr %18, i32 0, i32 5, !dbg !2318
  %19 = load ptr, ptr %node, align 8, !dbg !2319
  %link14 = getelementptr inbounds %struct.drm_buddy_block, ptr %19, i32 0, i32 5, !dbg !2320
  %prev = getelementptr inbounds %struct.list_head, ptr %link14, i32 0, i32 1, !dbg !2321
  %20 = load ptr, ptr %prev, align 8, !dbg !2321
  %21 = load ptr, ptr %node, align 8, !dbg !2322
  %link15 = getelementptr inbounds %struct.drm_buddy_block, ptr %21, i32 0, i32 5, !dbg !2323
  call void @__list_add(ptr noundef %link13, ptr noundef %20, ptr noundef %link15) #19, !dbg !2324
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2325
  br label %cleanup, !dbg !2325

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #16, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !2325
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2325

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_buddy_block_order(ptr noundef %block) #8 align 16 !dbg !2326 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !2330, metadata !DIExpression()), !dbg !2331
  %0 = load ptr, ptr %block.addr, align 8, !dbg !2332
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 0, !dbg !2333
  %1 = load i64, ptr %header, align 8, !dbg !2333
  %and = and i64 %1, 63, !dbg !2334
  %conv = trunc i64 %and to i32, !dbg !2332
  ret i32 %conv, !dbg !2335
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #8 align 16 !dbg !2336 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2338, metadata !DIExpression()), !dbg !2339
  br label %do.body, !dbg !2340

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2342

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !2340
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !2340
  %1 = load volatile ptr, ptr %next, align 8, !dbg !2340
  store ptr %1, ptr %tmp, align 8, !dbg !2342
  %2 = load ptr, ptr %tmp, align 8, !dbg !2340
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2344
  %cmp = icmp eq ptr %2, %3, !dbg !2345
  %conv = zext i1 %cmp to i32, !dbg !2345
  ret i32 %conv, !dbg !2346
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !2347 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2351, metadata !DIExpression()), !dbg !2354
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2352, metadata !DIExpression()), !dbg !2355
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2353, metadata !DIExpression()), !dbg !2356
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2357
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !2359
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2360
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !dbg !2361
  br i1 %call, label %if.end, label %if.then, !dbg !2362

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2363

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !2364
  %4 = load ptr, ptr %next.addr, align 8, !dbg !2365
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !2366
  store ptr %3, ptr %prev1, align 8, !dbg !2367
  %5 = load ptr, ptr %next.addr, align 8, !dbg !2368
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2369
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !2370
  store ptr %5, ptr %next2, align 8, !dbg !2371
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !2372
  %8 = load ptr, ptr %new.addr, align 8, !dbg !2373
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !2374
  store ptr %7, ptr %prev3, align 8, !dbg !2375
  br label %do.body, !dbg !2376

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2377

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2379

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2377

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !2381
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !2381
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !2381
  store volatile ptr %9, ptr %next6, align 8, !dbg !2381
  br label %do.end7, !dbg !2381

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2377

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2383
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !2384 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2388, metadata !DIExpression()), !dbg !2391
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2389, metadata !DIExpression()), !dbg !2392
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2390, metadata !DIExpression()), !dbg !2393
  ret i1 true, !dbg !2394
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2395 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_buddy_block_state(ptr noundef %block) #8 align 16 !dbg !2398 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !2400, metadata !DIExpression()), !dbg !2401
  %0 = load ptr, ptr %block.addr, align 8, !dbg !2402
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 0, !dbg !2403
  %1 = load i64, ptr %header, align 8, !dbg !2403
  %and = and i64 %1, 3072, !dbg !2404
  %conv = trunc i64 %and to i32, !dbg !2402
  ret i32 %conv, !dbg !2405
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #8 align 16 !dbg !2406 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2408, metadata !DIExpression()), !dbg !2409
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2410
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #19, !dbg !2412
  br i1 %call, label %if.end, label %if.then, !dbg !2413

if.then:                                          ; preds = %entry
  br label %return, !dbg !2414

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2415
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2416
  %2 = load ptr, ptr %prev, align 8, !dbg !2416
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2417
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2418
  %4 = load ptr, ptr %next, align 8, !dbg !2418
  call void @__list_del(ptr noundef %2, ptr noundef %4) #19, !dbg !2419
  br label %return, !dbg !2420

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2420
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #8 align 16 !dbg !2421 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2425, metadata !DIExpression()), !dbg !2426
  ret i1 true, !dbg !2427
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !2428 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2430, metadata !DIExpression()), !dbg !2432
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2431, metadata !DIExpression()), !dbg !2433
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !2434
  %1 = load ptr, ptr %next.addr, align 8, !dbg !2435
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2436
  store ptr %0, ptr %prev1, align 8, !dbg !2437
  br label %do.body, !dbg !2438

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2439

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2441

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2439

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2443
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !2443
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2443
  store volatile ptr %2, ptr %next4, align 8, !dbg !2443
  br label %do.end5, !dbg !2443

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2439

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2445
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @overlaps(i64 noundef %s1, i64 noundef %e1, i64 noundef %s2, i64 noundef %e2) #8 align 16 !dbg !2446 {
entry:
  %s1.addr = alloca i64, align 8
  %e1.addr = alloca i64, align 8
  %s2.addr = alloca i64, align 8
  %e2.addr = alloca i64, align 8
  store i64 %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !2450, metadata !DIExpression()), !dbg !2454
  store i64 %e1, ptr %e1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !2451, metadata !DIExpression()), !dbg !2455
  store i64 %s2, ptr %s2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !2452, metadata !DIExpression()), !dbg !2456
  store i64 %e2, ptr %e2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !2453, metadata !DIExpression()), !dbg !2457
  %0 = load i64, ptr %s1.addr, align 8, !dbg !2458
  %1 = load i64, ptr %e2.addr, align 8, !dbg !2459
  %cmp = icmp ule i64 %0, %1, !dbg !2460
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2461

land.rhs:                                         ; preds = %entry
  %2 = load i64, ptr %e1.addr, align 8, !dbg !2462
  %3 = load i64, ptr %s2.addr, align 8, !dbg !2463
  %cmp1 = icmp uge i64 %2, %3, !dbg !2464
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !2465
  ret i1 %4, !dbg !2466
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @contains(i64 noundef %s1, i64 noundef %e1, i64 noundef %s2, i64 noundef %e2) #8 align 16 !dbg !2467 {
entry:
  %s1.addr = alloca i64, align 8
  %e1.addr = alloca i64, align 8
  %s2.addr = alloca i64, align 8
  %e2.addr = alloca i64, align 8
  store i64 %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !2469, metadata !DIExpression()), !dbg !2473
  store i64 %e1, ptr %e1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !2470, metadata !DIExpression()), !dbg !2474
  store i64 %s2, ptr %s2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !2471, metadata !DIExpression()), !dbg !2475
  store i64 %e2, ptr %e2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !2472, metadata !DIExpression()), !dbg !2476
  %0 = load i64, ptr %s1.addr, align 8, !dbg !2477
  %1 = load i64, ptr %s2.addr, align 8, !dbg !2478
  %cmp = icmp ule i64 %0, %1, !dbg !2479
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2480

land.rhs:                                         ; preds = %entry
  %2 = load i64, ptr %e1.addr, align 8, !dbg !2481
  %3 = load i64, ptr %e2.addr, align 8, !dbg !2482
  %cmp1 = icmp uge i64 %2, %3, !dbg !2483
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !2484
  ret i1 %4, !dbg !2485
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_buddy_block_is_split(ptr noundef %block) #8 align 16 !dbg !2486 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !2488, metadata !DIExpression()), !dbg !2489
  %0 = load ptr, ptr %block.addr, align 8, !dbg !2490
  %call = call i32 @drm_buddy_block_state(ptr noundef %0) #19, !dbg !2491
  %cmp = icmp eq i32 %call, 3072, !dbg !2492
  ret i1 %cmp, !dbg !2493
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @split_block(ptr noundef %mm, ptr noundef %block) #0 align 16 !dbg !2494 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %block_order = alloca i32, align 4
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !2498, metadata !DIExpression()), !dbg !2502
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !2499, metadata !DIExpression()), !dbg !2503
  call void @llvm.lifetime.start.p0(i64 4, ptr %block_order) #16, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %block_order, metadata !2500, metadata !DIExpression()), !dbg !2505
  %0 = load ptr, ptr %block.addr, align 8, !dbg !2506
  %call = call i32 @drm_buddy_block_order(ptr noundef %0) #19, !dbg !2507
  %sub = sub i32 %call, 1, !dbg !2508
  store i32 %sub, ptr %block_order, align 4, !dbg !2505
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #16, !dbg !2509
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2501, metadata !DIExpression()), !dbg !2510
  %1 = load ptr, ptr %block.addr, align 8, !dbg !2511
  %call1 = call i64 @drm_buddy_block_offset(ptr noundef %1) #19, !dbg !2512
  store i64 %call1, ptr %offset, align 8, !dbg !2510
  br label %do.body, !dbg !2513

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %block.addr, align 8, !dbg !2514
  %call2 = call zeroext i1 @drm_buddy_block_is_free(ptr noundef %2) #19, !dbg !2514
  %lnot = xor i1 %call2, true, !dbg !2514
  %lnot3 = xor i1 %lnot, true, !dbg !2514
  %lnot4 = xor i1 %lnot3, true, !dbg !2514
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2514
  %conv = sext i32 %lnot.ext to i64, !dbg !2514
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2514
  %tobool = icmp ne i64 %expval, 0, !dbg !2514
  br i1 %tobool, label %if.then, label %if.end, !dbg !2517

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !2514

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !2518

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !2520

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2520

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !2518

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 209, i32 0, i64 12) #16, !dbg !2522, !srcloc !2524
  br label %do.cond8, !dbg !2522

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2522

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !2518

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !2518

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !2518

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !2517

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !2517

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2525

do.body14:                                        ; preds = %do.end13
  %3 = load ptr, ptr %block.addr, align 8, !dbg !2526
  %call15 = call i32 @drm_buddy_block_order(ptr noundef %3) #19, !dbg !2526
  %tobool16 = icmp ne i32 %call15, 0, !dbg !2526
  %lnot17 = xor i1 %tobool16, true, !dbg !2526
  %lnot19 = xor i1 %lnot17, true, !dbg !2526
  %lnot21 = xor i1 %lnot19, true, !dbg !2526
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !2526
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !2526
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !2526
  %tobool25 = icmp ne i64 %expval24, 0, !dbg !2526
  br i1 %tobool25, label %if.then26, label %if.end36, !dbg !2529

if.then26:                                        ; preds = %do.body14
  br label %do.body27, !dbg !2526

do.body27:                                        ; preds = %if.then26
  br label %do.body28, !dbg !2530

do.body28:                                        ; preds = %do.body27
  br label %do.cond29, !dbg !2532

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !2532

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !2530

do.body31:                                        ; preds = %do.end30
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 210, i32 0, i64 12) #16, !dbg !2534, !srcloc !2536
  br label %do.cond32, !dbg !2534

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !2534

do.end33:                                         ; preds = %do.cond32
  unreachable, !dbg !2530

do.cond34:                                        ; No predecessors!
  br label %do.end35, !dbg !2530

do.end35:                                         ; preds = %do.cond34
  br label %if.end36, !dbg !2530

if.end36:                                         ; preds = %do.end35, %do.body14
  br label %do.cond37, !dbg !2529

do.cond37:                                        ; preds = %if.end36
  br label %do.end38, !dbg !2529

do.end38:                                         ; preds = %do.cond37
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !2537
  %5 = load ptr, ptr %block.addr, align 8, !dbg !2538
  %6 = load i32, ptr %block_order, align 4, !dbg !2539
  %7 = load i64, ptr %offset, align 8, !dbg !2540
  %call39 = call ptr @drm_block_alloc(ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7) #19, !dbg !2541
  %8 = load ptr, ptr %block.addr, align 8, !dbg !2542
  %left = getelementptr inbounds %struct.drm_buddy_block, ptr %8, i32 0, i32 1, !dbg !2543
  store ptr %call39, ptr %left, align 8, !dbg !2544
  %9 = load ptr, ptr %block.addr, align 8, !dbg !2545
  %left40 = getelementptr inbounds %struct.drm_buddy_block, ptr %9, i32 0, i32 1, !dbg !2547
  %10 = load ptr, ptr %left40, align 8, !dbg !2547
  %tobool41 = icmp ne ptr %10, null, !dbg !2545
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !2548

if.then42:                                        ; preds = %do.end38
  store i32 -12, ptr %retval, align 4, !dbg !2549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2549

if.end43:                                         ; preds = %do.end38
  %11 = load ptr, ptr %mm.addr, align 8, !dbg !2550
  %12 = load ptr, ptr %block.addr, align 8, !dbg !2551
  %13 = load i32, ptr %block_order, align 4, !dbg !2552
  %14 = load i64, ptr %offset, align 8, !dbg !2553
  %15 = load ptr, ptr %mm.addr, align 8, !dbg !2554
  %chunk_size = getelementptr inbounds %struct.drm_buddy, ptr %15, i32 0, i32 4, !dbg !2555
  %16 = load i64, ptr %chunk_size, align 8, !dbg !2555
  %17 = load i32, ptr %block_order, align 4, !dbg !2556
  %sh_prom = zext i32 %17 to i64, !dbg !2557
  %shl = shl i64 %16, %sh_prom, !dbg !2557
  %add = add i64 %14, %shl, !dbg !2558
  %call44 = call ptr @drm_block_alloc(ptr noundef %11, ptr noundef %12, i32 noundef %13, i64 noundef %add) #19, !dbg !2559
  %18 = load ptr, ptr %block.addr, align 8, !dbg !2560
  %right = getelementptr inbounds %struct.drm_buddy_block, ptr %18, i32 0, i32 2, !dbg !2561
  store ptr %call44, ptr %right, align 8, !dbg !2562
  %19 = load ptr, ptr %block.addr, align 8, !dbg !2563
  %right45 = getelementptr inbounds %struct.drm_buddy_block, ptr %19, i32 0, i32 2, !dbg !2565
  %20 = load ptr, ptr %right45, align 8, !dbg !2565
  %tobool46 = icmp ne ptr %20, null, !dbg !2563
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !2566

if.then47:                                        ; preds = %if.end43
  %21 = load ptr, ptr %mm.addr, align 8, !dbg !2567
  %22 = load ptr, ptr %block.addr, align 8, !dbg !2569
  %left48 = getelementptr inbounds %struct.drm_buddy_block, ptr %22, i32 0, i32 1, !dbg !2570
  %23 = load ptr, ptr %left48, align 8, !dbg !2570
  call void @drm_block_free(ptr noundef %21, ptr noundef %23) #19, !dbg !2571
  store i32 -12, ptr %retval, align 4, !dbg !2572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2572

if.end49:                                         ; preds = %if.end43
  %24 = load ptr, ptr %mm.addr, align 8, !dbg !2573
  %25 = load ptr, ptr %block.addr, align 8, !dbg !2574
  %left50 = getelementptr inbounds %struct.drm_buddy_block, ptr %25, i32 0, i32 1, !dbg !2575
  %26 = load ptr, ptr %left50, align 8, !dbg !2575
  call void @mark_free(ptr noundef %24, ptr noundef %26) #19, !dbg !2576
  %27 = load ptr, ptr %mm.addr, align 8, !dbg !2577
  %28 = load ptr, ptr %block.addr, align 8, !dbg !2578
  %right51 = getelementptr inbounds %struct.drm_buddy_block, ptr %28, i32 0, i32 2, !dbg !2579
  %29 = load ptr, ptr %right51, align 8, !dbg !2579
  call void @mark_free(ptr noundef %27, ptr noundef %29) #19, !dbg !2580
  %30 = load ptr, ptr %block.addr, align 8, !dbg !2581
  call void @mark_split(ptr noundef %30) #19, !dbg !2582
  store i32 0, ptr %retval, align 4, !dbg !2583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2583

cleanup:                                          ; preds = %if.end49, %if.then47, %if.then42
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #16, !dbg !2584
  call void @llvm.lifetime.end.p0(i64 4, ptr %block_order) #16, !dbg !2584
  %31 = load i32, ptr %retval, align 4, !dbg !2584
  ret i32 %31, !dbg !2584
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mark_split(ptr noundef %block) #0 align 16 !dbg !2585 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !2587, metadata !DIExpression()), !dbg !2588
  %0 = load ptr, ptr %block.addr, align 8, !dbg !2589
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 0, !dbg !2590
  %1 = load i64, ptr %header, align 8, !dbg !2591
  %and = and i64 %1, -3073, !dbg !2591
  store i64 %and, ptr %header, align 8, !dbg !2591
  %2 = load ptr, ptr %block.addr, align 8, !dbg !2592
  %header1 = getelementptr inbounds %struct.drm_buddy_block, ptr %2, i32 0, i32 0, !dbg !2593
  %3 = load i64, ptr %header1, align 8, !dbg !2594
  %or = or i64 %3, 3072, !dbg !2594
  store i64 %or, ptr %header1, align 8, !dbg !2594
  %4 = load ptr, ptr %block.addr, align 8, !dbg !2595
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %4, i32 0, i32 5, !dbg !2596
  call void @list_del(ptr noundef %link) #19, !dbg !2597
  ret void, !dbg !2598
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #8 align 16 !dbg !2599 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2604, metadata !DIExpression()), !dbg !2605
  %0 = load i64, ptr %error.addr, align 8, !dbg !2606
  %1 = inttoptr i64 %0 to ptr, !dbg !2607
  ret ptr %1, !dbg !2608
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_maxblock(ptr noundef %mm, i32 noundef %order) #0 align 16 !dbg !2609 {
entry:
  %mm.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %max_block = alloca ptr, align 8
  %node = alloca ptr, align 8
  %i = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !2613, metadata !DIExpression()), !dbg !2625
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !2614, metadata !DIExpression()), !dbg !2626
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_block) #16, !dbg !2627
  call void @llvm.dbg.declare(metadata ptr %max_block, metadata !2615, metadata !DIExpression()), !dbg !2628
  store ptr null, ptr %max_block, align 8, !dbg !2628
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !2627
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2616, metadata !DIExpression()), !dbg !2629
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !2630
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2617, metadata !DIExpression()), !dbg !2631
  %0 = load i32, ptr %order.addr, align 4, !dbg !2632
  store i32 %0, ptr %i, align 4, !dbg !2633
  br label %for.cond, !dbg !2634

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2635
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !2636
  %max_order = getelementptr inbounds %struct.drm_buddy, ptr %2, i32 0, i32 3, !dbg !2637
  %3 = load i32, ptr %max_order, align 4, !dbg !2637
  %cmp = icmp ule i32 %1, %3, !dbg !2638
  br i1 %cmp, label %for.body, label %for.end, !dbg !2639

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !2640
  %free_list = getelementptr inbounds %struct.drm_buddy, ptr %4, i32 0, i32 0, !dbg !2641
  %5 = load ptr, ptr %free_list, align 8, !dbg !2641
  %6 = load i32, ptr %i, align 4, !dbg !2642
  %idxprom = zext i32 %6 to i64, !dbg !2640
  %arrayidx = getelementptr %struct.list_head, ptr %5, i64 %idxprom, !dbg !2640
  %call = call i32 @list_empty(ptr noundef %arrayidx) #19, !dbg !2643
  %tobool = icmp ne i32 %call, 0, !dbg !2643
  br i1 %tobool, label %if.end11, label %if.then, !dbg !2644

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2645
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2618, metadata !DIExpression()), !dbg !2645
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !2645
  %free_list1 = getelementptr inbounds %struct.drm_buddy, ptr %7, i32 0, i32 0, !dbg !2645
  %8 = load ptr, ptr %free_list1, align 8, !dbg !2645
  %9 = load i32, ptr %i, align 4, !dbg !2645
  %idxprom2 = zext i32 %9 to i64, !dbg !2645
  %arrayidx3 = getelementptr %struct.list_head, ptr %8, i64 %idxprom2, !dbg !2645
  %prev = getelementptr inbounds %struct.list_head, ptr %arrayidx3, i32 0, i32 1, !dbg !2645
  %10 = load ptr, ptr %prev, align 8, !dbg !2645
  store ptr %10, ptr %__mptr, align 8, !dbg !2645
  %11 = load ptr, ptr %__mptr, align 8, !dbg !2645
  %add.ptr = getelementptr i8, ptr %11, i64 -40, !dbg !2645
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2645
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2646
  %12 = load ptr, ptr %tmp, align 8, !dbg !2645
  store ptr %12, ptr %node, align 8, !dbg !2647
  %13 = load ptr, ptr %max_block, align 8, !dbg !2648
  %tobool4 = icmp ne ptr %13, null, !dbg !2648
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !2650

if.then5:                                         ; preds = %if.then
  %14 = load ptr, ptr %node, align 8, !dbg !2651
  store ptr %14, ptr %max_block, align 8, !dbg !2653
  br label %for.inc, !dbg !2654

if.end:                                           ; preds = %if.then
  %15 = load ptr, ptr %node, align 8, !dbg !2655
  %call6 = call i64 @drm_buddy_block_offset(ptr noundef %15) #19, !dbg !2657
  %16 = load ptr, ptr %max_block, align 8, !dbg !2658
  %call7 = call i64 @drm_buddy_block_offset(ptr noundef %16) #19, !dbg !2659
  %cmp8 = icmp ugt i64 %call6, %call7, !dbg !2660
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2661

if.then9:                                         ; preds = %if.end
  %17 = load ptr, ptr %node, align 8, !dbg !2662
  store ptr %17, ptr %max_block, align 8, !dbg !2664
  br label %if.end10, !dbg !2665

if.end10:                                         ; preds = %if.then9, %if.end
  br label %if.end11, !dbg !2666

if.end11:                                         ; preds = %if.end10, %for.body
  br label %for.inc, !dbg !2667

for.inc:                                          ; preds = %if.end11, %if.then5
  %18 = load i32, ptr %i, align 4, !dbg !2668
  %inc = add i32 %18, 1, !dbg !2668
  store i32 %inc, ptr %i, align 4, !dbg !2668
  br label %for.cond, !dbg !2669, !llvm.loop !2670

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %max_block, align 8, !dbg !2672
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_block) #16, !dbg !2673
  ret ptr %19, !dbg !2674
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_splice(ptr noundef %list, ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !2675 {
entry:
  %list.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2679, metadata !DIExpression()), !dbg !2684
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2680, metadata !DIExpression()), !dbg !2685
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2681, metadata !DIExpression()), !dbg !2686
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #16, !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %first, metadata !2682, metadata !DIExpression()), !dbg !2688
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2689
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !2690
  %1 = load ptr, ptr %next1, align 8, !dbg !2690
  store ptr %1, ptr %first, align 8, !dbg !2688
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #16, !dbg !2691
  call void @llvm.dbg.declare(metadata ptr %last, metadata !2683, metadata !DIExpression()), !dbg !2692
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2693
  %prev2 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !2694
  %3 = load ptr, ptr %prev2, align 8, !dbg !2694
  store ptr %3, ptr %last, align 8, !dbg !2692
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !2695
  %5 = load ptr, ptr %first, align 8, !dbg !2696
  %prev3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !2697
  store ptr %4, ptr %prev3, align 8, !dbg !2698
  %6 = load ptr, ptr %first, align 8, !dbg !2699
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !2700
  %next4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !2701
  store ptr %6, ptr %next4, align 8, !dbg !2702
  %8 = load ptr, ptr %next.addr, align 8, !dbg !2703
  %9 = load ptr, ptr %last, align 8, !dbg !2704
  %next5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !2705
  store ptr %8, ptr %next5, align 8, !dbg !2706
  %10 = load ptr, ptr %last, align 8, !dbg !2707
  %11 = load ptr, ptr %next.addr, align 8, !dbg !2708
  %prev6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !2709
  store ptr %10, ptr %prev6, align 8, !dbg !2710
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #16, !dbg !2711
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #16, !dbg !2711
  ret void, !dbg !2711
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2712 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2719 dso_local void @kmem_cache_destroy(ptr noundef) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone nounwind willreturn memory(none) }
attributes #18 = { noredzone allocsize(0,1) }
attributes #19 = { noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { nounwind memory(none) }
attributes #22 = { nounwind memory(read) }
attributes #23 = { cold noredzone }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/drm_buddy.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "abc4c423d42f4dd7a0ae9064bf58bfa4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_buddy_init267", scope: !9, file: !2, line: 178, type: !35, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_buddy.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm_buddy\22 -D KBUILD_BASENAME=\22drm_buddy\22 -D KBUILD_MODNAME=\22drm_buddy\22 -D __KBUILD_MODNAME=kmod_drm_buddy -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_buddy.ll drivers/gpu/drm/drm_buddy.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !27, globals: !58, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 10, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !18, line: 364, baseType: !13, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!19 = !{!20, !21, !22, !23, !24, !25, !26}
!20 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!21 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!22 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!23 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!24 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!25 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!26 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!27 = !{!28, !33, !13, !35, !36, !52, !53, !55, !56}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !29, line: 23, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !31, line: 31, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!32 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !13)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_buddy_block", file: !38, line: 28, size: 576, elements: !39)
!38 = !DIFile(filename: "./include/drm/drm_buddy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109808cb06339c76f8642650a0d3b9a")
!39 = !{!40, !41, !42, !43, !44, !45, !51}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !37, file: !38, line: 37, baseType: !28, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !37, file: !38, line: 39, baseType: !36, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !37, file: !38, line: 40, baseType: !36, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !37, file: !38, line: 41, baseType: !36, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !37, file: !38, line: 43, baseType: !35, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !37, file: !38, line: 51, baseType: !46, size: 128, offset: 320)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !34, line: 190, size: 128, elements: !47)
!47 = !{!48, !50}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !46, file: !34, line: 191, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !46, file: !34, line: 191, baseType: !49, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_link", scope: !37, file: !38, line: 52, baseType: !46, size: 128, offset: 448)
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!58 = !{!0, !7, !59, !61, !63, !65, !67, !69, !71, !76, !78, !83, !88, !93, !95, !97, !99, !101, !108, !114, !119, !124, !129, !134, !140}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_buddy_fini268", scope: !9, file: !2, line: 201, type: !35, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_get_buddy269", scope: !9, file: !2, line: 261, type: !35, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_buddy_free_block270", scope: !9, file: !2, line: 300, type: !35, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_buddy_free_list271", scope: !9, file: !2, line: 318, type: !35, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_buddy_block_trim278", scope: !9, file: !2, line: 649, type: !35, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_buddy_alloc_blocks281", scope: !9, file: !2, line: 752, type: !35, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 768, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 25)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_buddy_block_print282", scope: !9, file: !2, line: 770, type: !35, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 782, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 52)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 794, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 11)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 798, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 16)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 800, type: !90, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 802, type: !90, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_buddy_print283", scope: !9, file: !2, line: 805, type: !35, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_drm_buddy__284_821_drm_buddy_module_init6285", scope: !9, file: !2, line: 821, type: !35, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "__exitcall_drm_buddy_module_exit", scope: !9, file: !2, line: 822, type: !103, isLocal: true, isDefinition: true)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !104, line: 120, baseType: !105)
!104 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{null}
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description286", scope: !9, file: !2, line: 824, type: !110, isLocal: true, isDefinition: true, align: 8)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 336, elements: !112)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!112 = !{!113}
!113 = !DISubrange(count: 42)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file287", scope: !9, file: !2, line: 825, type: !116, isLocal: true, isDefinition: true, align: 8)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 328, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 41)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license288", scope: !9, file: !2, line: 825, type: !121, isLocal: true, isDefinition: true, align: 8)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 248, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 31)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !18, line: 480, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 21)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "slab_blocks", scope: !9, file: !2, line: 12, type: !131, isLocal: true, isDefinition: true)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !133, line: 11, flags: DIFlagFwdDecl)
!133 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched170", scope: !136, file: !137, line: 2104, type: !35, isLocal: true, isDefinition: true)
!136 = distinct !DISubprogram(name: "_cond_resched", scope: !137, file: !137, line: 2102, type: !138, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!137 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!138 = !DISubroutineType(types: !139)
!139 = !{!55}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 814, type: !90, isLocal: true, isDefinition: true)
!142 = !{i32 7, !"Dwarf Version", i32 5}
!143 = !{i32 2, !"Debug Info Version", i32 3}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 8, !"cf-protection-branch", i32 1}
!146 = !{i32 4, !"function_return_thunk_extern", i32 1}
!147 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!148 = !{i32 1, !"Code Model", i32 2}
!149 = !{i32 1, !"override-stack-alignment", i32 8}
!150 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!151 = distinct !DISubprogram(name: "drm_buddy_init", scope: !2, file: !2, line: 97, type: !152, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !165)
!152 = !DISubroutineType(types: !153)
!153 = !{!55, !154, !28, !28}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_buddy", file: !38, line: 64, size: 384, elements: !156)
!156 = !{!157, !158, !160, !161, !162, !163, !164}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !155, file: !38, line: 66, baseType: !49, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "roots", scope: !155, file: !38, line: 75, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "n_roots", scope: !155, file: !38, line: 81, baseType: !13, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "max_order", scope: !155, file: !38, line: 82, baseType: !13, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !155, file: !38, line: 85, baseType: !28, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !155, file: !38, line: 86, baseType: !28, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !155, file: !38, line: 87, baseType: !28, size: 64, offset: 320)
!165 = !{!166, !167, !168, !169, !170, !171, !173, !174, !175, !176}
!166 = !DILocalVariable(name: "mm", arg: 1, scope: !151, file: !2, line: 97, type: !154)
!167 = !DILocalVariable(name: "size", arg: 2, scope: !151, file: !2, line: 97, type: !28)
!168 = !DILocalVariable(name: "chunk_size", arg: 3, scope: !151, file: !2, line: 97, type: !28)
!169 = !DILocalVariable(name: "i", scope: !151, file: !2, line: 99, type: !13)
!170 = !DILocalVariable(name: "offset", scope: !151, file: !2, line: 100, type: !28)
!171 = !DILocalVariable(name: "root", scope: !172, file: !2, line: 145, type: !36)
!172 = distinct !DILexicalBlock(scope: !151, file: !2, line: 144, column: 5)
!173 = !DILocalVariable(name: "order", scope: !172, file: !2, line: 146, type: !13)
!174 = !DILocalVariable(name: "root_size", scope: !172, file: !2, line: 147, type: !28)
!175 = !DILabel(scope: !151, name: "out_free_roots", file: !2, line: 170)
!176 = !DILabel(scope: !151, name: "out_free_list", file: !2, line: 174)
!177 = !DILocation(line: 97, column: 38, scope: !151)
!178 = !DILocation(line: 97, column: 46, scope: !151)
!179 = !DILocation(line: 97, column: 56, scope: !151)
!180 = !DILocation(line: 99, column: 2, scope: !151)
!181 = !DILocation(line: 99, column: 15, scope: !151)
!182 = !DILocation(line: 100, column: 2, scope: !151)
!183 = !DILocation(line: 100, column: 6, scope: !151)
!184 = !DILocation(line: 102, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !151, file: !2, line: 102, column: 6)
!186 = !DILocation(line: 102, column: 13, scope: !185)
!187 = !DILocation(line: 102, column: 11, scope: !185)
!188 = !DILocation(line: 102, column: 6, scope: !151)
!189 = !DILocation(line: 103, column: 3, scope: !185)
!190 = !DILocation(line: 105, column: 6, scope: !191)
!191 = distinct !DILexicalBlock(scope: !151, file: !2, line: 105, column: 6)
!192 = !DILocation(line: 105, column: 17, scope: !191)
!193 = !DILocation(line: 105, column: 6, scope: !151)
!194 = !DILocation(line: 106, column: 3, scope: !191)
!195 = !DILocation(line: 108, column: 21, scope: !196)
!196 = distinct !DILexicalBlock(scope: !151, file: !2, line: 108, column: 6)
!197 = !DILocation(line: 108, column: 7, scope: !196)
!198 = !DILocation(line: 108, column: 6, scope: !151)
!199 = !DILocation(line: 109, column: 3, scope: !196)
!200 = !DILocation(line: 111, column: 9, scope: !151)
!201 = !DILocation(line: 111, column: 7, scope: !151)
!202 = !DILocation(line: 113, column: 13, scope: !151)
!203 = !DILocation(line: 113, column: 2, scope: !151)
!204 = !DILocation(line: 113, column: 6, scope: !151)
!205 = !DILocation(line: 113, column: 11, scope: !151)
!206 = !DILocation(line: 114, column: 14, scope: !151)
!207 = !DILocation(line: 114, column: 2, scope: !151)
!208 = !DILocation(line: 114, column: 6, scope: !151)
!209 = !DILocation(line: 114, column: 12, scope: !151)
!210 = !DILocation(line: 115, column: 19, scope: !151)
!211 = !DILocation(line: 115, column: 2, scope: !151)
!212 = !DILocation(line: 115, column: 6, scope: !151)
!213 = !DILocation(line: 115, column: 17, scope: !151)
!214 = !DILocation(line: 116, column: 18, scope: !151)
!215 = !DILocation(line: 116, column: 32, scope: !151)
!216 = !DILocation(line: 116, column: 30, scope: !151)
!217 = !DILocation(line: 116, column: 2, scope: !151)
!218 = !DILocation(line: 116, column: 6, scope: !151)
!219 = !DILocation(line: 116, column: 16, scope: !151)
!220 = !DILocation(line: 118, column: 2, scope: !151)
!221 = !DILocation(line: 118, column: 2, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !2, line: 118, column: 2)
!223 = distinct !DILexicalBlock(scope: !151, file: !2, line: 118, column: 2)
!224 = !DILocation(line: 118, column: 2, scope: !223)
!225 = !DILocation(line: 118, column: 2, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !2, line: 118, column: 2)
!227 = !DILocation(line: 118, column: 2, scope: !228)
!228 = distinct !DILexicalBlock(scope: !226, file: !2, line: 118, column: 2)
!229 = !DILocation(line: 118, column: 2, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !2, line: 118, column: 2)
!231 = !{i64 2154126567, i64 2154126596, i64 2154126642, i64 2154126700, i64 2154126754, i64 2154126808, i64 2154126863, i64 2154126894}
!232 = !DILocation(line: 120, column: 32, scope: !151)
!233 = !DILocation(line: 120, column: 36, scope: !151)
!234 = !DILocation(line: 120, column: 46, scope: !151)
!235 = !DILocation(line: 120, column: 18, scope: !151)
!236 = !DILocation(line: 120, column: 2, scope: !151)
!237 = !DILocation(line: 120, column: 6, scope: !151)
!238 = !DILocation(line: 120, column: 16, scope: !151)
!239 = !DILocation(line: 123, column: 7, scope: !240)
!240 = distinct !DILexicalBlock(scope: !151, file: !2, line: 123, column: 6)
!241 = !DILocation(line: 123, column: 11, scope: !240)
!242 = !DILocation(line: 123, column: 6, scope: !151)
!243 = !DILocation(line: 124, column: 3, scope: !240)
!244 = !DILocation(line: 126, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !151, file: !2, line: 126, column: 2)
!246 = !DILocation(line: 126, column: 7, scope: !245)
!247 = !DILocation(line: 126, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !2, line: 126, column: 2)
!249 = !DILocation(line: 126, column: 19, scope: !248)
!250 = !DILocation(line: 126, column: 23, scope: !248)
!251 = !DILocation(line: 126, column: 16, scope: !248)
!252 = !DILocation(line: 126, column: 2, scope: !245)
!253 = !DILocation(line: 127, column: 19, scope: !248)
!254 = !DILocation(line: 127, column: 23, scope: !248)
!255 = !DILocation(line: 127, column: 33, scope: !248)
!256 = !DILocation(line: 127, column: 3, scope: !248)
!257 = !DILocation(line: 126, column: 34, scope: !248)
!258 = !DILocation(line: 126, column: 2, scope: !248)
!259 = distinct !{!259, !252, !260, !261, !262}
!260 = !DILocation(line: 127, column: 35, scope: !245)
!261 = !{!"llvm.loop.mustprogress"}
!262 = !{!"llvm.loop.unroll.disable"}
!263 = !DILocation(line: 129, column: 16, scope: !151)
!264 = !DILocation(line: 129, column: 2, scope: !151)
!265 = !DILocation(line: 129, column: 6, scope: !151)
!266 = !DILocation(line: 129, column: 14, scope: !151)
!267 = !DILocation(line: 131, column: 28, scope: !151)
!268 = !DILocation(line: 131, column: 32, scope: !151)
!269 = !DILocation(line: 131, column: 14, scope: !151)
!270 = !DILocation(line: 131, column: 2, scope: !151)
!271 = !DILocation(line: 131, column: 6, scope: !151)
!272 = !DILocation(line: 131, column: 12, scope: !151)
!273 = !DILocation(line: 134, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !151, file: !2, line: 134, column: 6)
!275 = !DILocation(line: 134, column: 11, scope: !274)
!276 = !DILocation(line: 134, column: 6, scope: !151)
!277 = !DILocation(line: 135, column: 3, scope: !274)
!278 = !DILocation(line: 137, column: 9, scope: !151)
!279 = !DILocation(line: 138, column: 4, scope: !151)
!280 = !DILocation(line: 144, column: 2, scope: !151)
!281 = !DILocation(line: 145, column: 3, scope: !172)
!282 = !DILocation(line: 145, column: 27, scope: !172)
!283 = !DILocation(line: 146, column: 3, scope: !172)
!284 = !DILocation(line: 146, column: 16, scope: !172)
!285 = !DILocation(line: 147, column: 3, scope: !172)
!286 = !DILocation(line: 147, column: 7, scope: !172)
!287 = !DILocation(line: 149, column: 11, scope: !172)
!288 = !DILocation(line: 149, column: 25, scope: !172)
!289 = !DILocation(line: 149, column: 23, scope: !172)
!290 = !DILocation(line: 149, column: 9, scope: !172)
!291 = !DILocation(line: 150, column: 15, scope: !172)
!292 = !DILocation(line: 150, column: 29, scope: !172)
!293 = !DILocation(line: 150, column: 26, scope: !172)
!294 = !DILocation(line: 150, column: 13, scope: !172)
!295 = !DILocation(line: 152, column: 26, scope: !172)
!296 = !DILocation(line: 152, column: 36, scope: !172)
!297 = !DILocation(line: 152, column: 43, scope: !172)
!298 = !DILocation(line: 152, column: 10, scope: !172)
!299 = !DILocation(line: 152, column: 8, scope: !172)
!300 = !DILocation(line: 153, column: 8, scope: !301)
!301 = distinct !DILexicalBlock(scope: !172, file: !2, line: 153, column: 7)
!302 = !DILocation(line: 153, column: 7, scope: !172)
!303 = !DILocation(line: 154, column: 4, scope: !301)
!304 = !DILocation(line: 156, column: 13, scope: !172)
!305 = !DILocation(line: 156, column: 17, scope: !172)
!306 = !DILocation(line: 156, column: 3, scope: !172)
!307 = !DILocation(line: 158, column: 3, scope: !172)
!308 = !DILocation(line: 158, column: 3, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 158, column: 3)
!310 = distinct !DILexicalBlock(scope: !172, file: !2, line: 158, column: 3)
!311 = !DILocation(line: 158, column: 3, scope: !310)
!312 = !DILocation(line: 158, column: 3, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !2, line: 158, column: 3)
!314 = !DILocation(line: 158, column: 3, scope: !315)
!315 = distinct !DILexicalBlock(scope: !313, file: !2, line: 158, column: 3)
!316 = !DILocation(line: 158, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !2, line: 158, column: 3)
!318 = !{i64 2154132388, i64 2154132417, i64 2154132463, i64 2154132521, i64 2154132575, i64 2154132629, i64 2154132684, i64 2154132715}
!319 = !DILocation(line: 159, column: 3, scope: !172)
!320 = !DILocation(line: 159, column: 3, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !2, line: 159, column: 3)
!322 = distinct !DILexicalBlock(scope: !172, file: !2, line: 159, column: 3)
!323 = !DILocation(line: 159, column: 3, scope: !322)
!324 = !DILocation(line: 159, column: 3, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !2, line: 159, column: 3)
!326 = !DILocation(line: 159, column: 3, scope: !327)
!327 = distinct !DILexicalBlock(scope: !325, file: !2, line: 159, column: 3)
!328 = !DILocation(line: 159, column: 3, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !2, line: 159, column: 3)
!330 = !{i64 2154133440, i64 2154133469, i64 2154133515, i64 2154133573, i64 2154133627, i64 2154133681, i64 2154133736, i64 2154133767}
!331 = !DILocation(line: 161, column: 18, scope: !172)
!332 = !DILocation(line: 161, column: 3, scope: !172)
!333 = !DILocation(line: 161, column: 7, scope: !172)
!334 = !DILocation(line: 161, column: 13, scope: !172)
!335 = !DILocation(line: 161, column: 16, scope: !172)
!336 = !DILocation(line: 163, column: 13, scope: !172)
!337 = !DILocation(line: 163, column: 10, scope: !172)
!338 = !DILocation(line: 164, column: 11, scope: !172)
!339 = !DILocation(line: 164, column: 8, scope: !172)
!340 = !DILocation(line: 165, column: 4, scope: !172)
!341 = !DILocation(line: 166, column: 2, scope: !151)
!342 = !DILocation(line: 166, column: 2, scope: !172)
!343 = !DILocation(line: 166, column: 11, scope: !151)
!344 = distinct !{!344, !280, !345, !261, !262}
!345 = !DILocation(line: 166, column: 15, scope: !151)
!346 = !DILocation(line: 168, column: 2, scope: !151)
!347 = !DILocation(line: 170, column: 1, scope: !151)
!348 = !DILocation(line: 171, column: 2, scope: !151)
!349 = !DILocation(line: 171, column: 10, scope: !151)
!350 = !DILocation(line: 172, column: 18, scope: !151)
!351 = !DILocation(line: 172, column: 22, scope: !151)
!352 = !DILocation(line: 172, column: 26, scope: !151)
!353 = !DILocation(line: 172, column: 32, scope: !151)
!354 = !DILocation(line: 172, column: 3, scope: !151)
!355 = distinct !{!355, !348, !356, !261, !262}
!356 = !DILocation(line: 172, column: 34, scope: !151)
!357 = !DILocation(line: 173, column: 8, scope: !151)
!358 = !DILocation(line: 173, column: 12, scope: !151)
!359 = !DILocation(line: 173, column: 2, scope: !151)
!360 = !DILocation(line: 174, column: 1, scope: !151)
!361 = !DILocation(line: 175, column: 8, scope: !151)
!362 = !DILocation(line: 175, column: 12, scope: !151)
!363 = !DILocation(line: 175, column: 2, scope: !151)
!364 = !DILocation(line: 176, column: 2, scope: !151)
!365 = !DILocation(line: 177, column: 1, scope: !151)
!366 = distinct !DISubprogram(name: "is_power_of_2", scope: !367, file: !367, line: 45, type: !368, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !372)
!367 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !52}
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !371)
!371 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!372 = !{!373}
!373 = !DILocalVariable(name: "n", arg: 1, scope: !366, file: !367, line: 45, type: !52)
!374 = !DILocation(line: 45, column: 34, scope: !366)
!375 = !DILocation(line: 47, column: 10, scope: !366)
!376 = !DILocation(line: 47, column: 12, scope: !366)
!377 = !DILocation(line: 47, column: 17, scope: !366)
!378 = !DILocation(line: 47, column: 22, scope: !366)
!379 = !DILocation(line: 47, column: 27, scope: !366)
!380 = !DILocation(line: 47, column: 29, scope: !366)
!381 = !DILocation(line: 47, column: 24, scope: !366)
!382 = !DILocation(line: 47, column: 35, scope: !366)
!383 = !DILocation(line: 0, scope: !366)
!384 = !DILocation(line: 47, column: 2, scope: !366)
!385 = distinct !DISubprogram(name: "__ilog2_u64", scope: !367, file: !367, line: 30, type: !386, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!55, !28}
!388 = !{!389}
!389 = !DILocalVariable(name: "n", arg: 1, scope: !385, file: !367, line: 30, type: !28)
!390 = !DILocation(line: 30, column: 21, scope: !385)
!391 = !DILocation(line: 32, column: 15, scope: !385)
!392 = !DILocation(line: 32, column: 9, scope: !385)
!393 = !DILocation(line: 32, column: 18, scope: !385)
!394 = !DILocation(line: 32, column: 2, scope: !385)
!395 = distinct !DISubprogram(name: "kmalloc_array", scope: !18, file: !18, line: 629, type: !396, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !402)
!396 = !DISubroutineType(types: !397)
!397 = !{!35, !398, !398, !33}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !400, line: 72, baseType: !401)
!400 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !400, line: 16, baseType: !52)
!402 = !{!403, !404, !405, !406}
!403 = !DILocalVariable(name: "n", arg: 1, scope: !395, file: !18, line: 629, type: !398)
!404 = !DILocalVariable(name: "size", arg: 2, scope: !395, file: !18, line: 629, type: !398)
!405 = !DILocalVariable(name: "flags", arg: 3, scope: !395, file: !18, line: 629, type: !33)
!406 = !DILocalVariable(name: "bytes", scope: !395, file: !18, line: 631, type: !398)
!407 = !DILocation(line: 629, column: 61, scope: !395)
!408 = !DILocation(line: 629, column: 71, scope: !395)
!409 = !DILocation(line: 629, column: 83, scope: !395)
!410 = !DILocation(line: 631, column: 2, scope: !395)
!411 = !DILocation(line: 631, column: 9, scope: !395)
!412 = !DILocation(line: 633, column: 6, scope: !413)
!413 = distinct !DILexicalBlock(scope: !395, file: !18, line: 633, column: 6)
!414 = !DILocation(line: 633, column: 6, scope: !395)
!415 = !DILocation(line: 634, column: 3, scope: !413)
!416 = !DILocation(line: 635, column: 27, scope: !417)
!417 = distinct !DILexicalBlock(scope: !395, file: !18, line: 635, column: 6)
!418 = !DILocation(line: 635, column: 6, scope: !417)
!419 = !DILocation(line: 635, column: 30, scope: !417)
!420 = !DILocation(line: 635, column: 54, scope: !417)
!421 = !DILocation(line: 635, column: 33, scope: !417)
!422 = !DILocation(line: 635, column: 6, scope: !395)
!423 = !DILocation(line: 636, column: 18, scope: !417)
!424 = !DILocation(line: 636, column: 25, scope: !417)
!425 = !DILocation(line: 636, column: 10, scope: !417)
!426 = !DILocation(line: 636, column: 3, scope: !417)
!427 = !DILocation(line: 637, column: 19, scope: !395)
!428 = !DILocation(line: 637, column: 26, scope: !395)
!429 = !DILocation(line: 637, column: 9, scope: !395)
!430 = !DILocation(line: 637, column: 2, scope: !395)
!431 = !DILocation(line: 638, column: 1, scope: !395)
!432 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !433, file: !433, line: 35, type: !434, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !436)
!433 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!434 = !DISubroutineType(types: !435)
!435 = !{null, !49}
!436 = !{!437}
!437 = !DILocalVariable(name: "list", arg: 1, scope: !432, file: !433, line: 35, type: !49)
!438 = !DILocation(line: 35, column: 53, scope: !432)
!439 = !DILocation(line: 37, column: 2, scope: !432)
!440 = !DILocation(line: 37, column: 2, scope: !441)
!441 = distinct !DILexicalBlock(scope: !432, file: !433, line: 37, column: 2)
!442 = !DILocation(line: 37, column: 2, scope: !443)
!443 = distinct !DILexicalBlock(scope: !441, file: !433, line: 37, column: 2)
!444 = !DILocation(line: 37, column: 2, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !433, line: 37, column: 2)
!446 = !DILocation(line: 38, column: 2, scope: !432)
!447 = !DILocation(line: 38, column: 2, scope: !448)
!448 = distinct !DILexicalBlock(scope: !432, file: !433, line: 38, column: 2)
!449 = !DILocation(line: 38, column: 2, scope: !450)
!450 = distinct !DILexicalBlock(scope: !448, file: !433, line: 38, column: 2)
!451 = !DILocation(line: 38, column: 2, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !433, line: 38, column: 2)
!453 = !DILocation(line: 39, column: 1, scope: !432)
!454 = distinct !DISubprogram(name: "__arch_hweight64", scope: !455, file: !455, line: 43, type: !456, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !458)
!455 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!456 = !DISubroutineType(types: !457)
!457 = !{!52, !30}
!458 = !{!459, !460}
!459 = !DILocalVariable(name: "w", arg: 1, scope: !454, file: !455, line: 43, type: !30)
!460 = !DILocalVariable(name: "res", scope: !454, file: !455, line: 45, type: !52)
!461 = !DILocation(line: 43, column: 61, scope: !454)
!462 = !DILocation(line: 45, column: 2, scope: !454)
!463 = !DILocation(line: 45, column: 16, scope: !454)
!464 = !DILocation(line: 49, column: 15, scope: !454)
!465 = !DILocation(line: 47, column: 2, scope: !454)
!466 = !{i64 2148155466, i64 2148155494, i64 2148155500, i64 2148155516, i64 2148155532, i64 2148155559, i64 2148155892, i64 2148155192, i64 2148155898, i64 2148155946, i64 2148156010, i64 2148156074, i64 2148156131, i64 2148155273, i64 2148155298, i64 2148156338, i64 2148156468, i64 2148156399, i64 2148156482, i64 2148155390}
!467 = !DILocation(line: 51, column: 9, scope: !454)
!468 = !DILocation(line: 52, column: 1, scope: !454)
!469 = !DILocation(line: 51, column: 2, scope: !454)
!470 = distinct !DISubprogram(name: "drm_block_alloc", scope: !2, file: !2, line: 14, type: !471, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!36, !154, !36, !13, !28}
!473 = !{!474, !475, !476, !477, !478}
!474 = !DILocalVariable(name: "mm", arg: 1, scope: !470, file: !2, line: 14, type: !154)
!475 = !DILocalVariable(name: "parent", arg: 2, scope: !470, file: !2, line: 15, type: !36)
!476 = !DILocalVariable(name: "order", arg: 3, scope: !470, file: !2, line: 16, type: !13)
!477 = !DILocalVariable(name: "offset", arg: 4, scope: !470, file: !2, line: 17, type: !28)
!478 = !DILocalVariable(name: "block", scope: !470, file: !2, line: 19, type: !36)
!479 = !DILocation(line: 14, column: 66, scope: !470)
!480 = !DILocation(line: 15, column: 37, scope: !470)
!481 = !DILocation(line: 16, column: 26, scope: !470)
!482 = !DILocation(line: 17, column: 17, scope: !470)
!483 = !DILocation(line: 19, column: 2, scope: !470)
!484 = !DILocation(line: 19, column: 26, scope: !470)
!485 = !DILocation(line: 21, column: 2, scope: !470)
!486 = !DILocation(line: 21, column: 2, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !2, line: 21, column: 2)
!488 = distinct !DILexicalBlock(scope: !470, file: !2, line: 21, column: 2)
!489 = !DILocation(line: 21, column: 2, scope: !488)
!490 = !DILocation(line: 21, column: 2, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !2, line: 21, column: 2)
!492 = !DILocation(line: 21, column: 2, scope: !493)
!493 = distinct !DILexicalBlock(scope: !491, file: !2, line: 21, column: 2)
!494 = !DILocation(line: 21, column: 2, scope: !495)
!495 = distinct !DILexicalBlock(scope: !491, file: !2, line: 21, column: 2)
!496 = !{i64 2154117294, i64 2154117323, i64 2154117369, i64 2154117427, i64 2154117481, i64 2154117535, i64 2154117590, i64 2154117621}
!497 = !DILocation(line: 23, column: 28, scope: !470)
!498 = !DILocation(line: 23, column: 10, scope: !470)
!499 = !DILocation(line: 23, column: 8, scope: !470)
!500 = !DILocation(line: 24, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !470, file: !2, line: 24, column: 6)
!502 = !DILocation(line: 24, column: 6, scope: !470)
!503 = !DILocation(line: 25, column: 3, scope: !501)
!504 = !DILocation(line: 27, column: 18, scope: !470)
!505 = !DILocation(line: 27, column: 2, scope: !470)
!506 = !DILocation(line: 27, column: 9, scope: !470)
!507 = !DILocation(line: 27, column: 16, scope: !470)
!508 = !DILocation(line: 28, column: 19, scope: !470)
!509 = !DILocation(line: 28, column: 2, scope: !470)
!510 = !DILocation(line: 28, column: 9, scope: !470)
!511 = !DILocation(line: 28, column: 16, scope: !470)
!512 = !DILocation(line: 29, column: 18, scope: !470)
!513 = !DILocation(line: 29, column: 2, scope: !470)
!514 = !DILocation(line: 29, column: 9, scope: !470)
!515 = !DILocation(line: 29, column: 16, scope: !470)
!516 = !DILocation(line: 31, column: 2, scope: !470)
!517 = !DILocation(line: 31, column: 2, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !2, line: 31, column: 2)
!519 = distinct !DILexicalBlock(scope: !470, file: !2, line: 31, column: 2)
!520 = !DILocation(line: 31, column: 2, scope: !519)
!521 = !DILocation(line: 31, column: 2, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !2, line: 31, column: 2)
!523 = !DILocation(line: 31, column: 2, scope: !524)
!524 = distinct !DILexicalBlock(scope: !522, file: !2, line: 31, column: 2)
!525 = !DILocation(line: 31, column: 2, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !2, line: 31, column: 2)
!527 = !{i64 2154119763, i64 2154119792, i64 2154119838, i64 2154119896, i64 2154119950, i64 2154120004, i64 2154120059, i64 2154120090}
!528 = !DILocation(line: 32, column: 9, scope: !470)
!529 = !DILocation(line: 32, column: 2, scope: !470)
!530 = !DILocation(line: 33, column: 1, scope: !470)
!531 = distinct !DISubprogram(name: "mark_free", scope: !2, file: !2, line: 68, type: !532, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !154, !36}
!534 = !{!535, !536}
!535 = !DILocalVariable(name: "mm", arg: 1, scope: !531, file: !2, line: 68, type: !154)
!536 = !DILocalVariable(name: "block", arg: 2, scope: !531, file: !2, line: 69, type: !36)
!537 = !DILocation(line: 68, column: 41, scope: !531)
!538 = !DILocation(line: 69, column: 33, scope: !531)
!539 = !DILocation(line: 71, column: 2, scope: !531)
!540 = !DILocation(line: 71, column: 9, scope: !531)
!541 = !DILocation(line: 71, column: 16, scope: !531)
!542 = !DILocation(line: 72, column: 2, scope: !531)
!543 = !DILocation(line: 72, column: 9, scope: !531)
!544 = !DILocation(line: 72, column: 16, scope: !531)
!545 = !DILocation(line: 74, column: 21, scope: !531)
!546 = !DILocation(line: 74, column: 25, scope: !531)
!547 = !DILocation(line: 74, column: 2, scope: !531)
!548 = !DILocation(line: 75, column: 1, scope: !531)
!549 = distinct !DISubprogram(name: "drm_buddy_block_size", scope: !38, file: !38, line: 127, type: !550, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!28, !154, !36}
!552 = !{!553, !554}
!553 = !DILocalVariable(name: "mm", arg: 1, scope: !549, file: !38, line: 127, type: !154)
!554 = !DILocalVariable(name: "block", arg: 2, scope: !549, file: !38, line: 128, type: !36)
!555 = !DILocation(line: 127, column: 40, scope: !549)
!556 = !DILocation(line: 128, column: 32, scope: !549)
!557 = !DILocation(line: 130, column: 9, scope: !549)
!558 = !DILocation(line: 130, column: 13, scope: !549)
!559 = !DILocation(line: 130, column: 49, scope: !549)
!560 = !DILocation(line: 130, column: 27, scope: !549)
!561 = !DILocation(line: 130, column: 24, scope: !549)
!562 = !DILocation(line: 130, column: 2, scope: !549)
!563 = distinct !DISubprogram(name: "drm_block_free", scope: !2, file: !2, line: 35, type: !532, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !564)
!564 = !{!565, !566}
!565 = !DILocalVariable(name: "mm", arg: 1, scope: !563, file: !2, line: 35, type: !154)
!566 = !DILocalVariable(name: "block", arg: 2, scope: !563, file: !2, line: 36, type: !36)
!567 = !DILocation(line: 35, column: 46, scope: !563)
!568 = !DILocation(line: 36, column: 31, scope: !563)
!569 = !DILocation(line: 38, column: 18, scope: !563)
!570 = !DILocation(line: 38, column: 31, scope: !563)
!571 = !DILocation(line: 38, column: 2, scope: !563)
!572 = !DILocation(line: 39, column: 1, scope: !563)
!573 = !DISubprogram(name: "kfree", scope: !18, file: !18, line: 227, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!578 = distinct !DISubprogram(name: "drm_buddy_fini", scope: !2, file: !2, line: 187, type: !579, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !154}
!581 = !{!582, !583, !584, !589, !592, !594}
!582 = !DILocalVariable(name: "mm", arg: 1, scope: !578, file: !2, line: 187, type: !154)
!583 = !DILocalVariable(name: "i", scope: !578, file: !2, line: 189, type: !55)
!584 = !DILocalVariable(name: "__ret_warn_on", scope: !585, file: !2, line: 192, type: !55)
!585 = distinct !DILexicalBlock(scope: !586, file: !2, line: 192, column: 3)
!586 = distinct !DILexicalBlock(scope: !587, file: !2, line: 191, column: 36)
!587 = distinct !DILexicalBlock(scope: !588, file: !2, line: 191, column: 2)
!588 = distinct !DILexicalBlock(scope: !578, file: !2, line: 191, column: 2)
!589 = !DILocalVariable(name: "__flags", scope: !590, file: !2, line: 192, type: !55)
!590 = distinct !DILexicalBlock(scope: !591, file: !2, line: 192, column: 3)
!591 = distinct !DILexicalBlock(scope: !585, file: !2, line: 192, column: 3)
!592 = !DILocalVariable(name: "__ret_warn_on", scope: !593, file: !2, line: 196, type: !55)
!593 = distinct !DILexicalBlock(scope: !578, file: !2, line: 196, column: 2)
!594 = !DILocalVariable(name: "__flags", scope: !595, file: !2, line: 196, type: !55)
!595 = distinct !DILexicalBlock(scope: !596, file: !2, line: 196, column: 2)
!596 = distinct !DILexicalBlock(scope: !593, file: !2, line: 196, column: 2)
!597 = !DILocation(line: 187, column: 39, scope: !578)
!598 = !DILocation(line: 189, column: 2, scope: !578)
!599 = !DILocation(line: 189, column: 6, scope: !578)
!600 = !DILocation(line: 191, column: 9, scope: !588)
!601 = !DILocation(line: 191, column: 7, scope: !588)
!602 = !DILocation(line: 191, column: 14, scope: !587)
!603 = !DILocation(line: 191, column: 18, scope: !587)
!604 = !DILocation(line: 191, column: 22, scope: !587)
!605 = !DILocation(line: 191, column: 16, scope: !587)
!606 = !DILocation(line: 191, column: 2, scope: !588)
!607 = !DILocation(line: 192, column: 3, scope: !585)
!608 = !DILocation(line: 192, column: 3, scope: !591)
!609 = !DILocation(line: 192, column: 3, scope: !590)
!610 = !DILocation(line: 192, column: 3, scope: !611)
!611 = distinct !DILexicalBlock(scope: !590, file: !2, line: 192, column: 3)
!612 = !DILocation(line: 192, column: 3, scope: !613)
!613 = distinct !DILexicalBlock(scope: !590, file: !2, line: 192, column: 3)
!614 = !{i64 2154136393, i64 2154136422, i64 2154136468, i64 2154136526, i64 2154136580, i64 2154136634, i64 2154136689, i64 2154136720, i64 2154137028, i64 2154137034, i64 2154137081, i64 2154137104, i64 2154137130}
!615 = !DILocation(line: 192, column: 3, scope: !616)
!616 = distinct !DILexicalBlock(scope: !590, file: !2, line: 192, column: 3)
!617 = !DILocation(line: 192, column: 3, scope: !586)
!618 = !DILocation(line: 193, column: 18, scope: !586)
!619 = !DILocation(line: 193, column: 22, scope: !586)
!620 = !DILocation(line: 193, column: 26, scope: !586)
!621 = !DILocation(line: 193, column: 32, scope: !586)
!622 = !DILocation(line: 193, column: 3, scope: !586)
!623 = !DILocation(line: 194, column: 2, scope: !586)
!624 = !DILocation(line: 191, column: 31, scope: !587)
!625 = !DILocation(line: 191, column: 2, scope: !587)
!626 = distinct !{!626, !606, !627, !261, !262}
!627 = !DILocation(line: 194, column: 2, scope: !588)
!628 = !DILocation(line: 196, column: 2, scope: !593)
!629 = !DILocation(line: 196, column: 2, scope: !596)
!630 = !DILocation(line: 196, column: 2, scope: !595)
!631 = !DILocation(line: 196, column: 2, scope: !632)
!632 = distinct !DILexicalBlock(scope: !595, file: !2, line: 196, column: 2)
!633 = !DILocation(line: 196, column: 2, scope: !634)
!634 = distinct !DILexicalBlock(scope: !595, file: !2, line: 196, column: 2)
!635 = !{i64 2154137905, i64 2154137934, i64 2154137980, i64 2154138038, i64 2154138092, i64 2154138146, i64 2154138201, i64 2154138232, i64 2154138540, i64 2154138546, i64 2154138593, i64 2154138616, i64 2154138642}
!636 = !DILocation(line: 196, column: 2, scope: !637)
!637 = distinct !DILexicalBlock(scope: !595, file: !2, line: 196, column: 2)
!638 = !DILocation(line: 196, column: 2, scope: !578)
!639 = !DILocation(line: 198, column: 8, scope: !578)
!640 = !DILocation(line: 198, column: 12, scope: !578)
!641 = !DILocation(line: 198, column: 2, scope: !578)
!642 = !DILocation(line: 199, column: 8, scope: !578)
!643 = !DILocation(line: 199, column: 12, scope: !578)
!644 = !DILocation(line: 199, column: 2, scope: !578)
!645 = !DILocation(line: 200, column: 1, scope: !578)
!646 = distinct !DISubprogram(name: "drm_buddy_block_is_free", scope: !38, file: !38, line: 115, type: !647, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{!370, !36}
!649 = !{!650}
!650 = !DILocalVariable(name: "block", arg: 1, scope: !646, file: !38, line: 115, type: !36)
!651 = !DILocation(line: 115, column: 49, scope: !646)
!652 = !DILocation(line: 117, column: 31, scope: !646)
!653 = !DILocation(line: 117, column: 9, scope: !646)
!654 = !DILocation(line: 117, column: 38, scope: !646)
!655 = !DILocation(line: 117, column: 2, scope: !646)
!656 = distinct !DISubprogram(name: "drm_get_buddy", scope: !2, file: !2, line: 257, type: !657, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!36, !36}
!659 = !{!660}
!660 = !DILocalVariable(name: "block", arg: 1, scope: !656, file: !2, line: 257, type: !36)
!661 = !DILocation(line: 257, column: 39, scope: !656)
!662 = !DILocation(line: 259, column: 21, scope: !656)
!663 = !DILocation(line: 259, column: 9, scope: !656)
!664 = !DILocation(line: 259, column: 2, scope: !656)
!665 = distinct !DISubprogram(name: "__get_buddy", scope: !2, file: !2, line: 232, type: !657, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !666)
!666 = !{!667, !668}
!667 = !DILocalVariable(name: "block", arg: 1, scope: !665, file: !2, line: 232, type: !36)
!668 = !DILocalVariable(name: "parent", scope: !665, file: !2, line: 234, type: !36)
!669 = !DILocation(line: 232, column: 37, scope: !665)
!670 = !DILocation(line: 234, column: 2, scope: !665)
!671 = !DILocation(line: 234, column: 26, scope: !665)
!672 = !DILocation(line: 236, column: 11, scope: !665)
!673 = !DILocation(line: 236, column: 18, scope: !665)
!674 = !DILocation(line: 236, column: 9, scope: !665)
!675 = !DILocation(line: 237, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !665, file: !2, line: 237, column: 6)
!677 = !DILocation(line: 237, column: 6, scope: !665)
!678 = !DILocation(line: 238, column: 3, scope: !676)
!679 = !DILocation(line: 240, column: 6, scope: !680)
!680 = distinct !DILexicalBlock(scope: !665, file: !2, line: 240, column: 6)
!681 = !DILocation(line: 240, column: 14, scope: !680)
!682 = !DILocation(line: 240, column: 22, scope: !680)
!683 = !DILocation(line: 240, column: 19, scope: !680)
!684 = !DILocation(line: 240, column: 6, scope: !665)
!685 = !DILocation(line: 241, column: 10, scope: !680)
!686 = !DILocation(line: 241, column: 18, scope: !680)
!687 = !DILocation(line: 241, column: 3, scope: !680)
!688 = !DILocation(line: 243, column: 9, scope: !665)
!689 = !DILocation(line: 243, column: 17, scope: !665)
!690 = !DILocation(line: 243, column: 2, scope: !665)
!691 = !DILocation(line: 244, column: 1, scope: !665)
!692 = distinct !DISubprogram(name: "drm_buddy_free_block", scope: !2, file: !2, line: 293, type: !532, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !693)
!693 = !{!694, !695}
!694 = !DILocalVariable(name: "mm", arg: 1, scope: !692, file: !2, line: 293, type: !154)
!695 = !DILocalVariable(name: "block", arg: 2, scope: !692, file: !2, line: 294, type: !36)
!696 = !DILocation(line: 293, column: 45, scope: !692)
!697 = !DILocation(line: 294, column: 30, scope: !692)
!698 = !DILocation(line: 296, column: 2, scope: !692)
!699 = !DILocation(line: 296, column: 2, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !2, line: 296, column: 2)
!701 = distinct !DILexicalBlock(scope: !692, file: !2, line: 296, column: 2)
!702 = !DILocation(line: 296, column: 2, scope: !701)
!703 = !DILocation(line: 296, column: 2, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !2, line: 296, column: 2)
!705 = !DILocation(line: 296, column: 2, scope: !706)
!706 = distinct !DILexicalBlock(scope: !704, file: !2, line: 296, column: 2)
!707 = !DILocation(line: 296, column: 2, scope: !708)
!708 = distinct !DILexicalBlock(scope: !704, file: !2, line: 296, column: 2)
!709 = !{i64 2154144650, i64 2154144679, i64 2154144725, i64 2154144783, i64 2154144837, i64 2154144891, i64 2154144946, i64 2154144977}
!710 = !DILocation(line: 297, column: 36, scope: !692)
!711 = !DILocation(line: 297, column: 40, scope: !692)
!712 = !DILocation(line: 297, column: 15, scope: !692)
!713 = !DILocation(line: 297, column: 2, scope: !692)
!714 = !DILocation(line: 297, column: 6, scope: !692)
!715 = !DILocation(line: 297, column: 12, scope: !692)
!716 = !DILocation(line: 298, column: 19, scope: !692)
!717 = !DILocation(line: 298, column: 23, scope: !692)
!718 = !DILocation(line: 298, column: 2, scope: !692)
!719 = !DILocation(line: 299, column: 1, scope: !692)
!720 = distinct !DISubprogram(name: "drm_buddy_block_is_allocated", scope: !38, file: !38, line: 109, type: !647, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !721)
!721 = !{!722}
!722 = !DILocalVariable(name: "block", arg: 1, scope: !720, file: !38, line: 109, type: !36)
!723 = !DILocation(line: 109, column: 54, scope: !720)
!724 = !DILocation(line: 111, column: 31, scope: !720)
!725 = !DILocation(line: 111, column: 9, scope: !720)
!726 = !DILocation(line: 111, column: 38, scope: !720)
!727 = !DILocation(line: 111, column: 2, scope: !720)
!728 = distinct !DISubprogram(name: "__drm_buddy_free", scope: !2, file: !2, line: 263, type: !532, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !729)
!729 = !{!730, !731, !732, !733}
!730 = !DILocalVariable(name: "mm", arg: 1, scope: !728, file: !2, line: 263, type: !154)
!731 = !DILocalVariable(name: "block", arg: 2, scope: !728, file: !2, line: 264, type: !36)
!732 = !DILocalVariable(name: "parent", scope: !728, file: !2, line: 266, type: !36)
!733 = !DILocalVariable(name: "buddy", scope: !734, file: !2, line: 269, type: !36)
!734 = distinct !DILexicalBlock(scope: !728, file: !2, line: 268, column: 35)
!735 = !DILocation(line: 263, column: 48, scope: !728)
!736 = !DILocation(line: 264, column: 33, scope: !728)
!737 = !DILocation(line: 266, column: 2, scope: !728)
!738 = !DILocation(line: 266, column: 26, scope: !728)
!739 = !DILocation(line: 268, column: 2, scope: !728)
!740 = !DILocation(line: 268, column: 19, scope: !728)
!741 = !DILocation(line: 268, column: 26, scope: !728)
!742 = !DILocation(line: 268, column: 17, scope: !728)
!743 = !DILocation(line: 269, column: 3, scope: !734)
!744 = !DILocation(line: 269, column: 27, scope: !734)
!745 = !DILocation(line: 271, column: 23, scope: !734)
!746 = !DILocation(line: 271, column: 11, scope: !734)
!747 = !DILocation(line: 271, column: 9, scope: !734)
!748 = !DILocation(line: 273, column: 32, scope: !749)
!749 = distinct !DILexicalBlock(scope: !734, file: !2, line: 273, column: 7)
!750 = !DILocation(line: 273, column: 8, scope: !749)
!751 = !DILocation(line: 273, column: 7, scope: !734)
!752 = !DILocation(line: 274, column: 4, scope: !749)
!753 = !DILocation(line: 276, column: 13, scope: !734)
!754 = !DILocation(line: 276, column: 20, scope: !734)
!755 = !DILocation(line: 276, column: 3, scope: !734)
!756 = !DILocation(line: 278, column: 18, scope: !734)
!757 = !DILocation(line: 278, column: 22, scope: !734)
!758 = !DILocation(line: 278, column: 3, scope: !734)
!759 = !DILocation(line: 279, column: 18, scope: !734)
!760 = !DILocation(line: 279, column: 22, scope: !734)
!761 = !DILocation(line: 279, column: 3, scope: !734)
!762 = !DILocation(line: 281, column: 11, scope: !734)
!763 = !DILocation(line: 281, column: 9, scope: !734)
!764 = !DILocation(line: 282, column: 2, scope: !728)
!765 = distinct !{!765, !739, !764, !261, !262}
!766 = !DILocation(line: 284, column: 12, scope: !728)
!767 = !DILocation(line: 284, column: 16, scope: !728)
!768 = !DILocation(line: 284, column: 2, scope: !728)
!769 = !DILocation(line: 285, column: 1, scope: !728)
!770 = distinct !DISubprogram(name: "drm_buddy_free_list", scope: !2, file: !2, line: 308, type: !771, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !154, !49}
!773 = !{!774, !775, !776, !777, !778, !781, !783}
!774 = !DILocalVariable(name: "mm", arg: 1, scope: !770, file: !2, line: 308, type: !154)
!775 = !DILocalVariable(name: "objects", arg: 2, scope: !770, file: !2, line: 308, type: !49)
!776 = !DILocalVariable(name: "block", scope: !770, file: !2, line: 310, type: !36)
!777 = !DILocalVariable(name: "on", scope: !770, file: !2, line: 310, type: !36)
!778 = !DILocalVariable(name: "__mptr", scope: !779, file: !2, line: 312, type: !35)
!779 = distinct !DILexicalBlock(scope: !780, file: !2, line: 312, column: 2)
!780 = distinct !DILexicalBlock(scope: !770, file: !2, line: 312, column: 2)
!781 = !DILocalVariable(name: "__mptr", scope: !782, file: !2, line: 312, type: !35)
!782 = distinct !DILexicalBlock(scope: !780, file: !2, line: 312, column: 2)
!783 = !DILocalVariable(name: "__mptr", scope: !784, file: !2, line: 312, type: !35)
!784 = distinct !DILexicalBlock(scope: !785, file: !2, line: 312, column: 2)
!785 = distinct !DILexicalBlock(scope: !780, file: !2, line: 312, column: 2)
!786 = !DILocation(line: 308, column: 44, scope: !770)
!787 = !DILocation(line: 308, column: 66, scope: !770)
!788 = !DILocation(line: 310, column: 2, scope: !770)
!789 = !DILocation(line: 310, column: 26, scope: !770)
!790 = !DILocation(line: 310, column: 34, scope: !770)
!791 = !DILocation(line: 312, column: 2, scope: !779)
!792 = !DILocation(line: 312, column: 2, scope: !780)
!793 = !DILocation(line: 312, column: 2, scope: !782)
!794 = !DILocation(line: 312, column: 2, scope: !785)
!795 = !DILocation(line: 313, column: 24, scope: !796)
!796 = distinct !DILexicalBlock(scope: !785, file: !2, line: 312, column: 53)
!797 = !DILocation(line: 313, column: 28, scope: !796)
!798 = !DILocation(line: 313, column: 3, scope: !796)
!799 = !DILocation(line: 314, column: 3, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !2, line: 314, column: 3)
!801 = !DILocation(line: 315, column: 2, scope: !796)
!802 = !DILocation(line: 312, column: 2, scope: !784)
!803 = distinct !{!803, !792, !804, !261, !262}
!804 = !DILocation(line: 315, column: 2, scope: !780)
!805 = !DILocation(line: 316, column: 17, scope: !770)
!806 = !DILocation(line: 316, column: 2, scope: !770)
!807 = !DILocation(line: 317, column: 1, scope: !770)
!808 = distinct !DISubprogram(name: "__might_resched", scope: !809, file: !809, line: 184, type: !810, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !813)
!809 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!810 = !DISubroutineType(types: !811)
!811 = !{null, !812, !55, !13}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!813 = !{!814, !815, !816}
!814 = !DILocalVariable(name: "file", arg: 1, scope: !808, file: !809, line: 184, type: !812)
!815 = !DILocalVariable(name: "line", arg: 2, scope: !808, file: !809, line: 184, type: !55)
!816 = !DILocalVariable(name: "offsets", arg: 3, scope: !808, file: !809, line: 185, type: !13)
!817 = !DILocation(line: 184, column: 50, scope: !808)
!818 = !DILocation(line: 184, column: 60, scope: !808)
!819 = !DILocation(line: 185, column: 23, scope: !808)
!820 = !DILocation(line: 185, column: 34, scope: !808)
!821 = !DILocation(line: 2104, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !136, file: !137, line: 2104, column: 9)
!823 = !DILocation(line: 2104, column: 9, scope: !136)
!824 = !DILocation(line: 2104, column: 2, scope: !136)
!825 = distinct !DISubprogram(name: "drm_buddy_block_trim", scope: !2, file: !2, line: 600, type: !826, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{!55, !154, !28, !49}
!828 = !{!829, !830, !831, !832, !833, !834, !835, !836, !837, !839, !842}
!829 = !DILocalVariable(name: "mm", arg: 1, scope: !825, file: !2, line: 600, type: !154)
!830 = !DILocalVariable(name: "new_size", arg: 2, scope: !825, file: !2, line: 601, type: !28)
!831 = !DILocalVariable(name: "blocks", arg: 3, scope: !825, file: !2, line: 602, type: !49)
!832 = !DILocalVariable(name: "parent", scope: !825, file: !2, line: 604, type: !36)
!833 = !DILocalVariable(name: "block", scope: !825, file: !2, line: 605, type: !36)
!834 = !DILocalVariable(name: "dfs", scope: !825, file: !2, line: 606, type: !46)
!835 = !DILocalVariable(name: "new_start", scope: !825, file: !2, line: 607, type: !28)
!836 = !DILocalVariable(name: "err", scope: !825, file: !2, line: 608, type: !55)
!837 = !DILocalVariable(name: "__mptr", scope: !838, file: !2, line: 613, type: !35)
!838 = distinct !DILexicalBlock(scope: !825, file: !2, line: 613, column: 10)
!839 = !DILocalVariable(name: "__ret_warn_on", scope: !840, file: !2, line: 617, type: !55)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 617, column: 6)
!841 = distinct !DILexicalBlock(scope: !825, file: !2, line: 617, column: 6)
!842 = !DILocalVariable(name: "__flags", scope: !843, file: !2, line: 617, type: !55)
!843 = distinct !DILexicalBlock(scope: !844, file: !2, line: 617, column: 6)
!844 = distinct !DILexicalBlock(scope: !840, file: !2, line: 617, column: 6)
!845 = !DILocation(line: 600, column: 44, scope: !825)
!846 = !DILocation(line: 601, column: 9, scope: !825)
!847 = !DILocation(line: 602, column: 23, scope: !825)
!848 = !DILocation(line: 604, column: 2, scope: !825)
!849 = !DILocation(line: 604, column: 26, scope: !825)
!850 = !DILocation(line: 605, column: 2, scope: !825)
!851 = !DILocation(line: 605, column: 26, scope: !825)
!852 = !DILocation(line: 606, column: 2, scope: !825)
!853 = !DILocation(line: 607, column: 2, scope: !825)
!854 = !DILocation(line: 607, column: 6, scope: !825)
!855 = !DILocation(line: 608, column: 2, scope: !825)
!856 = !DILocation(line: 608, column: 6, scope: !825)
!857 = !DILocation(line: 610, column: 24, scope: !858)
!858 = distinct !DILexicalBlock(scope: !825, file: !2, line: 610, column: 6)
!859 = !DILocation(line: 610, column: 7, scope: !858)
!860 = !DILocation(line: 610, column: 6, scope: !825)
!861 = !DILocation(line: 611, column: 3, scope: !858)
!862 = !DILocation(line: 613, column: 10, scope: !838)
!863 = !DILocation(line: 613, column: 10, scope: !825)
!864 = !DILocation(line: 613, column: 8, scope: !825)
!865 = !DILocation(line: 617, column: 6, scope: !840)
!866 = !DILocation(line: 617, column: 6, scope: !844)
!867 = !DILocation(line: 617, column: 6, scope: !843)
!868 = !DILocation(line: 617, column: 6, scope: !869)
!869 = distinct !DILexicalBlock(scope: !843, file: !2, line: 617, column: 6)
!870 = !DILocation(line: 617, column: 6, scope: !871)
!871 = distinct !DILexicalBlock(scope: !843, file: !2, line: 617, column: 6)
!872 = !{i64 2154189196, i64 2154189225, i64 2154189271, i64 2154189329, i64 2154189383, i64 2154189437, i64 2154189492, i64 2154189523, i64 2154189831, i64 2154189837, i64 2154189884, i64 2154189907, i64 2154189933}
!873 = !DILocation(line: 617, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !843, file: !2, line: 617, column: 6)
!875 = !DILocation(line: 617, column: 6, scope: !841)
!876 = !DILocation(line: 617, column: 6, scope: !825)
!877 = !DILocation(line: 618, column: 3, scope: !841)
!878 = !DILocation(line: 620, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !825, file: !2, line: 620, column: 6)
!880 = !DILocation(line: 620, column: 38, scope: !879)
!881 = !DILocation(line: 620, column: 42, scope: !879)
!882 = !DILocation(line: 620, column: 17, scope: !879)
!883 = !DILocation(line: 620, column: 15, scope: !879)
!884 = !DILocation(line: 620, column: 6, scope: !825)
!885 = !DILocation(line: 621, column: 3, scope: !879)
!886 = !DILocation(line: 623, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !825, file: !2, line: 623, column: 6)
!888 = !DILocation(line: 623, column: 16, scope: !887)
!889 = !DILocation(line: 623, column: 20, scope: !887)
!890 = !DILocation(line: 623, column: 6, scope: !825)
!891 = !DILocation(line: 624, column: 3, scope: !887)
!892 = !DILocation(line: 626, column: 6, scope: !893)
!893 = distinct !DILexicalBlock(scope: !825, file: !2, line: 626, column: 6)
!894 = !DILocation(line: 626, column: 39, scope: !893)
!895 = !DILocation(line: 626, column: 43, scope: !893)
!896 = !DILocation(line: 626, column: 18, scope: !893)
!897 = !DILocation(line: 626, column: 15, scope: !893)
!898 = !DILocation(line: 626, column: 6, scope: !825)
!899 = !DILocation(line: 627, column: 3, scope: !893)
!900 = !DILocation(line: 629, column: 12, scope: !825)
!901 = !DILocation(line: 629, column: 19, scope: !825)
!902 = !DILocation(line: 629, column: 2, scope: !825)
!903 = !DILocation(line: 630, column: 12, scope: !825)
!904 = !DILocation(line: 630, column: 16, scope: !825)
!905 = !DILocation(line: 630, column: 2, scope: !825)
!906 = !DILocation(line: 631, column: 36, scope: !825)
!907 = !DILocation(line: 631, column: 40, scope: !825)
!908 = !DILocation(line: 631, column: 15, scope: !825)
!909 = !DILocation(line: 631, column: 2, scope: !825)
!910 = !DILocation(line: 631, column: 6, scope: !825)
!911 = !DILocation(line: 631, column: 12, scope: !825)
!912 = !DILocation(line: 634, column: 11, scope: !825)
!913 = !DILocation(line: 634, column: 18, scope: !825)
!914 = !DILocation(line: 634, column: 9, scope: !825)
!915 = !DILocation(line: 635, column: 2, scope: !825)
!916 = !DILocation(line: 635, column: 9, scope: !825)
!917 = !DILocation(line: 635, column: 16, scope: !825)
!918 = !DILocation(line: 637, column: 37, scope: !825)
!919 = !DILocation(line: 637, column: 14, scope: !825)
!920 = !DILocation(line: 637, column: 12, scope: !825)
!921 = !DILocation(line: 638, column: 12, scope: !825)
!922 = !DILocation(line: 638, column: 19, scope: !825)
!923 = !DILocation(line: 638, column: 2, scope: !825)
!924 = !DILocation(line: 639, column: 23, scope: !825)
!925 = !DILocation(line: 639, column: 33, scope: !825)
!926 = !DILocation(line: 639, column: 44, scope: !825)
!927 = !DILocation(line: 639, column: 54, scope: !825)
!928 = !DILocation(line: 639, column: 9, scope: !825)
!929 = !DILocation(line: 639, column: 6, scope: !825)
!930 = !DILocation(line: 640, column: 6, scope: !931)
!931 = distinct !DILexicalBlock(scope: !825, file: !2, line: 640, column: 6)
!932 = !DILocation(line: 640, column: 6, scope: !825)
!933 = !DILocation(line: 641, column: 18, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !2, line: 640, column: 11)
!935 = !DILocation(line: 641, column: 3, scope: !934)
!936 = !DILocation(line: 642, column: 37, scope: !934)
!937 = !DILocation(line: 642, column: 41, scope: !934)
!938 = !DILocation(line: 642, column: 16, scope: !934)
!939 = !DILocation(line: 642, column: 3, scope: !934)
!940 = !DILocation(line: 642, column: 7, scope: !934)
!941 = !DILocation(line: 642, column: 13, scope: !934)
!942 = !DILocation(line: 643, column: 13, scope: !934)
!943 = !DILocation(line: 643, column: 20, scope: !934)
!944 = !DILocation(line: 643, column: 26, scope: !934)
!945 = !DILocation(line: 643, column: 3, scope: !934)
!946 = !DILocation(line: 644, column: 2, scope: !934)
!947 = !DILocation(line: 646, column: 18, scope: !825)
!948 = !DILocation(line: 646, column: 2, scope: !825)
!949 = !DILocation(line: 646, column: 9, scope: !825)
!950 = !DILocation(line: 646, column: 16, scope: !825)
!951 = !DILocation(line: 647, column: 9, scope: !825)
!952 = !DILocation(line: 647, column: 2, scope: !825)
!953 = !DILocation(line: 648, column: 1, scope: !825)
!954 = distinct !DISubprogram(name: "list_is_singular", scope: !433, file: !433, line: 449, type: !955, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !959)
!955 = !DISubroutineType(types: !956)
!956 = !{!55, !957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!959 = !{!960}
!960 = !DILocalVariable(name: "head", arg: 1, scope: !954, file: !433, line: 449, type: !957)
!961 = !DILocation(line: 449, column: 60, scope: !954)
!962 = !DILocation(line: 451, column: 21, scope: !954)
!963 = !DILocation(line: 451, column: 10, scope: !954)
!964 = !DILocation(line: 451, column: 27, scope: !954)
!965 = !DILocation(line: 451, column: 31, scope: !954)
!966 = !DILocation(line: 451, column: 37, scope: !954)
!967 = !DILocation(line: 451, column: 45, scope: !954)
!968 = !DILocation(line: 451, column: 51, scope: !954)
!969 = !DILocation(line: 451, column: 42, scope: !954)
!970 = !DILocation(line: 0, scope: !954)
!971 = !DILocation(line: 451, column: 2, scope: !954)
!972 = distinct !DISubprogram(name: "list_del", scope: !433, file: !433, line: 227, type: !434, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !973)
!973 = !{!974}
!974 = !DILocalVariable(name: "entry", arg: 1, scope: !972, file: !433, line: 227, type: !49)
!975 = !DILocation(line: 227, column: 47, scope: !972)
!976 = !DILocation(line: 229, column: 19, scope: !972)
!977 = !DILocation(line: 229, column: 2, scope: !972)
!978 = !DILocation(line: 230, column: 2, scope: !972)
!979 = !DILocation(line: 230, column: 9, scope: !972)
!980 = !DILocation(line: 230, column: 14, scope: !972)
!981 = !DILocation(line: 231, column: 2, scope: !972)
!982 = !DILocation(line: 231, column: 9, scope: !972)
!983 = !DILocation(line: 231, column: 14, scope: !972)
!984 = !DILocation(line: 232, column: 1, scope: !972)
!985 = distinct !DISubprogram(name: "drm_buddy_block_offset", scope: !38, file: !38, line: 91, type: !986, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{!28, !36}
!988 = !{!989}
!989 = !DILocalVariable(name: "block", arg: 1, scope: !985, file: !38, line: 91, type: !36)
!990 = !DILocation(line: 91, column: 48, scope: !985)
!991 = !DILocation(line: 93, column: 9, scope: !985)
!992 = !DILocation(line: 93, column: 16, scope: !985)
!993 = !DILocation(line: 93, column: 23, scope: !985)
!994 = !DILocation(line: 93, column: 2, scope: !985)
!995 = distinct !DISubprogram(name: "list_add", scope: !433, file: !433, line: 167, type: !996, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !49, !49}
!998 = !{!999, !1000}
!999 = !DILocalVariable(name: "new", arg: 1, scope: !995, file: !433, line: 167, type: !49)
!1000 = !DILocalVariable(name: "head", arg: 2, scope: !995, file: !433, line: 167, type: !49)
!1001 = !DILocation(line: 167, column: 47, scope: !995)
!1002 = !DILocation(line: 167, column: 70, scope: !995)
!1003 = !DILocation(line: 169, column: 13, scope: !995)
!1004 = !DILocation(line: 169, column: 18, scope: !995)
!1005 = !DILocation(line: 169, column: 24, scope: !995)
!1006 = !DILocation(line: 169, column: 30, scope: !995)
!1007 = !DILocation(line: 169, column: 2, scope: !995)
!1008 = !DILocation(line: 170, column: 1, scope: !995)
!1009 = distinct !DISubprogram(name: "__alloc_range", scope: !2, file: !2, line: 490, type: !1010, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!55, !154, !49, !28, !28, !49}
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1025, !1026, !1028, !1029, !1031, !1032}
!1013 = !DILocalVariable(name: "mm", arg: 1, scope: !1009, file: !2, line: 490, type: !154)
!1014 = !DILocalVariable(name: "dfs", arg: 2, scope: !1009, file: !2, line: 491, type: !49)
!1015 = !DILocalVariable(name: "start", arg: 3, scope: !1009, file: !2, line: 492, type: !28)
!1016 = !DILocalVariable(name: "size", arg: 4, scope: !1009, file: !2, line: 492, type: !28)
!1017 = !DILocalVariable(name: "blocks", arg: 5, scope: !1009, file: !2, line: 493, type: !49)
!1018 = !DILocalVariable(name: "block", scope: !1009, file: !2, line: 495, type: !36)
!1019 = !DILocalVariable(name: "buddy", scope: !1009, file: !2, line: 496, type: !36)
!1020 = !DILocalVariable(name: "allocated", scope: !1009, file: !2, line: 497, type: !46)
!1021 = !DILocalVariable(name: "end", scope: !1009, file: !2, line: 498, type: !28)
!1022 = !DILocalVariable(name: "err", scope: !1009, file: !2, line: 499, type: !55)
!1023 = !DILocalVariable(name: "block_start", scope: !1024, file: !2, line: 504, type: !28)
!1024 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 503, column: 5)
!1025 = !DILocalVariable(name: "block_end", scope: !1024, file: !2, line: 505, type: !28)
!1026 = !DILocalVariable(name: "head__", scope: !1027, file: !2, line: 507, type: !49)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 507, column: 11)
!1028 = !DILocalVariable(name: "pos__", scope: !1027, file: !2, line: 507, type: !49)
!1029 = !DILocalVariable(name: "__mptr", scope: !1030, file: !2, line: 507, type: !35)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 507, column: 11)
!1031 = !DILabel(scope: !1009, name: "err_undo", file: !2, line: 551)
!1032 = !DILabel(scope: !1009, name: "err_free", file: !2, line: 563)
!1033 = !DILocation(line: 490, column: 44, scope: !1009)
!1034 = !DILocation(line: 491, column: 23, scope: !1009)
!1035 = !DILocation(line: 492, column: 9, scope: !1009)
!1036 = !DILocation(line: 492, column: 20, scope: !1009)
!1037 = !DILocation(line: 493, column: 23, scope: !1009)
!1038 = !DILocation(line: 495, column: 2, scope: !1009)
!1039 = !DILocation(line: 495, column: 26, scope: !1009)
!1040 = !DILocation(line: 496, column: 2, scope: !1009)
!1041 = !DILocation(line: 496, column: 26, scope: !1009)
!1042 = !DILocation(line: 497, column: 2, scope: !1009)
!1043 = !DILocation(line: 498, column: 2, scope: !1009)
!1044 = !DILocation(line: 498, column: 6, scope: !1009)
!1045 = !DILocation(line: 499, column: 2, scope: !1009)
!1046 = !DILocation(line: 499, column: 6, scope: !1009)
!1047 = !DILocation(line: 501, column: 8, scope: !1009)
!1048 = !DILocation(line: 501, column: 16, scope: !1009)
!1049 = !DILocation(line: 501, column: 14, scope: !1009)
!1050 = !DILocation(line: 501, column: 21, scope: !1009)
!1051 = !DILocation(line: 501, column: 6, scope: !1009)
!1052 = !DILocation(line: 503, column: 2, scope: !1009)
!1053 = !DILocation(line: 504, column: 3, scope: !1024)
!1054 = !DILocation(line: 504, column: 7, scope: !1024)
!1055 = !DILocation(line: 505, column: 3, scope: !1024)
!1056 = !DILocation(line: 505, column: 7, scope: !1024)
!1057 = !DILocation(line: 507, column: 11, scope: !1027)
!1058 = !DILocation(line: 507, column: 11, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 507, column: 11)
!1060 = !DILocation(line: 507, column: 11, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 507, column: 11)
!1062 = !DILocation(line: 507, column: 11, scope: !1030)
!1063 = !DILocation(line: 507, column: 11, scope: !1024)
!1064 = !DILocation(line: 507, column: 9, scope: !1024)
!1065 = !DILocation(line: 510, column: 8, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 510, column: 7)
!1067 = !DILocation(line: 510, column: 7, scope: !1024)
!1068 = !DILocation(line: 511, column: 4, scope: !1066)
!1069 = !DILocation(line: 513, column: 13, scope: !1024)
!1070 = !DILocation(line: 513, column: 20, scope: !1024)
!1071 = !DILocation(line: 513, column: 3, scope: !1024)
!1072 = !DILocation(line: 515, column: 40, scope: !1024)
!1073 = !DILocation(line: 515, column: 17, scope: !1024)
!1074 = !DILocation(line: 515, column: 15, scope: !1024)
!1075 = !DILocation(line: 516, column: 15, scope: !1024)
!1076 = !DILocation(line: 516, column: 50, scope: !1024)
!1077 = !DILocation(line: 516, column: 54, scope: !1024)
!1078 = !DILocation(line: 516, column: 29, scope: !1024)
!1079 = !DILocation(line: 516, column: 27, scope: !1024)
!1080 = !DILocation(line: 516, column: 61, scope: !1024)
!1081 = !DILocation(line: 516, column: 13, scope: !1024)
!1082 = !DILocation(line: 518, column: 17, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 518, column: 7)
!1084 = !DILocation(line: 518, column: 24, scope: !1083)
!1085 = !DILocation(line: 518, column: 29, scope: !1083)
!1086 = !DILocation(line: 518, column: 42, scope: !1083)
!1087 = !DILocation(line: 518, column: 8, scope: !1083)
!1088 = !DILocation(line: 518, column: 7, scope: !1024)
!1089 = !DILocation(line: 519, column: 4, scope: !1083)
!1090 = !DILocation(line: 521, column: 36, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 521, column: 7)
!1092 = !DILocation(line: 521, column: 7, scope: !1091)
!1093 = !DILocation(line: 521, column: 7, scope: !1024)
!1094 = !DILocation(line: 522, column: 8, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 521, column: 44)
!1096 = !DILocation(line: 523, column: 4, scope: !1095)
!1097 = !DILocation(line: 526, column: 16, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 526, column: 7)
!1099 = !DILocation(line: 526, column: 23, scope: !1098)
!1100 = !DILocation(line: 526, column: 28, scope: !1098)
!1101 = !DILocation(line: 526, column: 41, scope: !1098)
!1102 = !DILocation(line: 526, column: 7, scope: !1098)
!1103 = !DILocation(line: 526, column: 7, scope: !1024)
!1104 = !DILocation(line: 527, column: 33, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 527, column: 8)
!1106 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 526, column: 53)
!1107 = !DILocation(line: 527, column: 9, scope: !1105)
!1108 = !DILocation(line: 527, column: 8, scope: !1106)
!1109 = !DILocation(line: 528, column: 9, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 527, column: 41)
!1111 = !DILocation(line: 529, column: 5, scope: !1110)
!1112 = !DILocation(line: 532, column: 19, scope: !1106)
!1113 = !DILocation(line: 532, column: 4, scope: !1106)
!1114 = !DILocation(line: 533, column: 38, scope: !1106)
!1115 = !DILocation(line: 533, column: 42, scope: !1106)
!1116 = !DILocation(line: 533, column: 17, scope: !1106)
!1117 = !DILocation(line: 533, column: 4, scope: !1106)
!1118 = !DILocation(line: 533, column: 8, scope: !1106)
!1119 = !DILocation(line: 533, column: 14, scope: !1106)
!1120 = !DILocation(line: 534, column: 19, scope: !1106)
!1121 = !DILocation(line: 534, column: 26, scope: !1106)
!1122 = !DILocation(line: 534, column: 4, scope: !1106)
!1123 = !DILocation(line: 535, column: 4, scope: !1106)
!1124 = !DILocation(line: 538, column: 33, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 538, column: 7)
!1126 = !DILocation(line: 538, column: 8, scope: !1125)
!1127 = !DILocation(line: 538, column: 7, scope: !1024)
!1128 = !DILocation(line: 539, column: 22, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 538, column: 41)
!1130 = !DILocation(line: 539, column: 26, scope: !1129)
!1131 = !DILocation(line: 539, column: 10, scope: !1129)
!1132 = !DILocation(line: 539, column: 8, scope: !1129)
!1133 = !DILocation(line: 540, column: 8, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 540, column: 8)
!1135 = !DILocation(line: 540, column: 8, scope: !1129)
!1136 = !DILocation(line: 541, column: 5, scope: !1134)
!1137 = !DILocation(line: 542, column: 3, scope: !1129)
!1138 = !DILocation(line: 544, column: 13, scope: !1024)
!1139 = !DILocation(line: 544, column: 20, scope: !1024)
!1140 = !DILocation(line: 544, column: 27, scope: !1024)
!1141 = !DILocation(line: 544, column: 37, scope: !1024)
!1142 = !DILocation(line: 544, column: 3, scope: !1024)
!1143 = !DILocation(line: 545, column: 13, scope: !1024)
!1144 = !DILocation(line: 545, column: 20, scope: !1024)
!1145 = !DILocation(line: 545, column: 26, scope: !1024)
!1146 = !DILocation(line: 545, column: 36, scope: !1024)
!1147 = !DILocation(line: 545, column: 3, scope: !1024)
!1148 = !DILocation(line: 546, column: 2, scope: !1009)
!1149 = !DILocation(line: 546, column: 2, scope: !1024)
!1150 = distinct !{!1150, !1052, !1151, !262}
!1151 = !DILocation(line: 546, column: 12, scope: !1009)
!1152 = !DILocation(line: 548, column: 31, scope: !1009)
!1153 = !DILocation(line: 548, column: 2, scope: !1009)
!1154 = !DILocation(line: 549, column: 2, scope: !1009)
!1155 = !DILocation(line: 551, column: 1, scope: !1009)
!1156 = !DILocation(line: 557, column: 22, scope: !1009)
!1157 = !DILocation(line: 557, column: 10, scope: !1009)
!1158 = !DILocation(line: 557, column: 8, scope: !1009)
!1159 = !DILocation(line: 558, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 558, column: 6)
!1161 = !DILocation(line: 558, column: 12, scope: !1160)
!1162 = !DILocation(line: 559, column: 31, scope: !1160)
!1163 = !DILocation(line: 559, column: 7, scope: !1160)
!1164 = !DILocation(line: 559, column: 38, scope: !1160)
!1165 = !DILocation(line: 560, column: 31, scope: !1160)
!1166 = !DILocation(line: 560, column: 7, scope: !1160)
!1167 = !DILocation(line: 558, column: 6, scope: !1009)
!1168 = !DILocation(line: 561, column: 20, scope: !1160)
!1169 = !DILocation(line: 561, column: 24, scope: !1160)
!1170 = !DILocation(line: 561, column: 3, scope: !1160)
!1171 = !DILocation(line: 560, column: 37, scope: !1160)
!1172 = !DILocation(line: 563, column: 1, scope: !1009)
!1173 = !DILocation(line: 564, column: 22, scope: !1009)
!1174 = !DILocation(line: 564, column: 2, scope: !1009)
!1175 = !DILocation(line: 565, column: 9, scope: !1009)
!1176 = !DILocation(line: 565, column: 2, scope: !1009)
!1177 = !DILocation(line: 566, column: 1, scope: !1009)
!1178 = distinct !DISubprogram(name: "mark_allocated", scope: !2, file: !2, line: 60, type: !1179, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1181)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !36}
!1181 = !{!1182}
!1182 = !DILocalVariable(name: "block", arg: 1, scope: !1178, file: !2, line: 60, type: !36)
!1183 = !DILocation(line: 60, column: 52, scope: !1178)
!1184 = !DILocation(line: 62, column: 2, scope: !1178)
!1185 = !DILocation(line: 62, column: 9, scope: !1178)
!1186 = !DILocation(line: 62, column: 16, scope: !1178)
!1187 = !DILocation(line: 63, column: 2, scope: !1178)
!1188 = !DILocation(line: 63, column: 9, scope: !1178)
!1189 = !DILocation(line: 63, column: 16, scope: !1178)
!1190 = !DILocation(line: 65, column: 12, scope: !1178)
!1191 = !DILocation(line: 65, column: 19, scope: !1178)
!1192 = !DILocation(line: 65, column: 2, scope: !1178)
!1193 = !DILocation(line: 66, column: 1, scope: !1178)
!1194 = distinct !DISubprogram(name: "drm_buddy_alloc_blocks", scope: !2, file: !2, line: 671, type: !1195, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1197)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!55, !154, !28, !28, !28, !28, !49, !52}
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1214, !1215, !1216, !1219, !1220}
!1198 = !DILocalVariable(name: "mm", arg: 1, scope: !1194, file: !2, line: 671, type: !154)
!1199 = !DILocalVariable(name: "start", arg: 2, scope: !1194, file: !2, line: 672, type: !28)
!1200 = !DILocalVariable(name: "end", arg: 3, scope: !1194, file: !2, line: 672, type: !28)
!1201 = !DILocalVariable(name: "size", arg: 4, scope: !1194, file: !2, line: 672, type: !28)
!1202 = !DILocalVariable(name: "min_page_size", arg: 5, scope: !1194, file: !2, line: 673, type: !28)
!1203 = !DILocalVariable(name: "blocks", arg: 6, scope: !1194, file: !2, line: 674, type: !49)
!1204 = !DILocalVariable(name: "flags", arg: 7, scope: !1194, file: !2, line: 675, type: !52)
!1205 = !DILocalVariable(name: "block", scope: !1194, file: !2, line: 677, type: !36)
!1206 = !DILocalVariable(name: "min_order", scope: !1194, file: !2, line: 678, type: !13)
!1207 = !DILocalVariable(name: "order", scope: !1194, file: !2, line: 678, type: !13)
!1208 = !DILocalVariable(name: "pages", scope: !1194, file: !2, line: 679, type: !52)
!1209 = !DILocalVariable(name: "allocated", scope: !1194, file: !2, line: 680, type: !46)
!1210 = !DILocalVariable(name: "err", scope: !1194, file: !2, line: 681, type: !55)
!1211 = !DILocalVariable(name: "start__", scope: !1212, file: !2, line: 698, type: !28)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 698, column: 6)
!1213 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 698, column: 6)
!1214 = !DILocalVariable(name: "size__", scope: !1212, file: !2, line: 698, type: !28)
!1215 = !DILocalVariable(name: "max__", scope: !1212, file: !2, line: 698, type: !28)
!1216 = !DILocalVariable(name: "__UNIQUE_ID___x279", scope: !1217, file: !2, line: 713, type: !13)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 713, column: 11)
!1218 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 712, column: 5)
!1219 = !DILocalVariable(name: "__UNIQUE_ID___y280", scope: !1217, file: !2, line: 713, type: !13)
!1220 = !DILabel(scope: !1194, name: "err_free", file: !2, line: 748)
!1221 = !DILocation(line: 671, column: 46, scope: !1194)
!1222 = !DILocation(line: 672, column: 11, scope: !1194)
!1223 = !DILocation(line: 672, column: 22, scope: !1194)
!1224 = !DILocation(line: 672, column: 31, scope: !1194)
!1225 = !DILocation(line: 673, column: 11, scope: !1194)
!1226 = !DILocation(line: 674, column: 25, scope: !1194)
!1227 = !DILocation(line: 675, column: 21, scope: !1194)
!1228 = !DILocation(line: 677, column: 2, scope: !1194)
!1229 = !DILocation(line: 677, column: 26, scope: !1194)
!1230 = !DILocation(line: 678, column: 2, scope: !1194)
!1231 = !DILocation(line: 678, column: 15, scope: !1194)
!1232 = !DILocation(line: 678, column: 26, scope: !1194)
!1233 = !DILocation(line: 679, column: 2, scope: !1194)
!1234 = !DILocation(line: 679, column: 16, scope: !1194)
!1235 = !DILocation(line: 680, column: 2, scope: !1194)
!1236 = !DILocation(line: 681, column: 2, scope: !1194)
!1237 = !DILocation(line: 681, column: 6, scope: !1194)
!1238 = !DILocation(line: 683, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 683, column: 6)
!1240 = !DILocation(line: 683, column: 13, scope: !1239)
!1241 = !DILocation(line: 683, column: 17, scope: !1239)
!1242 = !DILocation(line: 683, column: 11, scope: !1239)
!1243 = !DILocation(line: 683, column: 6, scope: !1194)
!1244 = !DILocation(line: 684, column: 3, scope: !1239)
!1245 = !DILocation(line: 686, column: 6, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 686, column: 6)
!1247 = !DILocation(line: 686, column: 22, scope: !1246)
!1248 = !DILocation(line: 686, column: 26, scope: !1246)
!1249 = !DILocation(line: 686, column: 20, scope: !1246)
!1250 = !DILocation(line: 686, column: 6, scope: !1194)
!1251 = !DILocation(line: 687, column: 3, scope: !1246)
!1252 = !DILocation(line: 689, column: 21, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 689, column: 6)
!1254 = !DILocation(line: 689, column: 7, scope: !1253)
!1255 = !DILocation(line: 689, column: 6, scope: !1194)
!1256 = !DILocation(line: 690, column: 3, scope: !1253)
!1257 = !DILocation(line: 692, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 692, column: 6)
!1259 = !DILocation(line: 692, column: 6, scope: !1194)
!1260 = !DILocation(line: 693, column: 3, scope: !1258)
!1261 = !DILocation(line: 695, column: 6, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 695, column: 6)
!1263 = !DILocation(line: 695, column: 12, scope: !1262)
!1264 = !DILocation(line: 695, column: 16, scope: !1262)
!1265 = !DILocation(line: 695, column: 10, scope: !1262)
!1266 = !DILocation(line: 695, column: 6, scope: !1194)
!1267 = !DILocation(line: 696, column: 3, scope: !1262)
!1268 = !DILocation(line: 698, column: 6, scope: !1212)
!1269 = !DILocation(line: 698, column: 6, scope: !1213)
!1270 = !DILocation(line: 698, column: 6, scope: !1194)
!1271 = !DILocation(line: 699, column: 3, scope: !1213)
!1272 = !DILocation(line: 702, column: 6, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 702, column: 6)
!1274 = !DILocation(line: 702, column: 14, scope: !1273)
!1275 = !DILocation(line: 702, column: 12, scope: !1273)
!1276 = !DILocation(line: 702, column: 22, scope: !1273)
!1277 = !DILocation(line: 702, column: 19, scope: !1273)
!1278 = !DILocation(line: 702, column: 6, scope: !1194)
!1279 = !DILocation(line: 703, column: 34, scope: !1273)
!1280 = !DILocation(line: 703, column: 38, scope: !1273)
!1281 = !DILocation(line: 703, column: 45, scope: !1273)
!1282 = !DILocation(line: 703, column: 51, scope: !1273)
!1283 = !DILocation(line: 703, column: 10, scope: !1273)
!1284 = !DILocation(line: 703, column: 3, scope: !1273)
!1285 = !DILocation(line: 705, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 705, column: 6)
!1287 = !DILocation(line: 705, column: 6, scope: !1194)
!1288 = !DILocation(line: 706, column: 3, scope: !1286)
!1289 = !DILocation(line: 708, column: 10, scope: !1194)
!1290 = !DILocation(line: 708, column: 18, scope: !1194)
!1291 = !DILocation(line: 708, column: 15, scope: !1194)
!1292 = !DILocation(line: 708, column: 8, scope: !1194)
!1293 = !DILocation(line: 709, column: 14, scope: !1194)
!1294 = !DILocation(line: 709, column: 10, scope: !1194)
!1295 = !DILocation(line: 709, column: 21, scope: !1194)
!1296 = !DILocation(line: 709, column: 8, scope: !1194)
!1297 = !DILocation(line: 710, column: 14, scope: !1194)
!1298 = !DILocation(line: 710, column: 37, scope: !1194)
!1299 = !DILocation(line: 710, column: 35, scope: !1194)
!1300 = !DILocation(line: 710, column: 12, scope: !1194)
!1301 = !DILocation(line: 712, column: 2, scope: !1194)
!1302 = !DILocation(line: 713, column: 11, scope: !1217)
!1303 = !DILocation(line: 713, column: 11, scope: !1218)
!1304 = !DILocation(line: 713, column: 9, scope: !1218)
!1305 = !DILocation(line: 714, column: 3, scope: !1218)
!1306 = !DILocation(line: 714, column: 3, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 714, column: 3)
!1308 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 714, column: 3)
!1309 = !DILocation(line: 714, column: 3, scope: !1308)
!1310 = !DILocation(line: 714, column: 3, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 714, column: 3)
!1312 = !DILocation(line: 714, column: 3, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 714, column: 3)
!1314 = !DILocation(line: 714, column: 3, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 714, column: 3)
!1316 = !{i64 2154202896, i64 2154202925, i64 2154202971, i64 2154203029, i64 2154203083, i64 2154203137, i64 2154203192, i64 2154203223}
!1317 = !DILocation(line: 715, column: 3, scope: !1218)
!1318 = !DILocation(line: 715, column: 3, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 715, column: 3)
!1320 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 715, column: 3)
!1321 = !DILocation(line: 715, column: 3, scope: !1320)
!1322 = !DILocation(line: 715, column: 3, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 715, column: 3)
!1324 = !DILocation(line: 715, column: 3, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 715, column: 3)
!1326 = !DILocation(line: 715, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 715, column: 3)
!1328 = !{i64 2154203896, i64 2154203925, i64 2154203971, i64 2154204029, i64 2154204083, i64 2154204137, i64 2154204192, i64 2154204223}
!1329 = !DILocation(line: 717, column: 3, scope: !1218)
!1330 = !DILocation(line: 718, column: 8, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 718, column: 8)
!1332 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 717, column: 6)
!1333 = !DILocation(line: 718, column: 14, scope: !1331)
!1334 = !DILocation(line: 718, column: 8, scope: !1332)
!1335 = !DILocation(line: 720, column: 30, scope: !1331)
!1336 = !DILocation(line: 720, column: 34, scope: !1331)
!1337 = !DILocation(line: 720, column: 41, scope: !1331)
!1338 = !DILocation(line: 720, column: 46, scope: !1331)
!1339 = !DILocation(line: 720, column: 13, scope: !1331)
!1340 = !DILocation(line: 720, column: 11, scope: !1331)
!1341 = !DILocation(line: 720, column: 5, scope: !1331)
!1342 = !DILocation(line: 723, column: 33, scope: !1331)
!1343 = !DILocation(line: 723, column: 37, scope: !1331)
!1344 = !DILocation(line: 723, column: 44, scope: !1331)
!1345 = !DILocation(line: 723, column: 13, scope: !1331)
!1346 = !DILocation(line: 723, column: 11, scope: !1331)
!1347 = !DILocation(line: 725, column: 16, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 725, column: 8)
!1349 = !DILocation(line: 725, column: 9, scope: !1348)
!1350 = !DILocation(line: 725, column: 8, scope: !1332)
!1351 = !DILocation(line: 726, column: 5, scope: !1348)
!1352 = !DILocation(line: 728, column: 13, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 728, column: 8)
!1354 = !DILocation(line: 728, column: 19, scope: !1353)
!1355 = !DILocation(line: 728, column: 16, scope: !1353)
!1356 = !DILocation(line: 728, column: 8, scope: !1332)
!1357 = !DILocation(line: 729, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 728, column: 30)
!1359 = !DILocation(line: 730, column: 5, scope: !1358)
!1360 = !DILocation(line: 732, column: 3, scope: !1332)
!1361 = distinct !{!1361, !1329, !1362, !262}
!1362 = !DILocation(line: 732, column: 13, scope: !1218)
!1363 = !DILocation(line: 734, column: 18, scope: !1218)
!1364 = !DILocation(line: 734, column: 3, scope: !1218)
!1365 = !DILocation(line: 735, column: 37, scope: !1218)
!1366 = !DILocation(line: 735, column: 41, scope: !1218)
!1367 = !DILocation(line: 735, column: 16, scope: !1218)
!1368 = !DILocation(line: 735, column: 3, scope: !1218)
!1369 = !DILocation(line: 735, column: 7, scope: !1218)
!1370 = !DILocation(line: 735, column: 13, scope: !1218)
!1371 = !DILocation(line: 736, column: 25, scope: !1218)
!1372 = !DILocation(line: 736, column: 3, scope: !1218)
!1373 = !DILocation(line: 737, column: 18, scope: !1218)
!1374 = !DILocation(line: 737, column: 25, scope: !1218)
!1375 = !DILocation(line: 737, column: 3, scope: !1218)
!1376 = !DILocation(line: 739, column: 12, scope: !1218)
!1377 = !DILocation(line: 739, column: 9, scope: !1218)
!1378 = !DILocation(line: 741, column: 8, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 741, column: 7)
!1380 = !DILocation(line: 741, column: 7, scope: !1218)
!1381 = !DILocation(line: 742, column: 4, scope: !1379)
!1382 = !DILocation(line: 743, column: 2, scope: !1218)
!1383 = distinct !{!1383, !1301, !1384, !262}
!1384 = !DILocation(line: 743, column: 12, scope: !1194)
!1385 = !DILocation(line: 745, column: 31, scope: !1194)
!1386 = !DILocation(line: 745, column: 2, scope: !1194)
!1387 = !DILocation(line: 746, column: 2, scope: !1194)
!1388 = !DILocation(line: 748, column: 1, scope: !1194)
!1389 = !DILocation(line: 749, column: 22, scope: !1194)
!1390 = !DILocation(line: 749, column: 2, scope: !1194)
!1391 = !DILocation(line: 750, column: 9, scope: !1194)
!1392 = !DILocation(line: 750, column: 2, scope: !1194)
!1393 = !DILocation(line: 751, column: 1, scope: !1194)
!1394 = distinct !DISubprogram(name: "__drm_buddy_alloc_range", scope: !2, file: !2, line: 568, type: !1395, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!55, !154, !28, !28, !49}
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403}
!1398 = !DILocalVariable(name: "mm", arg: 1, scope: !1394, file: !2, line: 568, type: !154)
!1399 = !DILocalVariable(name: "start", arg: 2, scope: !1394, file: !2, line: 569, type: !28)
!1400 = !DILocalVariable(name: "size", arg: 3, scope: !1394, file: !2, line: 570, type: !28)
!1401 = !DILocalVariable(name: "blocks", arg: 4, scope: !1394, file: !2, line: 571, type: !49)
!1402 = !DILocalVariable(name: "dfs", scope: !1394, file: !2, line: 573, type: !46)
!1403 = !DILocalVariable(name: "i", scope: !1394, file: !2, line: 574, type: !55)
!1404 = !DILocation(line: 568, column: 54, scope: !1394)
!1405 = !DILocation(line: 569, column: 12, scope: !1394)
!1406 = !DILocation(line: 570, column: 12, scope: !1394)
!1407 = !DILocation(line: 571, column: 26, scope: !1394)
!1408 = !DILocation(line: 573, column: 2, scope: !1394)
!1409 = !DILocation(line: 574, column: 2, scope: !1394)
!1410 = !DILocation(line: 574, column: 6, scope: !1394)
!1411 = !DILocation(line: 576, column: 9, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 576, column: 2)
!1413 = !DILocation(line: 576, column: 7, scope: !1412)
!1414 = !DILocation(line: 576, column: 14, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 576, column: 2)
!1416 = !DILocation(line: 576, column: 18, scope: !1415)
!1417 = !DILocation(line: 576, column: 22, scope: !1415)
!1418 = !DILocation(line: 576, column: 16, scope: !1415)
!1419 = !DILocation(line: 576, column: 2, scope: !1412)
!1420 = !DILocation(line: 577, column: 18, scope: !1415)
!1421 = !DILocation(line: 577, column: 22, scope: !1415)
!1422 = !DILocation(line: 577, column: 28, scope: !1415)
!1423 = !DILocation(line: 577, column: 32, scope: !1415)
!1424 = !DILocation(line: 577, column: 3, scope: !1415)
!1425 = !DILocation(line: 576, column: 31, scope: !1415)
!1426 = !DILocation(line: 576, column: 2, scope: !1415)
!1427 = distinct !{!1427, !1419, !1428, !261, !262}
!1428 = !DILocation(line: 577, column: 46, scope: !1412)
!1429 = !DILocation(line: 579, column: 23, scope: !1394)
!1430 = !DILocation(line: 579, column: 33, scope: !1394)
!1431 = !DILocation(line: 579, column: 40, scope: !1394)
!1432 = !DILocation(line: 579, column: 46, scope: !1394)
!1433 = !DILocation(line: 579, column: 9, scope: !1394)
!1434 = !DILocation(line: 580, column: 1, scope: !1394)
!1435 = !DILocation(line: 579, column: 2, scope: !1394)
!1436 = distinct !DISubprogram(name: "fls", scope: !1437, file: !1437, line: 359, type: !1438, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1440)
!1437 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!55, !13}
!1440 = !{!1441, !1442}
!1441 = !DILocalVariable(name: "x", arg: 1, scope: !1436, file: !1437, line: 359, type: !13)
!1442 = !DILocalVariable(name: "r", scope: !1436, file: !1437, line: 361, type: !55)
!1443 = !DILocation(line: 359, column: 45, scope: !1436)
!1444 = !DILocation(line: 361, column: 2, scope: !1436)
!1445 = !DILocation(line: 361, column: 6, scope: !1436)
!1446 = !DILocation(line: 375, column: 14, scope: !1436)
!1447 = !DILocation(line: 373, column: 2, scope: !1436)
!1448 = !{i64 608658}
!1449 = !DILocation(line: 386, column: 9, scope: !1436)
!1450 = !DILocation(line: 386, column: 11, scope: !1436)
!1451 = !DILocation(line: 387, column: 1, scope: !1436)
!1452 = !DILocation(line: 386, column: 2, scope: !1436)
!1453 = distinct !DISubprogram(name: "alloc_range_bias", scope: !2, file: !2, line: 331, type: !1454, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!36, !154, !28, !28, !13}
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1469, !1470, !1472, !1473, !1475, !1478, !1480, !1481, !1482, !1484, !1485}
!1457 = !DILocalVariable(name: "mm", arg: 1, scope: !1453, file: !2, line: 331, type: !154)
!1458 = !DILocalVariable(name: "start", arg: 2, scope: !1453, file: !2, line: 332, type: !28)
!1459 = !DILocalVariable(name: "end", arg: 3, scope: !1453, file: !2, line: 332, type: !28)
!1460 = !DILocalVariable(name: "order", arg: 4, scope: !1453, file: !2, line: 333, type: !13)
!1461 = !DILocalVariable(name: "req_size", scope: !1453, file: !2, line: 335, type: !28)
!1462 = !DILocalVariable(name: "block", scope: !1453, file: !2, line: 336, type: !36)
!1463 = !DILocalVariable(name: "buddy", scope: !1453, file: !2, line: 337, type: !36)
!1464 = !DILocalVariable(name: "dfs", scope: !1453, file: !2, line: 338, type: !46)
!1465 = !DILocalVariable(name: "err", scope: !1453, file: !2, line: 339, type: !55)
!1466 = !DILocalVariable(name: "i", scope: !1453, file: !2, line: 340, type: !55)
!1467 = !DILocalVariable(name: "block_start", scope: !1468, file: !2, line: 348, type: !28)
!1468 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 347, column: 5)
!1469 = !DILocalVariable(name: "block_end", scope: !1468, file: !2, line: 349, type: !28)
!1470 = !DILocalVariable(name: "head__", scope: !1471, file: !2, line: 351, type: !49)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 351, column: 11)
!1472 = !DILocalVariable(name: "pos__", scope: !1471, file: !2, line: 351, type: !49)
!1473 = !DILocalVariable(name: "__mptr", scope: !1474, file: !2, line: 351, type: !35)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 351, column: 11)
!1475 = !DILocalVariable(name: "adjusted_start", scope: !1476, file: !2, line: 372, type: !28)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 371, column: 47)
!1477 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 371, column: 7)
!1478 = !DILocalVariable(name: "__UNIQUE_ID___x273", scope: !1479, file: !2, line: 372, type: !28)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 372, column: 25)
!1480 = !DILocalVariable(name: "__UNIQUE_ID___y274", scope: !1479, file: !2, line: 372, type: !28)
!1481 = !DILocalVariable(name: "adjusted_end", scope: !1476, file: !2, line: 373, type: !28)
!1482 = !DILocalVariable(name: "__UNIQUE_ID___x275", scope: !1483, file: !2, line: 373, type: !28)
!1483 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 373, column: 23)
!1484 = !DILocalVariable(name: "__UNIQUE_ID___y276", scope: !1483, file: !2, line: 373, type: !28)
!1485 = !DILabel(scope: !1453, name: "err_undo", file: !2, line: 403)
!1486 = !DILocation(line: 331, column: 36, scope: !1453)
!1487 = !DILocation(line: 332, column: 8, scope: !1453)
!1488 = !DILocation(line: 332, column: 19, scope: !1453)
!1489 = !DILocation(line: 333, column: 17, scope: !1453)
!1490 = !DILocation(line: 335, column: 2, scope: !1453)
!1491 = !DILocation(line: 335, column: 6, scope: !1453)
!1492 = !DILocation(line: 335, column: 17, scope: !1453)
!1493 = !DILocation(line: 335, column: 21, scope: !1453)
!1494 = !DILocation(line: 335, column: 35, scope: !1453)
!1495 = !DILocation(line: 335, column: 32, scope: !1453)
!1496 = !DILocation(line: 336, column: 2, scope: !1453)
!1497 = !DILocation(line: 336, column: 26, scope: !1453)
!1498 = !DILocation(line: 337, column: 2, scope: !1453)
!1499 = !DILocation(line: 337, column: 26, scope: !1453)
!1500 = !DILocation(line: 338, column: 2, scope: !1453)
!1501 = !DILocation(line: 339, column: 2, scope: !1453)
!1502 = !DILocation(line: 339, column: 6, scope: !1453)
!1503 = !DILocation(line: 340, column: 2, scope: !1453)
!1504 = !DILocation(line: 340, column: 6, scope: !1453)
!1505 = !DILocation(line: 342, column: 8, scope: !1453)
!1506 = !DILocation(line: 342, column: 12, scope: !1453)
!1507 = !DILocation(line: 342, column: 6, scope: !1453)
!1508 = !DILocation(line: 344, column: 9, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 344, column: 2)
!1510 = !DILocation(line: 344, column: 7, scope: !1509)
!1511 = !DILocation(line: 344, column: 14, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 344, column: 2)
!1513 = !DILocation(line: 344, column: 18, scope: !1512)
!1514 = !DILocation(line: 344, column: 22, scope: !1512)
!1515 = !DILocation(line: 344, column: 16, scope: !1512)
!1516 = !DILocation(line: 344, column: 2, scope: !1509)
!1517 = !DILocation(line: 345, column: 18, scope: !1512)
!1518 = !DILocation(line: 345, column: 22, scope: !1512)
!1519 = !DILocation(line: 345, column: 28, scope: !1512)
!1520 = !DILocation(line: 345, column: 32, scope: !1512)
!1521 = !DILocation(line: 345, column: 3, scope: !1512)
!1522 = !DILocation(line: 344, column: 31, scope: !1512)
!1523 = !DILocation(line: 344, column: 2, scope: !1512)
!1524 = distinct !{!1524, !1516, !1525, !261, !262}
!1525 = !DILocation(line: 345, column: 46, scope: !1509)
!1526 = !DILocation(line: 347, column: 2, scope: !1453)
!1527 = !DILocation(line: 348, column: 3, scope: !1468)
!1528 = !DILocation(line: 348, column: 7, scope: !1468)
!1529 = !DILocation(line: 349, column: 3, scope: !1468)
!1530 = !DILocation(line: 349, column: 7, scope: !1468)
!1531 = !DILocation(line: 351, column: 11, scope: !1471)
!1532 = !DILocation(line: 351, column: 11, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 351, column: 11)
!1534 = !DILocation(line: 351, column: 11, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 351, column: 11)
!1536 = !DILocation(line: 351, column: 11, scope: !1474)
!1537 = !DILocation(line: 351, column: 11, scope: !1468)
!1538 = !DILocation(line: 351, column: 9, scope: !1468)
!1539 = !DILocation(line: 354, column: 8, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 354, column: 7)
!1541 = !DILocation(line: 354, column: 7, scope: !1468)
!1542 = !DILocation(line: 355, column: 4, scope: !1540)
!1543 = !DILocation(line: 357, column: 13, scope: !1468)
!1544 = !DILocation(line: 357, column: 20, scope: !1468)
!1545 = !DILocation(line: 357, column: 3, scope: !1468)
!1546 = !DILocation(line: 359, column: 29, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 359, column: 7)
!1548 = !DILocation(line: 359, column: 7, scope: !1547)
!1549 = !DILocation(line: 359, column: 38, scope: !1547)
!1550 = !DILocation(line: 359, column: 36, scope: !1547)
!1551 = !DILocation(line: 359, column: 7, scope: !1468)
!1552 = !DILocation(line: 360, column: 4, scope: !1547)
!1553 = !DILocation(line: 362, column: 40, scope: !1468)
!1554 = !DILocation(line: 362, column: 17, scope: !1468)
!1555 = !DILocation(line: 362, column: 15, scope: !1468)
!1556 = !DILocation(line: 363, column: 15, scope: !1468)
!1557 = !DILocation(line: 363, column: 50, scope: !1468)
!1558 = !DILocation(line: 363, column: 54, scope: !1468)
!1559 = !DILocation(line: 363, column: 29, scope: !1468)
!1560 = !DILocation(line: 363, column: 27, scope: !1468)
!1561 = !DILocation(line: 363, column: 61, scope: !1468)
!1562 = !DILocation(line: 363, column: 13, scope: !1468)
!1563 = !DILocation(line: 365, column: 17, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 365, column: 7)
!1565 = !DILocation(line: 365, column: 24, scope: !1564)
!1566 = !DILocation(line: 365, column: 29, scope: !1564)
!1567 = !DILocation(line: 365, column: 42, scope: !1564)
!1568 = !DILocation(line: 365, column: 8, scope: !1564)
!1569 = !DILocation(line: 365, column: 7, scope: !1468)
!1570 = !DILocation(line: 366, column: 4, scope: !1564)
!1571 = !DILocation(line: 368, column: 36, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 368, column: 7)
!1573 = !DILocation(line: 368, column: 7, scope: !1572)
!1574 = !DILocation(line: 368, column: 7, scope: !1468)
!1575 = !DILocation(line: 369, column: 4, scope: !1572)
!1576 = !DILocation(line: 371, column: 7, scope: !1477)
!1577 = !DILocation(line: 371, column: 21, scope: !1477)
!1578 = !DILocation(line: 371, column: 19, scope: !1477)
!1579 = !DILocation(line: 371, column: 27, scope: !1477)
!1580 = !DILocation(line: 371, column: 30, scope: !1477)
!1581 = !DILocation(line: 371, column: 42, scope: !1477)
!1582 = !DILocation(line: 371, column: 40, scope: !1477)
!1583 = !DILocation(line: 371, column: 7, scope: !1468)
!1584 = !DILocation(line: 372, column: 4, scope: !1476)
!1585 = !DILocation(line: 372, column: 8, scope: !1476)
!1586 = !DILocation(line: 372, column: 25, scope: !1479)
!1587 = !DILocation(line: 372, column: 25, scope: !1476)
!1588 = !DILocation(line: 373, column: 4, scope: !1476)
!1589 = !DILocation(line: 373, column: 8, scope: !1476)
!1590 = !DILocation(line: 373, column: 23, scope: !1483)
!1591 = !DILocation(line: 373, column: 23, scope: !1476)
!1592 = !DILocation(line: 375, column: 8, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 375, column: 8)
!1594 = !DILocation(line: 376, column: 8, scope: !1593)
!1595 = !DILocation(line: 375, column: 47, scope: !1593)
!1596 = !DILocation(line: 375, column: 8, scope: !1476)
!1597 = !DILocation(line: 377, column: 5, scope: !1593)
!1598 = !DILocation(line: 378, column: 3, scope: !1477)
!1599 = !DILocation(line: 378, column: 3, scope: !1476)
!1600 = !DILocation(line: 380, column: 16, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 380, column: 7)
!1602 = !DILocation(line: 380, column: 23, scope: !1601)
!1603 = !DILocation(line: 380, column: 28, scope: !1601)
!1604 = !DILocation(line: 380, column: 41, scope: !1601)
!1605 = !DILocation(line: 380, column: 7, scope: !1601)
!1606 = !DILocation(line: 380, column: 52, scope: !1601)
!1607 = !DILocation(line: 381, column: 7, scope: !1601)
!1608 = !DILocation(line: 381, column: 38, scope: !1601)
!1609 = !DILocation(line: 381, column: 16, scope: !1601)
!1610 = !DILocation(line: 381, column: 13, scope: !1601)
!1611 = !DILocation(line: 380, column: 7, scope: !1468)
!1612 = !DILocation(line: 385, column: 32, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 385, column: 8)
!1614 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 381, column: 46)
!1615 = !DILocation(line: 385, column: 8, scope: !1613)
!1616 = !DILocation(line: 385, column: 8, scope: !1614)
!1617 = !DILocation(line: 386, column: 12, scope: !1613)
!1618 = !DILocation(line: 386, column: 5, scope: !1613)
!1619 = !DILocation(line: 388, column: 4, scope: !1614)
!1620 = !DILocation(line: 391, column: 33, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 391, column: 7)
!1622 = !DILocation(line: 391, column: 8, scope: !1621)
!1623 = !DILocation(line: 391, column: 7, scope: !1468)
!1624 = !DILocation(line: 392, column: 22, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 391, column: 41)
!1626 = !DILocation(line: 392, column: 26, scope: !1625)
!1627 = !DILocation(line: 392, column: 10, scope: !1625)
!1628 = !DILocation(line: 392, column: 8, scope: !1625)
!1629 = !DILocation(line: 393, column: 8, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 393, column: 8)
!1631 = !DILocation(line: 393, column: 8, scope: !1625)
!1632 = !DILocation(line: 394, column: 5, scope: !1630)
!1633 = !DILocation(line: 395, column: 3, scope: !1625)
!1634 = !DILocation(line: 397, column: 13, scope: !1468)
!1635 = !DILocation(line: 397, column: 20, scope: !1468)
!1636 = !DILocation(line: 397, column: 27, scope: !1468)
!1637 = !DILocation(line: 397, column: 3, scope: !1468)
!1638 = !DILocation(line: 398, column: 13, scope: !1468)
!1639 = !DILocation(line: 398, column: 20, scope: !1468)
!1640 = !DILocation(line: 398, column: 26, scope: !1468)
!1641 = !DILocation(line: 398, column: 3, scope: !1468)
!1642 = !DILocation(line: 399, column: 2, scope: !1453)
!1643 = !DILocation(line: 399, column: 2, scope: !1468)
!1644 = distinct !{!1644, !1526, !1645, !262}
!1645 = !DILocation(line: 399, column: 12, scope: !1453)
!1646 = !DILocation(line: 401, column: 9, scope: !1453)
!1647 = !DILocation(line: 401, column: 2, scope: !1453)
!1648 = !DILocation(line: 403, column: 1, scope: !1453)
!1649 = !DILocation(line: 409, column: 22, scope: !1453)
!1650 = !DILocation(line: 409, column: 10, scope: !1453)
!1651 = !DILocation(line: 409, column: 8, scope: !1453)
!1652 = !DILocation(line: 410, column: 6, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 410, column: 6)
!1654 = !DILocation(line: 410, column: 12, scope: !1653)
!1655 = !DILocation(line: 411, column: 31, scope: !1653)
!1656 = !DILocation(line: 411, column: 7, scope: !1653)
!1657 = !DILocation(line: 411, column: 38, scope: !1653)
!1658 = !DILocation(line: 412, column: 31, scope: !1653)
!1659 = !DILocation(line: 412, column: 7, scope: !1653)
!1660 = !DILocation(line: 410, column: 6, scope: !1453)
!1661 = !DILocation(line: 413, column: 20, scope: !1653)
!1662 = !DILocation(line: 413, column: 24, scope: !1653)
!1663 = !DILocation(line: 413, column: 3, scope: !1653)
!1664 = !DILocation(line: 414, column: 17, scope: !1453)
!1665 = !DILocation(line: 414, column: 9, scope: !1453)
!1666 = !DILocation(line: 414, column: 2, scope: !1453)
!1667 = !DILocation(line: 415, column: 1, scope: !1453)
!1668 = distinct !DISubprogram(name: "alloc_from_freelist", scope: !2, file: !2, line: 444, type: !1669, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1671)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!36, !154, !13, !52}
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1687}
!1672 = !DILocalVariable(name: "mm", arg: 1, scope: !1668, file: !2, line: 444, type: !154)
!1673 = !DILocalVariable(name: "order", arg: 2, scope: !1668, file: !2, line: 445, type: !13)
!1674 = !DILocalVariable(name: "flags", arg: 3, scope: !1668, file: !2, line: 446, type: !52)
!1675 = !DILocalVariable(name: "block", scope: !1668, file: !2, line: 448, type: !36)
!1676 = !DILocalVariable(name: "tmp", scope: !1668, file: !2, line: 449, type: !13)
!1677 = !DILocalVariable(name: "err", scope: !1668, file: !2, line: 450, type: !55)
!1678 = !DILocalVariable(name: "__mptr", scope: !1679, file: !2, line: 460, type: !35)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 460, column: 13)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 459, column: 42)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 459, column: 8)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 458, column: 50)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 458, column: 3)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 458, column: 3)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 457, column: 9)
!1686 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 452, column: 6)
!1687 = !DILabel(scope: !1668, name: "err_undo", file: !2, line: 484)
!1688 = !DILocation(line: 444, column: 39, scope: !1668)
!1689 = !DILocation(line: 445, column: 20, scope: !1668)
!1690 = !DILocation(line: 446, column: 21, scope: !1668)
!1691 = !DILocation(line: 448, column: 2, scope: !1668)
!1692 = !DILocation(line: 448, column: 26, scope: !1668)
!1693 = !DILocation(line: 449, column: 2, scope: !1668)
!1694 = !DILocation(line: 449, column: 15, scope: !1668)
!1695 = !DILocation(line: 450, column: 2, scope: !1668)
!1696 = !DILocation(line: 450, column: 6, scope: !1668)
!1697 = !DILocation(line: 452, column: 6, scope: !1686)
!1698 = !DILocation(line: 452, column: 12, scope: !1686)
!1699 = !DILocation(line: 452, column: 6, scope: !1668)
!1700 = !DILocation(line: 453, column: 24, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 452, column: 44)
!1702 = !DILocation(line: 453, column: 28, scope: !1701)
!1703 = !DILocation(line: 453, column: 11, scope: !1701)
!1704 = !DILocation(line: 453, column: 9, scope: !1701)
!1705 = !DILocation(line: 454, column: 7, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 454, column: 7)
!1707 = !DILocation(line: 454, column: 7, scope: !1701)
!1708 = !DILocation(line: 456, column: 32, scope: !1706)
!1709 = !DILocation(line: 456, column: 10, scope: !1706)
!1710 = !DILocation(line: 456, column: 8, scope: !1706)
!1711 = !DILocation(line: 456, column: 4, scope: !1706)
!1712 = !DILocation(line: 457, column: 2, scope: !1701)
!1713 = !DILocation(line: 458, column: 14, scope: !1684)
!1714 = !DILocation(line: 458, column: 12, scope: !1684)
!1715 = !DILocation(line: 458, column: 8, scope: !1684)
!1716 = !DILocation(line: 458, column: 21, scope: !1683)
!1717 = !DILocation(line: 458, column: 28, scope: !1683)
!1718 = !DILocation(line: 458, column: 32, scope: !1683)
!1719 = !DILocation(line: 458, column: 25, scope: !1683)
!1720 = !DILocation(line: 458, column: 3, scope: !1684)
!1721 = !DILocation(line: 459, column: 21, scope: !1681)
!1722 = !DILocation(line: 459, column: 25, scope: !1681)
!1723 = !DILocation(line: 459, column: 35, scope: !1681)
!1724 = !DILocation(line: 459, column: 9, scope: !1681)
!1725 = !DILocation(line: 459, column: 8, scope: !1682)
!1726 = !DILocation(line: 460, column: 13, scope: !1679)
!1727 = !DILocation(line: 460, column: 13, scope: !1680)
!1728 = !DILocation(line: 460, column: 11, scope: !1680)
!1729 = !DILocation(line: 463, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 463, column: 9)
!1731 = !DILocation(line: 463, column: 9, scope: !1680)
!1732 = !DILocation(line: 464, column: 6, scope: !1730)
!1733 = !DILocation(line: 465, column: 4, scope: !1680)
!1734 = !DILocation(line: 466, column: 3, scope: !1682)
!1735 = !DILocation(line: 458, column: 43, scope: !1683)
!1736 = !DILocation(line: 458, column: 3, scope: !1683)
!1737 = distinct !{!1737, !1720, !1738, !261, !262}
!1738 = !DILocation(line: 466, column: 3, scope: !1684)
!1739 = !DILocation(line: 469, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 469, column: 6)
!1741 = !DILocation(line: 469, column: 6, scope: !1668)
!1742 = !DILocation(line: 470, column: 10, scope: !1740)
!1743 = !DILocation(line: 470, column: 3, scope: !1740)
!1744 = !DILocation(line: 472, column: 2, scope: !1668)
!1745 = !DILocation(line: 472, column: 2, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 472, column: 2)
!1747 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 472, column: 2)
!1748 = !DILocation(line: 472, column: 2, scope: !1747)
!1749 = !DILocation(line: 472, column: 2, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 472, column: 2)
!1751 = !DILocation(line: 472, column: 2, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 472, column: 2)
!1753 = !DILocation(line: 472, column: 2, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 472, column: 2)
!1755 = !{i64 2154181889, i64 2154181918, i64 2154181964, i64 2154182022, i64 2154182076, i64 2154182130, i64 2154182185, i64 2154182216}
!1756 = !DILocation(line: 474, column: 2, scope: !1668)
!1757 = !DILocation(line: 474, column: 9, scope: !1668)
!1758 = !DILocation(line: 474, column: 16, scope: !1668)
!1759 = !DILocation(line: 474, column: 13, scope: !1668)
!1760 = !DILocation(line: 475, column: 21, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 474, column: 23)
!1762 = !DILocation(line: 475, column: 25, scope: !1761)
!1763 = !DILocation(line: 475, column: 9, scope: !1761)
!1764 = !DILocation(line: 475, column: 7, scope: !1761)
!1765 = !DILocation(line: 476, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 476, column: 7)
!1767 = !DILocation(line: 476, column: 7, scope: !1761)
!1768 = !DILocation(line: 477, column: 4, scope: !1766)
!1769 = !DILocation(line: 479, column: 11, scope: !1761)
!1770 = !DILocation(line: 479, column: 18, scope: !1761)
!1771 = !DILocation(line: 479, column: 9, scope: !1761)
!1772 = !DILocation(line: 480, column: 6, scope: !1761)
!1773 = distinct !{!1773, !1756, !1774, !261, !262}
!1774 = !DILocation(line: 481, column: 2, scope: !1668)
!1775 = !DILocation(line: 482, column: 9, scope: !1668)
!1776 = !DILocation(line: 482, column: 2, scope: !1668)
!1777 = !DILocation(line: 484, column: 1, scope: !1668)
!1778 = !DILocation(line: 485, column: 6, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 485, column: 6)
!1780 = !DILocation(line: 485, column: 13, scope: !1779)
!1781 = !DILocation(line: 485, column: 10, scope: !1779)
!1782 = !DILocation(line: 485, column: 6, scope: !1668)
!1783 = !DILocation(line: 486, column: 20, scope: !1779)
!1784 = !DILocation(line: 486, column: 24, scope: !1779)
!1785 = !DILocation(line: 486, column: 3, scope: !1779)
!1786 = !DILocation(line: 487, column: 17, scope: !1668)
!1787 = !DILocation(line: 487, column: 9, scope: !1668)
!1788 = !DILocation(line: 487, column: 2, scope: !1668)
!1789 = !DILocation(line: 488, column: 1, scope: !1668)
!1790 = distinct !DISubprogram(name: "IS_ERR", scope: !1791, file: !1791, line: 59, type: !1792, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1794)
!1791 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!370, !576}
!1794 = !{!1795}
!1795 = !DILocalVariable(name: "ptr", arg: 1, scope: !1790, file: !1791, line: 59, type: !576)
!1796 = !DILocation(line: 59, column: 60, scope: !1790)
!1797 = !DILocation(line: 61, column: 9, scope: !1790)
!1798 = !DILocation(line: 61, column: 2, scope: !1790)
!1799 = distinct !DISubprogram(name: "kmemleak_update_trace", scope: !1800, file: !1800, line: 90, type: !574, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1801)
!1800 = !DIFile(filename: "./include/linux/kmemleak.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f4ed42ee6c6e5d06af9997953e90d37")
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "ptr", arg: 1, scope: !1799, file: !1800, line: 90, type: !576)
!1803 = !DILocation(line: 90, column: 54, scope: !1799)
!1804 = !DILocation(line: 92, column: 1, scope: !1799)
!1805 = distinct !DISubprogram(name: "list_add_tail", scope: !433, file: !433, line: 181, type: !996, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1806)
!1806 = !{!1807, !1808}
!1807 = !DILocalVariable(name: "new", arg: 1, scope: !1805, file: !433, line: 181, type: !49)
!1808 = !DILocalVariable(name: "head", arg: 2, scope: !1805, file: !433, line: 181, type: !49)
!1809 = !DILocation(line: 181, column: 52, scope: !1805)
!1810 = !DILocation(line: 181, column: 75, scope: !1805)
!1811 = !DILocation(line: 183, column: 13, scope: !1805)
!1812 = !DILocation(line: 183, column: 18, scope: !1805)
!1813 = !DILocation(line: 183, column: 24, scope: !1805)
!1814 = !DILocation(line: 183, column: 30, scope: !1805)
!1815 = !DILocation(line: 183, column: 2, scope: !1805)
!1816 = !DILocation(line: 184, column: 1, scope: !1805)
!1817 = distinct !DISubprogram(name: "list_splice_tail", scope: !433, file: !433, line: 554, type: !996, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1818)
!1818 = !{!1819, !1820}
!1819 = !DILocalVariable(name: "list", arg: 1, scope: !1817, file: !433, line: 554, type: !49)
!1820 = !DILocalVariable(name: "head", arg: 2, scope: !1817, file: !433, line: 555, type: !49)
!1821 = !DILocation(line: 554, column: 55, scope: !1817)
!1822 = !DILocation(line: 555, column: 23, scope: !1817)
!1823 = !DILocation(line: 557, column: 18, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1817, file: !433, line: 557, column: 6)
!1825 = !DILocation(line: 557, column: 7, scope: !1824)
!1826 = !DILocation(line: 557, column: 6, scope: !1817)
!1827 = !DILocation(line: 558, column: 17, scope: !1824)
!1828 = !DILocation(line: 558, column: 23, scope: !1824)
!1829 = !DILocation(line: 558, column: 29, scope: !1824)
!1830 = !DILocation(line: 558, column: 35, scope: !1824)
!1831 = !DILocation(line: 558, column: 3, scope: !1824)
!1832 = !DILocation(line: 559, column: 1, scope: !1817)
!1833 = distinct !DISubprogram(name: "drm_buddy_block_print", scope: !2, file: !2, line: 761, type: !1834, scopeLine: 764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1869)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !154, !36, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !1838, line: 76, size: 256, elements: !1839)
!1838 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!1839 = !{!1840, !1863, !1867, !1868}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !1837, file: !1838, line: 78, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1836, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !1846, line: 79, size: 128, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !1845, file: !1846, line: 80, baseType: !812, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !1845, file: !1846, line: 81, baseType: !1850, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1852, line: 5, baseType: !1853)
!1852 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !1854)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1855, size: 192, elements: !1861)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1856)
!1856 = !{!1857, !1858, !1859, !1860}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1855, file: !2, line: 752, baseType: !13, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1855, file: !2, line: 752, baseType: !13, size: 32, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1855, file: !2, line: 752, baseType: !35, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1855, file: !2, line: 752, baseType: !35, size: 64, offset: 128)
!1861 = !{!1862}
!1862 = !DISubrange(count: 1)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !1837, file: !1838, line: 79, baseType: !1864, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1836, !812}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1837, file: !1838, line: 80, baseType: !35, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1837, file: !1838, line: 81, baseType: !812, size: 64, offset: 192)
!1869 = !{!1870, !1871, !1872, !1873, !1874}
!1870 = !DILocalVariable(name: "mm", arg: 1, scope: !1833, file: !2, line: 761, type: !154)
!1871 = !DILocalVariable(name: "block", arg: 2, scope: !1833, file: !2, line: 762, type: !36)
!1872 = !DILocalVariable(name: "p", arg: 3, scope: !1833, file: !2, line: 763, type: !1836)
!1873 = !DILocalVariable(name: "start", scope: !1833, file: !2, line: 765, type: !28)
!1874 = !DILocalVariable(name: "size", scope: !1833, file: !2, line: 766, type: !28)
!1875 = !DILocation(line: 761, column: 46, scope: !1833)
!1876 = !DILocation(line: 762, column: 31, scope: !1833)
!1877 = !DILocation(line: 763, column: 27, scope: !1833)
!1878 = !DILocation(line: 765, column: 2, scope: !1833)
!1879 = !DILocation(line: 765, column: 6, scope: !1833)
!1880 = !DILocation(line: 765, column: 37, scope: !1833)
!1881 = !DILocation(line: 765, column: 14, scope: !1833)
!1882 = !DILocation(line: 766, column: 2, scope: !1833)
!1883 = !DILocation(line: 766, column: 6, scope: !1833)
!1884 = !DILocation(line: 766, column: 34, scope: !1833)
!1885 = !DILocation(line: 766, column: 38, scope: !1833)
!1886 = !DILocation(line: 766, column: 13, scope: !1833)
!1887 = !DILocation(line: 768, column: 13, scope: !1833)
!1888 = !DILocation(line: 768, column: 45, scope: !1833)
!1889 = !DILocation(line: 768, column: 52, scope: !1833)
!1890 = !DILocation(line: 768, column: 60, scope: !1833)
!1891 = !DILocation(line: 768, column: 58, scope: !1833)
!1892 = !DILocation(line: 768, column: 66, scope: !1833)
!1893 = !DILocation(line: 768, column: 2, scope: !1833)
!1894 = !DILocation(line: 769, column: 1, scope: !1833)
!1895 = !DISubprogram(name: "drm_printf", scope: !1838, file: !1838, line: 93, type: !1896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !1836, !812, null}
!1898 = distinct !DISubprogram(name: "drm_buddy_print", scope: !2, file: !2, line: 778, type: !1899, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !154, !1836}
!1901 = !{!1902, !1903, !1904, !1905, !1909, !1910, !1911, !1914}
!1902 = !DILocalVariable(name: "mm", arg: 1, scope: !1898, file: !2, line: 778, type: !154)
!1903 = !DILocalVariable(name: "p", arg: 2, scope: !1898, file: !2, line: 778, type: !1836)
!1904 = !DILocalVariable(name: "order", scope: !1898, file: !2, line: 780, type: !55)
!1905 = !DILocalVariable(name: "block", scope: !1906, file: !2, line: 786, type: !36)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 785, column: 51)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !2, line: 785, column: 2)
!1908 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 785, column: 2)
!1909 = !DILocalVariable(name: "count", scope: !1906, file: !2, line: 787, type: !28)
!1910 = !DILocalVariable(name: "free", scope: !1906, file: !2, line: 787, type: !28)
!1911 = !DILocalVariable(name: "__mptr", scope: !1912, file: !2, line: 789, type: !35)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 789, column: 3)
!1913 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 789, column: 3)
!1914 = !DILocalVariable(name: "__mptr", scope: !1915, file: !2, line: 789, type: !35)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !2, line: 789, column: 3)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 789, column: 3)
!1917 = !DILocation(line: 778, column: 40, scope: !1898)
!1918 = !DILocation(line: 778, column: 64, scope: !1898)
!1919 = !DILocation(line: 780, column: 2, scope: !1898)
!1920 = !DILocation(line: 780, column: 6, scope: !1898)
!1921 = !DILocation(line: 782, column: 13, scope: !1898)
!1922 = !DILocation(line: 783, column: 6, scope: !1898)
!1923 = !DILocation(line: 783, column: 10, scope: !1898)
!1924 = !DILocation(line: 783, column: 21, scope: !1898)
!1925 = !DILocation(line: 783, column: 28, scope: !1898)
!1926 = !DILocation(line: 783, column: 32, scope: !1898)
!1927 = !DILocation(line: 783, column: 37, scope: !1898)
!1928 = !DILocation(line: 783, column: 44, scope: !1898)
!1929 = !DILocation(line: 783, column: 48, scope: !1898)
!1930 = !DILocation(line: 783, column: 54, scope: !1898)
!1931 = !DILocation(line: 782, column: 2, scope: !1898)
!1932 = !DILocation(line: 785, column: 15, scope: !1908)
!1933 = !DILocation(line: 785, column: 19, scope: !1908)
!1934 = !DILocation(line: 785, column: 13, scope: !1908)
!1935 = !DILocation(line: 785, column: 7, scope: !1908)
!1936 = !DILocation(line: 785, column: 30, scope: !1907)
!1937 = !DILocation(line: 785, column: 36, scope: !1907)
!1938 = !DILocation(line: 785, column: 2, scope: !1908)
!1939 = !DILocation(line: 786, column: 3, scope: !1906)
!1940 = !DILocation(line: 786, column: 27, scope: !1906)
!1941 = !DILocation(line: 787, column: 3, scope: !1906)
!1942 = !DILocation(line: 787, column: 7, scope: !1906)
!1943 = !DILocation(line: 787, column: 18, scope: !1906)
!1944 = !DILocation(line: 789, column: 3, scope: !1912)
!1945 = !DILocation(line: 789, column: 3, scope: !1913)
!1946 = !DILocation(line: 789, column: 3, scope: !1916)
!1947 = !DILocation(line: 790, column: 4, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1916, file: !2, line: 789, column: 59)
!1949 = !DILocation(line: 790, column: 4, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 790, column: 4)
!1951 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 790, column: 4)
!1952 = !DILocation(line: 790, column: 4, scope: !1951)
!1953 = !DILocation(line: 790, column: 4, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 790, column: 4)
!1955 = !DILocation(line: 790, column: 4, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1954, file: !2, line: 790, column: 4)
!1957 = !DILocation(line: 790, column: 4, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !2, line: 790, column: 4)
!1959 = !{i64 2154212127, i64 2154212156, i64 2154212202, i64 2154212260, i64 2154212314, i64 2154212368, i64 2154212423, i64 2154212454}
!1960 = !DILocation(line: 791, column: 9, scope: !1948)
!1961 = !DILocation(line: 792, column: 3, scope: !1948)
!1962 = !DILocation(line: 789, column: 3, scope: !1915)
!1963 = distinct !{!1963, !1945, !1964, !261, !262}
!1964 = !DILocation(line: 792, column: 3, scope: !1913)
!1965 = !DILocation(line: 794, column: 14, scope: !1906)
!1966 = !DILocation(line: 794, column: 31, scope: !1906)
!1967 = !DILocation(line: 794, column: 3, scope: !1906)
!1968 = !DILocation(line: 796, column: 10, scope: !1906)
!1969 = !DILocation(line: 796, column: 19, scope: !1906)
!1970 = !DILocation(line: 796, column: 23, scope: !1906)
!1971 = !DILocation(line: 796, column: 37, scope: !1906)
!1972 = !DILocation(line: 796, column: 34, scope: !1906)
!1973 = !DILocation(line: 796, column: 16, scope: !1906)
!1974 = !DILocation(line: 796, column: 8, scope: !1906)
!1975 = !DILocation(line: 797, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 797, column: 7)
!1977 = !DILocation(line: 797, column: 12, scope: !1976)
!1978 = !DILocation(line: 797, column: 7, scope: !1906)
!1979 = !DILocation(line: 798, column: 15, scope: !1976)
!1980 = !DILocation(line: 798, column: 37, scope: !1976)
!1981 = !DILocation(line: 798, column: 42, scope: !1976)
!1982 = !DILocation(line: 798, column: 4, scope: !1976)
!1983 = !DILocation(line: 800, column: 15, scope: !1976)
!1984 = !DILocation(line: 800, column: 37, scope: !1976)
!1985 = !DILocation(line: 800, column: 42, scope: !1976)
!1986 = !DILocation(line: 800, column: 4, scope: !1976)
!1987 = !DILocation(line: 802, column: 14, scope: !1906)
!1988 = !DILocation(line: 802, column: 37, scope: !1906)
!1989 = !DILocation(line: 802, column: 3, scope: !1906)
!1990 = !DILocation(line: 803, column: 2, scope: !1907)
!1991 = !DILocation(line: 803, column: 2, scope: !1906)
!1992 = !DILocation(line: 785, column: 47, scope: !1907)
!1993 = !DILocation(line: 785, column: 2, scope: !1907)
!1994 = distinct !{!1994, !1938, !1995, !261, !262}
!1995 = !DILocation(line: 803, column: 2, scope: !1908)
!1996 = !DILocation(line: 804, column: 1, scope: !1898)
!1997 = distinct !DISubprogram(name: "__initstub__kmod_drm_buddy__284_821_drm_buddy_module_init6", scope: !2, file: !2, line: 821, type: !138, scopeLine: 821, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!1998 = !DILocation(line: 821, column: 1, scope: !1997)
!1999 = distinct !DISubprogram(name: "drm_buddy_module_init", scope: !2, file: !2, line: 812, type: !138, scopeLine: 813, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!2000 = !DILocation(line: 814, column: 16, scope: !1999)
!2001 = !DILocation(line: 814, column: 14, scope: !1999)
!2002 = !DILocation(line: 815, column: 7, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1999, file: !2, line: 815, column: 6)
!2004 = !DILocation(line: 815, column: 6, scope: !1999)
!2005 = !DILocation(line: 816, column: 3, scope: !2003)
!2006 = !DILocation(line: 818, column: 2, scope: !1999)
!2007 = !DILocation(line: 819, column: 1, scope: !1999)
!2008 = distinct !DISubprogram(name: "drm_buddy_module_exit", scope: !2, file: !2, line: 807, type: !106, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!2009 = !DILocation(line: 809, column: 21, scope: !2008)
!2010 = !DILocation(line: 809, column: 2, scope: !2008)
!2011 = !DILocation(line: 810, column: 1, scope: !2008)
!2012 = distinct !DISubprogram(name: "fls64", scope: !1437, file: !1437, line: 401, type: !2013, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!55, !30}
!2015 = !{!2016, !2017}
!2016 = !DILocalVariable(name: "x", arg: 1, scope: !2012, file: !1437, line: 401, type: !30)
!2017 = !DILocalVariable(name: "bitpos", scope: !2012, file: !1437, line: 403, type: !55)
!2018 = !DILocation(line: 401, column: 40, scope: !2012)
!2019 = !DILocation(line: 403, column: 2, scope: !2012)
!2020 = !DILocation(line: 403, column: 6, scope: !2012)
!2021 = !DILocation(line: 409, column: 2, scope: !2012)
!2022 = !DILocation(line: 411, column: 14, scope: !2012)
!2023 = !{i64 609624}
!2024 = !DILocation(line: 412, column: 9, scope: !2012)
!2025 = !DILocation(line: 412, column: 16, scope: !2012)
!2026 = !DILocation(line: 413, column: 1, scope: !2012)
!2027 = !DILocation(line: 412, column: 2, scope: !2012)
!2028 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2029, file: !2029, line: 51, type: !2030, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2032)
!2029 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!370, !370}
!2032 = !{!2033}
!2033 = !DILocalVariable(name: "overflow", arg: 1, scope: !2028, file: !2029, line: 51, type: !370)
!2034 = !DILocation(line: 51, column: 60, scope: !2028)
!2035 = !DILocation(line: 53, column: 9, scope: !2028)
!2036 = !{i8 0, i8 2}
!2037 = !{}
!2038 = !DILocation(line: 53, column: 2, scope: !2028)
!2039 = distinct !DISubprogram(name: "kmalloc", scope: !18, file: !18, line: 591, type: !2040, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!35, !398, !33}
!2042 = !{!2043, !2044, !2045}
!2043 = !DILocalVariable(name: "size", arg: 1, scope: !2039, file: !18, line: 591, type: !398)
!2044 = !DILocalVariable(name: "flags", arg: 2, scope: !2039, file: !18, line: 591, type: !33)
!2045 = !DILocalVariable(name: "index", scope: !2046, file: !18, line: 594, type: !13)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !18, line: 593, column: 42)
!2047 = distinct !DILexicalBlock(scope: !2039, file: !18, line: 593, column: 6)
!2048 = !DILocation(line: 591, column: 61, scope: !2039)
!2049 = !DILocation(line: 591, column: 73, scope: !2039)
!2050 = !DILocation(line: 593, column: 27, scope: !2047)
!2051 = !DILocation(line: 593, column: 6, scope: !2047)
!2052 = !DILocation(line: 593, column: 33, scope: !2047)
!2053 = !DILocation(line: 593, column: 36, scope: !2047)
!2054 = !DILocation(line: 593, column: 6, scope: !2039)
!2055 = !DILocation(line: 594, column: 3, scope: !2046)
!2056 = !DILocation(line: 594, column: 16, scope: !2046)
!2057 = !DILocation(line: 596, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2046, file: !18, line: 596, column: 7)
!2059 = !DILocation(line: 596, column: 12, scope: !2058)
!2060 = !DILocation(line: 596, column: 7, scope: !2046)
!2061 = !DILocation(line: 597, column: 25, scope: !2058)
!2062 = !DILocation(line: 597, column: 31, scope: !2058)
!2063 = !DILocation(line: 597, column: 11, scope: !2058)
!2064 = !DILocation(line: 597, column: 4, scope: !2058)
!2065 = !DILocation(line: 599, column: 11, scope: !2046)
!2066 = !DILocation(line: 599, column: 9, scope: !2046)
!2067 = !DILocation(line: 601, column: 33, scope: !2046)
!2068 = !DILocation(line: 601, column: 40, scope: !2046)
!2069 = !DILocation(line: 601, column: 20, scope: !2046)
!2070 = !DILocation(line: 601, column: 5, scope: !2046)
!2071 = !DILocation(line: 601, column: 51, scope: !2046)
!2072 = !DILocation(line: 602, column: 5, scope: !2046)
!2073 = !DILocation(line: 602, column: 12, scope: !2046)
!2074 = !DILocation(line: 600, column: 10, scope: !2046)
!2075 = !DILocation(line: 600, column: 3, scope: !2046)
!2076 = !DILocation(line: 603, column: 2, scope: !2047)
!2077 = !DILocation(line: 604, column: 19, scope: !2039)
!2078 = !DILocation(line: 604, column: 25, scope: !2039)
!2079 = !DILocation(line: 604, column: 9, scope: !2039)
!2080 = !DILocation(line: 604, column: 2, scope: !2039)
!2081 = !DILocation(line: 605, column: 1, scope: !2039)
!2082 = !DISubprogram(name: "__kmalloc", scope: !18, file: !18, line: 488, type: !2040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2083 = !DISubprogram(name: "kmalloc_large", scope: !18, file: !18, line: 531, type: !2040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2084 = distinct !DISubprogram(name: "__kmalloc_index", scope: !18, file: !18, line: 444, type: !2085, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!13, !398, !370}
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "size", arg: 1, scope: !2084, file: !18, line: 444, type: !398)
!2089 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2084, file: !18, line: 445, type: !370)
!2090 = !DILocation(line: 444, column: 60, scope: !2084)
!2091 = !DILocation(line: 445, column: 16, scope: !2084)
!2092 = !DILocation(line: 447, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 447, column: 6)
!2094 = !DILocation(line: 447, column: 6, scope: !2084)
!2095 = !DILocation(line: 448, column: 3, scope: !2093)
!2096 = !DILocation(line: 450, column: 6, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 450, column: 6)
!2098 = !DILocation(line: 450, column: 11, scope: !2097)
!2099 = !DILocation(line: 450, column: 6, scope: !2084)
!2100 = !DILocation(line: 451, column: 3, scope: !2097)
!2101 = !DILocation(line: 453, column: 32, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 453, column: 6)
!2103 = !DILocation(line: 453, column: 37, scope: !2102)
!2104 = !DILocation(line: 453, column: 42, scope: !2102)
!2105 = !DILocation(line: 453, column: 45, scope: !2102)
!2106 = !DILocation(line: 453, column: 50, scope: !2102)
!2107 = !DILocation(line: 453, column: 6, scope: !2084)
!2108 = !DILocation(line: 454, column: 3, scope: !2102)
!2109 = !DILocation(line: 455, column: 32, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 455, column: 6)
!2111 = !DILocation(line: 455, column: 37, scope: !2110)
!2112 = !DILocation(line: 455, column: 43, scope: !2110)
!2113 = !DILocation(line: 455, column: 46, scope: !2110)
!2114 = !DILocation(line: 455, column: 51, scope: !2110)
!2115 = !DILocation(line: 455, column: 6, scope: !2084)
!2116 = !DILocation(line: 456, column: 3, scope: !2110)
!2117 = !DILocation(line: 457, column: 6, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 457, column: 6)
!2119 = !DILocation(line: 457, column: 11, scope: !2118)
!2120 = !DILocation(line: 457, column: 6, scope: !2084)
!2121 = !DILocation(line: 457, column: 26, scope: !2118)
!2122 = !DILocation(line: 458, column: 6, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 458, column: 6)
!2124 = !DILocation(line: 458, column: 11, scope: !2123)
!2125 = !DILocation(line: 458, column: 6, scope: !2084)
!2126 = !DILocation(line: 458, column: 26, scope: !2123)
!2127 = !DILocation(line: 459, column: 6, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 459, column: 6)
!2129 = !DILocation(line: 459, column: 11, scope: !2128)
!2130 = !DILocation(line: 459, column: 6, scope: !2084)
!2131 = !DILocation(line: 459, column: 26, scope: !2128)
!2132 = !DILocation(line: 460, column: 6, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 460, column: 6)
!2134 = !DILocation(line: 460, column: 11, scope: !2133)
!2135 = !DILocation(line: 460, column: 6, scope: !2084)
!2136 = !DILocation(line: 460, column: 26, scope: !2133)
!2137 = !DILocation(line: 461, column: 6, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 461, column: 6)
!2139 = !DILocation(line: 461, column: 11, scope: !2138)
!2140 = !DILocation(line: 461, column: 6, scope: !2084)
!2141 = !DILocation(line: 461, column: 26, scope: !2138)
!2142 = !DILocation(line: 462, column: 6, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 462, column: 6)
!2144 = !DILocation(line: 462, column: 11, scope: !2143)
!2145 = !DILocation(line: 462, column: 6, scope: !2084)
!2146 = !DILocation(line: 462, column: 26, scope: !2143)
!2147 = !DILocation(line: 463, column: 6, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 463, column: 6)
!2149 = !DILocation(line: 463, column: 11, scope: !2148)
!2150 = !DILocation(line: 463, column: 6, scope: !2084)
!2151 = !DILocation(line: 463, column: 26, scope: !2148)
!2152 = !DILocation(line: 464, column: 6, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 464, column: 6)
!2154 = !DILocation(line: 464, column: 11, scope: !2153)
!2155 = !DILocation(line: 464, column: 6, scope: !2084)
!2156 = !DILocation(line: 464, column: 26, scope: !2153)
!2157 = !DILocation(line: 465, column: 6, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 465, column: 6)
!2159 = !DILocation(line: 465, column: 11, scope: !2158)
!2160 = !DILocation(line: 465, column: 6, scope: !2084)
!2161 = !DILocation(line: 465, column: 26, scope: !2158)
!2162 = !DILocation(line: 466, column: 6, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 466, column: 6)
!2164 = !DILocation(line: 466, column: 11, scope: !2163)
!2165 = !DILocation(line: 466, column: 6, scope: !2084)
!2166 = !DILocation(line: 466, column: 26, scope: !2163)
!2167 = !DILocation(line: 467, column: 6, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 467, column: 6)
!2169 = !DILocation(line: 467, column: 11, scope: !2168)
!2170 = !DILocation(line: 467, column: 6, scope: !2084)
!2171 = !DILocation(line: 467, column: 26, scope: !2168)
!2172 = !DILocation(line: 468, column: 6, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 468, column: 6)
!2174 = !DILocation(line: 468, column: 11, scope: !2173)
!2175 = !DILocation(line: 468, column: 6, scope: !2084)
!2176 = !DILocation(line: 468, column: 26, scope: !2173)
!2177 = !DILocation(line: 469, column: 6, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 469, column: 6)
!2179 = !DILocation(line: 469, column: 11, scope: !2178)
!2180 = !DILocation(line: 469, column: 6, scope: !2084)
!2181 = !DILocation(line: 469, column: 26, scope: !2178)
!2182 = !DILocation(line: 470, column: 6, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 470, column: 6)
!2184 = !DILocation(line: 470, column: 11, scope: !2183)
!2185 = !DILocation(line: 470, column: 6, scope: !2084)
!2186 = !DILocation(line: 470, column: 26, scope: !2183)
!2187 = !DILocation(line: 471, column: 6, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 471, column: 6)
!2189 = !DILocation(line: 471, column: 11, scope: !2188)
!2190 = !DILocation(line: 471, column: 6, scope: !2084)
!2191 = !DILocation(line: 471, column: 26, scope: !2188)
!2192 = !DILocation(line: 472, column: 6, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 472, column: 6)
!2194 = !DILocation(line: 472, column: 11, scope: !2193)
!2195 = !DILocation(line: 472, column: 6, scope: !2084)
!2196 = !DILocation(line: 472, column: 26, scope: !2193)
!2197 = !DILocation(line: 473, column: 6, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 473, column: 6)
!2199 = !DILocation(line: 473, column: 11, scope: !2198)
!2200 = !DILocation(line: 473, column: 6, scope: !2084)
!2201 = !DILocation(line: 473, column: 26, scope: !2198)
!2202 = !DILocation(line: 474, column: 6, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 474, column: 6)
!2204 = !DILocation(line: 474, column: 11, scope: !2203)
!2205 = !DILocation(line: 474, column: 6, scope: !2084)
!2206 = !DILocation(line: 474, column: 27, scope: !2203)
!2207 = !DILocation(line: 475, column: 6, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 475, column: 6)
!2209 = !DILocation(line: 475, column: 11, scope: !2208)
!2210 = !DILocation(line: 475, column: 6, scope: !2084)
!2211 = !DILocation(line: 475, column: 32, scope: !2208)
!2212 = !DILocation(line: 477, column: 50, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2084, file: !18, line: 477, column: 6)
!2214 = !DILocation(line: 477, column: 6, scope: !2084)
!2215 = !DILocation(line: 478, column: 3, scope: !2213)
!2216 = !DILocation(line: 478, column: 3, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !18, line: 478, column: 3)
!2218 = distinct !DILexicalBlock(scope: !2213, file: !18, line: 478, column: 3)
!2219 = !{i32 -2143541890}
!2220 = !DILocation(line: 478, column: 3, scope: !2218)
!2221 = !DILocation(line: 480, column: 3, scope: !2213)
!2222 = !DILocation(line: 480, column: 3, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2213, file: !18, line: 480, column: 3)
!2224 = !DILocation(line: 480, column: 3, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2223, file: !18, line: 480, column: 3)
!2226 = !DILocation(line: 480, column: 3, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !18, line: 480, column: 3)
!2228 = !{i64 2151425609, i64 2151425638, i64 2151425684, i64 2151425742, i64 2151425796, i64 2151425850, i64 2151425905, i64 2151425936}
!2229 = !DILocation(line: 483, column: 2, scope: !2084)
!2230 = !DILocation(line: 484, column: 1, scope: !2084)
!2231 = !DISubprogram(name: "kmalloc_trace", scope: !18, file: !18, line: 525, type: !2232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!35, !131, !33, !398}
!2234 = distinct !DISubprogram(name: "kmalloc_type", scope: !18, file: !18, line: 401, type: !2235, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!17, !33, !52}
!2237 = !{!2238, !2239}
!2238 = !DILocalVariable(name: "flags", arg: 1, scope: !2234, file: !18, line: 401, type: !33)
!2239 = !DILocalVariable(name: "caller", arg: 2, scope: !2234, file: !18, line: 401, type: !52)
!2240 = !DILocation(line: 401, column: 67, scope: !2234)
!2241 = !DILocation(line: 401, column: 88, scope: !2234)
!2242 = !DILocation(line: 407, column: 6, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2234, file: !18, line: 407, column: 6)
!2244 = !DILocation(line: 407, column: 6, scope: !2234)
!2245 = !DILocation(line: 413, column: 3, scope: !2243)
!2246 = !DILocation(line: 423, column: 38, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2234, file: !18, line: 423, column: 6)
!2248 = !DILocation(line: 423, column: 44, scope: !2247)
!2249 = !DILocation(line: 423, column: 6, scope: !2234)
!2250 = !DILocation(line: 424, column: 3, scope: !2247)
!2251 = !DILocation(line: 426, column: 3, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2234, file: !18, line: 425, column: 6)
!2253 = !DILocation(line: 429, column: 1, scope: !2234)
!2254 = !DISubprogram(name: "__compiletime_assert_117", scope: !18, file: !18, line: 478, type: !106, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2255 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !18, file: !18, line: 709, type: !2256, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!35, !131, !33}
!2258 = !{!2259, !2260}
!2259 = !DILocalVariable(name: "k", arg: 1, scope: !2255, file: !18, line: 709, type: !131)
!2260 = !DILocalVariable(name: "flags", arg: 2, scope: !2255, file: !18, line: 709, type: !33)
!2261 = !DILocation(line: 709, column: 58, scope: !2255)
!2262 = !DILocation(line: 709, column: 67, scope: !2255)
!2263 = !DILocation(line: 711, column: 26, scope: !2255)
!2264 = !DILocation(line: 711, column: 29, scope: !2255)
!2265 = !DILocation(line: 711, column: 35, scope: !2255)
!2266 = !DILocation(line: 711, column: 9, scope: !2255)
!2267 = !DILocation(line: 711, column: 2, scope: !2255)
!2268 = !DISubprogram(name: "kmem_cache_alloc", scope: !18, file: !18, line: 500, type: !2256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2269 = distinct !DISubprogram(name: "list_insert_sorted", scope: !2, file: !2, line: 41, type: !532, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2270)
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2278}
!2271 = !DILocalVariable(name: "mm", arg: 1, scope: !2269, file: !2, line: 41, type: !154)
!2272 = !DILocalVariable(name: "block", arg: 2, scope: !2269, file: !2, line: 42, type: !36)
!2273 = !DILocalVariable(name: "node", scope: !2269, file: !2, line: 44, type: !36)
!2274 = !DILocalVariable(name: "head", scope: !2269, file: !2, line: 45, type: !49)
!2275 = !DILocalVariable(name: "__mptr", scope: !2276, file: !2, line: 53, type: !35)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !2, line: 53, column: 2)
!2277 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 53, column: 2)
!2278 = !DILocalVariable(name: "__mptr", scope: !2279, file: !2, line: 53, type: !35)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 53, column: 2)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !2, line: 53, column: 2)
!2281 = !DILocation(line: 41, column: 50, scope: !2269)
!2282 = !DILocation(line: 42, column: 35, scope: !2269)
!2283 = !DILocation(line: 44, column: 2, scope: !2269)
!2284 = !DILocation(line: 44, column: 26, scope: !2269)
!2285 = !DILocation(line: 45, column: 2, scope: !2269)
!2286 = !DILocation(line: 45, column: 20, scope: !2269)
!2287 = !DILocation(line: 47, column: 10, scope: !2269)
!2288 = !DILocation(line: 47, column: 14, scope: !2269)
!2289 = !DILocation(line: 47, column: 46, scope: !2269)
!2290 = !DILocation(line: 47, column: 24, scope: !2269)
!2291 = !DILocation(line: 47, column: 7, scope: !2269)
!2292 = !DILocation(line: 48, column: 17, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 48, column: 6)
!2294 = !DILocation(line: 48, column: 6, scope: !2293)
!2295 = !DILocation(line: 48, column: 6, scope: !2269)
!2296 = !DILocation(line: 49, column: 13, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !2, line: 48, column: 24)
!2298 = !DILocation(line: 49, column: 20, scope: !2297)
!2299 = !DILocation(line: 49, column: 26, scope: !2297)
!2300 = !DILocation(line: 49, column: 3, scope: !2297)
!2301 = !DILocation(line: 50, column: 3, scope: !2297)
!2302 = !DILocation(line: 53, column: 2, scope: !2276)
!2303 = !DILocation(line: 53, column: 2, scope: !2277)
!2304 = !DILocation(line: 53, column: 2, scope: !2280)
!2305 = !DILocation(line: 54, column: 30, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 54, column: 7)
!2307 = !DILocation(line: 54, column: 7, scope: !2306)
!2308 = !DILocation(line: 54, column: 62, scope: !2306)
!2309 = !DILocation(line: 54, column: 39, scope: !2306)
!2310 = !DILocation(line: 54, column: 37, scope: !2306)
!2311 = !DILocation(line: 54, column: 7, scope: !2280)
!2312 = !DILocation(line: 55, column: 4, scope: !2306)
!2313 = !DILocation(line: 54, column: 66, scope: !2306)
!2314 = !DILocation(line: 53, column: 2, scope: !2279)
!2315 = distinct !{!2315, !2303, !2316, !261, !262}
!2316 = !DILocation(line: 55, column: 4, scope: !2277)
!2317 = !DILocation(line: 57, column: 14, scope: !2269)
!2318 = !DILocation(line: 57, column: 21, scope: !2269)
!2319 = !DILocation(line: 57, column: 27, scope: !2269)
!2320 = !DILocation(line: 57, column: 33, scope: !2269)
!2321 = !DILocation(line: 57, column: 38, scope: !2269)
!2322 = !DILocation(line: 57, column: 45, scope: !2269)
!2323 = !DILocation(line: 57, column: 51, scope: !2269)
!2324 = !DILocation(line: 57, column: 2, scope: !2269)
!2325 = !DILocation(line: 58, column: 1, scope: !2269)
!2326 = distinct !DISubprogram(name: "drm_buddy_block_order", scope: !38, file: !38, line: 97, type: !2327, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!13, !36}
!2329 = !{!2330}
!2330 = !DILocalVariable(name: "block", arg: 1, scope: !2326, file: !38, line: 97, type: !36)
!2331 = !DILocation(line: 97, column: 47, scope: !2326)
!2332 = !DILocation(line: 99, column: 9, scope: !2326)
!2333 = !DILocation(line: 99, column: 16, scope: !2326)
!2334 = !DILocation(line: 99, column: 23, scope: !2326)
!2335 = !DILocation(line: 99, column: 2, scope: !2326)
!2336 = distinct !DISubprogram(name: "list_empty", scope: !433, file: !433, line: 371, type: !955, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2337)
!2337 = !{!2338}
!2338 = !DILocalVariable(name: "head", arg: 1, scope: !2336, file: !433, line: 371, type: !957)
!2339 = !DILocation(line: 371, column: 54, scope: !2336)
!2340 = !DILocation(line: 373, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2336, file: !433, line: 373, column: 9)
!2342 = !DILocation(line: 373, column: 9, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2341, file: !433, line: 373, column: 9)
!2344 = !DILocation(line: 373, column: 34, scope: !2336)
!2345 = !DILocation(line: 373, column: 31, scope: !2336)
!2346 = !DILocation(line: 373, column: 2, scope: !2336)
!2347 = distinct !DISubprogram(name: "__list_add", scope: !433, file: !433, line: 146, type: !2348, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null, !49, !49, !49}
!2350 = !{!2351, !2352, !2353}
!2351 = !DILocalVariable(name: "new", arg: 1, scope: !2347, file: !433, line: 146, type: !49)
!2352 = !DILocalVariable(name: "prev", arg: 2, scope: !2347, file: !433, line: 147, type: !49)
!2353 = !DILocalVariable(name: "next", arg: 3, scope: !2347, file: !433, line: 148, type: !49)
!2354 = !DILocation(line: 146, column: 49, scope: !2347)
!2355 = !DILocation(line: 147, column: 28, scope: !2347)
!2356 = !DILocation(line: 148, column: 28, scope: !2347)
!2357 = !DILocation(line: 150, column: 24, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2347, file: !433, line: 150, column: 6)
!2359 = !DILocation(line: 150, column: 29, scope: !2358)
!2360 = !DILocation(line: 150, column: 35, scope: !2358)
!2361 = !DILocation(line: 150, column: 7, scope: !2358)
!2362 = !DILocation(line: 150, column: 6, scope: !2347)
!2363 = !DILocation(line: 151, column: 3, scope: !2358)
!2364 = !DILocation(line: 153, column: 15, scope: !2347)
!2365 = !DILocation(line: 153, column: 2, scope: !2347)
!2366 = !DILocation(line: 153, column: 8, scope: !2347)
!2367 = !DILocation(line: 153, column: 13, scope: !2347)
!2368 = !DILocation(line: 154, column: 14, scope: !2347)
!2369 = !DILocation(line: 154, column: 2, scope: !2347)
!2370 = !DILocation(line: 154, column: 7, scope: !2347)
!2371 = !DILocation(line: 154, column: 12, scope: !2347)
!2372 = !DILocation(line: 155, column: 14, scope: !2347)
!2373 = !DILocation(line: 155, column: 2, scope: !2347)
!2374 = !DILocation(line: 155, column: 7, scope: !2347)
!2375 = !DILocation(line: 155, column: 12, scope: !2347)
!2376 = !DILocation(line: 156, column: 2, scope: !2347)
!2377 = !DILocation(line: 156, column: 2, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2347, file: !433, line: 156, column: 2)
!2379 = !DILocation(line: 156, column: 2, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2378, file: !433, line: 156, column: 2)
!2381 = !DILocation(line: 156, column: 2, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !433, line: 156, column: 2)
!2383 = !DILocation(line: 157, column: 1, scope: !2347)
!2384 = distinct !DISubprogram(name: "__list_add_valid", scope: !433, file: !433, line: 128, type: !2385, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!370, !49, !49, !49}
!2387 = !{!2388, !2389, !2390}
!2388 = !DILocalVariable(name: "new", arg: 1, scope: !2384, file: !433, line: 128, type: !49)
!2389 = !DILocalVariable(name: "prev", arg: 2, scope: !2384, file: !433, line: 129, type: !49)
!2390 = !DILocalVariable(name: "next", arg: 3, scope: !2384, file: !433, line: 130, type: !49)
!2391 = !DILocation(line: 128, column: 55, scope: !2384)
!2392 = !DILocation(line: 129, column: 23, scope: !2384)
!2393 = !DILocation(line: 130, column: 23, scope: !2384)
!2394 = !DILocation(line: 132, column: 2, scope: !2384)
!2395 = !DISubprogram(name: "kmem_cache_free", scope: !18, file: !18, line: 503, type: !2396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !131, !35}
!2398 = distinct !DISubprogram(name: "drm_buddy_block_state", scope: !38, file: !38, line: 103, type: !2327, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2399)
!2399 = !{!2400}
!2400 = !DILocalVariable(name: "block", arg: 1, scope: !2398, file: !38, line: 103, type: !36)
!2401 = !DILocation(line: 103, column: 47, scope: !2398)
!2402 = !DILocation(line: 105, column: 9, scope: !2398)
!2403 = !DILocation(line: 105, column: 16, scope: !2398)
!2404 = !DILocation(line: 105, column: 23, scope: !2398)
!2405 = !DILocation(line: 105, column: 2, scope: !2398)
!2406 = distinct !DISubprogram(name: "__list_del_entry", scope: !433, file: !433, line: 213, type: !434, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2407)
!2407 = !{!2408}
!2408 = !DILocalVariable(name: "entry", arg: 1, scope: !2406, file: !433, line: 213, type: !49)
!2409 = !DILocation(line: 213, column: 55, scope: !2406)
!2410 = !DILocation(line: 215, column: 30, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2406, file: !433, line: 215, column: 6)
!2412 = !DILocation(line: 215, column: 7, scope: !2411)
!2413 = !DILocation(line: 215, column: 6, scope: !2406)
!2414 = !DILocation(line: 216, column: 3, scope: !2411)
!2415 = !DILocation(line: 218, column: 13, scope: !2406)
!2416 = !DILocation(line: 218, column: 20, scope: !2406)
!2417 = !DILocation(line: 218, column: 26, scope: !2406)
!2418 = !DILocation(line: 218, column: 33, scope: !2406)
!2419 = !DILocation(line: 218, column: 2, scope: !2406)
!2420 = !DILocation(line: 219, column: 1, scope: !2406)
!2421 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !433, file: !433, line: 134, type: !2422, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!370, !49}
!2424 = !{!2425}
!2425 = !DILocalVariable(name: "entry", arg: 1, scope: !2421, file: !433, line: 134, type: !49)
!2426 = !DILocation(line: 134, column: 61, scope: !2421)
!2427 = !DILocation(line: 136, column: 2, scope: !2421)
!2428 = distinct !DISubprogram(name: "__list_del", scope: !433, file: !433, line: 193, type: !996, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2429)
!2429 = !{!2430, !2431}
!2430 = !DILocalVariable(name: "prev", arg: 1, scope: !2428, file: !433, line: 193, type: !49)
!2431 = !DILocalVariable(name: "next", arg: 2, scope: !2428, file: !433, line: 193, type: !49)
!2432 = !DILocation(line: 193, column: 50, scope: !2428)
!2433 = !DILocation(line: 193, column: 75, scope: !2428)
!2434 = !DILocation(line: 195, column: 15, scope: !2428)
!2435 = !DILocation(line: 195, column: 2, scope: !2428)
!2436 = !DILocation(line: 195, column: 8, scope: !2428)
!2437 = !DILocation(line: 195, column: 13, scope: !2428)
!2438 = !DILocation(line: 196, column: 2, scope: !2428)
!2439 = !DILocation(line: 196, column: 2, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2428, file: !433, line: 196, column: 2)
!2441 = !DILocation(line: 196, column: 2, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2440, file: !433, line: 196, column: 2)
!2443 = !DILocation(line: 196, column: 2, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !433, line: 196, column: 2)
!2445 = !DILocation(line: 197, column: 1, scope: !2428)
!2446 = distinct !DISubprogram(name: "overlaps", scope: !2, file: !2, line: 320, type: !2447, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!370, !28, !28, !28, !28}
!2449 = !{!2450, !2451, !2452, !2453}
!2450 = !DILocalVariable(name: "s1", arg: 1, scope: !2446, file: !2, line: 320, type: !28)
!2451 = !DILocalVariable(name: "e1", arg: 2, scope: !2446, file: !2, line: 320, type: !28)
!2452 = !DILocalVariable(name: "s2", arg: 3, scope: !2446, file: !2, line: 320, type: !28)
!2453 = !DILocalVariable(name: "e2", arg: 4, scope: !2446, file: !2, line: 320, type: !28)
!2454 = !DILocation(line: 320, column: 33, scope: !2446)
!2455 = !DILocation(line: 320, column: 41, scope: !2446)
!2456 = !DILocation(line: 320, column: 49, scope: !2446)
!2457 = !DILocation(line: 320, column: 57, scope: !2446)
!2458 = !DILocation(line: 322, column: 9, scope: !2446)
!2459 = !DILocation(line: 322, column: 15, scope: !2446)
!2460 = !DILocation(line: 322, column: 12, scope: !2446)
!2461 = !DILocation(line: 322, column: 18, scope: !2446)
!2462 = !DILocation(line: 322, column: 21, scope: !2446)
!2463 = !DILocation(line: 322, column: 27, scope: !2446)
!2464 = !DILocation(line: 322, column: 24, scope: !2446)
!2465 = !DILocation(line: 0, scope: !2446)
!2466 = !DILocation(line: 322, column: 2, scope: !2446)
!2467 = distinct !DISubprogram(name: "contains", scope: !2, file: !2, line: 325, type: !2447, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2468)
!2468 = !{!2469, !2470, !2471, !2472}
!2469 = !DILocalVariable(name: "s1", arg: 1, scope: !2467, file: !2, line: 325, type: !28)
!2470 = !DILocalVariable(name: "e1", arg: 2, scope: !2467, file: !2, line: 325, type: !28)
!2471 = !DILocalVariable(name: "s2", arg: 3, scope: !2467, file: !2, line: 325, type: !28)
!2472 = !DILocalVariable(name: "e2", arg: 4, scope: !2467, file: !2, line: 325, type: !28)
!2473 = !DILocation(line: 325, column: 33, scope: !2467)
!2474 = !DILocation(line: 325, column: 41, scope: !2467)
!2475 = !DILocation(line: 325, column: 49, scope: !2467)
!2476 = !DILocation(line: 325, column: 57, scope: !2467)
!2477 = !DILocation(line: 327, column: 9, scope: !2467)
!2478 = !DILocation(line: 327, column: 15, scope: !2467)
!2479 = !DILocation(line: 327, column: 12, scope: !2467)
!2480 = !DILocation(line: 327, column: 18, scope: !2467)
!2481 = !DILocation(line: 327, column: 21, scope: !2467)
!2482 = !DILocation(line: 327, column: 27, scope: !2467)
!2483 = !DILocation(line: 327, column: 24, scope: !2467)
!2484 = !DILocation(line: 0, scope: !2467)
!2485 = !DILocation(line: 327, column: 2, scope: !2467)
!2486 = distinct !DISubprogram(name: "drm_buddy_block_is_split", scope: !38, file: !38, line: 121, type: !647, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2487)
!2487 = !{!2488}
!2488 = !DILocalVariable(name: "block", arg: 1, scope: !2486, file: !38, line: 121, type: !36)
!2489 = !DILocation(line: 121, column: 50, scope: !2486)
!2490 = !DILocation(line: 123, column: 31, scope: !2486)
!2491 = !DILocation(line: 123, column: 9, scope: !2486)
!2492 = !DILocation(line: 123, column: 38, scope: !2486)
!2493 = !DILocation(line: 123, column: 2, scope: !2486)
!2494 = distinct !DISubprogram(name: "split_block", scope: !2, file: !2, line: 203, type: !2495, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!55, !154, !36}
!2497 = !{!2498, !2499, !2500, !2501}
!2498 = !DILocalVariable(name: "mm", arg: 1, scope: !2494, file: !2, line: 203, type: !154)
!2499 = !DILocalVariable(name: "block", arg: 2, scope: !2494, file: !2, line: 204, type: !36)
!2500 = !DILocalVariable(name: "block_order", scope: !2494, file: !2, line: 206, type: !13)
!2501 = !DILocalVariable(name: "offset", scope: !2494, file: !2, line: 207, type: !28)
!2502 = !DILocation(line: 203, column: 42, scope: !2494)
!2503 = !DILocation(line: 204, column: 34, scope: !2494)
!2504 = !DILocation(line: 206, column: 2, scope: !2494)
!2505 = !DILocation(line: 206, column: 15, scope: !2494)
!2506 = !DILocation(line: 206, column: 51, scope: !2494)
!2507 = !DILocation(line: 206, column: 29, scope: !2494)
!2508 = !DILocation(line: 206, column: 58, scope: !2494)
!2509 = !DILocation(line: 207, column: 2, scope: !2494)
!2510 = !DILocation(line: 207, column: 6, scope: !2494)
!2511 = !DILocation(line: 207, column: 38, scope: !2494)
!2512 = !DILocation(line: 207, column: 15, scope: !2494)
!2513 = !DILocation(line: 209, column: 2, scope: !2494)
!2514 = !DILocation(line: 209, column: 2, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !2, line: 209, column: 2)
!2516 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 209, column: 2)
!2517 = !DILocation(line: 209, column: 2, scope: !2516)
!2518 = !DILocation(line: 209, column: 2, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 209, column: 2)
!2520 = !DILocation(line: 209, column: 2, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2519, file: !2, line: 209, column: 2)
!2522 = !DILocation(line: 209, column: 2, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !2, line: 209, column: 2)
!2524 = !{i64 2154140902, i64 2154140931, i64 2154140977, i64 2154141035, i64 2154141089, i64 2154141143, i64 2154141198, i64 2154141229}
!2525 = !DILocation(line: 210, column: 2, scope: !2494)
!2526 = !DILocation(line: 210, column: 2, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !2, line: 210, column: 2)
!2528 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 210, column: 2)
!2529 = !DILocation(line: 210, column: 2, scope: !2528)
!2530 = !DILocation(line: 210, column: 2, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !2, line: 210, column: 2)
!2532 = !DILocation(line: 210, column: 2, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2531, file: !2, line: 210, column: 2)
!2534 = !DILocation(line: 210, column: 2, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !2, line: 210, column: 2)
!2536 = !{i64 2154141926, i64 2154141955, i64 2154142001, i64 2154142059, i64 2154142113, i64 2154142167, i64 2154142222, i64 2154142253}
!2537 = !DILocation(line: 212, column: 32, scope: !2494)
!2538 = !DILocation(line: 212, column: 36, scope: !2494)
!2539 = !DILocation(line: 212, column: 43, scope: !2494)
!2540 = !DILocation(line: 212, column: 56, scope: !2494)
!2541 = !DILocation(line: 212, column: 16, scope: !2494)
!2542 = !DILocation(line: 212, column: 2, scope: !2494)
!2543 = !DILocation(line: 212, column: 9, scope: !2494)
!2544 = !DILocation(line: 212, column: 14, scope: !2494)
!2545 = !DILocation(line: 213, column: 7, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 213, column: 6)
!2547 = !DILocation(line: 213, column: 14, scope: !2546)
!2548 = !DILocation(line: 213, column: 6, scope: !2494)
!2549 = !DILocation(line: 214, column: 3, scope: !2546)
!2550 = !DILocation(line: 216, column: 33, scope: !2494)
!2551 = !DILocation(line: 216, column: 37, scope: !2494)
!2552 = !DILocation(line: 216, column: 44, scope: !2494)
!2553 = !DILocation(line: 217, column: 12, scope: !2494)
!2554 = !DILocation(line: 217, column: 22, scope: !2494)
!2555 = !DILocation(line: 217, column: 26, scope: !2494)
!2556 = !DILocation(line: 217, column: 40, scope: !2494)
!2557 = !DILocation(line: 217, column: 37, scope: !2494)
!2558 = !DILocation(line: 217, column: 19, scope: !2494)
!2559 = !DILocation(line: 216, column: 17, scope: !2494)
!2560 = !DILocation(line: 216, column: 2, scope: !2494)
!2561 = !DILocation(line: 216, column: 9, scope: !2494)
!2562 = !DILocation(line: 216, column: 15, scope: !2494)
!2563 = !DILocation(line: 218, column: 7, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 218, column: 6)
!2565 = !DILocation(line: 218, column: 14, scope: !2564)
!2566 = !DILocation(line: 218, column: 6, scope: !2494)
!2567 = !DILocation(line: 219, column: 18, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 218, column: 21)
!2569 = !DILocation(line: 219, column: 22, scope: !2568)
!2570 = !DILocation(line: 219, column: 29, scope: !2568)
!2571 = !DILocation(line: 219, column: 3, scope: !2568)
!2572 = !DILocation(line: 220, column: 3, scope: !2568)
!2573 = !DILocation(line: 223, column: 12, scope: !2494)
!2574 = !DILocation(line: 223, column: 16, scope: !2494)
!2575 = !DILocation(line: 223, column: 23, scope: !2494)
!2576 = !DILocation(line: 223, column: 2, scope: !2494)
!2577 = !DILocation(line: 224, column: 12, scope: !2494)
!2578 = !DILocation(line: 224, column: 16, scope: !2494)
!2579 = !DILocation(line: 224, column: 23, scope: !2494)
!2580 = !DILocation(line: 224, column: 2, scope: !2494)
!2581 = !DILocation(line: 226, column: 13, scope: !2494)
!2582 = !DILocation(line: 226, column: 2, scope: !2494)
!2583 = !DILocation(line: 228, column: 2, scope: !2494)
!2584 = !DILocation(line: 229, column: 1, scope: !2494)
!2585 = distinct !DISubprogram(name: "mark_split", scope: !2, file: !2, line: 77, type: !1179, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2586)
!2586 = !{!2587}
!2587 = !DILocalVariable(name: "block", arg: 1, scope: !2585, file: !2, line: 77, type: !36)
!2588 = !DILocation(line: 77, column: 48, scope: !2585)
!2589 = !DILocation(line: 79, column: 2, scope: !2585)
!2590 = !DILocation(line: 79, column: 9, scope: !2585)
!2591 = !DILocation(line: 79, column: 16, scope: !2585)
!2592 = !DILocation(line: 80, column: 2, scope: !2585)
!2593 = !DILocation(line: 80, column: 9, scope: !2585)
!2594 = !DILocation(line: 80, column: 16, scope: !2585)
!2595 = !DILocation(line: 82, column: 12, scope: !2585)
!2596 = !DILocation(line: 82, column: 19, scope: !2585)
!2597 = !DILocation(line: 82, column: 2, scope: !2585)
!2598 = !DILocation(line: 83, column: 1, scope: !2585)
!2599 = distinct !DISubprogram(name: "ERR_PTR", scope: !1791, file: !1791, line: 39, type: !2600, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2603)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!35, !2602}
!2602 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!2603 = !{!2604}
!2604 = !DILocalVariable(name: "error", arg: 1, scope: !2599, file: !1791, line: 39, type: !2602)
!2605 = !DILocation(line: 39, column: 48, scope: !2599)
!2606 = !DILocation(line: 41, column: 18, scope: !2599)
!2607 = !DILocation(line: 41, column: 9, scope: !2599)
!2608 = !DILocation(line: 41, column: 2, scope: !2599)
!2609 = distinct !DISubprogram(name: "get_maxblock", scope: !2, file: !2, line: 418, type: !2610, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!36, !154, !13}
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618}
!2613 = !DILocalVariable(name: "mm", arg: 1, scope: !2609, file: !2, line: 418, type: !154)
!2614 = !DILocalVariable(name: "order", arg: 2, scope: !2609, file: !2, line: 418, type: !13)
!2615 = !DILocalVariable(name: "max_block", scope: !2609, file: !2, line: 420, type: !36)
!2616 = !DILocalVariable(name: "node", scope: !2609, file: !2, line: 420, type: !36)
!2617 = !DILocalVariable(name: "i", scope: !2609, file: !2, line: 421, type: !13)
!2618 = !DILocalVariable(name: "__mptr", scope: !2619, file: !2, line: 425, type: !35)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 425, column: 11)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !2, line: 424, column: 39)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !2, line: 424, column: 7)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !2, line: 423, column: 43)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !2, line: 423, column: 2)
!2624 = distinct !DILexicalBlock(scope: !2609, file: !2, line: 423, column: 2)
!2625 = !DILocation(line: 418, column: 32, scope: !2609)
!2626 = !DILocation(line: 418, column: 49, scope: !2609)
!2627 = !DILocation(line: 420, column: 2, scope: !2609)
!2628 = !DILocation(line: 420, column: 26, scope: !2609)
!2629 = !DILocation(line: 420, column: 45, scope: !2609)
!2630 = !DILocation(line: 421, column: 2, scope: !2609)
!2631 = !DILocation(line: 421, column: 15, scope: !2609)
!2632 = !DILocation(line: 423, column: 11, scope: !2624)
!2633 = !DILocation(line: 423, column: 9, scope: !2624)
!2634 = !DILocation(line: 423, column: 7, scope: !2624)
!2635 = !DILocation(line: 423, column: 18, scope: !2623)
!2636 = !DILocation(line: 423, column: 23, scope: !2623)
!2637 = !DILocation(line: 423, column: 27, scope: !2623)
!2638 = !DILocation(line: 423, column: 20, scope: !2623)
!2639 = !DILocation(line: 423, column: 2, scope: !2624)
!2640 = !DILocation(line: 424, column: 20, scope: !2621)
!2641 = !DILocation(line: 424, column: 24, scope: !2621)
!2642 = !DILocation(line: 424, column: 34, scope: !2621)
!2643 = !DILocation(line: 424, column: 8, scope: !2621)
!2644 = !DILocation(line: 424, column: 7, scope: !2622)
!2645 = !DILocation(line: 425, column: 11, scope: !2619)
!2646 = !DILocation(line: 425, column: 11, scope: !2620)
!2647 = !DILocation(line: 425, column: 9, scope: !2620)
!2648 = !DILocation(line: 428, column: 9, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 428, column: 8)
!2650 = !DILocation(line: 428, column: 8, scope: !2620)
!2651 = !DILocation(line: 429, column: 17, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !2, line: 428, column: 20)
!2653 = !DILocation(line: 429, column: 15, scope: !2652)
!2654 = !DILocation(line: 430, column: 5, scope: !2652)
!2655 = !DILocation(line: 433, column: 31, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 433, column: 8)
!2657 = !DILocation(line: 433, column: 8, scope: !2656)
!2658 = !DILocation(line: 434, column: 31, scope: !2656)
!2659 = !DILocation(line: 434, column: 8, scope: !2656)
!2660 = !DILocation(line: 433, column: 37, scope: !2656)
!2661 = !DILocation(line: 433, column: 8, scope: !2620)
!2662 = !DILocation(line: 435, column: 17, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 434, column: 43)
!2664 = !DILocation(line: 435, column: 15, scope: !2663)
!2665 = !DILocation(line: 436, column: 4, scope: !2663)
!2666 = !DILocation(line: 437, column: 3, scope: !2620)
!2667 = !DILocation(line: 438, column: 2, scope: !2622)
!2668 = !DILocation(line: 423, column: 38, scope: !2623)
!2669 = !DILocation(line: 423, column: 2, scope: !2623)
!2670 = distinct !{!2670, !2639, !2671, !261, !262}
!2671 = !DILocation(line: 438, column: 2, scope: !2624)
!2672 = !DILocation(line: 440, column: 9, scope: !2609)
!2673 = !DILocation(line: 441, column: 1, scope: !2609)
!2674 = !DILocation(line: 440, column: 2, scope: !2609)
!2675 = distinct !DISubprogram(name: "__list_splice", scope: !433, file: !433, line: 523, type: !2676, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !957, !49, !49}
!2678 = !{!2679, !2680, !2681, !2682, !2683}
!2679 = !DILocalVariable(name: "list", arg: 1, scope: !2675, file: !433, line: 523, type: !957)
!2680 = !DILocalVariable(name: "prev", arg: 2, scope: !2675, file: !433, line: 524, type: !49)
!2681 = !DILocalVariable(name: "next", arg: 3, scope: !2675, file: !433, line: 525, type: !49)
!2682 = !DILocalVariable(name: "first", scope: !2675, file: !433, line: 527, type: !49)
!2683 = !DILocalVariable(name: "last", scope: !2675, file: !433, line: 528, type: !49)
!2684 = !DILocation(line: 523, column: 58, scope: !2675)
!2685 = !DILocation(line: 524, column: 24, scope: !2675)
!2686 = !DILocation(line: 525, column: 24, scope: !2675)
!2687 = !DILocation(line: 527, column: 2, scope: !2675)
!2688 = !DILocation(line: 527, column: 20, scope: !2675)
!2689 = !DILocation(line: 527, column: 28, scope: !2675)
!2690 = !DILocation(line: 527, column: 34, scope: !2675)
!2691 = !DILocation(line: 528, column: 2, scope: !2675)
!2692 = !DILocation(line: 528, column: 20, scope: !2675)
!2693 = !DILocation(line: 528, column: 27, scope: !2675)
!2694 = !DILocation(line: 528, column: 33, scope: !2675)
!2695 = !DILocation(line: 530, column: 16, scope: !2675)
!2696 = !DILocation(line: 530, column: 2, scope: !2675)
!2697 = !DILocation(line: 530, column: 9, scope: !2675)
!2698 = !DILocation(line: 530, column: 14, scope: !2675)
!2699 = !DILocation(line: 531, column: 15, scope: !2675)
!2700 = !DILocation(line: 531, column: 2, scope: !2675)
!2701 = !DILocation(line: 531, column: 8, scope: !2675)
!2702 = !DILocation(line: 531, column: 13, scope: !2675)
!2703 = !DILocation(line: 533, column: 15, scope: !2675)
!2704 = !DILocation(line: 533, column: 2, scope: !2675)
!2705 = !DILocation(line: 533, column: 8, scope: !2675)
!2706 = !DILocation(line: 533, column: 13, scope: !2675)
!2707 = !DILocation(line: 534, column: 15, scope: !2675)
!2708 = !DILocation(line: 534, column: 2, scope: !2675)
!2709 = !DILocation(line: 534, column: 8, scope: !2675)
!2710 = !DILocation(line: 534, column: 13, scope: !2675)
!2711 = !DILocation(line: 535, column: 1, scope: !2675)
!2712 = !DISubprogram(name: "kmem_cache_create", scope: !18, file: !18, line: 189, type: !2713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!131, !812, !13, !13, !2715, !2716}
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !34, line: 155, baseType: !13)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !35}
!2719 = !DISubprogram(name: "kmem_cache_destroy", scope: !18, file: !18, line: 197, type: !2720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{null, !131}
