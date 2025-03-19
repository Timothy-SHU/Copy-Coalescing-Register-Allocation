; ModuleID = 'arch/x86/pci/early.c'
source_filename = "arch/x86/pci/early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pci_probe = external dso_local global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @read_pci_config(i8 noundef zeroext %bus, i8 noundef zeroext %slot, i8 noundef zeroext %func, i8 noundef zeroext %offset) #0 align 16 !dbg !11 {
entry:
  %bus.addr = alloca i8, align 1
  %slot.addr = alloca i8, align 1
  %func.addr = alloca i8, align 1
  %offset.addr = alloca i8, align 1
  %v = alloca i32, align 4
  store i8 %bus, ptr %bus.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !23, metadata !DIExpression()), !dbg !28
  store i8 %slot, ptr %slot.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !24, metadata !DIExpression()), !dbg !29
  store i8 %func, ptr %func.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !25, metadata !DIExpression()), !dbg !30
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !26, metadata !DIExpression()), !dbg !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #4, !dbg !32
  call void @llvm.dbg.declare(metadata ptr %v, metadata !27, metadata !DIExpression()), !dbg !33
  %0 = load i8, ptr %bus.addr, align 1, !dbg !34
  %conv = zext i8 %0 to i32, !dbg !34
  %shl = shl i32 %conv, 16, !dbg !35
  %or = or i32 -2147483648, %shl, !dbg !36
  %1 = load i8, ptr %slot.addr, align 1, !dbg !37
  %conv1 = zext i8 %1 to i32, !dbg !37
  %shl2 = shl i32 %conv1, 11, !dbg !38
  %or3 = or i32 %or, %shl2, !dbg !39
  %2 = load i8, ptr %func.addr, align 1, !dbg !40
  %conv4 = zext i8 %2 to i32, !dbg !40
  %shl5 = shl i32 %conv4, 8, !dbg !41
  %or6 = or i32 %or3, %shl5, !dbg !42
  %3 = load i8, ptr %offset.addr, align 1, !dbg !43
  %conv7 = zext i8 %3 to i32, !dbg !43
  %or8 = or i32 %or6, %conv7, !dbg !44
  call void @__outl(i32 noundef %or8, i16 noundef zeroext 3320) #5, !dbg !45
  %call = call i32 @__inl(i16 noundef zeroext 3324) #5, !dbg !46
  store i32 %call, ptr %v, align 4, !dbg !47
  %4 = load i32, ptr %v, align 4, !dbg !48
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #4, !dbg !49
  ret i32 %4, !dbg !50
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outl(i32 noundef %value, i16 noundef zeroext %port) #3 align 16 !dbg !51 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i16, align 2
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !59, metadata !DIExpression()), !dbg !61
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = load i32, ptr %value.addr, align 4, !dbg !61
  %1 = load i16, ptr %port.addr, align 2, !dbg !61
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i16 %1) #4, !dbg !61, !srcloc !62
  ret void, !dbg !61
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__inl(i16 noundef zeroext %port) #3 align 16 !dbg !63 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i32, align 4
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !67, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #4, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %value, metadata !68, metadata !DIExpression()), !dbg !69
  %0 = load i16, ptr %port.addr, align 2, !dbg !69
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #4, !dbg !69, !srcloc !70
  store i32 %1, ptr %value, align 4, !dbg !69
  %2 = load i32, ptr %value, align 4, !dbg !69
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #4, !dbg !69
  ret i32 %2, !dbg !69
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @read_pci_config_byte(i8 noundef zeroext %bus, i8 noundef zeroext %slot, i8 noundef zeroext %func, i8 noundef zeroext %offset) #0 align 16 !dbg !71 {
entry:
  %bus.addr = alloca i8, align 1
  %slot.addr = alloca i8, align 1
  %func.addr = alloca i8, align 1
  %offset.addr = alloca i8, align 1
  %v = alloca i8, align 1
  store i8 %bus, ptr %bus.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !75, metadata !DIExpression()), !dbg !80
  store i8 %slot, ptr %slot.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !76, metadata !DIExpression()), !dbg !81
  store i8 %func, ptr %func.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !77, metadata !DIExpression()), !dbg !82
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !78, metadata !DIExpression()), !dbg !83
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #4, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %v, metadata !79, metadata !DIExpression()), !dbg !85
  %0 = load i8, ptr %bus.addr, align 1, !dbg !86
  %conv = zext i8 %0 to i32, !dbg !86
  %shl = shl i32 %conv, 16, !dbg !87
  %or = or i32 -2147483648, %shl, !dbg !88
  %1 = load i8, ptr %slot.addr, align 1, !dbg !89
  %conv1 = zext i8 %1 to i32, !dbg !89
  %shl2 = shl i32 %conv1, 11, !dbg !90
  %or3 = or i32 %or, %shl2, !dbg !91
  %2 = load i8, ptr %func.addr, align 1, !dbg !92
  %conv4 = zext i8 %2 to i32, !dbg !92
  %shl5 = shl i32 %conv4, 8, !dbg !93
  %or6 = or i32 %or3, %shl5, !dbg !94
  %3 = load i8, ptr %offset.addr, align 1, !dbg !95
  %conv7 = zext i8 %3 to i32, !dbg !95
  %or8 = or i32 %or6, %conv7, !dbg !96
  call void @__outl(i32 noundef %or8, i16 noundef zeroext 3320) #5, !dbg !97
  %4 = load i8, ptr %offset.addr, align 1, !dbg !98
  %conv9 = zext i8 %4 to i32, !dbg !98
  %and = and i32 %conv9, 3, !dbg !99
  %add = add i32 3324, %and, !dbg !100
  %conv10 = trunc i32 %add to i16, !dbg !101
  %call = call zeroext i8 @__inb(i16 noundef zeroext %conv10) #5, !dbg !102
  store i8 %call, ptr %v, align 1, !dbg !103
  %5 = load i8, ptr %v, align 1, !dbg !104
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #4, !dbg !105
  ret i8 %5, !dbg !106
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #3 align 16 !dbg !107 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #4, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %value, metadata !112, metadata !DIExpression()), !dbg !113
  %0 = load i16, ptr %port.addr, align 2, !dbg !113
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #4, !dbg !113, !srcloc !114
  store i8 %1, ptr %value, align 1, !dbg !113
  %2 = load i8, ptr %value, align 1, !dbg !113
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #4, !dbg !113
  ret i8 %2, !dbg !113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @read_pci_config_16(i8 noundef zeroext %bus, i8 noundef zeroext %slot, i8 noundef zeroext %func, i8 noundef zeroext %offset) #0 align 16 !dbg !115 {
entry:
  %bus.addr = alloca i8, align 1
  %slot.addr = alloca i8, align 1
  %func.addr = alloca i8, align 1
  %offset.addr = alloca i8, align 1
  %v = alloca i16, align 2
  store i8 %bus, ptr %bus.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !119, metadata !DIExpression()), !dbg !124
  store i8 %slot, ptr %slot.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !120, metadata !DIExpression()), !dbg !125
  store i8 %func, ptr %func.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !121, metadata !DIExpression()), !dbg !126
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !122, metadata !DIExpression()), !dbg !127
  call void @llvm.lifetime.start.p0(i64 2, ptr %v) #4, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %v, metadata !123, metadata !DIExpression()), !dbg !129
  %0 = load i8, ptr %bus.addr, align 1, !dbg !130
  %conv = zext i8 %0 to i32, !dbg !130
  %shl = shl i32 %conv, 16, !dbg !131
  %or = or i32 -2147483648, %shl, !dbg !132
  %1 = load i8, ptr %slot.addr, align 1, !dbg !133
  %conv1 = zext i8 %1 to i32, !dbg !133
  %shl2 = shl i32 %conv1, 11, !dbg !134
  %or3 = or i32 %or, %shl2, !dbg !135
  %2 = load i8, ptr %func.addr, align 1, !dbg !136
  %conv4 = zext i8 %2 to i32, !dbg !136
  %shl5 = shl i32 %conv4, 8, !dbg !137
  %or6 = or i32 %or3, %shl5, !dbg !138
  %3 = load i8, ptr %offset.addr, align 1, !dbg !139
  %conv7 = zext i8 %3 to i32, !dbg !139
  %or8 = or i32 %or6, %conv7, !dbg !140
  call void @__outl(i32 noundef %or8, i16 noundef zeroext 3320) #5, !dbg !141
  %4 = load i8, ptr %offset.addr, align 1, !dbg !142
  %conv9 = zext i8 %4 to i32, !dbg !142
  %and = and i32 %conv9, 2, !dbg !143
  %add = add i32 3324, %and, !dbg !144
  %conv10 = trunc i32 %add to i16, !dbg !145
  %call = call zeroext i16 @__inw(i16 noundef zeroext %conv10) #5, !dbg !146
  store i16 %call, ptr %v, align 2, !dbg !147
  %5 = load i16, ptr %v, align 2, !dbg !148
  call void @llvm.lifetime.end.p0(i64 2, ptr %v) #4, !dbg !149
  ret i16 %5, !dbg !150
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @__inw(i16 noundef zeroext %port) #3 align 16 !dbg !151 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i16, align 2
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.lifetime.start.p0(i64 2, ptr %value) #4, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %value, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = load i16, ptr %port.addr, align 2, !dbg !157
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #4, !dbg !157, !srcloc !158
  store i16 %1, ptr %value, align 2, !dbg !157
  %2 = load i16, ptr %value, align 2, !dbg !157
  call void @llvm.lifetime.end.p0(i64 2, ptr %value) #4, !dbg !157
  ret i16 %2, !dbg !157
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @write_pci_config(i8 noundef zeroext %bus, i8 noundef zeroext %slot, i8 noundef zeroext %func, i8 noundef zeroext %offset, i32 noundef %val) #0 align 16 !dbg !159 {
entry:
  %bus.addr = alloca i8, align 1
  %slot.addr = alloca i8, align 1
  %func.addr = alloca i8, align 1
  %offset.addr = alloca i8, align 1
  %val.addr = alloca i32, align 4
  store i8 %bus, ptr %bus.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !163, metadata !DIExpression()), !dbg !168
  store i8 %slot, ptr %slot.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !164, metadata !DIExpression()), !dbg !169
  store i8 %func, ptr %func.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !165, metadata !DIExpression()), !dbg !170
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !166, metadata !DIExpression()), !dbg !171
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !167, metadata !DIExpression()), !dbg !172
  %0 = load i8, ptr %bus.addr, align 1, !dbg !173
  %conv = zext i8 %0 to i32, !dbg !173
  %shl = shl i32 %conv, 16, !dbg !174
  %or = or i32 -2147483648, %shl, !dbg !175
  %1 = load i8, ptr %slot.addr, align 1, !dbg !176
  %conv1 = zext i8 %1 to i32, !dbg !176
  %shl2 = shl i32 %conv1, 11, !dbg !177
  %or3 = or i32 %or, %shl2, !dbg !178
  %2 = load i8, ptr %func.addr, align 1, !dbg !179
  %conv4 = zext i8 %2 to i32, !dbg !179
  %shl5 = shl i32 %conv4, 8, !dbg !180
  %or6 = or i32 %or3, %shl5, !dbg !181
  %3 = load i8, ptr %offset.addr, align 1, !dbg !182
  %conv7 = zext i8 %3 to i32, !dbg !182
  %or8 = or i32 %or6, %conv7, !dbg !183
  call void @__outl(i32 noundef %or8, i16 noundef zeroext 3320) #5, !dbg !184
  %4 = load i32, ptr %val.addr, align 4, !dbg !185
  call void @__outl(i32 noundef %4, i16 noundef zeroext 3324) #5, !dbg !186
  ret void, !dbg !187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @write_pci_config_byte(i8 noundef zeroext %bus, i8 noundef zeroext %slot, i8 noundef zeroext %func, i8 noundef zeroext %offset, i8 noundef zeroext %val) #0 align 16 !dbg !188 {
entry:
  %bus.addr = alloca i8, align 1
  %slot.addr = alloca i8, align 1
  %func.addr = alloca i8, align 1
  %offset.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8 %bus, ptr %bus.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !192, metadata !DIExpression()), !dbg !197
  store i8 %slot, ptr %slot.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !193, metadata !DIExpression()), !dbg !198
  store i8 %func, ptr %func.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !194, metadata !DIExpression()), !dbg !199
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !195, metadata !DIExpression()), !dbg !200
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !196, metadata !DIExpression()), !dbg !201
  %0 = load i8, ptr %bus.addr, align 1, !dbg !202
  %conv = zext i8 %0 to i32, !dbg !202
  %shl = shl i32 %conv, 16, !dbg !203
  %or = or i32 -2147483648, %shl, !dbg !204
  %1 = load i8, ptr %slot.addr, align 1, !dbg !205
  %conv1 = zext i8 %1 to i32, !dbg !205
  %shl2 = shl i32 %conv1, 11, !dbg !206
  %or3 = or i32 %or, %shl2, !dbg !207
  %2 = load i8, ptr %func.addr, align 1, !dbg !208
  %conv4 = zext i8 %2 to i32, !dbg !208
  %shl5 = shl i32 %conv4, 8, !dbg !209
  %or6 = or i32 %or3, %shl5, !dbg !210
  %3 = load i8, ptr %offset.addr, align 1, !dbg !211
  %conv7 = zext i8 %3 to i32, !dbg !211
  %or8 = or i32 %or6, %conv7, !dbg !212
  call void @__outl(i32 noundef %or8, i16 noundef zeroext 3320) #5, !dbg !213
  %4 = load i8, ptr %val.addr, align 1, !dbg !214
  %5 = load i8, ptr %offset.addr, align 1, !dbg !215
  %conv9 = zext i8 %5 to i32, !dbg !215
  %and = and i32 %conv9, 3, !dbg !216
  %add = add i32 3324, %and, !dbg !217
  %conv10 = trunc i32 %add to i16, !dbg !218
  call void @__outb(i8 noundef zeroext %4, i16 noundef zeroext %conv10) #5, !dbg !219
  ret void, !dbg !220
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #3 align 16 !dbg !221 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !225, metadata !DIExpression()), !dbg !227
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load i8, ptr %value.addr, align 1, !dbg !227
  %1 = load i16, ptr %port.addr, align 2, !dbg !227
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #4, !dbg !227, !srcloc !228
  ret void, !dbg !227
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @write_pci_config_16(i8 noundef zeroext %bus, i8 noundef zeroext %slot, i8 noundef zeroext %func, i8 noundef zeroext %offset, i16 noundef zeroext %val) #0 align 16 !dbg !229 {
entry:
  %bus.addr = alloca i8, align 1
  %slot.addr = alloca i8, align 1
  %func.addr = alloca i8, align 1
  %offset.addr = alloca i8, align 1
  %val.addr = alloca i16, align 2
  store i8 %bus, ptr %bus.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !233, metadata !DIExpression()), !dbg !238
  store i8 %slot, ptr %slot.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !234, metadata !DIExpression()), !dbg !239
  store i8 %func, ptr %func.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !235, metadata !DIExpression()), !dbg !240
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !236, metadata !DIExpression()), !dbg !241
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !237, metadata !DIExpression()), !dbg !242
  %0 = load i8, ptr %bus.addr, align 1, !dbg !243
  %conv = zext i8 %0 to i32, !dbg !243
  %shl = shl i32 %conv, 16, !dbg !244
  %or = or i32 -2147483648, %shl, !dbg !245
  %1 = load i8, ptr %slot.addr, align 1, !dbg !246
  %conv1 = zext i8 %1 to i32, !dbg !246
  %shl2 = shl i32 %conv1, 11, !dbg !247
  %or3 = or i32 %or, %shl2, !dbg !248
  %2 = load i8, ptr %func.addr, align 1, !dbg !249
  %conv4 = zext i8 %2 to i32, !dbg !249
  %shl5 = shl i32 %conv4, 8, !dbg !250
  %or6 = or i32 %or3, %shl5, !dbg !251
  %3 = load i8, ptr %offset.addr, align 1, !dbg !252
  %conv7 = zext i8 %3 to i32, !dbg !252
  %or8 = or i32 %or6, %conv7, !dbg !253
  call void @__outl(i32 noundef %or8, i16 noundef zeroext 3320) #5, !dbg !254
  %4 = load i16, ptr %val.addr, align 2, !dbg !255
  %5 = load i8, ptr %offset.addr, align 1, !dbg !256
  %conv9 = zext i8 %5 to i32, !dbg !256
  %and = and i32 %conv9, 2, !dbg !257
  %add = add i32 3324, %and, !dbg !258
  %conv10 = trunc i32 %add to i16, !dbg !259
  call void @__outw(i16 noundef zeroext %4, i16 noundef zeroext %conv10) #5, !dbg !260
  ret void, !dbg !261
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outw(i16 noundef zeroext %value, i16 noundef zeroext %port) #3 align 16 !dbg !262 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i16, align 2
  store i16 %value, ptr %value.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !266, metadata !DIExpression()), !dbg !268
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = load i16, ptr %value.addr, align 2, !dbg !268
  %1 = load i16, ptr %port.addr, align 2, !dbg !268
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16 %1) #4, !dbg !268, !srcloc !269
  ret void, !dbg !268
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @early_pci_allowed() #0 align 16 !dbg !270 {
entry:
  %0 = load i32, ptr @pci_probe, align 4, !dbg !274
  %and = and i32 %0, 18, !dbg !275
  %cmp = icmp eq i32 %and, 2, !dbg !276
  %conv = zext i1 %cmp to i32, !dbg !276
  ret i32 %conv, !dbg !277
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/pci/.early.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/pci/early\22 -D KBUILD_BASENAME=\22early\22 -D KBUILD_MODNAME=\22early\22 -D __KBUILD_MODNAME=kmod_early -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/pci/early.ll arch/x86/pci/early.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/pci/early.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7204d4ab533a6a656e1b37ea32dce3f8")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "read_pci_config", scope: !1, file: !1, line: 11, type: !12, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !19, !19, !19, !19}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 17, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !21)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !{!23, !24, !25, !26, !27}
!23 = !DILocalVariable(name: "bus", arg: 1, scope: !11, file: !1, line: 11, type: !19)
!24 = !DILocalVariable(name: "slot", arg: 2, scope: !11, file: !1, line: 11, type: !19)
!25 = !DILocalVariable(name: "func", arg: 3, scope: !11, file: !1, line: 11, type: !19)
!26 = !DILocalVariable(name: "offset", arg: 4, scope: !11, file: !1, line: 11, type: !19)
!27 = !DILocalVariable(name: "v", scope: !11, file: !1, line: 13, type: !14)
!28 = !DILocation(line: 11, column: 24, scope: !11)
!29 = !DILocation(line: 11, column: 32, scope: !11)
!30 = !DILocation(line: 11, column: 41, scope: !11)
!31 = !DILocation(line: 11, column: 50, scope: !11)
!32 = !DILocation(line: 13, column: 2, scope: !11)
!33 = !DILocation(line: 13, column: 6, scope: !11)
!34 = !DILocation(line: 14, column: 21, scope: !11)
!35 = !DILocation(line: 14, column: 24, scope: !11)
!36 = !DILocation(line: 14, column: 18, scope: !11)
!37 = !DILocation(line: 14, column: 33, scope: !11)
!38 = !DILocation(line: 14, column: 37, scope: !11)
!39 = !DILocation(line: 14, column: 30, scope: !11)
!40 = !DILocation(line: 14, column: 46, scope: !11)
!41 = !DILocation(line: 14, column: 50, scope: !11)
!42 = !DILocation(line: 14, column: 43, scope: !11)
!43 = !DILocation(line: 14, column: 57, scope: !11)
!44 = !DILocation(line: 14, column: 55, scope: !11)
!45 = !DILocation(line: 14, column: 2, scope: !11)
!46 = !DILocation(line: 15, column: 6, scope: !11)
!47 = !DILocation(line: 15, column: 4, scope: !11)
!48 = !DILocation(line: 16, column: 9, scope: !11)
!49 = !DILocation(line: 17, column: 1, scope: !11)
!50 = !DILocation(line: 16, column: 2, scope: !11)
!51 = distinct !DISubprogram(name: "__outl", scope: !52, file: !52, line: 24, type: !53, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !58)
!52 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!53 = !DISubroutineType(types: !54)
!54 = !{null, !14, !55}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 19, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !17, line: 24, baseType: !57)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !{!59, !60}
!59 = !DILocalVariable(name: "value", arg: 1, scope: !51, file: !52, line: 24, type: !14)
!60 = !DILocalVariable(name: "port", arg: 2, scope: !51, file: !52, line: 24, type: !55)
!61 = !DILocation(line: 24, column: 1, scope: !51)
!62 = !{i64 2152772727}
!63 = distinct !DISubprogram(name: "__inl", scope: !52, file: !52, line: 24, type: !64, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{!14, !55}
!66 = !{!67, !68}
!67 = !DILocalVariable(name: "port", arg: 1, scope: !63, file: !52, line: 24, type: !55)
!68 = !DILocalVariable(name: "value", scope: !63, file: !52, line: 24, type: !14)
!69 = !DILocation(line: 24, column: 1, scope: !63)
!70 = !{i64 2152772923}
!71 = distinct !DISubprogram(name: "read_pci_config_byte", scope: !1, file: !1, line: 19, type: !72, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!19, !19, !19, !19, !19}
!74 = !{!75, !76, !77, !78, !79}
!75 = !DILocalVariable(name: "bus", arg: 1, scope: !71, file: !1, line: 19, type: !19)
!76 = !DILocalVariable(name: "slot", arg: 2, scope: !71, file: !1, line: 19, type: !19)
!77 = !DILocalVariable(name: "func", arg: 3, scope: !71, file: !1, line: 19, type: !19)
!78 = !DILocalVariable(name: "offset", arg: 4, scope: !71, file: !1, line: 19, type: !19)
!79 = !DILocalVariable(name: "v", scope: !71, file: !1, line: 21, type: !19)
!80 = !DILocation(line: 19, column: 28, scope: !71)
!81 = !DILocation(line: 19, column: 36, scope: !71)
!82 = !DILocation(line: 19, column: 45, scope: !71)
!83 = !DILocation(line: 19, column: 54, scope: !71)
!84 = !DILocation(line: 21, column: 2, scope: !71)
!85 = !DILocation(line: 21, column: 5, scope: !71)
!86 = !DILocation(line: 22, column: 21, scope: !71)
!87 = !DILocation(line: 22, column: 24, scope: !71)
!88 = !DILocation(line: 22, column: 18, scope: !71)
!89 = !DILocation(line: 22, column: 33, scope: !71)
!90 = !DILocation(line: 22, column: 37, scope: !71)
!91 = !DILocation(line: 22, column: 30, scope: !71)
!92 = !DILocation(line: 22, column: 46, scope: !71)
!93 = !DILocation(line: 22, column: 50, scope: !71)
!94 = !DILocation(line: 22, column: 43, scope: !71)
!95 = !DILocation(line: 22, column: 57, scope: !71)
!96 = !DILocation(line: 22, column: 55, scope: !71)
!97 = !DILocation(line: 22, column: 2, scope: !71)
!98 = !DILocation(line: 23, column: 19, scope: !71)
!99 = !DILocation(line: 23, column: 25, scope: !71)
!100 = !DILocation(line: 23, column: 16, scope: !71)
!101 = !DILocation(line: 23, column: 10, scope: !71)
!102 = !DILocation(line: 23, column: 6, scope: !71)
!103 = !DILocation(line: 23, column: 4, scope: !71)
!104 = !DILocation(line: 24, column: 9, scope: !71)
!105 = !DILocation(line: 25, column: 1, scope: !71)
!106 = !DILocation(line: 24, column: 2, scope: !71)
!107 = distinct !DISubprogram(name: "__inb", scope: !52, file: !52, line: 22, type: !108, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!19, !55}
!110 = !{!111, !112}
!111 = !DILocalVariable(name: "port", arg: 1, scope: !107, file: !52, line: 22, type: !55)
!112 = !DILocalVariable(name: "value", scope: !107, file: !52, line: 22, type: !19)
!113 = !DILocation(line: 22, column: 1, scope: !107)
!114 = !{i64 2152771238}
!115 = distinct !DISubprogram(name: "read_pci_config_16", scope: !1, file: !1, line: 27, type: !116, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!55, !19, !19, !19, !19}
!118 = !{!119, !120, !121, !122, !123}
!119 = !DILocalVariable(name: "bus", arg: 1, scope: !115, file: !1, line: 27, type: !19)
!120 = !DILocalVariable(name: "slot", arg: 2, scope: !115, file: !1, line: 27, type: !19)
!121 = !DILocalVariable(name: "func", arg: 3, scope: !115, file: !1, line: 27, type: !19)
!122 = !DILocalVariable(name: "offset", arg: 4, scope: !115, file: !1, line: 27, type: !19)
!123 = !DILocalVariable(name: "v", scope: !115, file: !1, line: 29, type: !55)
!124 = !DILocation(line: 27, column: 27, scope: !115)
!125 = !DILocation(line: 27, column: 35, scope: !115)
!126 = !DILocation(line: 27, column: 44, scope: !115)
!127 = !DILocation(line: 27, column: 53, scope: !115)
!128 = !DILocation(line: 29, column: 2, scope: !115)
!129 = !DILocation(line: 29, column: 6, scope: !115)
!130 = !DILocation(line: 30, column: 21, scope: !115)
!131 = !DILocation(line: 30, column: 24, scope: !115)
!132 = !DILocation(line: 30, column: 18, scope: !115)
!133 = !DILocation(line: 30, column: 33, scope: !115)
!134 = !DILocation(line: 30, column: 37, scope: !115)
!135 = !DILocation(line: 30, column: 30, scope: !115)
!136 = !DILocation(line: 30, column: 46, scope: !115)
!137 = !DILocation(line: 30, column: 50, scope: !115)
!138 = !DILocation(line: 30, column: 43, scope: !115)
!139 = !DILocation(line: 30, column: 57, scope: !115)
!140 = !DILocation(line: 30, column: 55, scope: !115)
!141 = !DILocation(line: 30, column: 2, scope: !115)
!142 = !DILocation(line: 31, column: 19, scope: !115)
!143 = !DILocation(line: 31, column: 25, scope: !115)
!144 = !DILocation(line: 31, column: 16, scope: !115)
!145 = !DILocation(line: 31, column: 10, scope: !115)
!146 = !DILocation(line: 31, column: 6, scope: !115)
!147 = !DILocation(line: 31, column: 4, scope: !115)
!148 = !DILocation(line: 32, column: 9, scope: !115)
!149 = !DILocation(line: 33, column: 1, scope: !115)
!150 = !DILocation(line: 32, column: 2, scope: !115)
!151 = distinct !DISubprogram(name: "__inw", scope: !52, file: !52, line: 23, type: !152, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!55, !55}
!154 = !{!155, !156}
!155 = !DILocalVariable(name: "port", arg: 1, scope: !151, file: !52, line: 23, type: !55)
!156 = !DILocalVariable(name: "value", scope: !151, file: !52, line: 23, type: !55)
!157 = !DILocation(line: 23, column: 1, scope: !151)
!158 = !{i64 2152772079}
!159 = distinct !DISubprogram(name: "write_pci_config", scope: !1, file: !1, line: 35, type: !160, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !19, !19, !19, !19, !14}
!162 = !{!163, !164, !165, !166, !167}
!163 = !DILocalVariable(name: "bus", arg: 1, scope: !159, file: !1, line: 35, type: !19)
!164 = !DILocalVariable(name: "slot", arg: 2, scope: !159, file: !1, line: 35, type: !19)
!165 = !DILocalVariable(name: "func", arg: 3, scope: !159, file: !1, line: 35, type: !19)
!166 = !DILocalVariable(name: "offset", arg: 4, scope: !159, file: !1, line: 35, type: !19)
!167 = !DILocalVariable(name: "val", arg: 5, scope: !159, file: !1, line: 36, type: !14)
!168 = !DILocation(line: 35, column: 26, scope: !159)
!169 = !DILocation(line: 35, column: 34, scope: !159)
!170 = !DILocation(line: 35, column: 43, scope: !159)
!171 = !DILocation(line: 35, column: 52, scope: !159)
!172 = !DILocation(line: 36, column: 13, scope: !159)
!173 = !DILocation(line: 38, column: 21, scope: !159)
!174 = !DILocation(line: 38, column: 24, scope: !159)
!175 = !DILocation(line: 38, column: 18, scope: !159)
!176 = !DILocation(line: 38, column: 33, scope: !159)
!177 = !DILocation(line: 38, column: 37, scope: !159)
!178 = !DILocation(line: 38, column: 30, scope: !159)
!179 = !DILocation(line: 38, column: 46, scope: !159)
!180 = !DILocation(line: 38, column: 50, scope: !159)
!181 = !DILocation(line: 38, column: 43, scope: !159)
!182 = !DILocation(line: 38, column: 57, scope: !159)
!183 = !DILocation(line: 38, column: 55, scope: !159)
!184 = !DILocation(line: 38, column: 2, scope: !159)
!185 = !DILocation(line: 39, column: 7, scope: !159)
!186 = !DILocation(line: 39, column: 2, scope: !159)
!187 = !DILocation(line: 40, column: 1, scope: !159)
!188 = distinct !DISubprogram(name: "write_pci_config_byte", scope: !1, file: !1, line: 42, type: !189, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !19, !19, !19, !19, !19}
!191 = !{!192, !193, !194, !195, !196}
!192 = !DILocalVariable(name: "bus", arg: 1, scope: !188, file: !1, line: 42, type: !19)
!193 = !DILocalVariable(name: "slot", arg: 2, scope: !188, file: !1, line: 42, type: !19)
!194 = !DILocalVariable(name: "func", arg: 3, scope: !188, file: !1, line: 42, type: !19)
!195 = !DILocalVariable(name: "offset", arg: 4, scope: !188, file: !1, line: 42, type: !19)
!196 = !DILocalVariable(name: "val", arg: 5, scope: !188, file: !1, line: 42, type: !19)
!197 = !DILocation(line: 42, column: 31, scope: !188)
!198 = !DILocation(line: 42, column: 39, scope: !188)
!199 = !DILocation(line: 42, column: 48, scope: !188)
!200 = !DILocation(line: 42, column: 57, scope: !188)
!201 = !DILocation(line: 42, column: 68, scope: !188)
!202 = !DILocation(line: 44, column: 21, scope: !188)
!203 = !DILocation(line: 44, column: 24, scope: !188)
!204 = !DILocation(line: 44, column: 18, scope: !188)
!205 = !DILocation(line: 44, column: 33, scope: !188)
!206 = !DILocation(line: 44, column: 37, scope: !188)
!207 = !DILocation(line: 44, column: 30, scope: !188)
!208 = !DILocation(line: 44, column: 46, scope: !188)
!209 = !DILocation(line: 44, column: 50, scope: !188)
!210 = !DILocation(line: 44, column: 43, scope: !188)
!211 = !DILocation(line: 44, column: 57, scope: !188)
!212 = !DILocation(line: 44, column: 55, scope: !188)
!213 = !DILocation(line: 44, column: 2, scope: !188)
!214 = !DILocation(line: 45, column: 7, scope: !188)
!215 = !DILocation(line: 45, column: 21, scope: !188)
!216 = !DILocation(line: 45, column: 27, scope: !188)
!217 = !DILocation(line: 45, column: 18, scope: !188)
!218 = !DILocation(line: 45, column: 12, scope: !188)
!219 = !DILocation(line: 45, column: 2, scope: !188)
!220 = !DILocation(line: 46, column: 1, scope: !188)
!221 = distinct !DISubprogram(name: "__outb", scope: !52, file: !52, line: 22, type: !222, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !19, !55}
!224 = !{!225, !226}
!225 = !DILocalVariable(name: "value", arg: 1, scope: !221, file: !52, line: 22, type: !19)
!226 = !DILocalVariable(name: "port", arg: 2, scope: !221, file: !52, line: 22, type: !55)
!227 = !DILocation(line: 22, column: 1, scope: !221)
!228 = !{i64 2152771042}
!229 = distinct !DISubprogram(name: "write_pci_config_16", scope: !1, file: !1, line: 48, type: !230, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !19, !19, !19, !19, !55}
!232 = !{!233, !234, !235, !236, !237}
!233 = !DILocalVariable(name: "bus", arg: 1, scope: !229, file: !1, line: 48, type: !19)
!234 = !DILocalVariable(name: "slot", arg: 2, scope: !229, file: !1, line: 48, type: !19)
!235 = !DILocalVariable(name: "func", arg: 3, scope: !229, file: !1, line: 48, type: !19)
!236 = !DILocalVariable(name: "offset", arg: 4, scope: !229, file: !1, line: 48, type: !19)
!237 = !DILocalVariable(name: "val", arg: 5, scope: !229, file: !1, line: 48, type: !55)
!238 = !DILocation(line: 48, column: 29, scope: !229)
!239 = !DILocation(line: 48, column: 37, scope: !229)
!240 = !DILocation(line: 48, column: 46, scope: !229)
!241 = !DILocation(line: 48, column: 55, scope: !229)
!242 = !DILocation(line: 48, column: 67, scope: !229)
!243 = !DILocation(line: 50, column: 21, scope: !229)
!244 = !DILocation(line: 50, column: 24, scope: !229)
!245 = !DILocation(line: 50, column: 18, scope: !229)
!246 = !DILocation(line: 50, column: 33, scope: !229)
!247 = !DILocation(line: 50, column: 37, scope: !229)
!248 = !DILocation(line: 50, column: 30, scope: !229)
!249 = !DILocation(line: 50, column: 46, scope: !229)
!250 = !DILocation(line: 50, column: 50, scope: !229)
!251 = !DILocation(line: 50, column: 43, scope: !229)
!252 = !DILocation(line: 50, column: 57, scope: !229)
!253 = !DILocation(line: 50, column: 55, scope: !229)
!254 = !DILocation(line: 50, column: 2, scope: !229)
!255 = !DILocation(line: 51, column: 7, scope: !229)
!256 = !DILocation(line: 51, column: 21, scope: !229)
!257 = !DILocation(line: 51, column: 27, scope: !229)
!258 = !DILocation(line: 51, column: 18, scope: !229)
!259 = !DILocation(line: 51, column: 12, scope: !229)
!260 = !DILocation(line: 51, column: 2, scope: !229)
!261 = !DILocation(line: 52, column: 1, scope: !229)
!262 = distinct !DISubprogram(name: "__outw", scope: !52, file: !52, line: 23, type: !263, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !55, !55}
!265 = !{!266, !267}
!266 = !DILocalVariable(name: "value", arg: 1, scope: !262, file: !52, line: 23, type: !55)
!267 = !DILocalVariable(name: "port", arg: 2, scope: !262, file: !52, line: 23, type: !55)
!268 = !DILocation(line: 23, column: 1, scope: !262)
!269 = !{i64 2152771883}
!270 = distinct !DISubprogram(name: "early_pci_allowed", scope: !1, file: !1, line: 54, type: !271, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!271 = !DISubroutineType(types: !272)
!272 = !{!273}
!273 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!274 = !DILocation(line: 56, column: 10, scope: !270)
!275 = !DILocation(line: 56, column: 20, scope: !270)
!276 = !DILocation(line: 56, column: 59, scope: !270)
!277 = !DILocation(line: 56, column: 2, scope: !270)
