; ModuleID = 'drivers/firmware/efi/memmap.c'
source_filename = "drivers/firmware/efi/memmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.efi_memory_map_data = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"\013efi: Could not map the memory map!\0A\00", align 1, !dbg !0
@efi = external dso_local global %struct.efi, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"drivers/firmware/efi/memmap.c\00", align 1, !dbg !7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__efi_memmap_init(ptr noundef %data) #0 section ".init.text" align 16 !dbg !51 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %map = alloca %struct.efi_memory_map, align 8
  %phys_map = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !71, metadata !DIExpression()), !dbg !83
  call void @llvm.lifetime.start.p0(i64 56, ptr %map) #11, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %map, metadata !72, metadata !DIExpression()), !dbg !85
  call void @llvm.lifetime.start.p0(i64 8, ptr %phys_map) #11, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %phys_map, metadata !82, metadata !DIExpression()), !dbg !87
  %0 = load ptr, ptr %data.addr, align 8, !dbg !88
  %phys_map1 = getelementptr inbounds %struct.efi_memory_map_data, ptr %0, i32 0, i32 0, !dbg !89
  %1 = load i64, ptr %phys_map1, align 8, !dbg !89
  store i64 %1, ptr %phys_map, align 8, !dbg !90
  %2 = load ptr, ptr %data.addr, align 8, !dbg !91
  %flags = getelementptr inbounds %struct.efi_memory_map_data, ptr %2, i32 0, i32 4, !dbg !93
  %3 = load i64, ptr %flags, align 8, !dbg !93
  %and = and i64 %3, 1, !dbg !94
  %tobool = icmp ne i64 %and, 0, !dbg !94
  br i1 %tobool, label %if.then, label %if.else, !dbg !95

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %phys_map, align 8, !dbg !96
  %5 = load ptr, ptr %data.addr, align 8, !dbg !97
  %size = getelementptr inbounds %struct.efi_memory_map_data, ptr %5, i32 0, i32 1, !dbg !98
  %6 = load i64, ptr %size, align 8, !dbg !98
  %call = call ptr @memremap(i64 noundef %4, i64 noundef %6, i64 noundef 1) #12, !dbg !99
  %map2 = getelementptr inbounds %struct.efi_memory_map, ptr %map, i32 0, i32 1, !dbg !100
  store ptr %call, ptr %map2, align 8, !dbg !101
  br label %if.end, !dbg !102

if.else:                                          ; preds = %entry
  %7 = load i64, ptr %phys_map, align 8, !dbg !103
  %8 = load ptr, ptr %data.addr, align 8, !dbg !104
  %size3 = getelementptr inbounds %struct.efi_memory_map_data, ptr %8, i32 0, i32 1, !dbg !105
  %9 = load i64, ptr %size3, align 8, !dbg !105
  %call4 = call ptr @early_memremap(i64 noundef %7, i64 noundef %9) #12, !dbg !106
  %map5 = getelementptr inbounds %struct.efi_memory_map, ptr %map, i32 0, i32 1, !dbg !107
  store ptr %call4, ptr %map5, align 8, !dbg !108
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %map6 = getelementptr inbounds %struct.efi_memory_map, ptr %map, i32 0, i32 1, !dbg !109
  %10 = load ptr, ptr %map6, align 8, !dbg !109
  %tobool7 = icmp ne ptr %10, null, !dbg !111
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !112

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !113

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !116

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !116

do.end:                                           ; preds = %do.cond
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #13, !dbg !113
  store i32 %call9, ptr %tmp, align 4, !dbg !116
  %11 = load i32, ptr %tmp, align 4, !dbg !113
  store i32 -12, ptr %retval, align 4, !dbg !118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !118

if.end10:                                         ; preds = %if.end
  %12 = load ptr, ptr %data.addr, align 8, !dbg !119
  %phys_map11 = getelementptr inbounds %struct.efi_memory_map_data, ptr %12, i32 0, i32 0, !dbg !120
  %13 = load i64, ptr %phys_map11, align 8, !dbg !120
  %phys_map12 = getelementptr inbounds %struct.efi_memory_map, ptr %map, i32 0, i32 0, !dbg !121
  store i64 %13, ptr %phys_map12, align 8, !dbg !122
  %14 = load ptr, ptr %data.addr, align 8, !dbg !123
  %size13 = getelementptr inbounds %struct.efi_memory_map_data, ptr %14, i32 0, i32 1, !dbg !124
  %15 = load i64, ptr %size13, align 8, !dbg !124
  %16 = load ptr, ptr %data.addr, align 8, !dbg !125
  %desc_size = getelementptr inbounds %struct.efi_memory_map_data, ptr %16, i32 0, i32 3, !dbg !126
  %17 = load i64, ptr %desc_size, align 8, !dbg !126
  %div = udiv i64 %15, %17, !dbg !127
  %conv = trunc i64 %div to i32, !dbg !123
  %nr_map = getelementptr inbounds %struct.efi_memory_map, ptr %map, i32 0, i32 3, !dbg !128
  store i32 %conv, ptr %nr_map, align 8, !dbg !129
  %map14 = getelementptr inbounds %struct.efi_memory_map, ptr %map, i32 0, i32 1, !dbg !130
  %18 = load ptr, ptr %map14, align 8, !dbg !130
  %19 = load ptr, ptr %data.addr, align 8, !dbg !131
  %size15 = getelementptr inbounds %struct.efi_memory_map_data, ptr %19, i32 0, i32 1, !dbg !132
  %20 = load i64, ptr %size15, align 8, !dbg !132
  %add.ptr = getelementptr i8, ptr %18, i64 %20, !dbg !133
  %map_end = getelementptr inbounds %struct.efi_memory_map, ptr %map, i32 0, i32 2, !dbg !134
  store ptr %add.ptr, ptr %map_end, align 8, !dbg !135
  %21 = load ptr, ptr %data.addr, align 8, !dbg !136
  %desc_version = getelementptr inbounds %struct.efi_memory_map_data, ptr %21, i32 0, i32 2, !dbg !137
  %22 = load i64, ptr %desc_version, align 8, !dbg !137
  %desc_version16 = getelementptr inbounds %struct.efi_memory_map, ptr %map, i32 0, i32 4, !dbg !138
  store i64 %22, ptr %desc_version16, align 8, !dbg !139
  %23 = load ptr, ptr %data.addr, align 8, !dbg !140
  %desc_size17 = getelementptr inbounds %struct.efi_memory_map_data, ptr %23, i32 0, i32 3, !dbg !141
  %24 = load i64, ptr %desc_size17, align 8, !dbg !141
  %desc_size18 = getelementptr inbounds %struct.efi_memory_map, ptr %map, i32 0, i32 5, !dbg !142
  store i64 %24, ptr %desc_size18, align 8, !dbg !143
  %25 = load ptr, ptr %data.addr, align 8, !dbg !144
  %flags19 = getelementptr inbounds %struct.efi_memory_map_data, ptr %25, i32 0, i32 4, !dbg !145
  %26 = load i64, ptr %flags19, align 8, !dbg !145
  %flags20 = getelementptr inbounds %struct.efi_memory_map, ptr %map, i32 0, i32 6, !dbg !146
  store i64 %26, ptr %flags20, align 8, !dbg !147
  call void @set_bit(i64 noundef 4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #12, !dbg !148
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27), ptr align 8 %map, i64 56, i1 false), !dbg !149
  store i32 0, ptr %retval, align 4, !dbg !150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !150

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %phys_map) #11, !dbg !151
  call void @llvm.lifetime.end.p0(i64 56, ptr %map) #11, !dbg !151
  %27 = load i32, ptr %retval, align 4, !dbg !151
  ret i32 %27, !dbg !151
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !152 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !160 dso_local ptr @early_memremap(i64 noundef, i64 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !164 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !170 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !177, metadata !DIExpression()), !dbg !179
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !178, metadata !DIExpression()), !dbg !180
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !181
  %1 = load i64, ptr %nr.addr, align 8, !dbg !182
  %div = sdiv i64 %1, 64, !dbg !182
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !183
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !184
  %2 = load i64, ptr %nr.addr, align 8, !dbg !185
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !186
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !187
  ret void, !dbg !188
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @efi_memmap_init_early(ptr noundef %data) #0 section ".init.text" align 16 !dbg !189 {
entry:
  %data.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !191, metadata !DIExpression()), !dbg !197
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !192, metadata !DIExpression()), !dbg !198
  %0 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 6), align 8, !dbg !198
  %and = and i64 %0, 1, !dbg !198
  %tobool = icmp ne i64 %and, 0, !dbg !198
  %lnot = xor i1 %tobool, true, !dbg !198
  %lnot1 = xor i1 %lnot, true, !dbg !198
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !198
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !198
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !199
  %tobool2 = icmp ne i32 %1, 0, !dbg !199
  %lnot3 = xor i1 %tobool2, true, !dbg !199
  %lnot5 = xor i1 %lnot3, true, !dbg !199
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !199
  %conv = sext i32 %lnot.ext6 to i64, !dbg !199
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !199
  %tobool7 = icmp ne i64 %expval, 0, !dbg !199
  br i1 %tobool7, label %if.then, label %if.end, !dbg !198

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !199

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !194, metadata !DIExpression()), !dbg !200
  store i32 2305, ptr %__flags, align 4, !dbg !200
  br label %do.body8, !dbg !200

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !201

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !201

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !200

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !203
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 75, i32 %2, i64 12) #11, !dbg !203, !srcloc !205
  br label %do.cond10, !dbg !203

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !203

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !200

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !206

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !206

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !199
  br label %do.cond15, !dbg !200

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !200

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !200

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !198
  %tobool17 = icmp ne i32 %3, 0, !dbg !198
  %lnot18 = xor i1 %tobool17, true, !dbg !198
  %lnot20 = xor i1 %lnot18, true, !dbg !198
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !198
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !198
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !198
  store i64 %expval23, ptr %tmp, align 8, !dbg !199
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !208
  %4 = load i64, ptr %tmp, align 8, !dbg !198
  %5 = load ptr, ptr %data.addr, align 8, !dbg !209
  %flags = getelementptr inbounds %struct.efi_memory_map_data, ptr %5, i32 0, i32 4, !dbg !210
  store i64 0, ptr %flags, align 8, !dbg !211
  %6 = load ptr, ptr %data.addr, align 8, !dbg !212
  %call = call i32 @__efi_memmap_init(ptr noundef %6) #13, !dbg !213
  ret i32 %call, !dbg !214
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @efi_memmap_unmap() #0 section ".init.text" align 16 !dbg !215 {
entry:
  %size = alloca i64, align 8
  %call = call zeroext i1 @efi_enabled(i32 noundef 4) #12, !dbg !222
  br i1 %call, label %if.end, label %if.then, !dbg !224

if.then:                                          ; preds = %entry
  br label %return, !dbg !225

if.end:                                           ; preds = %entry
  %0 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 6), align 8, !dbg !226
  %and = and i64 %0, 1, !dbg !227
  %tobool = icmp ne i64 %and, 0, !dbg !227
  br i1 %tobool, label %if.else, label %if.then1, !dbg !228

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #11, !dbg !229
  call void @llvm.dbg.declare(metadata ptr %size, metadata !219, metadata !DIExpression()), !dbg !230
  %1 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !231
  %2 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 3), align 8, !dbg !232
  %conv = sext i32 %2 to i64, !dbg !233
  %mul = mul i64 %1, %conv, !dbg !234
  store i64 %mul, ptr %size, align 8, !dbg !235
  %3 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !236
  %4 = load i64, ptr %size, align 8, !dbg !237
  call void @early_memunmap(ptr noundef %3, i64 noundef %4) #12, !dbg !238
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #11, !dbg !239
  br label %if.end2, !dbg !240

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !241
  call void @memunmap(ptr noundef %5) #12, !dbg !243
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  store ptr null, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !244
  call void @clear_bit(i64 noundef 4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #12, !dbg !245
  br label %return, !dbg !246

return:                                           ; preds = %if.end2, %if.then
  ret void, !dbg !246
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_enabled(i32 noundef %feature) #8 align 16 !dbg !247 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !253, metadata !DIExpression()), !dbg !254
  %0 = load i32, ptr %feature.addr, align 4, !dbg !255
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !255
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !255

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0) to i32, !dbg !255
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !255
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !255

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !255

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28), align 8, !dbg !255
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !255
  br i1 %4, label %cond.true, label %cond.false, !dbg !255

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %feature.addr, align 4, !dbg !255
  %conv4 = sext i32 %5 to i64, !dbg !255
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #12, !dbg !255
  %conv5 = zext i1 %call to i32, !dbg !255
  br label %cond.end, !dbg !255

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %feature.addr, align 4, !dbg !255
  %conv6 = sext i32 %6 to i64, !dbg !255
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #12, !dbg !255
  %conv8 = zext i1 %call7 to i32, !dbg !255
  br label %cond.end, !dbg !255

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !255
  %cmp = icmp ne i32 %cond, 0, !dbg !256
  ret i1 %cmp, !dbg !257
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !258 dso_local void @early_memunmap(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !261 dso_local void @memunmap(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !264 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !266, metadata !DIExpression()), !dbg !268
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !267, metadata !DIExpression()), !dbg !269
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !270
  %1 = load i64, ptr %nr.addr, align 8, !dbg !271
  %div = sdiv i64 %1, 64, !dbg !271
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !272
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !273
  %2 = load i64, ptr %nr.addr, align 8, !dbg !274
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !275
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !276
  ret void, !dbg !277
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @efi_memmap_init_late(i64 noundef %addr, i64 noundef %size) #0 section ".init.text" align 16 !dbg !278 {
entry:
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %data = alloca %struct.efi_memory_map_data, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on25 = alloca i32, align 4
  %__flags41 = alloca i32, align 4
  %tmp54 = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !282, metadata !DIExpression()), !dbg !295
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !283, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 40, ptr %data) #11, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %data, metadata !284, metadata !DIExpression()), !dbg !298
  %phys_map = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 0, !dbg !299
  %0 = load i64, ptr %addr.addr, align 8, !dbg !300
  store i64 %0, ptr %phys_map, align 8, !dbg !299
  %size1 = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 1, !dbg !299
  %1 = load i64, ptr %size.addr, align 8, !dbg !301
  store i64 %1, ptr %size1, align 8, !dbg !299
  %desc_version = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 2, !dbg !299
  store i64 0, ptr %desc_version, align 8, !dbg !299
  %desc_size = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 3, !dbg !299
  store i64 0, ptr %desc_size, align 8, !dbg !299
  %flags = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 4, !dbg !299
  store i64 1, ptr %flags, align 8, !dbg !299
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !285, metadata !DIExpression()), !dbg !302
  %2 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !302
  %tobool = icmp ne ptr %2, null, !dbg !302
  %lnot = xor i1 %tobool, true, !dbg !302
  %lnot2 = xor i1 %lnot, true, !dbg !302
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !302
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !302
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !303
  %tobool3 = icmp ne i32 %3, 0, !dbg !303
  %lnot4 = xor i1 %tobool3, true, !dbg !303
  %lnot6 = xor i1 %lnot4, true, !dbg !303
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !303
  %conv = sext i32 %lnot.ext7 to i64, !dbg !303
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !303
  %tobool8 = icmp ne i64 %expval, 0, !dbg !303
  br i1 %tobool8, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !303

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !287, metadata !DIExpression()), !dbg !304
  store i32 2305, ptr %__flags, align 4, !dbg !304
  br label %do.body9, !dbg !304

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !305

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !305

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !304

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !307
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 131, i32 %4, i64 12) #11, !dbg !307, !srcloc !309
  br label %do.cond11, !dbg !307

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !307

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !304

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !310

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !310

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !303
  br label %do.cond16, !dbg !304

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !304

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !304

if.end:                                           ; preds = %do.end17, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !302
  %tobool18 = icmp ne i32 %5, 0, !dbg !302
  %lnot19 = xor i1 %tobool18, true, !dbg !302
  %lnot21 = xor i1 %lnot19, true, !dbg !302
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !302
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !302
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !302
  store i64 %expval24, ptr %tmp, align 8, !dbg !303
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !312
  %6 = load i64, ptr %tmp, align 8, !dbg !302
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on25) #11, !dbg !313
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on25, metadata !290, metadata !DIExpression()), !dbg !313
  %7 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 6), align 8, !dbg !313
  %and = and i64 %7, 1, !dbg !313
  %tobool26 = icmp ne i64 %and, 0, !dbg !313
  %lnot27 = xor i1 %tobool26, true, !dbg !313
  %lnot29 = xor i1 %lnot27, true, !dbg !313
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !313
  store i32 %lnot.ext30, ptr %__ret_warn_on25, align 4, !dbg !313
  %8 = load i32, ptr %__ret_warn_on25, align 4, !dbg !314
  %tobool31 = icmp ne i32 %8, 0, !dbg !314
  %lnot32 = xor i1 %tobool31, true, !dbg !314
  %lnot34 = xor i1 %lnot32, true, !dbg !314
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !314
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !314
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !314
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !314
  br i1 %tobool38, label %if.then39, label %if.end53, !dbg !313

if.then39:                                        ; preds = %if.end
  br label %do.body40, !dbg !314

do.body40:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags41) #11, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %__flags41, metadata !292, metadata !DIExpression()), !dbg !315
  store i32 2305, ptr %__flags41, align 4, !dbg !315
  br label %do.body42, !dbg !315

do.body42:                                        ; preds = %do.body40
  br label %do.cond43, !dbg !316

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !316

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !315

do.body45:                                        ; preds = %do.end44
  %9 = load i32, ptr %__flags41, align 4, !dbg !318
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 134, i32 %9, i64 12) #11, !dbg !318, !srcloc !320
  br label %do.cond46, !dbg !318

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !318

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !315

do.body48:                                        ; preds = %do.end47
  br label %do.cond49, !dbg !321

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !321

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags41) #11, !dbg !314
  br label %do.cond51, !dbg !315

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !315

do.end52:                                         ; preds = %do.cond51
  br label %if.end53, !dbg !315

if.end53:                                         ; preds = %do.end52, %if.end
  %10 = load i32, ptr %__ret_warn_on25, align 4, !dbg !313
  %tobool55 = icmp ne i32 %10, 0, !dbg !313
  %lnot56 = xor i1 %tobool55, true, !dbg !313
  %lnot58 = xor i1 %lnot56, true, !dbg !313
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !313
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !313
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !313
  store i64 %expval61, ptr %tmp54, align 8, !dbg !314
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on25) #11, !dbg !323
  %11 = load i64, ptr %tmp54, align 8, !dbg !313
  %12 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 4), align 8, !dbg !324
  %desc_version62 = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 2, !dbg !325
  store i64 %12, ptr %desc_version62, align 8, !dbg !326
  %13 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !327
  %desc_size63 = getelementptr inbounds %struct.efi_memory_map_data, ptr %data, i32 0, i32 3, !dbg !328
  store i64 %13, ptr %desc_size63, align 8, !dbg !329
  %call = call i32 @__efi_memmap_init(ptr noundef %data) #13, !dbg !330
  call void @llvm.lifetime.end.p0(i64 40, ptr %data) #11, !dbg !331
  ret i32 %call, !dbg !332
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !333 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !341, metadata !DIExpression()), !dbg !343
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !342, metadata !DIExpression()), !dbg !344
  %0 = load ptr, ptr %v.addr, align 8, !dbg !345
  %1 = load i64, ptr %size.addr, align 8, !dbg !346
  %conv = trunc i64 %1 to i32, !dbg !346
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !347
  %2 = load ptr, ptr %v.addr, align 8, !dbg !348
  %3 = load i64, ptr %size.addr, align 8, !dbg !348
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !348
  ret void, !dbg !349
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !350 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !353, metadata !DIExpression()), !dbg !355
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !354, metadata !DIExpression()), !dbg !356
  %0 = load i64, ptr %nr.addr, align 8, !dbg !357
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !359
  br i1 %1, label %if.then, label %if.else, !dbg !360

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !361
  %3 = load i64, ptr %nr.addr, align 8, !dbg !361
  %shr = ashr i64 %3, 3, !dbg !361
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !361
  %4 = load i64, ptr %nr.addr, align 8, !dbg !363
  %and = and i64 %4, 7, !dbg !363
  %sh_prom = trunc i64 %and to i32, !dbg !363
  %shl = shl i32 1, %sh_prom, !dbg !363
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #11, !dbg !364, !srcloc !365
  br label %if.end, !dbg !366

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !367
  %6 = load i64, ptr %nr.addr, align 8, !dbg !369
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !370, !srcloc !371
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !372
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !373 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !378, metadata !DIExpression()), !dbg !380
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !379, metadata !DIExpression()), !dbg !381
  ret i1 true, !dbg !382
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !383 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !388, metadata !DIExpression()), !dbg !391
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !389, metadata !DIExpression()), !dbg !392
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !390, metadata !DIExpression()), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !395 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !402, metadata !DIExpression()), !dbg !407
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !403, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %p, metadata !404, metadata !DIExpression()), !dbg !410
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !411
  %1 = load i64, ptr %nr.addr, align 8, !dbg !412
  %div = udiv i64 %1, 64, !dbg !412
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !413
  store ptr %add.ptr, ptr %p, align 8, !dbg !410
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !405, metadata !DIExpression()), !dbg !415
  %2 = load i64, ptr %nr.addr, align 8, !dbg !416
  %rem = urem i64 %2, 64, !dbg !416
  %shl = shl i64 1, %rem, !dbg !416
  store i64 %shl, ptr %mask, align 8, !dbg !415
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !417
  call void @llvm.dbg.declare(metadata ptr %val, metadata !406, metadata !DIExpression()), !dbg !418
  %3 = load ptr, ptr %p, align 8, !dbg !419
  %4 = load i64, ptr %3, align 8, !dbg !420
  store i64 %4, ptr %val, align 8, !dbg !418
  %5 = load i64, ptr %val, align 8, !dbg !421
  %6 = load i64, ptr %mask, align 8, !dbg !422
  %and = and i64 %5, %6, !dbg !423
  %tobool = icmp ne i64 %and, 0, !dbg !424
  %lnot = xor i1 %tobool, true, !dbg !424
  %lnot1 = xor i1 %lnot, true, !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !426
  ret i1 %lnot1, !dbg !427
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !428 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !431, metadata !DIExpression()), !dbg !433
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !432, metadata !DIExpression()), !dbg !434
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !435
  %1 = load i64, ptr %nr.addr, align 8, !dbg !436
  %div = udiv i64 %1, 64, !dbg !436
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !437
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !438
  %2 = load i64, ptr %nr.addr, align 8, !dbg !439
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !440
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !441
  ret i1 %call, !dbg !442
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !443 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !445, metadata !DIExpression()), !dbg !447
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !446, metadata !DIExpression()), !dbg !448
  %0 = load ptr, ptr %v.addr, align 8, !dbg !449
  %1 = load i64, ptr %size.addr, align 8, !dbg !450
  %conv = trunc i64 %1 to i32, !dbg !450
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !451
  %2 = load ptr, ptr %v.addr, align 8, !dbg !452
  %3 = load i64, ptr %size.addr, align 8, !dbg !452
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !452
  ret void, !dbg !453
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !454 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !456, metadata !DIExpression()), !dbg !458
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !457, metadata !DIExpression()), !dbg !459
  %0 = load i64, ptr %nr.addr, align 8, !dbg !460
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !461
  br i1 %1, label %cond.true, label %cond.false, !dbg !461

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !462
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !463
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !464
  %conv = zext i1 %call to i32, !dbg !464
  br label %cond.end, !dbg !461

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !465
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !466
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !467
  %conv2 = zext i1 %call1 to i32, !dbg !467
  br label %cond.end, !dbg !461

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !461
  %tobool = icmp ne i32 %cond, 0, !dbg !461
  ret i1 %tobool, !dbg !468
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !469 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !471, metadata !DIExpression()), !dbg !473
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !472, metadata !DIExpression()), !dbg !474
  ret i1 true, !dbg !475
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !476 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !480, metadata !DIExpression()), !dbg !482
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !481, metadata !DIExpression()), !dbg !483
  %0 = load i64, ptr %nr.addr, align 8, !dbg !484
  %and = and i64 %0, 63, !dbg !485
  %shl = shl i64 1, %and, !dbg !486
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !487
  %2 = load i64, ptr %nr.addr, align 8, !dbg !488
  %shr = ashr i64 %2, 6, !dbg !489
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !487
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !487
  %and1 = and i64 %shl, %3, !dbg !490
  %cmp = icmp ne i64 %and1, 0, !dbg !491
  ret i1 %cmp, !dbg !492
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !493 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !495, metadata !DIExpression()), !dbg !498
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !496, metadata !DIExpression()), !dbg !499
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !500
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !497, metadata !DIExpression()), !dbg !501
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !502
  %1 = load i64, ptr %nr.addr, align 8, !dbg !503
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !504, !srcloc !505
  %3 = icmp ult i8 %2, 2, !dbg !504
  call void @llvm.assume(i1 %3), !dbg !504
  store i8 %2, ptr %oldbit, align 1, !dbg !504
  %4 = load i8, ptr %oldbit, align 1, !dbg !506, !range !507, !noundef !508
  %tobool = trunc i8 %4 to i1, !dbg !506
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !509
  ret i1 %tobool, !dbg !510
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !511 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !513, metadata !DIExpression()), !dbg !515
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !514, metadata !DIExpression()), !dbg !516
  %0 = load i64, ptr %nr.addr, align 8, !dbg !517
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !519
  br i1 %1, label %if.then, label %if.else, !dbg !520

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !521
  %3 = load i64, ptr %nr.addr, align 8, !dbg !521
  %shr = ashr i64 %3, 3, !dbg !521
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !521
  %4 = load i64, ptr %nr.addr, align 8, !dbg !523
  %and = and i64 %4, 7, !dbg !523
  %sh_prom = trunc i64 %and to i32, !dbg !523
  %shl = shl i32 1, %sh_prom, !dbg !523
  %not = xor i32 %shl, -1, !dbg !524
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #11, !dbg !525, !srcloc !526
  br label %if.end, !dbg !527

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !528
  %6 = load i64, ptr %nr.addr, align 8, !dbg !530
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !531, !srcloc !532
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !533
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/memmap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d69040f1728a4a7705695070db87e97d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 38)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/.memmap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/firmware/efi/memmap\22 -D KBUILD_BASENAME=\22memmap\22 -D KBUILD_MODNAME=\22memmap\22 -D __KBUILD_MODNAME=kmod_memmap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/memmap.ll drivers/firmware/efi/memmap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !28, globals: !41, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14, !23}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 140, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22}
!18 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!19 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!20 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!21 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!22 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 10, baseType: !16, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "false", value: 0)
!27 = !DIEnumerator(name: "true", value: 1)
!28 = !{!29, !30, !32, !35, !38, !40}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!34 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !36, line: 42, baseType: !37)
!36 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!41 = !{!0, !7}
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 8, !"cf-protection-branch", i32 1}
!46 = !{i32 4, !"function_return_thunk_extern", i32 1}
!47 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!48 = !{i32 1, !"Code Model", i32 2}
!49 = !{i32 1, !"override-stack-alignment", i32 8}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = distinct !DISubprogram(name: "__efi_memmap_init", scope: !2, file: !2, line: 33, type: !52, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !70)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !55}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_memory_map_data", file: !57, line: 557, size: 320, elements: !58)
!57 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!58 = !{!59, !66, !67, !68, !69}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "phys_map", scope: !56, file: !57, line: 558, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !36, line: 159, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !62, line: 23, baseType: !63)
!62 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !64, line: 31, baseType: !65)
!64 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!65 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !56, file: !57, line: 559, baseType: !37, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "desc_version", scope: !56, file: !57, line: 560, baseType: !37, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "desc_size", scope: !56, file: !57, line: 561, baseType: !37, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !57, line: 562, baseType: !37, size: 64, offset: 256)
!70 = !{!71, !72, !82}
!71 = !DILocalVariable(name: "data", arg: 1, scope: !51, file: !2, line: 33, type: !55)
!72 = !DILocalVariable(name: "map", scope: !51, file: !2, line: 35, type: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_memory_map", file: !57, line: 565, size: 448, elements: !74)
!74 = !{!75, !76, !77, !78, !79, !80, !81}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "phys_map", scope: !73, file: !57, line: 566, baseType: !60, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !73, file: !57, line: 567, baseType: !29, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "map_end", scope: !73, file: !57, line: 568, baseType: !29, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "nr_map", scope: !73, file: !57, line: 569, baseType: !54, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "desc_version", scope: !73, file: !57, line: 570, baseType: !37, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "desc_size", scope: !73, file: !57, line: 571, baseType: !37, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !57, line: 575, baseType: !37, size: 64, offset: 384)
!82 = !DILocalVariable(name: "phys_map", scope: !51, file: !2, line: 36, type: !60)
!83 = !DILocation(line: 33, column: 58, scope: !51)
!84 = !DILocation(line: 35, column: 2, scope: !51)
!85 = !DILocation(line: 35, column: 24, scope: !51)
!86 = !DILocation(line: 36, column: 2, scope: !51)
!87 = !DILocation(line: 36, column: 14, scope: !51)
!88 = !DILocation(line: 38, column: 13, scope: !51)
!89 = !DILocation(line: 38, column: 19, scope: !51)
!90 = !DILocation(line: 38, column: 11, scope: !51)
!91 = !DILocation(line: 40, column: 6, scope: !92)
!92 = distinct !DILexicalBlock(scope: !51, file: !2, line: 40, column: 6)
!93 = !DILocation(line: 40, column: 12, scope: !92)
!94 = !DILocation(line: 40, column: 18, scope: !92)
!95 = !DILocation(line: 40, column: 6, scope: !51)
!96 = !DILocation(line: 41, column: 22, scope: !92)
!97 = !DILocation(line: 41, column: 32, scope: !92)
!98 = !DILocation(line: 41, column: 38, scope: !92)
!99 = !DILocation(line: 41, column: 13, scope: !92)
!100 = !DILocation(line: 41, column: 7, scope: !92)
!101 = !DILocation(line: 41, column: 11, scope: !92)
!102 = !DILocation(line: 41, column: 3, scope: !92)
!103 = !DILocation(line: 43, column: 28, scope: !92)
!104 = !DILocation(line: 43, column: 38, scope: !92)
!105 = !DILocation(line: 43, column: 44, scope: !92)
!106 = !DILocation(line: 43, column: 13, scope: !92)
!107 = !DILocation(line: 43, column: 7, scope: !92)
!108 = !DILocation(line: 43, column: 11, scope: !92)
!109 = !DILocation(line: 45, column: 11, scope: !110)
!110 = distinct !DILexicalBlock(scope: !51, file: !2, line: 45, column: 6)
!111 = !DILocation(line: 45, column: 7, scope: !110)
!112 = !DILocation(line: 45, column: 6, scope: !51)
!113 = !DILocation(line: 46, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 46, column: 3)
!115 = distinct !DILexicalBlock(scope: !110, file: !2, line: 45, column: 16)
!116 = !DILocation(line: 46, column: 3, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !2, line: 46, column: 3)
!118 = !DILocation(line: 47, column: 3, scope: !115)
!119 = !DILocation(line: 50, column: 17, scope: !51)
!120 = !DILocation(line: 50, column: 23, scope: !51)
!121 = !DILocation(line: 50, column: 6, scope: !51)
!122 = !DILocation(line: 50, column: 15, scope: !51)
!123 = !DILocation(line: 51, column: 15, scope: !51)
!124 = !DILocation(line: 51, column: 21, scope: !51)
!125 = !DILocation(line: 51, column: 28, scope: !51)
!126 = !DILocation(line: 51, column: 34, scope: !51)
!127 = !DILocation(line: 51, column: 26, scope: !51)
!128 = !DILocation(line: 51, column: 6, scope: !51)
!129 = !DILocation(line: 51, column: 13, scope: !51)
!130 = !DILocation(line: 52, column: 20, scope: !51)
!131 = !DILocation(line: 52, column: 26, scope: !51)
!132 = !DILocation(line: 52, column: 32, scope: !51)
!133 = !DILocation(line: 52, column: 24, scope: !51)
!134 = !DILocation(line: 52, column: 6, scope: !51)
!135 = !DILocation(line: 52, column: 14, scope: !51)
!136 = !DILocation(line: 54, column: 21, scope: !51)
!137 = !DILocation(line: 54, column: 27, scope: !51)
!138 = !DILocation(line: 54, column: 6, scope: !51)
!139 = !DILocation(line: 54, column: 19, scope: !51)
!140 = !DILocation(line: 55, column: 18, scope: !51)
!141 = !DILocation(line: 55, column: 24, scope: !51)
!142 = !DILocation(line: 55, column: 6, scope: !51)
!143 = !DILocation(line: 55, column: 16, scope: !51)
!144 = !DILocation(line: 56, column: 14, scope: !51)
!145 = !DILocation(line: 56, column: 20, scope: !51)
!146 = !DILocation(line: 56, column: 6, scope: !51)
!147 = !DILocation(line: 56, column: 12, scope: !51)
!148 = !DILocation(line: 58, column: 2, scope: !51)
!149 = !DILocation(line: 60, column: 15, scope: !51)
!150 = !DILocation(line: 62, column: 2, scope: !51)
!151 = !DILocation(line: 63, column: 1, scope: !51)
!152 = !DISubprogram(name: "memremap", scope: !15, file: !15, line: 149, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DISubroutineType(types: !154)
!154 = !{!29, !155, !156, !37}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !36, line: 164, baseType: !60)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 61, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !158, line: 72, baseType: !159)
!158 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !158, line: 16, baseType: !37)
!160 = !DISubprogram(name: "early_memremap", scope: !161, file: !161, line: 13, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!162 = !DISubroutineType(types: !163)
!163 = !{!29, !155, !37}
!164 = !DISubprogram(name: "_printk", scope: !165, file: !165, line: 153, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!166 = !DISubroutineType(types: !167)
!167 = !{!54, !168, null}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!170 = distinct !DISubprogram(name: "set_bit", scope: !171, file: !171, line: 26, type: !172, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !176)
!171 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!172 = !DISubroutineType(types: !173)
!173 = !{null, !34, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "nr", arg: 1, scope: !170, file: !171, line: 26, type: !34)
!178 = !DILocalVariable(name: "addr", arg: 2, scope: !170, file: !171, line: 26, type: !174)
!179 = !DILocation(line: 26, column: 42, scope: !170)
!180 = !DILocation(line: 26, column: 70, scope: !170)
!181 = !DILocation(line: 28, column: 26, scope: !170)
!182 = !DILocation(line: 28, column: 33, scope: !170)
!183 = !DILocation(line: 28, column: 31, scope: !170)
!184 = !DILocation(line: 28, column: 2, scope: !170)
!185 = !DILocation(line: 29, column: 15, scope: !170)
!186 = !DILocation(line: 29, column: 19, scope: !170)
!187 = !DILocation(line: 29, column: 2, scope: !170)
!188 = !DILocation(line: 30, column: 1, scope: !170)
!189 = distinct !DISubprogram(name: "efi_memmap_init_early", scope: !2, file: !2, line: 72, type: !52, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !190)
!190 = !{!191, !192, !194}
!191 = !DILocalVariable(name: "data", arg: 1, scope: !189, file: !2, line: 72, type: !55)
!192 = !DILocalVariable(name: "__ret_warn_on", scope: !193, file: !2, line: 75, type: !54)
!193 = distinct !DILexicalBlock(scope: !189, file: !2, line: 75, column: 2)
!194 = !DILocalVariable(name: "__flags", scope: !195, file: !2, line: 75, type: !54)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 75, column: 2)
!196 = distinct !DILexicalBlock(scope: !193, file: !2, line: 75, column: 2)
!197 = !DILocation(line: 72, column: 62, scope: !189)
!198 = !DILocation(line: 75, column: 2, scope: !193)
!199 = !DILocation(line: 75, column: 2, scope: !196)
!200 = !DILocation(line: 75, column: 2, scope: !195)
!201 = !DILocation(line: 75, column: 2, scope: !202)
!202 = distinct !DILexicalBlock(scope: !195, file: !2, line: 75, column: 2)
!203 = !DILocation(line: 75, column: 2, scope: !204)
!204 = distinct !DILexicalBlock(scope: !195, file: !2, line: 75, column: 2)
!205 = !{i64 2155895756, i64 2155895785, i64 2155895831, i64 2155895889, i64 2155895943, i64 2155895997, i64 2155896052, i64 2155896083, i64 2155896391, i64 2155896397, i64 2155896444, i64 2155896467, i64 2155896493}
!206 = !DILocation(line: 75, column: 2, scope: !207)
!207 = distinct !DILexicalBlock(scope: !195, file: !2, line: 75, column: 2)
!208 = !DILocation(line: 75, column: 2, scope: !189)
!209 = !DILocation(line: 77, column: 2, scope: !189)
!210 = !DILocation(line: 77, column: 8, scope: !189)
!211 = !DILocation(line: 77, column: 14, scope: !189)
!212 = !DILocation(line: 78, column: 27, scope: !189)
!213 = !DILocation(line: 78, column: 9, scope: !189)
!214 = !DILocation(line: 78, column: 2, scope: !189)
!215 = distinct !DISubprogram(name: "efi_memmap_unmap", scope: !2, file: !2, line: 81, type: !216, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{null}
!218 = !{!219}
!219 = !DILocalVariable(name: "size", scope: !220, file: !2, line: 87, type: !37)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 86, column: 45)
!221 = distinct !DILexicalBlock(scope: !215, file: !2, line: 86, column: 6)
!222 = !DILocation(line: 83, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !215, file: !2, line: 83, column: 6)
!224 = !DILocation(line: 83, column: 6, scope: !215)
!225 = !DILocation(line: 84, column: 3, scope: !223)
!226 = !DILocation(line: 86, column: 19, scope: !221)
!227 = !DILocation(line: 86, column: 25, scope: !221)
!228 = !DILocation(line: 86, column: 6, scope: !215)
!229 = !DILocation(line: 87, column: 3, scope: !220)
!230 = !DILocation(line: 87, column: 17, scope: !220)
!231 = !DILocation(line: 89, column: 21, scope: !220)
!232 = !DILocation(line: 89, column: 44, scope: !220)
!233 = !DILocation(line: 89, column: 33, scope: !220)
!234 = !DILocation(line: 89, column: 31, scope: !220)
!235 = !DILocation(line: 89, column: 8, scope: !220)
!236 = !DILocation(line: 90, column: 29, scope: !220)
!237 = !DILocation(line: 90, column: 34, scope: !220)
!238 = !DILocation(line: 90, column: 3, scope: !220)
!239 = !DILocation(line: 91, column: 2, scope: !221)
!240 = !DILocation(line: 91, column: 2, scope: !220)
!241 = !DILocation(line: 92, column: 23, scope: !242)
!242 = distinct !DILexicalBlock(scope: !221, file: !2, line: 91, column: 9)
!243 = !DILocation(line: 92, column: 3, scope: !242)
!244 = !DILocation(line: 95, column: 17, scope: !215)
!245 = !DILocation(line: 96, column: 2, scope: !215)
!246 = !DILocation(line: 97, column: 1, scope: !215)
!247 = distinct !DISubprogram(name: "efi_enabled", scope: !57, file: !57, line: 880, type: !248, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !252)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !54}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !36, line: 35, baseType: !251)
!251 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!252 = !{!253}
!253 = !DILocalVariable(name: "feature", arg: 1, scope: !247, file: !57, line: 880, type: !54)
!254 = !DILocation(line: 880, column: 36, scope: !247)
!255 = !DILocation(line: 882, column: 9, scope: !247)
!256 = !DILocation(line: 882, column: 39, scope: !247)
!257 = !DILocation(line: 882, column: 2, scope: !247)
!258 = !DISubprogram(name: "early_memunmap", scope: !161, file: !161, line: 20, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !29, !37}
!261 = !DISubprogram(name: "memunmap", scope: !15, file: !15, line: 150, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !29}
!264 = distinct !DISubprogram(name: "clear_bit", scope: !171, file: !171, line: 39, type: !172, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !265)
!265 = !{!266, !267}
!266 = !DILocalVariable(name: "nr", arg: 1, scope: !264, file: !171, line: 39, type: !34)
!267 = !DILocalVariable(name: "addr", arg: 2, scope: !264, file: !171, line: 39, type: !174)
!268 = !DILocation(line: 39, column: 44, scope: !264)
!269 = !DILocation(line: 39, column: 72, scope: !264)
!270 = !DILocation(line: 41, column: 26, scope: !264)
!271 = !DILocation(line: 41, column: 33, scope: !264)
!272 = !DILocation(line: 41, column: 31, scope: !264)
!273 = !DILocation(line: 41, column: 2, scope: !264)
!274 = !DILocation(line: 42, column: 17, scope: !264)
!275 = !DILocation(line: 42, column: 21, scope: !264)
!276 = !DILocation(line: 42, column: 2, scope: !264)
!277 = !DILocation(line: 43, column: 1, scope: !264)
!278 = distinct !DISubprogram(name: "efi_memmap_init_late", scope: !2, file: !2, line: 122, type: !279, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{!54, !60, !37}
!281 = !{!282, !283, !284, !285, !287, !290, !292}
!282 = !DILocalVariable(name: "addr", arg: 1, scope: !278, file: !2, line: 122, type: !60)
!283 = !DILocalVariable(name: "size", arg: 2, scope: !278, file: !2, line: 122, type: !37)
!284 = !DILocalVariable(name: "data", scope: !278, file: !2, line: 124, type: !56)
!285 = !DILocalVariable(name: "__ret_warn_on", scope: !286, file: !2, line: 131, type: !54)
!286 = distinct !DILexicalBlock(scope: !278, file: !2, line: 131, column: 2)
!287 = !DILocalVariable(name: "__flags", scope: !288, file: !2, line: 131, type: !54)
!288 = distinct !DILexicalBlock(scope: !289, file: !2, line: 131, column: 2)
!289 = distinct !DILexicalBlock(scope: !286, file: !2, line: 131, column: 2)
!290 = !DILocalVariable(name: "__ret_warn_on", scope: !291, file: !2, line: 134, type: !54)
!291 = distinct !DILexicalBlock(scope: !278, file: !2, line: 134, column: 2)
!292 = !DILocalVariable(name: "__flags", scope: !293, file: !2, line: 134, type: !54)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 134, column: 2)
!294 = distinct !DILexicalBlock(scope: !291, file: !2, line: 134, column: 2)
!295 = !DILocation(line: 122, column: 45, scope: !278)
!296 = !DILocation(line: 122, column: 65, scope: !278)
!297 = !DILocation(line: 124, column: 2, scope: !278)
!298 = !DILocation(line: 124, column: 29, scope: !278)
!299 = !DILocation(line: 124, column: 36, scope: !278)
!300 = !DILocation(line: 125, column: 15, scope: !278)
!301 = !DILocation(line: 126, column: 11, scope: !278)
!302 = !DILocation(line: 131, column: 2, scope: !286)
!303 = !DILocation(line: 131, column: 2, scope: !289)
!304 = !DILocation(line: 131, column: 2, scope: !288)
!305 = !DILocation(line: 131, column: 2, scope: !306)
!306 = distinct !DILexicalBlock(scope: !288, file: !2, line: 131, column: 2)
!307 = !DILocation(line: 131, column: 2, scope: !308)
!308 = distinct !DILexicalBlock(scope: !288, file: !2, line: 131, column: 2)
!309 = !{i64 2155897588, i64 2155897617, i64 2155897663, i64 2155897721, i64 2155897775, i64 2155897829, i64 2155897884, i64 2155897915, i64 2155898223, i64 2155898229, i64 2155898276, i64 2155898299, i64 2155898325}
!310 = !DILocation(line: 131, column: 2, scope: !311)
!311 = distinct !DILexicalBlock(scope: !288, file: !2, line: 131, column: 2)
!312 = !DILocation(line: 131, column: 2, scope: !278)
!313 = !DILocation(line: 134, column: 2, scope: !291)
!314 = !DILocation(line: 134, column: 2, scope: !294)
!315 = !DILocation(line: 134, column: 2, scope: !293)
!316 = !DILocation(line: 134, column: 2, scope: !317)
!317 = distinct !DILexicalBlock(scope: !293, file: !2, line: 134, column: 2)
!318 = !DILocation(line: 134, column: 2, scope: !319)
!319 = distinct !DILexicalBlock(scope: !293, file: !2, line: 134, column: 2)
!320 = !{i64 2155899121, i64 2155899150, i64 2155899196, i64 2155899254, i64 2155899308, i64 2155899362, i64 2155899417, i64 2155899448, i64 2155899756, i64 2155899762, i64 2155899809, i64 2155899832, i64 2155899858}
!321 = !DILocation(line: 134, column: 2, scope: !322)
!322 = distinct !DILexicalBlock(scope: !293, file: !2, line: 134, column: 2)
!323 = !DILocation(line: 134, column: 2, scope: !278)
!324 = !DILocation(line: 141, column: 33, scope: !278)
!325 = !DILocation(line: 141, column: 7, scope: !278)
!326 = !DILocation(line: 141, column: 20, scope: !278)
!327 = !DILocation(line: 142, column: 30, scope: !278)
!328 = !DILocation(line: 142, column: 7, scope: !278)
!329 = !DILocation(line: 142, column: 17, scope: !278)
!330 = !DILocation(line: 144, column: 9, scope: !278)
!331 = !DILocation(line: 145, column: 1, scope: !278)
!332 = !DILocation(line: 144, column: 2, scope: !278)
!333 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !334, file: !334, line: 80, type: !335, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !340)
!334 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337, !156}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!340 = !{!341, !342}
!341 = !DILocalVariable(name: "v", arg: 1, scope: !333, file: !334, line: 80, type: !337)
!342 = !DILocalVariable(name: "size", arg: 2, scope: !333, file: !334, line: 80, type: !156)
!343 = !DILocation(line: 80, column: 74, scope: !333)
!344 = !DILocation(line: 80, column: 84, scope: !333)
!345 = !DILocation(line: 82, column: 20, scope: !333)
!346 = !DILocation(line: 82, column: 23, scope: !333)
!347 = !DILocation(line: 82, column: 2, scope: !333)
!348 = !DILocation(line: 83, column: 2, scope: !333)
!349 = !DILocation(line: 84, column: 1, scope: !333)
!350 = distinct !DISubprogram(name: "arch_set_bit", scope: !351, file: !351, line: 52, type: !172, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !352)
!351 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!352 = !{!353, !354}
!353 = !DILocalVariable(name: "nr", arg: 1, scope: !350, file: !351, line: 52, type: !34)
!354 = !DILocalVariable(name: "addr", arg: 2, scope: !350, file: !351, line: 52, type: !174)
!355 = !DILocation(line: 52, column: 19, scope: !350)
!356 = !DILocation(line: 52, column: 47, scope: !350)
!357 = !DILocation(line: 54, column: 27, scope: !358)
!358 = distinct !DILexicalBlock(scope: !350, file: !351, line: 54, column: 6)
!359 = !DILocation(line: 54, column: 6, scope: !358)
!360 = !DILocation(line: 54, column: 6, scope: !350)
!361 = !DILocation(line: 56, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !351, line: 54, column: 32)
!363 = !DILocation(line: 57, column: 12, scope: !362)
!364 = !DILocation(line: 55, column: 3, scope: !362)
!365 = !{i64 2147801370, i64 2147801409, i64 2147801430, i64 2147801467, i64 2147801490, i64 2147801360}
!366 = !DILocation(line: 59, column: 2, scope: !362)
!367 = !DILocation(line: 61, column: 8, scope: !368)
!368 = distinct !DILexicalBlock(scope: !358, file: !351, line: 59, column: 9)
!369 = !DILocation(line: 61, column: 32, scope: !368)
!370 = !DILocation(line: 60, column: 3, scope: !368)
!371 = !{i64 2147801655, i64 2147801694, i64 2147801715, i64 2147801752, i64 2147801775, i64 2147801645}
!372 = !DILocation(line: 63, column: 1, scope: !350)
!373 = distinct !DISubprogram(name: "kasan_check_write", scope: !374, file: !374, line: 44, type: !375, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !377)
!374 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!375 = !DISubroutineType(types: !376)
!376 = !{!250, !337, !16}
!377 = !{!378, !379}
!378 = !DILocalVariable(name: "p", arg: 1, scope: !373, file: !374, line: 44, type: !337)
!379 = !DILocalVariable(name: "size", arg: 2, scope: !373, file: !374, line: 44, type: !16)
!380 = !DILocation(line: 44, column: 59, scope: !373)
!381 = !DILocation(line: 44, column: 75, scope: !373)
!382 = !DILocation(line: 46, column: 2, scope: !373)
!383 = distinct !DISubprogram(name: "kcsan_check_access", scope: !384, file: !384, line: 229, type: !385, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !387)
!384 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!385 = !DISubroutineType(types: !386)
!386 = !{null, !337, !156, !54}
!387 = !{!388, !389, !390}
!388 = !DILocalVariable(name: "ptr", arg: 1, scope: !383, file: !384, line: 229, type: !337)
!389 = !DILocalVariable(name: "size", arg: 2, scope: !383, file: !384, line: 229, type: !156)
!390 = !DILocalVariable(name: "type", arg: 3, scope: !383, file: !384, line: 230, type: !54)
!391 = !DILocation(line: 229, column: 60, scope: !383)
!392 = !DILocation(line: 229, column: 72, scope: !383)
!393 = !DILocation(line: 230, column: 15, scope: !383)
!394 = !DILocation(line: 230, column: 23, scope: !383)
!395 = distinct !DISubprogram(name: "const_test_bit", scope: !396, file: !396, line: 166, type: !397, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !401)
!396 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!397 = !DISubroutineType(types: !398)
!398 = !{!250, !37, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!401 = !{!402, !403, !404, !405, !406}
!402 = !DILocalVariable(name: "nr", arg: 1, scope: !395, file: !396, line: 166, type: !37)
!403 = !DILocalVariable(name: "addr", arg: 2, scope: !395, file: !396, line: 166, type: !399)
!404 = !DILocalVariable(name: "p", scope: !395, file: !396, line: 168, type: !38)
!405 = !DILocalVariable(name: "mask", scope: !395, file: !396, line: 169, type: !37)
!406 = !DILocalVariable(name: "val", scope: !395, file: !396, line: 170, type: !37)
!407 = !DILocation(line: 166, column: 30, scope: !395)
!408 = !DILocation(line: 166, column: 64, scope: !395)
!409 = !DILocation(line: 168, column: 2, scope: !395)
!410 = !DILocation(line: 168, column: 23, scope: !395)
!411 = !DILocation(line: 168, column: 50, scope: !395)
!412 = !DILocation(line: 168, column: 57, scope: !395)
!413 = !DILocation(line: 168, column: 55, scope: !395)
!414 = !DILocation(line: 169, column: 2, scope: !395)
!415 = !DILocation(line: 169, column: 16, scope: !395)
!416 = !DILocation(line: 169, column: 23, scope: !395)
!417 = !DILocation(line: 170, column: 2, scope: !395)
!418 = !DILocation(line: 170, column: 16, scope: !395)
!419 = !DILocation(line: 170, column: 23, scope: !395)
!420 = !DILocation(line: 170, column: 22, scope: !395)
!421 = !DILocation(line: 172, column: 12, scope: !395)
!422 = !DILocation(line: 172, column: 18, scope: !395)
!423 = !DILocation(line: 172, column: 16, scope: !395)
!424 = !DILocation(line: 172, column: 10, scope: !395)
!425 = !DILocation(line: 172, column: 9, scope: !395)
!426 = !DILocation(line: 173, column: 1, scope: !395)
!427 = !DILocation(line: 172, column: 2, scope: !395)
!428 = distinct !DISubprogram(name: "_test_bit", scope: !429, file: !429, line: 139, type: !397, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !430)
!429 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!430 = !{!431, !432}
!431 = !DILocalVariable(name: "nr", arg: 1, scope: !428, file: !429, line: 139, type: !37)
!432 = !DILocalVariable(name: "addr", arg: 2, scope: !428, file: !429, line: 139, type: !399)
!433 = !DILocation(line: 139, column: 25, scope: !428)
!434 = !DILocation(line: 139, column: 59, scope: !428)
!435 = !DILocation(line: 141, column: 25, scope: !428)
!436 = !DILocation(line: 141, column: 32, scope: !428)
!437 = !DILocation(line: 141, column: 30, scope: !428)
!438 = !DILocation(line: 141, column: 2, scope: !428)
!439 = !DILocation(line: 142, column: 23, scope: !428)
!440 = !DILocation(line: 142, column: 27, scope: !428)
!441 = !DILocation(line: 142, column: 9, scope: !428)
!442 = !DILocation(line: 142, column: 2, scope: !428)
!443 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !334, file: !334, line: 66, type: !335, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !444)
!444 = !{!445, !446}
!445 = !DILocalVariable(name: "v", arg: 1, scope: !443, file: !334, line: 66, type: !337)
!446 = !DILocalVariable(name: "size", arg: 2, scope: !443, file: !334, line: 66, type: !156)
!447 = !DILocation(line: 66, column: 73, scope: !443)
!448 = !DILocation(line: 66, column: 83, scope: !443)
!449 = !DILocation(line: 68, column: 19, scope: !443)
!450 = !DILocation(line: 68, column: 22, scope: !443)
!451 = !DILocation(line: 68, column: 2, scope: !443)
!452 = !DILocation(line: 69, column: 2, scope: !443)
!453 = !DILocation(line: 70, column: 1, scope: !443)
!454 = distinct !DISubprogram(name: "arch_test_bit", scope: !351, file: !351, line: 237, type: !397, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !455)
!455 = !{!456, !457}
!456 = !DILocalVariable(name: "nr", arg: 1, scope: !454, file: !351, line: 237, type: !37)
!457 = !DILocalVariable(name: "addr", arg: 2, scope: !454, file: !351, line: 237, type: !399)
!458 = !DILocation(line: 237, column: 29, scope: !454)
!459 = !DILocation(line: 237, column: 63, scope: !454)
!460 = !DILocation(line: 239, column: 30, scope: !454)
!461 = !DILocation(line: 239, column: 9, scope: !454)
!462 = !DILocation(line: 239, column: 54, scope: !454)
!463 = !DILocation(line: 239, column: 58, scope: !454)
!464 = !DILocation(line: 239, column: 36, scope: !454)
!465 = !DILocation(line: 240, column: 26, scope: !454)
!466 = !DILocation(line: 240, column: 30, scope: !454)
!467 = !DILocation(line: 240, column: 8, scope: !454)
!468 = !DILocation(line: 239, column: 2, scope: !454)
!469 = distinct !DISubprogram(name: "kasan_check_read", scope: !374, file: !374, line: 40, type: !375, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !470)
!470 = !{!471, !472}
!471 = !DILocalVariable(name: "p", arg: 1, scope: !469, file: !374, line: 40, type: !337)
!472 = !DILocalVariable(name: "size", arg: 2, scope: !469, file: !374, line: 40, type: !16)
!473 = !DILocation(line: 40, column: 58, scope: !469)
!474 = !DILocation(line: 40, column: 74, scope: !469)
!475 = !DILocation(line: 42, column: 2, scope: !469)
!476 = distinct !DISubprogram(name: "constant_test_bit", scope: !351, file: !351, line: 204, type: !477, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!250, !34, !399}
!479 = !{!480, !481}
!480 = !DILocalVariable(name: "nr", arg: 1, scope: !476, file: !351, line: 204, type: !34)
!481 = !DILocalVariable(name: "addr", arg: 2, scope: !476, file: !351, line: 204, type: !399)
!482 = !DILocation(line: 204, column: 52, scope: !476)
!483 = !DILocation(line: 204, column: 86, scope: !476)
!484 = !DILocation(line: 206, column: 19, scope: !476)
!485 = !DILocation(line: 206, column: 22, scope: !476)
!486 = !DILocation(line: 206, column: 15, scope: !476)
!487 = !DILocation(line: 207, column: 4, scope: !476)
!488 = !DILocation(line: 207, column: 9, scope: !476)
!489 = !DILocation(line: 207, column: 12, scope: !476)
!490 = !DILocation(line: 206, column: 44, scope: !476)
!491 = !DILocation(line: 207, column: 37, scope: !476)
!492 = !DILocation(line: 206, column: 2, scope: !476)
!493 = distinct !DISubprogram(name: "variable_test_bit", scope: !351, file: !351, line: 224, type: !477, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !494)
!494 = !{!495, !496, !497}
!495 = !DILocalVariable(name: "nr", arg: 1, scope: !493, file: !351, line: 224, type: !34)
!496 = !DILocalVariable(name: "addr", arg: 2, scope: !493, file: !351, line: 224, type: !399)
!497 = !DILocalVariable(name: "oldbit", scope: !493, file: !351, line: 226, type: !250)
!498 = !DILocation(line: 224, column: 52, scope: !493)
!499 = !DILocation(line: 224, column: 86, scope: !493)
!500 = !DILocation(line: 226, column: 2, scope: !493)
!501 = !DILocation(line: 226, column: 7, scope: !493)
!502 = !DILocation(line: 231, column: 33, scope: !493)
!503 = !DILocation(line: 231, column: 46, scope: !493)
!504 = !DILocation(line: 228, column: 2, scope: !493)
!505 = !{i64 2147814982, i64 2147815056}
!506 = !DILocation(line: 233, column: 9, scope: !493)
!507 = !{i8 0, i8 2}
!508 = !{}
!509 = !DILocation(line: 234, column: 1, scope: !493)
!510 = !DILocation(line: 233, column: 2, scope: !493)
!511 = distinct !DISubprogram(name: "arch_clear_bit", scope: !351, file: !351, line: 72, type: !172, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !512)
!512 = !{!513, !514}
!513 = !DILocalVariable(name: "nr", arg: 1, scope: !511, file: !351, line: 72, type: !34)
!514 = !DILocalVariable(name: "addr", arg: 2, scope: !511, file: !351, line: 72, type: !174)
!515 = !DILocation(line: 72, column: 21, scope: !511)
!516 = !DILocation(line: 72, column: 49, scope: !511)
!517 = !DILocation(line: 74, column: 27, scope: !518)
!518 = distinct !DILexicalBlock(scope: !511, file: !351, line: 74, column: 6)
!519 = !DILocation(line: 74, column: 6, scope: !518)
!520 = !DILocation(line: 74, column: 6, scope: !511)
!521 = !DILocation(line: 76, column: 6, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !351, line: 74, column: 32)
!523 = !DILocation(line: 77, column: 13, scope: !522)
!524 = !DILocation(line: 77, column: 12, scope: !522)
!525 = !DILocation(line: 75, column: 3, scope: !522)
!526 = !{i64 2147802658, i64 2147802697, i64 2147802718, i64 2147802755, i64 2147802778, i64 2147802648}
!527 = !DILocation(line: 78, column: 2, scope: !522)
!528 = !DILocation(line: 80, column: 8, scope: !529)
!529 = distinct !DILexicalBlock(scope: !518, file: !351, line: 78, column: 9)
!530 = !DILocation(line: 80, column: 32, scope: !529)
!531 = !DILocation(line: 79, column: 3, scope: !529)
!532 = !{i64 2147802943, i64 2147802982, i64 2147803003, i64 2147803040, i64 2147803063, i64 2147802933}
!533 = !DILocation(line: 82, column: 1, scope: !511)
