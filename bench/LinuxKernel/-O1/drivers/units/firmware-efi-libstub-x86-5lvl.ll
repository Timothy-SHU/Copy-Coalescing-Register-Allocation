; ModuleID = 'drivers/firmware/efi/libstub/x86-5lvl.c'
source_filename = "drivers/firmware/efi/libstub/x86-5lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_struct = type { i16, i16, i32 }
%struct.desc_ptr = type <{ i16, i64 }>

@trampoline_ljmp_imm_offset = external hidden constant i16, align 2
@la57_toggle = internal global ptr null, align 8, !dbg !0
@efi_no5lvl = hidden global i8 0, align 1, !dbg !29
@efi_is64 = external hidden constant i8, align 1
@gdt = internal constant <{ %struct.desc_struct, { i16, i16, i8, i8, i8, i8 }, { i16, i16, i8, i8, i8, i8 } }> <{ %struct.desc_struct zeroinitializer, { i16, i16, i8, i8, i8, i8 } { i16 -1, i16 0, i8 0, i8 -101, i8 -49, i8 0 }, { i16, i16, i8, i8, i8, i8 } { i16 -1, i16 0, i8 0, i8 -101, i8 -81, i8 0 } }>, align 16, !dbg !34

; Function Attrs: noredzone nounwind
define hidden i64 @efi_setup_5level_paging() #0 !dbg !65 {
entry:
  %retval = alloca i64, align 8
  %tmpl_size = alloca i8, align 1
  %status = alloca i64, align 8
  %la57_code = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %tmpl_size) #5, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %tmpl_size, metadata !71, metadata !DIExpression()), !dbg !75
  store i8 trunc (i64 sub (i64 ptrtoint (ptr @trampoline_ljmp_imm_offset to i64), i64 ptrtoint (ptr @trampoline_32bit_src to i64)) to i8), ptr %tmpl_size, align 1, !dbg !75
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #5, !dbg !76
  call void @llvm.dbg.declare(metadata ptr %status, metadata !72, metadata !DIExpression()), !dbg !77
  call void @llvm.lifetime.start.p0(i64 8, ptr %la57_code) #5, !dbg !78
  call void @llvm.dbg.declare(metadata ptr %la57_code, metadata !73, metadata !DIExpression()), !dbg !79
  %call = call zeroext i1 @efi_is_64bit() #6, !dbg !80
  br i1 %call, label %if.end, label %if.then, !dbg !82

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !83
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !83

if.end:                                           ; preds = %entry
  %call1 = call i32 @native_cpuid_eax(i32 noundef 0) #6, !dbg !84
  %cmp = icmp ult i32 %call1, 7, !dbg !86
  br i1 %cmp, label %if.then3, label %lor.lhs.false, !dbg !87

lor.lhs.false:                                    ; preds = %if.end
  %call2 = call i32 @native_cpuid_ecx(i32 noundef 7) #6, !dbg !88
  %and = and i32 %call2, 65536, !dbg !89
  %tobool = icmp ne i32 %and, 0, !dbg !89
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !90

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i64 0, ptr %retval, align 8, !dbg !91
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !91

if.end4:                                          ; preds = %lor.lhs.false
  %call5 = call i64 @efi_allocate_pages(i64 noundef 8192, ptr noundef %la57_code, i64 noundef 4294967295) #6, !dbg !92
  store i64 %call5, ptr %status, align 8, !dbg !93
  %0 = load i64, ptr %status, align 8, !dbg !94
  %cmp6 = icmp ne i64 %0, 0, !dbg !96
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !97

if.then7:                                         ; preds = %if.end4
  %1 = load i64, ptr %status, align 8, !dbg !98
  store i64 %1, ptr %retval, align 8, !dbg !99
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !99

if.end8:                                          ; preds = %if.end4
  %2 = load ptr, ptr %la57_code, align 8, !dbg !100
  %3 = load i8, ptr %tmpl_size, align 1, !dbg !101
  %conv = zext i8 %3 to i64, !dbg !101
  %call9 = call ptr @memcpy(ptr noundef %2, ptr noundef @trampoline_32bit_src, i64 noundef %conv) #6, !dbg !102
  store ptr %call9, ptr @la57_toggle, align 8, !dbg !103
  %4 = load ptr, ptr %la57_code, align 8, !dbg !104
  %5 = load i8, ptr %tmpl_size, align 1, !dbg !105
  %conv10 = zext i8 %5 to i32, !dbg !105
  %idx.ext = sext i32 %conv10 to i64, !dbg !106
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !106
  %6 = load i8, ptr %tmpl_size, align 1, !dbg !107
  %conv11 = zext i8 %6 to i64, !dbg !107
  %sub = sub i64 4096, %conv11, !dbg !108
  %call12 = call ptr @memset(ptr noundef %add.ptr, i32 noundef 144, i64 noundef %sub) #6, !dbg !109
  %7 = load ptr, ptr %la57_code, align 8, !dbg !110
  %8 = ptrtoint ptr %7 to i64, !dbg !111
  %9 = load ptr, ptr %la57_code, align 8, !dbg !112
  %10 = load i16, ptr @trampoline_ljmp_imm_offset, align 2, !dbg !113
  %idxprom = zext i16 %10 to i64, !dbg !112
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom, !dbg !112
  %11 = load i32, ptr %arrayidx, align 4, !dbg !114
  %conv13 = zext i32 %11 to i64, !dbg !114
  %add = add i64 %conv13, %8, !dbg !114
  %conv14 = trunc i64 %add to i32, !dbg !114
  store i32 %conv14, ptr %arrayidx, align 4, !dbg !114
  %12 = load ptr, ptr @la57_toggle, align 8, !dbg !115
  %13 = ptrtoint ptr %12 to i64, !dbg !116
  %call15 = call i64 @efi_adjust_memory_range_protection(i64 noundef %13, i64 noundef 4096) #6, !dbg !117
  store i64 0, ptr %retval, align 8, !dbg !118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !118

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %la57_code) #5, !dbg !119
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #5, !dbg !119
  call void @llvm.lifetime.end.p0(i64 1, ptr %tmpl_size) #5, !dbg !119
  %14 = load i64, ptr %retval, align 8, !dbg !119
  ret i64 %14, !dbg !119
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone
declare hidden void @trampoline_32bit_src(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #4 !dbg !120 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !124, !range !125, !noundef !126
  %tobool = trunc i8 %0 to i1, !dbg !124
  ret i1 %tobool, !dbg !127
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @native_cpuid_eax(i32 noundef %op) #4 !dbg !128 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !133, metadata !DIExpression()), !dbg !138
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #5, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !134, metadata !DIExpression()), !dbg !138
  %0 = load i32, ptr %op.addr, align 4, !dbg !138
  store i32 %0, ptr %eax, align 4, !dbg !138
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #5, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !135, metadata !DIExpression()), !dbg !138
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #5, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !136, metadata !DIExpression()), !dbg !138
  store i32 0, ptr %ecx, align 4, !dbg !138
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #5, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !137, metadata !DIExpression()), !dbg !138
  call void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #6, !dbg !138
  %1 = load i32, ptr %eax, align 4, !dbg !138
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #5, !dbg !138
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #5, !dbg !138
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #5, !dbg !138
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #5, !dbg !138
  ret i32 %1, !dbg !138
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @native_cpuid_ecx(i32 noundef %op) #4 !dbg !139 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !141, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #5, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !142, metadata !DIExpression()), !dbg !146
  %0 = load i32, ptr %op.addr, align 4, !dbg !146
  store i32 %0, ptr %eax, align 4, !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #5, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !143, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #5, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !144, metadata !DIExpression()), !dbg !146
  store i32 0, ptr %ecx, align 4, !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #5, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !145, metadata !DIExpression()), !dbg !146
  call void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #6, !dbg !146
  %1 = load i32, ptr %ecx, align 4, !dbg !146
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #5, !dbg !146
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #5, !dbg !146
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #5, !dbg !146
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #5, !dbg !146
  ret i32 %1, !dbg !146
}

; Function Attrs: noredzone
declare !dbg !147 hidden i64 @efi_allocate_pages(i64 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone
declare !dbg !151 hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone
declare !dbg !161 hidden ptr @memset(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noredzone
declare !dbg !165 hidden i64 @efi_adjust_memory_range_protection(i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone nounwind
define hidden void @efi_5level_switch() #0 !dbg !169 {
entry:
  %want_la57 = alloca i8, align 1
  %have_la57 = alloca i8, align 1
  %need_toggle = alloca i8, align 1
  %pgt = alloca ptr, align 8
  %cr3 = alloca ptr, align 8
  %new_cr3 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.desc_ptr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %want_la57) #5, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %want_la57, metadata !173, metadata !DIExpression()), !dbg !180
  %0 = load i8, ptr @efi_no5lvl, align 1, !dbg !181, !range !125, !noundef !126
  %tobool = trunc i8 %0 to i1, !dbg !181
  %lnot = xor i1 %tobool, true, !dbg !182
  %frombool = zext i1 %lnot to i8, !dbg !180
  store i8 %frombool, ptr %want_la57, align 1, !dbg !180
  call void @llvm.lifetime.start.p0(i64 1, ptr %have_la57) #5, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %have_la57, metadata !174, metadata !DIExpression()), !dbg !184
  %call = call i64 @native_read_cr4() #6, !dbg !185
  %and = and i64 %call, 4096, !dbg !186
  %tobool1 = icmp ne i64 %and, 0, !dbg !185
  %frombool2 = zext i1 %tobool1 to i8, !dbg !184
  store i8 %frombool2, ptr %have_la57, align 1, !dbg !184
  call void @llvm.lifetime.start.p0(i64 1, ptr %need_toggle) #5, !dbg !187
  call void @llvm.dbg.declare(metadata ptr %need_toggle, metadata !175, metadata !DIExpression()), !dbg !188
  %1 = load i8, ptr %want_la57, align 1, !dbg !189, !range !125, !noundef !126
  %tobool3 = trunc i8 %1 to i1, !dbg !189
  %conv = zext i1 %tobool3 to i32, !dbg !189
  %2 = load i8, ptr %have_la57, align 1, !dbg !190, !range !125, !noundef !126
  %tobool4 = trunc i8 %2 to i1, !dbg !190
  %conv5 = zext i1 %tobool4 to i32, !dbg !190
  %xor = xor i32 %conv, %conv5, !dbg !191
  %tobool6 = icmp ne i32 %xor, 0, !dbg !189
  %frombool7 = zext i1 %tobool6 to i8, !dbg !188
  store i8 %frombool7, ptr %need_toggle, align 1, !dbg !188
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgt) #5, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %pgt, metadata !176, metadata !DIExpression()), !dbg !193
  %3 = load ptr, ptr @la57_toggle, align 8, !dbg !194
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 4096, !dbg !195
  store ptr %add.ptr, ptr %pgt, align 8, !dbg !193
  call void @llvm.lifetime.start.p0(i64 8, ptr %cr3) #5, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %cr3, metadata !177, metadata !DIExpression()), !dbg !197
  %call8 = call i64 @__native_read_cr3() #6, !dbg !198
  %4 = inttoptr i64 %call8 to ptr, !dbg !199
  store ptr %4, ptr %cr3, align 8, !dbg !197
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_cr3) #5, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %new_cr3, metadata !178, metadata !DIExpression()), !dbg !201
  %5 = load ptr, ptr @la57_toggle, align 8, !dbg !202
  %tobool9 = icmp ne ptr %5, null, !dbg !202
  br i1 %tobool9, label %lor.lhs.false, label %if.then, !dbg !204

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8, ptr %need_toggle, align 1, !dbg !205, !range !125, !noundef !126
  %tobool10 = trunc i8 %6 to i1, !dbg !205
  br i1 %tobool10, label %if.end, label %if.then, !dbg !206

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !207

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i8, ptr %have_la57, align 1, !dbg !208, !range !125, !noundef !126
  %tobool11 = trunc i8 %7 to i1, !dbg !208
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !210

if.then12:                                        ; preds = %if.end
  %8 = load ptr, ptr %pgt, align 8, !dbg !211
  %call13 = call ptr @memset(ptr noundef %8, i32 noundef 0, i64 noundef 4096) #6, !dbg !213
  store ptr %call13, ptr %new_cr3, align 8, !dbg !214
  %9 = load ptr, ptr %cr3, align 8, !dbg !215
  %10 = ptrtoint ptr %9 to i64, !dbg !216
  %or = or i64 %10, 103, !dbg !217
  %11 = load ptr, ptr %new_cr3, align 8, !dbg !218
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 0, !dbg !218
  store i64 %or, ptr %arrayidx, align 8, !dbg !219
  br label %if.end20, !dbg !220

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %cr3, align 8, !dbg !221
  %arrayidx14 = getelementptr inbounds i64, ptr %12, i64 0, !dbg !221
  %13 = load i64, ptr %arrayidx14, align 8, !dbg !221
  %and15 = and i64 %13, -4096, !dbg !223
  %14 = inttoptr i64 %and15 to ptr, !dbg !224
  store ptr %14, ptr %new_cr3, align 8, !dbg !225
  %15 = load ptr, ptr %new_cr3, align 8, !dbg !226
  %16 = ptrtoint ptr %15 to i64, !dbg !228
  %cmp = icmp ugt i64 %16, 4294967295, !dbg !229
  br i1 %cmp, label %if.then17, label %if.end19, !dbg !230

if.then17:                                        ; preds = %if.else
  %17 = load ptr, ptr %pgt, align 8, !dbg !231
  %18 = load ptr, ptr %new_cr3, align 8, !dbg !232
  %call18 = call ptr @memcpy(ptr noundef %17, ptr noundef %18, i64 noundef 4096) #6, !dbg !233
  store ptr %call18, ptr %new_cr3, align 8, !dbg !234
  br label %if.end19, !dbg !235

if.end19:                                         ; preds = %if.then17, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then12
  %size = getelementptr inbounds %struct.desc_ptr, ptr %.compoundliteral, i32 0, i32 0, !dbg !236
  store i16 23, ptr %size, align 1, !dbg !236
  %address = getelementptr inbounds %struct.desc_ptr, ptr %.compoundliteral, i32 0, i32 1, !dbg !236
  store i64 ptrtoint (ptr @gdt to i64), ptr %address, align 1, !dbg !236
  call void @native_load_gdt(ptr noundef %.compoundliteral) #6, !dbg !237
  %19 = load ptr, ptr @la57_toggle, align 8, !dbg !238
  %20 = load ptr, ptr %new_cr3, align 8, !dbg !239
  call void %19(ptr noundef %20) #6, !dbg !238
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !240
  br label %cleanup, !dbg !240

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_cr3) #5, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %cr3) #5, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgt) #5, !dbg !240
  call void @llvm.lifetime.end.p0(i64 1, ptr %need_toggle) #5, !dbg !240
  call void @llvm.lifetime.end.p0(i64 1, ptr %have_la57) #5, !dbg !240
  call void @llvm.lifetime.end.p0(i64 1, ptr %want_la57) #5, !dbg !240
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !240

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_read_cr4() #4 !dbg !241 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #5, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %val, metadata !246, metadata !DIExpression()), !dbg !248
  %0 = call i64 asm sideeffect "mov %cr4,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #5, !dbg !249, !srcloc !250
  store i64 %0, ptr %val, align 8, !dbg !249
  %1 = load i64, ptr %val, align 8, !dbg !251
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #5, !dbg !252
  ret i64 %1, !dbg !253
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__native_read_cr3() #4 !dbg !254 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #5, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %val, metadata !256, metadata !DIExpression()), !dbg !258
  %0 = call i64 asm sideeffect "mov %cr3,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #5, !dbg !259, !srcloc !260
  store i64 %0, ptr %val, align 8, !dbg !259
  %1 = load i64, ptr %val, align 8, !dbg !261
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #5, !dbg !262
  ret i64 %1, !dbg !263
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @native_load_gdt(ptr noundef %dtr) #4 !dbg !264 {
entry:
  %dtr.addr = alloca ptr, align 8
  store ptr %dtr, ptr %dtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dtr.addr, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load ptr, ptr %dtr.addr, align 8, !dbg !277
  call void asm sideeffect "lgdt $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.desc_ptr) %0) #5, !dbg !278, !srcloc !279
  ret void, !dbg !280
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 !dbg !281 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !285, metadata !DIExpression()), !dbg !289
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !286, metadata !DIExpression()), !dbg !290
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !287, metadata !DIExpression()), !dbg !291
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !288, metadata !DIExpression()), !dbg !292
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !293
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !294
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !295
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !296
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !297
  %5 = load i32, ptr %4, align 4, !dbg !298
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !299
  %7 = load i32, ptr %6, align 4, !dbg !300
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #5, !dbg !301, !srcloc !302
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !301
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !301
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !301
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !301
  store i32 %asmresult, ptr %0, align 4, !dbg !301
  store i32 %asmresult1, ptr %1, align 4, !dbg !301
  store i32 %asmresult2, ptr %2, align 4, !dbg !301
  store i32 %asmresult3, ptr %3, align 4, !dbg !301
  ret void, !dbg !303
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "la57_toggle", scope: !2, file: !3, line: 13, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.x86-5lvl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/x86-5lvl\22 -D KBUILD_BASENAME=\22x86_5lvl\22 -D KBUILD_MODNAME=\22x86_5lvl\22 -D __KBUILD_MODNAME=kmod_x86_5lvl -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/x86-5lvl.ll drivers/firmware/efi/libstub/x86-5lvl.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firmware/efi/libstub/x86-5lvl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b815cde311898f42f781490da15b981f")
!4 = !{!5, !11, !13, !12, !16, !17, !18, !19, !22, !24, !25}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !21)
!21 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !23, line: 14, baseType: !12)
!23 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !27)
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !{!29, !0, !34}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "efi_no5lvl", scope: !2, file: !3, line: 11, type: !31, isLocal: false, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !32, line: 35, baseType: !33)
!32 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!33 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "gdt", scope: !2, file: !3, line: 15, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 192, elements: !54)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !39, line: 16, size: 64, elements: !40)
!39 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !38, file: !39, line: 17, baseType: !25, size: 16)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !38, file: !39, line: 18, baseType: !25, size: 16, offset: 16)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !38, file: !39, line: 19, baseType: !25, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !39, line: 19, baseType: !25, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !38, file: !39, line: 19, baseType: !25, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !38, file: !39, line: 19, baseType: !25, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !38, file: !39, line: 19, baseType: !25, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !38, file: !39, line: 20, baseType: !25, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !38, file: !39, line: 20, baseType: !25, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !38, file: !39, line: 20, baseType: !25, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !38, file: !39, line: 20, baseType: !25, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !38, file: !39, line: 20, baseType: !25, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !38, file: !39, line: 20, baseType: !25, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!54 = !{!55}
!55 = !DISubrange(count: 3)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !17}
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 1, !"Code Model", i32 1}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = distinct !DISubprogram(name: "efi_setup_5level_paging", scope: !3, file: !3, line: 27, type: !66, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!66 = !DISubroutineType(types: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !69, line: 47, baseType: !12)
!69 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!70 = !{!71, !72, !73}
!71 = !DILocalVariable(name: "tmpl_size", scope: !65, file: !3, line: 29, type: !6)
!72 = !DILocalVariable(name: "status", scope: !65, file: !3, line: 30, type: !68)
!73 = !DILocalVariable(name: "la57_code", scope: !65, file: !3, line: 31, type: !5)
!74 = !DILocation(line: 29, column: 2, scope: !65)
!75 = !DILocation(line: 29, column: 5, scope: !65)
!76 = !DILocation(line: 30, column: 2, scope: !65)
!77 = !DILocation(line: 30, column: 15, scope: !65)
!78 = !DILocation(line: 31, column: 2, scope: !65)
!79 = !DILocation(line: 31, column: 6, scope: !65)
!80 = !DILocation(line: 33, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !65, file: !3, line: 33, column: 6)
!82 = !DILocation(line: 33, column: 6, scope: !65)
!83 = !DILocation(line: 34, column: 3, scope: !81)
!84 = !DILocation(line: 37, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !65, file: !3, line: 37, column: 6)
!86 = !DILocation(line: 37, column: 26, scope: !85)
!87 = !DILocation(line: 37, column: 30, scope: !85)
!88 = !DILocation(line: 38, column: 8, scope: !85)
!89 = !DILocation(line: 38, column: 28, scope: !85)
!90 = !DILocation(line: 37, column: 6, scope: !65)
!91 = !DILocation(line: 39, column: 3, scope: !85)
!92 = !DILocation(line: 42, column: 11, scope: !65)
!93 = !DILocation(line: 42, column: 9, scope: !65)
!94 = !DILocation(line: 44, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !65, file: !3, line: 44, column: 6)
!96 = !DILocation(line: 44, column: 13, scope: !95)
!97 = !DILocation(line: 44, column: 6, scope: !65)
!98 = !DILocation(line: 45, column: 10, scope: !95)
!99 = !DILocation(line: 45, column: 3, scope: !95)
!100 = !DILocation(line: 47, column: 23, scope: !65)
!101 = !DILocation(line: 47, column: 56, scope: !65)
!102 = !DILocation(line: 47, column: 16, scope: !65)
!103 = !DILocation(line: 47, column: 14, scope: !65)
!104 = !DILocation(line: 48, column: 9, scope: !65)
!105 = !DILocation(line: 48, column: 21, scope: !65)
!106 = !DILocation(line: 48, column: 19, scope: !65)
!107 = !DILocation(line: 48, column: 50, scope: !65)
!108 = !DILocation(line: 48, column: 48, scope: !65)
!109 = !DILocation(line: 48, column: 2, scope: !65)
!110 = !DILocation(line: 56, column: 67, scope: !65)
!111 = !DILocation(line: 56, column: 52, scope: !65)
!112 = !DILocation(line: 56, column: 11, scope: !65)
!113 = !DILocation(line: 56, column: 21, scope: !65)
!114 = !DILocation(line: 56, column: 49, scope: !65)
!115 = !DILocation(line: 58, column: 52, scope: !65)
!116 = !DILocation(line: 58, column: 37, scope: !65)
!117 = !DILocation(line: 58, column: 2, scope: !65)
!118 = !DILocation(line: 60, column: 2, scope: !65)
!119 = !DILocation(line: 61, column: 1, scope: !65)
!120 = distinct !DISubprogram(name: "efi_is_64bit", scope: !121, file: !121, line: 198, type: !122, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!121 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!122 = !DISubroutineType(types: !123)
!123 = !{!31}
!124 = !DILocation(line: 202, column: 9, scope: !120)
!125 = !{i8 0, i8 2}
!126 = !{}
!127 = !DILocation(line: 202, column: 2, scope: !120)
!128 = distinct !DISubprogram(name: "native_cpuid_eax", scope: !129, file: !129, line: 56, type: !130, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !132)
!129 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!130 = !DISubroutineType(types: !131)
!131 = !{!15, !15}
!132 = !{!133, !134, !135, !136, !137}
!133 = !DILocalVariable(name: "op", arg: 1, scope: !128, file: !129, line: 56, type: !15)
!134 = !DILocalVariable(name: "eax", scope: !128, file: !129, line: 56, type: !15)
!135 = !DILocalVariable(name: "ebx", scope: !128, file: !129, line: 56, type: !15)
!136 = !DILocalVariable(name: "ecx", scope: !128, file: !129, line: 56, type: !15)
!137 = !DILocalVariable(name: "edx", scope: !128, file: !129, line: 56, type: !15)
!138 = !DILocation(line: 56, column: 1, scope: !128)
!139 = distinct !DISubprogram(name: "native_cpuid_ecx", scope: !129, file: !129, line: 58, type: !130, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!140 = !{!141, !142, !143, !144, !145}
!141 = !DILocalVariable(name: "op", arg: 1, scope: !139, file: !129, line: 58, type: !15)
!142 = !DILocalVariable(name: "eax", scope: !139, file: !129, line: 58, type: !15)
!143 = !DILocalVariable(name: "ebx", scope: !139, file: !129, line: 58, type: !15)
!144 = !DILocalVariable(name: "ecx", scope: !139, file: !129, line: 58, type: !15)
!145 = !DILocalVariable(name: "edx", scope: !139, file: !129, line: 58, type: !15)
!146 = !DILocation(line: 58, column: 1, scope: !139)
!147 = !DISubprogram(name: "efi_allocate_pages", scope: !148, file: !148, line: 983, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!149 = !DISubroutineType(types: !150)
!150 = !{!68, !12, !11, !12}
!151 = !DISubprogram(name: "memcpy", scope: !152, file: !152, line: 18, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!153 = !DISubroutineType(types: !154)
!154 = !{!17, !17, !155, !157}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 61, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !159, line: 72, baseType: !160)
!159 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !159, line: 16, baseType: !12)
!161 = !DISubprogram(name: "memset", scope: !152, file: !152, line: 22, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DISubroutineType(types: !163)
!163 = !{!17, !17, !164, !157}
!164 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!165 = !DISubprogram(name: "efi_adjust_memory_range_protection", scope: !166, file: !166, line: 8, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DIFile(filename: "drivers/firmware/efi/libstub/x86-stub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02e6a13ce78661bd94c0adf19feab12a")
!167 = !DISubroutineType(types: !168)
!168 = !{!68, !12, !12}
!169 = distinct !DISubprogram(name: "efi_5level_switch", scope: !3, file: !3, line: 63, type: !170, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!170 = !DISubroutineType(types: !171)
!171 = !{null}
!172 = !{!173, !174, !175, !176, !177, !178}
!173 = !DILocalVariable(name: "want_la57", scope: !169, file: !3, line: 65, type: !31)
!174 = !DILocalVariable(name: "have_la57", scope: !169, file: !3, line: 66, type: !31)
!175 = !DILocalVariable(name: "need_toggle", scope: !169, file: !3, line: 67, type: !31)
!176 = !DILocalVariable(name: "pgt", scope: !169, file: !3, line: 68, type: !18)
!177 = !DILocalVariable(name: "cr3", scope: !169, file: !3, line: 69, type: !18)
!178 = !DILocalVariable(name: "new_cr3", scope: !169, file: !3, line: 70, type: !18)
!179 = !DILocation(line: 65, column: 2, scope: !169)
!180 = !DILocation(line: 65, column: 7, scope: !169)
!181 = !DILocation(line: 65, column: 53, scope: !169)
!182 = !DILocation(line: 65, column: 52, scope: !169)
!183 = !DILocation(line: 66, column: 2, scope: !169)
!184 = !DILocation(line: 66, column: 7, scope: !169)
!185 = !DILocation(line: 66, column: 19, scope: !169)
!186 = !DILocation(line: 66, column: 37, scope: !169)
!187 = !DILocation(line: 67, column: 2, scope: !169)
!188 = !DILocation(line: 67, column: 7, scope: !169)
!189 = !DILocation(line: 67, column: 21, scope: !169)
!190 = !DILocation(line: 67, column: 33, scope: !169)
!191 = !DILocation(line: 67, column: 31, scope: !169)
!192 = !DILocation(line: 68, column: 2, scope: !169)
!193 = !DILocation(line: 68, column: 7, scope: !169)
!194 = !DILocation(line: 68, column: 21, scope: !169)
!195 = !DILocation(line: 68, column: 33, scope: !169)
!196 = !DILocation(line: 69, column: 2, scope: !169)
!197 = !DILocation(line: 69, column: 7, scope: !169)
!198 = !DILocation(line: 69, column: 20, scope: !169)
!199 = !DILocation(line: 69, column: 13, scope: !169)
!200 = !DILocation(line: 70, column: 2, scope: !169)
!201 = !DILocation(line: 70, column: 7, scope: !169)
!202 = !DILocation(line: 72, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !169, file: !3, line: 72, column: 6)
!204 = !DILocation(line: 72, column: 19, scope: !203)
!205 = !DILocation(line: 72, column: 23, scope: !203)
!206 = !DILocation(line: 72, column: 6, scope: !169)
!207 = !DILocation(line: 73, column: 3, scope: !203)
!208 = !DILocation(line: 75, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !169, file: !3, line: 75, column: 6)
!210 = !DILocation(line: 75, column: 6, scope: !169)
!211 = !DILocation(line: 81, column: 20, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !3, line: 75, column: 18)
!213 = !DILocation(line: 81, column: 13, scope: !212)
!214 = !DILocation(line: 81, column: 11, scope: !212)
!215 = !DILocation(line: 82, column: 21, scope: !212)
!216 = !DILocation(line: 82, column: 16, scope: !212)
!217 = !DILocation(line: 82, column: 25, scope: !212)
!218 = !DILocation(line: 82, column: 3, scope: !212)
!219 = !DILocation(line: 82, column: 14, scope: !212)
!220 = !DILocation(line: 83, column: 2, scope: !212)
!221 = !DILocation(line: 85, column: 21, scope: !222)
!222 = distinct !DILexicalBlock(scope: !209, file: !3, line: 83, column: 9)
!223 = !DILocation(line: 85, column: 28, scope: !222)
!224 = !DILocation(line: 85, column: 13, scope: !222)
!225 = !DILocation(line: 85, column: 11, scope: !222)
!226 = !DILocation(line: 88, column: 12, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !3, line: 88, column: 7)
!228 = !DILocation(line: 88, column: 7, scope: !227)
!229 = !DILocation(line: 88, column: 20, scope: !227)
!230 = !DILocation(line: 88, column: 7, scope: !222)
!231 = !DILocation(line: 89, column: 21, scope: !227)
!232 = !DILocation(line: 89, column: 26, scope: !227)
!233 = !DILocation(line: 89, column: 14, scope: !227)
!234 = !DILocation(line: 89, column: 12, scope: !227)
!235 = !DILocation(line: 89, column: 4, scope: !227)
!236 = !DILocation(line: 92, column: 36, scope: !169)
!237 = !DILocation(line: 92, column: 2, scope: !169)
!238 = !DILocation(line: 94, column: 2, scope: !169)
!239 = !DILocation(line: 94, column: 14, scope: !169)
!240 = !DILocation(line: 95, column: 1, scope: !169)
!241 = distinct !DISubprogram(name: "native_read_cr4", scope: !242, file: !242, line: 57, type: !243, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!242 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!243 = !DISubroutineType(types: !244)
!244 = !{!12}
!245 = !{!246}
!246 = !DILocalVariable(name: "val", scope: !241, file: !242, line: 59, type: !12)
!247 = !DILocation(line: 59, column: 2, scope: !241)
!248 = !DILocation(line: 59, column: 16, scope: !241)
!249 = !DILocation(line: 72, column: 2, scope: !241)
!250 = !{i64 1760283, i64 1760298}
!251 = !DILocation(line: 74, column: 9, scope: !241)
!252 = !DILocation(line: 75, column: 1, scope: !241)
!253 = !DILocation(line: 74, column: 2, scope: !241)
!254 = distinct !DISubprogram(name: "__native_read_cr3", scope: !242, file: !242, line: 45, type: !243, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!255 = !{!256}
!256 = !DILocalVariable(name: "val", scope: !254, file: !242, line: 47, type: !12)
!257 = !DILocation(line: 47, column: 2, scope: !254)
!258 = !DILocation(line: 47, column: 16, scope: !254)
!259 = !DILocation(line: 48, column: 2, scope: !254)
!260 = !{i64 1759639, i64 1759654}
!261 = !DILocation(line: 49, column: 9, scope: !254)
!262 = !DILocation(line: 50, column: 1, scope: !254)
!263 = !DILocation(line: 49, column: 2, scope: !254)
!264 = distinct !DISubprogram(name: "native_load_gdt", scope: !265, file: !265, line: 208, type: !266, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !274)
!265 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!266 = !DISubroutineType(types: !267)
!267 = !{null, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_ptr", file: !39, line: 112, size: 80, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !270, file: !39, line: 113, baseType: !27, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !270, file: !39, line: 114, baseType: !12, size: 64, offset: 16)
!274 = !{!275}
!275 = !DILocalVariable(name: "dtr", arg: 1, scope: !264, file: !265, line: 208, type: !268)
!276 = !DILocation(line: 208, column: 59, scope: !264)
!277 = !DILocation(line: 210, column: 32, scope: !264)
!278 = !DILocation(line: 210, column: 2, scope: !264)
!279 = !{i64 6732546}
!280 = !DILocation(line: 211, column: 1, scope: !264)
!281 = distinct !DISubprogram(name: "native_cpuid", scope: !129, file: !129, line: 30, type: !282, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !24, !24, !24, !24}
!284 = !{!285, !286, !287, !288}
!285 = !DILocalVariable(name: "eax", arg: 1, scope: !281, file: !129, line: 30, type: !24)
!286 = !DILocalVariable(name: "ebx", arg: 2, scope: !281, file: !129, line: 30, type: !24)
!287 = !DILocalVariable(name: "ecx", arg: 3, scope: !281, file: !129, line: 31, type: !24)
!288 = !DILocalVariable(name: "edx", arg: 4, scope: !281, file: !129, line: 31, type: !24)
!289 = !DILocation(line: 30, column: 47, scope: !281)
!290 = !DILocation(line: 30, column: 66, scope: !281)
!291 = !DILocation(line: 31, column: 19, scope: !281)
!292 = !DILocation(line: 31, column: 38, scope: !281)
!293 = !DILocation(line: 35, column: 15, scope: !281)
!294 = !DILocation(line: 36, column: 15, scope: !281)
!295 = !DILocation(line: 37, column: 15, scope: !281)
!296 = !DILocation(line: 38, column: 15, scope: !281)
!297 = !DILocation(line: 39, column: 14, scope: !281)
!298 = !DILocation(line: 39, column: 13, scope: !281)
!299 = !DILocation(line: 39, column: 26, scope: !281)
!300 = !DILocation(line: 39, column: 25, scope: !281)
!301 = !DILocation(line: 34, column: 2, scope: !281)
!302 = !{i64 1027033}
!303 = !DILocation(line: 41, column: 1, scope: !281)
