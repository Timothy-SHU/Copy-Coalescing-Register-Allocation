; ModuleID = 'arch/x86/pci/direct.c'
source_filename = "arch/x86/pci/direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_raw_ops = type { ptr, ptr }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@pci_direct_conf1 = hidden constant %struct.pci_raw_ops { ptr @pci_conf1_read, ptr @pci_conf1_write }, align 8, !dbg !0
@.str = private unnamed_addr constant [52 x i8] c"\016PCI: Using configuration type %d for base access\0A\00", align 1, !dbg !23
@raw_pci_ops = external dso_local global ptr, align 8
@raw_pci_ext_ops = external dso_local global ptr, align 8
@pci_probe = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"\016PCI: Using configuration type 1 for extended access\0A\00", align 1, !dbg !29
@pci_direct_conf2 = internal constant %struct.pci_raw_ops { ptr @pci_conf2_read, ptr @pci_conf2_write }, align 8, !dbg !41
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"PCI conf1\00", align 1, !dbg !34
@port_cf9_safe = external dso_local global i8, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PCI conf2\00", align 1, !dbg !39
@pci_config_lock = external dso_local global %struct.raw_spinlock, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"arch/x86/pci/direct.c\00", align 1, !dbg !57

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_conf1_read(i32 noundef %seg, i32 noundef %bus, i32 noundef %devfn, i32 noundef %reg, i32 noundef %len, ptr noundef %value) #0 align 16 !dbg !71 {
entry:
  %retval = alloca i32, align 4
  %seg.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy25 = alloca i64, align 8
  %__dummy226 = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !73, metadata !DIExpression()), !dbg !89
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !74, metadata !DIExpression()), !dbg !90
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !75, metadata !DIExpression()), !dbg !91
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !76, metadata !DIExpression()), !dbg !92
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !77, metadata !DIExpression()), !dbg !93
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !78, metadata !DIExpression()), !dbg !94
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !79, metadata !DIExpression()), !dbg !96
  %0 = load i32, ptr %seg.addr, align 4, !dbg !97
  %tobool = icmp ne i32 %0, 0, !dbg !97
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !99

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %bus.addr, align 4, !dbg !100
  %cmp = icmp ugt i32 %1, 255, !dbg !101
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !102

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %devfn.addr, align 4, !dbg !103
  %cmp2 = icmp ugt i32 %2, 255, !dbg !104
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !105

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %3 = load i32, ptr %reg.addr, align 4, !dbg !106
  %cmp4 = icmp sgt i32 %3, 4095, !dbg !107
  br i1 %cmp4, label %if.then, label %if.end, !dbg !108

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false1, %lor.lhs.false, %entry
  %4 = load ptr, ptr %value.addr, align 8, !dbg !109
  store i32 -1, ptr %4, align 4, !dbg !111
  store i32 -22, ptr %retval, align 4, !dbg !112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !112

if.end:                                           ; preds = %lor.lhs.false3
  br label %do.body, !dbg !113

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !81, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !84, metadata !DIExpression()), !dbg !114
  %cmp5 = icmp eq ptr %__dummy, %__dummy2, !dbg !114
  %conv = zext i1 %cmp5 to i32, !dbg !114
  store i32 1, ptr %tmp, align 4, !dbg !114
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !115
  %5 = load i32, ptr %tmp, align 4, !dbg !114
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @pci_config_lock) #9, !dbg !115
  store i64 %call, ptr %flags, align 8, !dbg !115
  br label %do.cond, !dbg !115

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !115

do.end:                                           ; preds = %do.cond
  %6 = load i32, ptr %reg.addr, align 4, !dbg !116
  %and = and i32 %6, 3840, !dbg !116
  %shl = shl i32 %and, 16, !dbg !116
  %or = or i32 -2147483648, %shl, !dbg !116
  %7 = load i32, ptr %bus.addr, align 4, !dbg !116
  %shl6 = shl i32 %7, 16, !dbg !116
  %or7 = or i32 %or, %shl6, !dbg !116
  %8 = load i32, ptr %devfn.addr, align 4, !dbg !116
  %shl8 = shl i32 %8, 8, !dbg !116
  %or9 = or i32 %or7, %shl8, !dbg !116
  %9 = load i32, ptr %reg.addr, align 4, !dbg !116
  %and10 = and i32 %9, 252, !dbg !116
  %or11 = or i32 %or9, %and10, !dbg !116
  call void @__outl(i32 noundef %or11, i16 noundef zeroext 3320) #9, !dbg !117
  %10 = load i32, ptr %len.addr, align 4, !dbg !118
  switch i32 %10, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
    i32 4, label %sw.bb22
  ], !dbg !119

sw.bb:                                            ; preds = %do.end
  %11 = load i32, ptr %reg.addr, align 4, !dbg !120
  %and12 = and i32 %11, 3, !dbg !122
  %add = add i32 3324, %and12, !dbg !123
  %conv13 = trunc i32 %add to i16, !dbg !124
  %call14 = call zeroext i8 @__inb(i16 noundef zeroext %conv13) #9, !dbg !125
  %conv15 = zext i8 %call14 to i32, !dbg !125
  %12 = load ptr, ptr %value.addr, align 8, !dbg !126
  store i32 %conv15, ptr %12, align 4, !dbg !127
  br label %sw.epilog, !dbg !128

sw.bb16:                                          ; preds = %do.end
  %13 = load i32, ptr %reg.addr, align 4, !dbg !129
  %and17 = and i32 %13, 2, !dbg !130
  %add18 = add i32 3324, %and17, !dbg !131
  %conv19 = trunc i32 %add18 to i16, !dbg !132
  %call20 = call zeroext i16 @__inw(i16 noundef zeroext %conv19) #9, !dbg !133
  %conv21 = zext i16 %call20 to i32, !dbg !133
  %14 = load ptr, ptr %value.addr, align 8, !dbg !134
  store i32 %conv21, ptr %14, align 4, !dbg !135
  br label %sw.epilog, !dbg !136

sw.bb22:                                          ; preds = %do.end
  %call23 = call i32 @__inl(i16 noundef zeroext 3324) #9, !dbg !137
  %15 = load ptr, ptr %value.addr, align 8, !dbg !138
  store i32 %call23, ptr %15, align 4, !dbg !139
  br label %sw.epilog, !dbg !140

sw.epilog:                                        ; preds = %do.end, %sw.bb22, %sw.bb16, %sw.bb
  br label %do.body24, !dbg !141

do.body24:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #8, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !85, metadata !DIExpression()), !dbg !142
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy226) #8, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %__dummy226, metadata !88, metadata !DIExpression()), !dbg !142
  %cmp27 = icmp eq ptr %__dummy25, %__dummy226, !dbg !142
  %conv28 = zext i1 %cmp27 to i32, !dbg !142
  store i32 1, ptr %tmp29, align 4, !dbg !142
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy226) #8, !dbg !143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #8, !dbg !143
  %16 = load i32, ptr %tmp29, align 4, !dbg !142
  %17 = load i64, ptr %flags, align 8, !dbg !143
  call void @_raw_spin_unlock_irqrestore(ptr noundef @pci_config_lock, i64 noundef %17) #9, !dbg !143
  br label %do.cond30, !dbg !143

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !143

do.end31:                                         ; preds = %do.cond30
  store i32 0, ptr %retval, align 4, !dbg !144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !144

cleanup:                                          ; preds = %do.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !145
  %18 = load i32, ptr %retval, align 4, !dbg !145
  ret i32 %18, !dbg !145
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_conf1_write(i32 noundef %seg, i32 noundef %bus, i32 noundef %devfn, i32 noundef %reg, i32 noundef %len, i32 noundef %value) #0 align 16 !dbg !146 {
entry:
  %retval = alloca i32, align 4
  %seg.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy22 = alloca i64, align 8
  %__dummy223 = alloca i64, align 8
  %tmp26 = alloca i32, align 4
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !148, metadata !DIExpression()), !dbg !163
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !149, metadata !DIExpression()), !dbg !164
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !150, metadata !DIExpression()), !dbg !165
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !151, metadata !DIExpression()), !dbg !166
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !152, metadata !DIExpression()), !dbg !167
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !153, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !154, metadata !DIExpression()), !dbg !170
  %0 = load i32, ptr %seg.addr, align 4, !dbg !171
  %tobool = icmp ne i32 %0, 0, !dbg !171
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !173

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %bus.addr, align 4, !dbg !174
  %cmp = icmp ugt i32 %1, 255, !dbg !175
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !176

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %devfn.addr, align 4, !dbg !177
  %cmp2 = icmp ugt i32 %2, 255, !dbg !178
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !179

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %3 = load i32, ptr %reg.addr, align 4, !dbg !180
  %cmp4 = icmp sgt i32 %3, 4095, !dbg !181
  br i1 %cmp4, label %if.then, label %if.end, !dbg !182

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !183

if.end:                                           ; preds = %lor.lhs.false3
  br label %do.body, !dbg !184

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !155, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !158, metadata !DIExpression()), !dbg !185
  %cmp5 = icmp eq ptr %__dummy, %__dummy2, !dbg !185
  %conv = zext i1 %cmp5 to i32, !dbg !185
  store i32 1, ptr %tmp, align 4, !dbg !185
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !186
  %4 = load i32, ptr %tmp, align 4, !dbg !185
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @pci_config_lock) #9, !dbg !186
  store i64 %call, ptr %flags, align 8, !dbg !186
  br label %do.cond, !dbg !186

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !186

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %reg.addr, align 4, !dbg !187
  %and = and i32 %5, 3840, !dbg !187
  %shl = shl i32 %and, 16, !dbg !187
  %or = or i32 -2147483648, %shl, !dbg !187
  %6 = load i32, ptr %bus.addr, align 4, !dbg !187
  %shl6 = shl i32 %6, 16, !dbg !187
  %or7 = or i32 %or, %shl6, !dbg !187
  %7 = load i32, ptr %devfn.addr, align 4, !dbg !187
  %shl8 = shl i32 %7, 8, !dbg !187
  %or9 = or i32 %or7, %shl8, !dbg !187
  %8 = load i32, ptr %reg.addr, align 4, !dbg !187
  %and10 = and i32 %8, 252, !dbg !187
  %or11 = or i32 %or9, %and10, !dbg !187
  call void @__outl(i32 noundef %or11, i16 noundef zeroext 3320) #9, !dbg !188
  %9 = load i32, ptr %len.addr, align 4, !dbg !189
  switch i32 %9, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 4, label %sw.bb20
  ], !dbg !190

sw.bb:                                            ; preds = %do.end
  %10 = load i32, ptr %value.addr, align 4, !dbg !191
  %conv12 = trunc i32 %10 to i8, !dbg !193
  %11 = load i32, ptr %reg.addr, align 4, !dbg !194
  %and13 = and i32 %11, 3, !dbg !195
  %add = add i32 3324, %and13, !dbg !196
  %conv14 = trunc i32 %add to i16, !dbg !197
  call void @__outb(i8 noundef zeroext %conv12, i16 noundef zeroext %conv14) #9, !dbg !198
  br label %sw.epilog, !dbg !199

sw.bb15:                                          ; preds = %do.end
  %12 = load i32, ptr %value.addr, align 4, !dbg !200
  %conv16 = trunc i32 %12 to i16, !dbg !201
  %13 = load i32, ptr %reg.addr, align 4, !dbg !202
  %and17 = and i32 %13, 2, !dbg !203
  %add18 = add i32 3324, %and17, !dbg !204
  %conv19 = trunc i32 %add18 to i16, !dbg !205
  call void @__outw(i16 noundef zeroext %conv16, i16 noundef zeroext %conv19) #9, !dbg !206
  br label %sw.epilog, !dbg !207

sw.bb20:                                          ; preds = %do.end
  %14 = load i32, ptr %value.addr, align 4, !dbg !208
  call void @__outl(i32 noundef %14, i16 noundef zeroext 3324) #9, !dbg !209
  br label %sw.epilog, !dbg !210

sw.epilog:                                        ; preds = %do.end, %sw.bb20, %sw.bb15, %sw.bb
  br label %do.body21, !dbg !211

do.body21:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy22) #8, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %__dummy22, metadata !159, metadata !DIExpression()), !dbg !212
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy223) #8, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %__dummy223, metadata !162, metadata !DIExpression()), !dbg !212
  %cmp24 = icmp eq ptr %__dummy22, %__dummy223, !dbg !212
  %conv25 = zext i1 %cmp24 to i32, !dbg !212
  store i32 1, ptr %tmp26, align 4, !dbg !212
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy223) #8, !dbg !213
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy22) #8, !dbg !213
  %15 = load i32, ptr %tmp26, align 4, !dbg !212
  %16 = load i64, ptr %flags, align 8, !dbg !213
  call void @_raw_spin_unlock_irqrestore(ptr noundef @pci_config_lock, i64 noundef %16) #9, !dbg !213
  br label %do.cond27, !dbg !213

do.cond27:                                        ; preds = %do.body21
  br label %do.end28, !dbg !213

do.end28:                                         ; preds = %do.cond27
  store i32 0, ptr %retval, align 4, !dbg !214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !214

cleanup:                                          ; preds = %do.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !215
  %17 = load i32, ptr %retval, align 4, !dbg !215
  ret i32 %17, !dbg !215
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pci_direct_init(i32 noundef %type) #1 section ".init.text" align 16 !dbg !216 {
entry:
  %type.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = load i32, ptr %type.addr, align 4, !dbg !222
  %cmp = icmp eq i32 %0, 0, !dbg !224
  br i1 %cmp, label %if.then, label %if.end, !dbg !225

if.then:                                          ; preds = %entry
  br label %return, !dbg !226

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !227

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !229

do.end:                                           ; preds = %do.body
  %1 = load i32, ptr %type.addr, align 4, !dbg !227
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %1) #10, !dbg !227
  store i32 %call, ptr %tmp, align 4, !dbg !229
  %2 = load i32, ptr %tmp, align 4, !dbg !227
  %3 = load i32, ptr %type.addr, align 4, !dbg !231
  %cmp1 = icmp eq i32 %3, 1, !dbg !233
  br i1 %cmp1, label %if.then2, label %if.end12, !dbg !234

if.then2:                                         ; preds = %do.end
  store ptr @pci_direct_conf1, ptr @raw_pci_ops, align 8, !dbg !235
  %4 = load ptr, ptr @raw_pci_ext_ops, align 8, !dbg !237
  %tobool = icmp ne ptr %4, null, !dbg !237
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !239

if.then3:                                         ; preds = %if.then2
  br label %return, !dbg !240

if.end4:                                          ; preds = %if.then2
  %5 = load i32, ptr @pci_probe, align 4, !dbg !241
  %and = and i32 %5, 262144, !dbg !243
  %tobool5 = icmp ne i32 %and, 0, !dbg !243
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !244

if.then6:                                         ; preds = %if.end4
  br label %return, !dbg !245

if.end7:                                          ; preds = %if.end4
  br label %do.body8, !dbg !246

do.body8:                                         ; preds = %if.end7
  br label %do.end9, !dbg !248

do.end9:                                          ; preds = %do.body8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #10, !dbg !246
  store i32 %call11, ptr %tmp10, align 4, !dbg !248
  %6 = load i32, ptr %tmp10, align 4, !dbg !246
  store ptr @pci_direct_conf1, ptr @raw_pci_ext_ops, align 8, !dbg !250
  br label %return, !dbg !251

if.end12:                                         ; preds = %do.end
  store ptr @pci_direct_conf2, ptr @raw_pci_ops, align 8, !dbg !252
  br label %return, !dbg !253

return:                                           ; preds = %if.end12, %do.end9, %if.then6, %if.then3, %if.then
  ret void, !dbg !253
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !254 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @pci_direct_probe() #1 section ".init.text" align 16 !dbg !260 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, ptr @pci_probe, align 4, !dbg !266
  %and = and i32 %0, 2, !dbg !268
  %cmp = icmp eq i32 %and, 0, !dbg !269
  br i1 %cmp, label %if.then, label %if.end, !dbg !270

if.then:                                          ; preds = %entry
  br label %type2, !dbg !271

if.end:                                           ; preds = %entry
  %call = call ptr @__request_region(ptr noundef @ioport_resource, i64 noundef 3320, i64 noundef 8, ptr noundef @.str.2, i32 noundef 0) #9, !dbg !272
  %tobool = icmp ne ptr %call, null, !dbg !272
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !274

if.then1:                                         ; preds = %if.end
  br label %type2, !dbg !275

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @pci_check_type1() #10, !dbg !276
  %tobool4 = icmp ne i32 %call3, 0, !dbg !276
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !278

if.then5:                                         ; preds = %if.end2
  store ptr @pci_direct_conf1, ptr @raw_pci_ops, align 8, !dbg !279
  store i8 1, ptr @port_cf9_safe, align 1, !dbg !281
  store i32 1, ptr %retval, align 4, !dbg !282
  br label %return, !dbg !282

if.end6:                                          ; preds = %if.end2
  call void @__release_region(ptr noundef @ioport_resource, i64 noundef 3320, i64 noundef 8) #9, !dbg !283
  br label %type2, !dbg !283

type2:                                            ; preds = %if.end6, %if.then1, %if.then
  call void @llvm.dbg.label(metadata !264), !dbg !284
  %1 = load i32, ptr @pci_probe, align 4, !dbg !285
  %and7 = and i32 %1, 4, !dbg !287
  %cmp8 = icmp eq i32 %and7, 0, !dbg !288
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !289

if.then9:                                         ; preds = %type2
  store i32 0, ptr %retval, align 4, !dbg !290
  br label %return, !dbg !290

if.end10:                                         ; preds = %type2
  %call11 = call ptr @__request_region(ptr noundef @ioport_resource, i64 noundef 3320, i64 noundef 4, ptr noundef @.str.3, i32 noundef 0) #9, !dbg !291
  %tobool12 = icmp ne ptr %call11, null, !dbg !291
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !293

if.then13:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4, !dbg !294
  br label %return, !dbg !294

if.end14:                                         ; preds = %if.end10
  %call15 = call ptr @__request_region(ptr noundef @ioport_resource, i64 noundef 49152, i64 noundef 4096, ptr noundef @.str.3, i32 noundef 0) #9, !dbg !295
  %tobool16 = icmp ne ptr %call15, null, !dbg !295
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !297

if.then17:                                        ; preds = %if.end14
  br label %fail2, !dbg !298

if.end18:                                         ; preds = %if.end14
  %call19 = call i32 @pci_check_type2() #10, !dbg !299
  %tobool20 = icmp ne i32 %call19, 0, !dbg !299
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !301

if.then21:                                        ; preds = %if.end18
  store ptr @pci_direct_conf2, ptr @raw_pci_ops, align 8, !dbg !302
  store i8 1, ptr @port_cf9_safe, align 1, !dbg !304
  store i32 2, ptr %retval, align 4, !dbg !305
  br label %return, !dbg !305

if.end22:                                         ; preds = %if.end18
  call void @__release_region(ptr noundef @ioport_resource, i64 noundef 49152, i64 noundef 4096) #9, !dbg !306
  br label %fail2, !dbg !306

fail2:                                            ; preds = %if.end22, %if.then17
  call void @llvm.dbg.label(metadata !265), !dbg !307
  call void @__release_region(ptr noundef @ioport_resource, i64 noundef 3320, i64 noundef 4) #9, !dbg !308
  store i32 0, ptr %retval, align 4, !dbg !309
  br label %return, !dbg !309

return:                                           ; preds = %fail2, %if.then21, %if.then13, %if.then9, %if.then5
  %2 = load i32, ptr %retval, align 4, !dbg !310
  ret i32 %2, !dbg !310
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !311 dso_local ptr @__request_region(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pci_check_type1() #1 section ".init.text" align 16 !dbg !332 {
entry:
  %flags = alloca i64, align 8
  %tmp = alloca i32, align 4
  %works = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp2 = alloca i32, align 4
  %__dummy12 = alloca i64, align 8
  %__dummy213 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !334, metadata !DIExpression()), !dbg !348
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #8, !dbg !349
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !335, metadata !DIExpression()), !dbg !350
  call void @llvm.lifetime.start.p0(i64 4, ptr %works) #8, !dbg !351
  call void @llvm.dbg.declare(metadata ptr %works, metadata !336, metadata !DIExpression()), !dbg !352
  store i32 0, ptr %works, align 4, !dbg !352
  br label %do.body, !dbg !353

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !354

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !337, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !341, metadata !DIExpression()), !dbg !355
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !355
  %conv = zext i1 %cmp to i32, !dbg !355
  store i32 1, ptr %tmp2, align 4, !dbg !355
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !356
  %0 = load i32, ptr %tmp2, align 4, !dbg !355
  %call = call i64 @arch_local_irq_save() #9, !dbg !356
  store i64 %call, ptr %flags, align 8, !dbg !356
  br label %do.cond, !dbg !356

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !356

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !354

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !354

do.end4:                                          ; preds = %do.cond3
  call void @__outb(i8 noundef zeroext 1, i16 noundef zeroext 3323) #9, !dbg !357
  %call5 = call i32 @__inl(i16 noundef zeroext 3320) #9, !dbg !358
  store i32 %call5, ptr %tmp, align 4, !dbg !359
  call void @__outl(i32 noundef -2147483648, i16 noundef zeroext 3320) #9, !dbg !360
  %call6 = call i32 @__inl(i16 noundef zeroext 3320) #9, !dbg !361
  %cmp7 = icmp eq i32 %call6, -2147483648, !dbg !363
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !364

land.lhs.true:                                    ; preds = %do.end4
  %call9 = call i32 @pci_sanity_check(ptr noundef @pci_direct_conf1) #10, !dbg !365
  %tobool = icmp ne i32 %call9, 0, !dbg !365
  br i1 %tobool, label %if.then, label %if.end, !dbg !366

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %works, align 4, !dbg !367
  br label %if.end, !dbg !369

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end4
  %1 = load i32, ptr %tmp, align 4, !dbg !370
  call void @__outl(i32 noundef %1, i16 noundef zeroext 3320) #9, !dbg !371
  br label %do.body10, !dbg !372

do.body10:                                        ; preds = %if.end
  br label %do.body11, !dbg !373

do.body11:                                        ; preds = %do.body10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy12) #8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %__dummy12, metadata !342, metadata !DIExpression()), !dbg !374
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy213) #8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %__dummy213, metadata !346, metadata !DIExpression()), !dbg !374
  %cmp14 = icmp eq ptr %__dummy12, %__dummy213, !dbg !374
  %conv15 = zext i1 %cmp14 to i32, !dbg !374
  store i32 1, ptr %tmp16, align 4, !dbg !374
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy213) #8, !dbg !375
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy12) #8, !dbg !375
  %2 = load i32, ptr %tmp16, align 4, !dbg !374
  br label %do.body17, !dbg !375

do.body17:                                        ; preds = %do.body11
  br label %do.cond18, !dbg !376

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !376

do.end19:                                         ; preds = %do.cond18
  %3 = load i64, ptr %flags, align 8, !dbg !375
  call void @arch_local_irq_restore(i64 noundef %3) #9, !dbg !375
  br label %do.cond20, !dbg !375

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !375

do.end21:                                         ; preds = %do.cond20
  br label %do.cond22, !dbg !373

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !373

do.end23:                                         ; preds = %do.cond22
  %4 = load i32, ptr %works, align 4, !dbg !378
  call void @llvm.lifetime.end.p0(i64 4, ptr %works) #8, !dbg !379
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #8, !dbg !379
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !379
  ret i32 %4, !dbg !380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !381 dso_local void @__release_region(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pci_check_type2() #1 section ".init.text" align 16 !dbg !384 {
entry:
  %flags = alloca i64, align 8
  %works = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy16 = alloca i64, align 8
  %__dummy217 = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !386, metadata !DIExpression()), !dbg !399
  call void @llvm.lifetime.start.p0(i64 4, ptr %works) #8, !dbg !400
  call void @llvm.dbg.declare(metadata ptr %works, metadata !387, metadata !DIExpression()), !dbg !401
  store i32 0, ptr %works, align 4, !dbg !401
  br label %do.body, !dbg !402

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !403

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !404
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !388, metadata !DIExpression()), !dbg !404
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !404
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !392, metadata !DIExpression()), !dbg !404
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !404
  %conv = zext i1 %cmp to i32, !dbg !404
  store i32 1, ptr %tmp, align 4, !dbg !404
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !405
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !405
  %0 = load i32, ptr %tmp, align 4, !dbg !404
  %call = call i64 @arch_local_irq_save() #9, !dbg !405
  store i64 %call, ptr %flags, align 8, !dbg !405
  br label %do.cond, !dbg !405

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !405

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !403

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !403

do.end3:                                          ; preds = %do.cond2
  call void @__outb(i8 noundef zeroext 0, i16 noundef zeroext 3323) #9, !dbg !406
  call void @__outb(i8 noundef zeroext 0, i16 noundef zeroext 3320) #9, !dbg !407
  call void @__outb(i8 noundef zeroext 0, i16 noundef zeroext 3322) #9, !dbg !408
  %call4 = call zeroext i8 @__inb(i16 noundef zeroext 3320) #9, !dbg !409
  %conv5 = zext i8 %call4 to i32, !dbg !409
  %cmp6 = icmp eq i32 %conv5, 0, !dbg !411
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !412

land.lhs.true:                                    ; preds = %do.end3
  %call8 = call zeroext i8 @__inb(i16 noundef zeroext 3322) #9, !dbg !413
  %conv9 = zext i8 %call8 to i32, !dbg !413
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !414
  br i1 %cmp10, label %land.lhs.true12, label %if.end, !dbg !415

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call i32 @pci_sanity_check(ptr noundef @pci_direct_conf2) #10, !dbg !416
  %tobool = icmp ne i32 %call13, 0, !dbg !416
  br i1 %tobool, label %if.then, label %if.end, !dbg !417

if.then:                                          ; preds = %land.lhs.true12
  store i32 1, ptr %works, align 4, !dbg !418
  br label %if.end, !dbg !420

if.end:                                           ; preds = %if.then, %land.lhs.true12, %land.lhs.true, %do.end3
  br label %do.body14, !dbg !421

do.body14:                                        ; preds = %if.end
  br label %do.body15, !dbg !422

do.body15:                                        ; preds = %do.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy16) #8, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %__dummy16, metadata !393, metadata !DIExpression()), !dbg !423
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy217) #8, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %__dummy217, metadata !397, metadata !DIExpression()), !dbg !423
  %cmp18 = icmp eq ptr %__dummy16, %__dummy217, !dbg !423
  %conv19 = zext i1 %cmp18 to i32, !dbg !423
  store i32 1, ptr %tmp20, align 4, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy217) #8, !dbg !424
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy16) #8, !dbg !424
  %1 = load i32, ptr %tmp20, align 4, !dbg !423
  br label %do.body21, !dbg !424

do.body21:                                        ; preds = %do.body15
  br label %do.cond22, !dbg !425

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !425

do.end23:                                         ; preds = %do.cond22
  %2 = load i64, ptr %flags, align 8, !dbg !424
  call void @arch_local_irq_restore(i64 noundef %2) #9, !dbg !424
  br label %do.cond24, !dbg !424

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !424

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !422

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !422

do.end27:                                         ; preds = %do.cond26
  %3 = load i32, ptr %works, align 4, !dbg !427
  call void @llvm.lifetime.end.p0(i64 4, ptr %works) #8, !dbg !428
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !428
  ret i32 %3, !dbg !429
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !430 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outl(i32 noundef %value, i16 noundef zeroext %port) #6 align 16 !dbg !462 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i16, align 2
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !467, metadata !DIExpression()), !dbg !469
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load i32, ptr %value.addr, align 4, !dbg !469
  %1 = load i16, ptr %port.addr, align 2, !dbg !469
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i16 %1) #8, !dbg !469, !srcloc !470
  ret void, !dbg !469
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #6 align 16 !dbg !471 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !475, metadata !DIExpression()), !dbg !477
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #8, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %value, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load i16, ptr %port.addr, align 2, !dbg !477
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #8, !dbg !477, !srcloc !478
  store i8 %1, ptr %value, align 1, !dbg !477
  %2 = load i8, ptr %value, align 1, !dbg !477
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #8, !dbg !477
  ret i8 %2, !dbg !477
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @__inw(i16 noundef zeroext %port) #6 align 16 !dbg !479 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i16, align 2
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.lifetime.start.p0(i64 2, ptr %value) #8, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %value, metadata !484, metadata !DIExpression()), !dbg !485
  %0 = load i16, ptr %port.addr, align 2, !dbg !485
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #8, !dbg !485, !srcloc !486
  store i16 %1, ptr %value, align 2, !dbg !485
  %2 = load i16, ptr %value, align 2, !dbg !485
  call void @llvm.lifetime.end.p0(i64 2, ptr %value) #8, !dbg !485
  ret i16 %2, !dbg !485
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__inl(i16 noundef zeroext %port) #6 align 16 !dbg !487 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i32, align 4
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !491, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #8, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %value, metadata !492, metadata !DIExpression()), !dbg !493
  %0 = load i16, ptr %port.addr, align 2, !dbg !493
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #8, !dbg !493, !srcloc !494
  store i32 %1, ptr %value, align 4, !dbg !493
  %2 = load i32, ptr %value, align 4, !dbg !493
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #8, !dbg !493
  ret i32 %2, !dbg !493
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !495 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #6 align 16 !dbg !498 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !502, metadata !DIExpression()), !dbg !504
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load i8, ptr %value.addr, align 1, !dbg !504
  %1 = load i16, ptr %port.addr, align 2, !dbg !504
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #8, !dbg !504, !srcloc !505
  ret void, !dbg !504
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outw(i16 noundef zeroext %value, i16 noundef zeroext %port) #6 align 16 !dbg !506 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i16, align 2
  store i16 %value, ptr %value.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !510, metadata !DIExpression()), !dbg !512
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !511, metadata !DIExpression()), !dbg !512
  %0 = load i16, ptr %value.addr, align 2, !dbg !512
  %1 = load i16, ptr %port.addr, align 2, !dbg !512
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16 %1) #8, !dbg !512, !srcloc !513
  ret void, !dbg !512
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_conf2_read(i32 noundef %seg, i32 noundef %bus, i32 noundef %devfn, i32 noundef %reg, i32 noundef %len, ptr noundef %value) #0 align 16 !dbg !514 {
entry:
  %retval = alloca i32, align 4
  %seg.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %dev = alloca i32, align 4
  %fn = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp40 = alloca i32, align 4
  %__dummy65 = alloca i64, align 8
  %__dummy266 = alloca i64, align 8
  %tmp69 = alloca i32, align 4
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !516, metadata !DIExpression()), !dbg !538
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !517, metadata !DIExpression()), !dbg !539
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !518, metadata !DIExpression()), !dbg !540
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !519, metadata !DIExpression()), !dbg !541
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !520, metadata !DIExpression()), !dbg !542
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !521, metadata !DIExpression()), !dbg !543
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !522, metadata !DIExpression()), !dbg !545
  call void @llvm.lifetime.start.p0(i64 4, ptr %dev) #8, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !523, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 4, ptr %fn) #8, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %fn, metadata !524, metadata !DIExpression()), !dbg !548
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !525, metadata !DIExpression()), !dbg !549
  %0 = load i32, ptr %seg.addr, align 4, !dbg !549
  %tobool = icmp ne i32 %0, 0, !dbg !549
  %lnot = xor i1 %tobool, true, !dbg !549
  %lnot1 = xor i1 %lnot, true, !dbg !549
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !549
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !549
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !550
  %tobool2 = icmp ne i32 %1, 0, !dbg !550
  %lnot3 = xor i1 %tobool2, true, !dbg !550
  %lnot5 = xor i1 %lnot3, true, !dbg !550
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !550
  %conv = sext i32 %lnot.ext6 to i64, !dbg !550
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !550
  %tobool7 = icmp ne i64 %expval, 0, !dbg !550
  br i1 %tobool7, label %if.then, label %if.end, !dbg !549

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !550

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !527, metadata !DIExpression()), !dbg !551
  store i32 2305, ptr %__flags, align 4, !dbg !551
  br label %do.body8, !dbg !551

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !552

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !552

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !551

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !554
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 101, i32 %2, i64 12) #8, !dbg !554, !srcloc !556
  br label %do.cond10, !dbg !554

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !554

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !551

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !557

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !557

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !550
  br label %do.cond15, !dbg !551

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !551

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !551

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !549
  %tobool17 = icmp ne i32 %3, 0, !dbg !549
  %lnot18 = xor i1 %tobool17, true, !dbg !549
  %lnot20 = xor i1 %lnot18, true, !dbg !549
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !549
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !549
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !549
  store i64 %expval23, ptr %tmp, align 8, !dbg !550
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !559
  %4 = load i64, ptr %tmp, align 8, !dbg !549
  %5 = load i32, ptr %bus.addr, align 4, !dbg !560
  %cmp = icmp ugt i32 %5, 255, !dbg !562
  br i1 %cmp, label %if.then30, label %lor.lhs.false, !dbg !563

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, ptr %devfn.addr, align 4, !dbg !564
  %cmp25 = icmp ugt i32 %6, 255, !dbg !565
  br i1 %cmp25, label %if.then30, label %lor.lhs.false27, !dbg !566

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %7 = load i32, ptr %reg.addr, align 4, !dbg !567
  %cmp28 = icmp sgt i32 %7, 255, !dbg !568
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !569

if.then30:                                        ; preds = %lor.lhs.false27, %lor.lhs.false, %if.end
  %8 = load ptr, ptr %value.addr, align 8, !dbg !570
  store i32 -1, ptr %8, align 4, !dbg !572
  store i32 -22, ptr %retval, align 4, !dbg !573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !573

if.end31:                                         ; preds = %lor.lhs.false27
  %9 = load i32, ptr %devfn.addr, align 4, !dbg !574
  %shr = lshr i32 %9, 3, !dbg !574
  %and = and i32 %shr, 31, !dbg !574
  store i32 %and, ptr %dev, align 4, !dbg !575
  %10 = load i32, ptr %devfn.addr, align 4, !dbg !576
  %and32 = and i32 %10, 7, !dbg !576
  store i32 %and32, ptr %fn, align 4, !dbg !577
  %11 = load i32, ptr %dev, align 4, !dbg !578
  %and33 = and i32 %11, 16, !dbg !580
  %tobool34 = icmp ne i32 %and33, 0, !dbg !580
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !581

if.then35:                                        ; preds = %if.end31
  store i32 134, ptr %retval, align 4, !dbg !582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !582

if.end36:                                         ; preds = %if.end31
  br label %do.body37, !dbg !583

do.body37:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !530, metadata !DIExpression()), !dbg !584
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !533, metadata !DIExpression()), !dbg !584
  %cmp38 = icmp eq ptr %__dummy, %__dummy2, !dbg !584
  %conv39 = zext i1 %cmp38 to i32, !dbg !584
  store i32 1, ptr %tmp40, align 4, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !585
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !585
  %12 = load i32, ptr %tmp40, align 4, !dbg !584
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @pci_config_lock) #9, !dbg !585
  store i64 %call, ptr %flags, align 8, !dbg !585
  br label %do.cond41, !dbg !585

do.cond41:                                        ; preds = %do.body37
  br label %do.end42, !dbg !585

do.end42:                                         ; preds = %do.cond41
  %13 = load i32, ptr %fn, align 4, !dbg !586
  %shl = shl i32 %13, 1, !dbg !587
  %or = or i32 240, %shl, !dbg !588
  %conv43 = trunc i32 %or to i8, !dbg !589
  call void @__outb(i8 noundef zeroext %conv43, i16 noundef zeroext 3320) #9, !dbg !590
  %14 = load i32, ptr %bus.addr, align 4, !dbg !591
  %conv44 = trunc i32 %14 to i8, !dbg !592
  call void @__outb(i8 noundef zeroext %conv44, i16 noundef zeroext 3322) #9, !dbg !593
  %15 = load i32, ptr %len.addr, align 4, !dbg !594
  switch i32 %15, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb51
    i32 4, label %sw.bb58
  ], !dbg !595

sw.bb:                                            ; preds = %do.end42
  %16 = load i32, ptr %dev, align 4, !dbg !596
  %shl45 = shl i32 %16, 8, !dbg !596
  %or46 = or i32 49152, %shl45, !dbg !596
  %17 = load i32, ptr %reg.addr, align 4, !dbg !596
  %or47 = or i32 %or46, %17, !dbg !596
  %conv48 = trunc i32 %or47 to i16, !dbg !596
  %call49 = call zeroext i8 @__inb(i16 noundef zeroext %conv48) #9, !dbg !598
  %conv50 = zext i8 %call49 to i32, !dbg !598
  %18 = load ptr, ptr %value.addr, align 8, !dbg !599
  store i32 %conv50, ptr %18, align 4, !dbg !600
  br label %sw.epilog, !dbg !601

sw.bb51:                                          ; preds = %do.end42
  %19 = load i32, ptr %dev, align 4, !dbg !602
  %shl52 = shl i32 %19, 8, !dbg !602
  %or53 = or i32 49152, %shl52, !dbg !602
  %20 = load i32, ptr %reg.addr, align 4, !dbg !602
  %or54 = or i32 %or53, %20, !dbg !602
  %conv55 = trunc i32 %or54 to i16, !dbg !602
  %call56 = call zeroext i16 @__inw(i16 noundef zeroext %conv55) #9, !dbg !603
  %conv57 = zext i16 %call56 to i32, !dbg !603
  %21 = load ptr, ptr %value.addr, align 8, !dbg !604
  store i32 %conv57, ptr %21, align 4, !dbg !605
  br label %sw.epilog, !dbg !606

sw.bb58:                                          ; preds = %do.end42
  %22 = load i32, ptr %dev, align 4, !dbg !607
  %shl59 = shl i32 %22, 8, !dbg !607
  %or60 = or i32 49152, %shl59, !dbg !607
  %23 = load i32, ptr %reg.addr, align 4, !dbg !607
  %or61 = or i32 %or60, %23, !dbg !607
  %conv62 = trunc i32 %or61 to i16, !dbg !607
  %call63 = call i32 @__inl(i16 noundef zeroext %conv62) #9, !dbg !608
  %24 = load ptr, ptr %value.addr, align 8, !dbg !609
  store i32 %call63, ptr %24, align 4, !dbg !610
  br label %sw.epilog, !dbg !611

sw.epilog:                                        ; preds = %do.end42, %sw.bb58, %sw.bb51, %sw.bb
  call void @__outb(i8 noundef zeroext 0, i16 noundef zeroext 3320) #9, !dbg !612
  br label %do.body64, !dbg !613

do.body64:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy65) #8, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %__dummy65, metadata !534, metadata !DIExpression()), !dbg !614
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy266) #8, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %__dummy266, metadata !537, metadata !DIExpression()), !dbg !614
  %cmp67 = icmp eq ptr %__dummy65, %__dummy266, !dbg !614
  %conv68 = zext i1 %cmp67 to i32, !dbg !614
  store i32 1, ptr %tmp69, align 4, !dbg !614
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy266) #8, !dbg !615
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy65) #8, !dbg !615
  %25 = load i32, ptr %tmp69, align 4, !dbg !614
  %26 = load i64, ptr %flags, align 8, !dbg !615
  call void @_raw_spin_unlock_irqrestore(ptr noundef @pci_config_lock, i64 noundef %26) #9, !dbg !615
  br label %do.cond70, !dbg !615

do.cond70:                                        ; preds = %do.body64
  br label %do.end71, !dbg !615

do.end71:                                         ; preds = %do.cond70
  store i32 0, ptr %retval, align 4, !dbg !616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !616

cleanup:                                          ; preds = %do.end71, %if.then35, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr %fn) #8, !dbg !617
  call void @llvm.lifetime.end.p0(i64 4, ptr %dev) #8, !dbg !617
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !617
  %27 = load i32, ptr %retval, align 4, !dbg !617
  ret i32 %27, !dbg !617
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_conf2_write(i32 noundef %seg, i32 noundef %bus, i32 noundef %devfn, i32 noundef %reg, i32 noundef %len, i32 noundef %value) #0 align 16 !dbg !618 {
entry:
  %retval = alloca i32, align 4
  %seg.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %dev = alloca i32, align 4
  %fn = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp40 = alloca i32, align 4
  %__dummy62 = alloca i64, align 8
  %__dummy263 = alloca i64, align 8
  %tmp66 = alloca i32, align 4
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !620, metadata !DIExpression()), !dbg !642
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !621, metadata !DIExpression()), !dbg !643
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !622, metadata !DIExpression()), !dbg !644
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !623, metadata !DIExpression()), !dbg !645
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !624, metadata !DIExpression()), !dbg !646
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !625, metadata !DIExpression()), !dbg !647
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !648
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !626, metadata !DIExpression()), !dbg !649
  call void @llvm.lifetime.start.p0(i64 4, ptr %dev) #8, !dbg !650
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !627, metadata !DIExpression()), !dbg !651
  call void @llvm.lifetime.start.p0(i64 4, ptr %fn) #8, !dbg !650
  call void @llvm.dbg.declare(metadata ptr %fn, metadata !628, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !629, metadata !DIExpression()), !dbg !653
  %0 = load i32, ptr %seg.addr, align 4, !dbg !653
  %tobool = icmp ne i32 %0, 0, !dbg !653
  %lnot = xor i1 %tobool, true, !dbg !653
  %lnot1 = xor i1 %lnot, true, !dbg !653
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !653
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !653
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !654
  %tobool2 = icmp ne i32 %1, 0, !dbg !654
  %lnot3 = xor i1 %tobool2, true, !dbg !654
  %lnot5 = xor i1 %lnot3, true, !dbg !654
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !654
  %conv = sext i32 %lnot.ext6 to i64, !dbg !654
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !654
  %tobool7 = icmp ne i64 %expval, 0, !dbg !654
  br i1 %tobool7, label %if.then, label %if.end, !dbg !653

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !654

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !655
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !631, metadata !DIExpression()), !dbg !655
  store i32 2305, ptr %__flags, align 4, !dbg !655
  br label %do.body8, !dbg !655

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !656

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !656

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !655

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !658
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 143, i32 %2, i64 12) #8, !dbg !658, !srcloc !660
  br label %do.cond10, !dbg !658

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !658

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !655

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !661

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !661

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !654
  br label %do.cond15, !dbg !655

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !655

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !655

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !653
  %tobool17 = icmp ne i32 %3, 0, !dbg !653
  %lnot18 = xor i1 %tobool17, true, !dbg !653
  %lnot20 = xor i1 %lnot18, true, !dbg !653
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !653
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !653
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !653
  store i64 %expval23, ptr %tmp, align 8, !dbg !654
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !663
  %4 = load i64, ptr %tmp, align 8, !dbg !653
  %5 = load i32, ptr %bus.addr, align 4, !dbg !664
  %cmp = icmp ugt i32 %5, 255, !dbg !666
  br i1 %cmp, label %if.then30, label %lor.lhs.false, !dbg !667

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, ptr %devfn.addr, align 4, !dbg !668
  %cmp25 = icmp ugt i32 %6, 255, !dbg !669
  br i1 %cmp25, label %if.then30, label %lor.lhs.false27, !dbg !670

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %7 = load i32, ptr %reg.addr, align 4, !dbg !671
  %cmp28 = icmp sgt i32 %7, 255, !dbg !672
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !673

if.then30:                                        ; preds = %lor.lhs.false27, %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !674

if.end31:                                         ; preds = %lor.lhs.false27
  %8 = load i32, ptr %devfn.addr, align 4, !dbg !675
  %shr = lshr i32 %8, 3, !dbg !675
  %and = and i32 %shr, 31, !dbg !675
  store i32 %and, ptr %dev, align 4, !dbg !676
  %9 = load i32, ptr %devfn.addr, align 4, !dbg !677
  %and32 = and i32 %9, 7, !dbg !677
  store i32 %and32, ptr %fn, align 4, !dbg !678
  %10 = load i32, ptr %dev, align 4, !dbg !679
  %and33 = and i32 %10, 16, !dbg !681
  %tobool34 = icmp ne i32 %and33, 0, !dbg !681
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !682

if.then35:                                        ; preds = %if.end31
  store i32 134, ptr %retval, align 4, !dbg !683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !683

if.end36:                                         ; preds = %if.end31
  br label %do.body37, !dbg !684

do.body37:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !685
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !634, metadata !DIExpression()), !dbg !685
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !685
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !637, metadata !DIExpression()), !dbg !685
  %cmp38 = icmp eq ptr %__dummy, %__dummy2, !dbg !685
  %conv39 = zext i1 %cmp38 to i32, !dbg !685
  store i32 1, ptr %tmp40, align 4, !dbg !685
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !686
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !686
  %11 = load i32, ptr %tmp40, align 4, !dbg !685
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @pci_config_lock) #9, !dbg !686
  store i64 %call, ptr %flags, align 8, !dbg !686
  br label %do.cond41, !dbg !686

do.cond41:                                        ; preds = %do.body37
  br label %do.end42, !dbg !686

do.end42:                                         ; preds = %do.cond41
  %12 = load i32, ptr %fn, align 4, !dbg !687
  %shl = shl i32 %12, 1, !dbg !688
  %or = or i32 240, %shl, !dbg !689
  %conv43 = trunc i32 %or to i8, !dbg !690
  call void @__outb(i8 noundef zeroext %conv43, i16 noundef zeroext 3320) #9, !dbg !691
  %13 = load i32, ptr %bus.addr, align 4, !dbg !692
  %conv44 = trunc i32 %13 to i8, !dbg !693
  call void @__outb(i8 noundef zeroext %conv44, i16 noundef zeroext 3322) #9, !dbg !694
  %14 = load i32, ptr %len.addr, align 4, !dbg !695
  switch i32 %14, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb50
    i32 4, label %sw.bb56
  ], !dbg !696

sw.bb:                                            ; preds = %do.end42
  %15 = load i32, ptr %value.addr, align 4, !dbg !697
  %conv45 = trunc i32 %15 to i8, !dbg !699
  %16 = load i32, ptr %dev, align 4, !dbg !700
  %shl46 = shl i32 %16, 8, !dbg !700
  %or47 = or i32 49152, %shl46, !dbg !700
  %17 = load i32, ptr %reg.addr, align 4, !dbg !700
  %or48 = or i32 %or47, %17, !dbg !700
  %conv49 = trunc i32 %or48 to i16, !dbg !700
  call void @__outb(i8 noundef zeroext %conv45, i16 noundef zeroext %conv49) #9, !dbg !701
  br label %sw.epilog, !dbg !702

sw.bb50:                                          ; preds = %do.end42
  %18 = load i32, ptr %value.addr, align 4, !dbg !703
  %conv51 = trunc i32 %18 to i16, !dbg !704
  %19 = load i32, ptr %dev, align 4, !dbg !705
  %shl52 = shl i32 %19, 8, !dbg !705
  %or53 = or i32 49152, %shl52, !dbg !705
  %20 = load i32, ptr %reg.addr, align 4, !dbg !705
  %or54 = or i32 %or53, %20, !dbg !705
  %conv55 = trunc i32 %or54 to i16, !dbg !705
  call void @__outw(i16 noundef zeroext %conv51, i16 noundef zeroext %conv55) #9, !dbg !706
  br label %sw.epilog, !dbg !707

sw.bb56:                                          ; preds = %do.end42
  %21 = load i32, ptr %value.addr, align 4, !dbg !708
  %22 = load i32, ptr %dev, align 4, !dbg !709
  %shl57 = shl i32 %22, 8, !dbg !709
  %or58 = or i32 49152, %shl57, !dbg !709
  %23 = load i32, ptr %reg.addr, align 4, !dbg !709
  %or59 = or i32 %or58, %23, !dbg !709
  %conv60 = trunc i32 %or59 to i16, !dbg !709
  call void @__outl(i32 noundef %21, i16 noundef zeroext %conv60) #9, !dbg !710
  br label %sw.epilog, !dbg !711

sw.epilog:                                        ; preds = %do.end42, %sw.bb56, %sw.bb50, %sw.bb
  call void @__outb(i8 noundef zeroext 0, i16 noundef zeroext 3320) #9, !dbg !712
  br label %do.body61, !dbg !713

do.body61:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy62) #8, !dbg !714
  call void @llvm.dbg.declare(metadata ptr %__dummy62, metadata !638, metadata !DIExpression()), !dbg !714
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy263) #8, !dbg !714
  call void @llvm.dbg.declare(metadata ptr %__dummy263, metadata !641, metadata !DIExpression()), !dbg !714
  %cmp64 = icmp eq ptr %__dummy62, %__dummy263, !dbg !714
  %conv65 = zext i1 %cmp64 to i32, !dbg !714
  store i32 1, ptr %tmp66, align 4, !dbg !714
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy263) #8, !dbg !715
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy62) #8, !dbg !715
  %24 = load i32, ptr %tmp66, align 4, !dbg !714
  %25 = load i64, ptr %flags, align 8, !dbg !715
  call void @_raw_spin_unlock_irqrestore(ptr noundef @pci_config_lock, i64 noundef %25) #9, !dbg !715
  br label %do.cond67, !dbg !715

do.cond67:                                        ; preds = %do.body61
  br label %do.end68, !dbg !715

do.end68:                                         ; preds = %do.cond67
  store i32 0, ptr %retval, align 4, !dbg !716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !716

cleanup:                                          ; preds = %do.end68, %if.then35, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr %fn) #8, !dbg !717
  call void @llvm.lifetime.end.p0(i64 4, ptr %dev) #8, !dbg !717
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !717
  %26 = load i32, ptr %retval, align 4, !dbg !717
  ret i32 %26, !dbg !717
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #6 align 16 !dbg !718 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !724
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !723, metadata !DIExpression()), !dbg !725
  %call = call i64 @arch_local_save_flags() #9, !dbg !726
  store i64 %call, ptr %flags, align 8, !dbg !725
  call void @arch_local_irq_disable() #9, !dbg !727
  %0 = load i64, ptr %flags, align 8, !dbg !728
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !729
  ret i64 %0, !dbg !730
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pci_sanity_check(ptr noundef %o) #1 section ".init.text" align 16 !dbg !731 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %devfn = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %o, ptr %o.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !736, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #8, !dbg !740
  call void @llvm.dbg.declare(metadata ptr %x, metadata !737, metadata !DIExpression()), !dbg !741
  store i32 0, ptr %x, align 4, !dbg !741
  call void @llvm.lifetime.start.p0(i64 4, ptr %devfn) #8, !dbg !742
  call void @llvm.dbg.declare(metadata ptr %devfn, metadata !738, metadata !DIExpression()), !dbg !743
  %0 = load i32, ptr @pci_probe, align 4, !dbg !744
  %and = and i32 %0, 1024, !dbg !746
  %tobool = icmp ne i32 %and, 0, !dbg !746
  br i1 %tobool, label %if.then, label %if.end, !dbg !747

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !748

if.end:                                           ; preds = %entry
  %call = call i32 @dmi_get_bios_year() #9, !dbg !749
  %cmp = icmp sge i32 %call, 2001, !dbg !751
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !752

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !753

if.end2:                                          ; preds = %if.end
  store i32 0, ptr %devfn, align 4, !dbg !754
  br label %for.cond, !dbg !756

for.cond:                                         ; preds = %for.inc, %if.end2
  %1 = load i32, ptr %devfn, align 4, !dbg !757
  %cmp3 = icmp slt i32 %1, 256, !dbg !759
  br i1 %cmp3, label %for.body, label %for.end, !dbg !760

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %o.addr, align 8, !dbg !761
  %read = getelementptr inbounds %struct.pci_raw_ops, ptr %2, i32 0, i32 0, !dbg !764
  %3 = load ptr, ptr %read, align 8, !dbg !764
  %4 = load i32, ptr %devfn, align 4, !dbg !765
  %call4 = call i32 %3(i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef 10, i32 noundef 2, ptr noundef %x) #9, !dbg !761
  %tobool5 = icmp ne i32 %call4, 0, !dbg !761
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !766

if.then6:                                         ; preds = %for.body
  br label %for.inc, !dbg !767

if.end7:                                          ; preds = %for.body
  %5 = load i32, ptr %x, align 4, !dbg !768
  %cmp8 = icmp eq i32 %5, 1536, !dbg !770
  br i1 %cmp8, label %if.then10, label %lor.lhs.false, !dbg !771

lor.lhs.false:                                    ; preds = %if.end7
  %6 = load i32, ptr %x, align 4, !dbg !772
  %cmp9 = icmp eq i32 %6, 768, !dbg !773
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !774

if.then10:                                        ; preds = %lor.lhs.false, %if.end7
  store i32 1, ptr %retval, align 4, !dbg !775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !775

if.end11:                                         ; preds = %lor.lhs.false
  %7 = load ptr, ptr %o.addr, align 8, !dbg !776
  %read12 = getelementptr inbounds %struct.pci_raw_ops, ptr %7, i32 0, i32 0, !dbg !778
  %8 = load ptr, ptr %read12, align 8, !dbg !778
  %9 = load i32, ptr %devfn, align 4, !dbg !779
  %call13 = call i32 %8(i32 noundef 0, i32 noundef 0, i32 noundef %9, i32 noundef 0, i32 noundef 2, ptr noundef %x) #9, !dbg !776
  %tobool14 = icmp ne i32 %call13, 0, !dbg !776
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !780

if.then15:                                        ; preds = %if.end11
  br label %for.inc, !dbg !781

if.end16:                                         ; preds = %if.end11
  %10 = load i32, ptr %x, align 4, !dbg !782
  %cmp17 = icmp eq i32 %10, 32902, !dbg !784
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !785

lor.lhs.false18:                                  ; preds = %if.end16
  %11 = load i32, ptr %x, align 4, !dbg !786
  %cmp19 = icmp eq i32 %11, 3601, !dbg !787
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !788

if.then20:                                        ; preds = %lor.lhs.false18, %if.end16
  store i32 1, ptr %retval, align 4, !dbg !789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !789

if.end21:                                         ; preds = %lor.lhs.false18
  br label %for.inc, !dbg !790

for.inc:                                          ; preds = %if.end21, %if.then15, %if.then6
  %12 = load i32, ptr %devfn, align 4, !dbg !791
  %inc = add i32 %12, 1, !dbg !791
  store i32 %inc, ptr %devfn, align 4, !dbg !791
  br label %for.cond, !dbg !792, !llvm.loop !793

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !797

do.body:                                          ; preds = %for.end
  br label %do.cond, !dbg !798

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !798

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !800

cleanup:                                          ; preds = %do.end, %if.then20, %if.then10, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %devfn) #8, !dbg !801
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #8, !dbg !801
  %13 = load i32, ptr %retval, align 4, !dbg !801
  ret i32 %13, !dbg !801
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #6 align 16 !dbg !802 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !806, metadata !DIExpression()), !dbg !807
  %0 = load i64, ptr %flags.addr, align 8, !dbg !808
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #9, !dbg !810
  %tobool = icmp ne i32 %call, 0, !dbg !810
  br i1 %tobool, label %if.end, label %if.then, !dbg !811

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #9, !dbg !812
  br label %if.end, !dbg !812

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !813
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !814 {
entry:
  %call = call i64 @native_save_fl() #9, !dbg !815
  ret i64 %call, !dbg !816
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #6 align 16 !dbg !817 {
entry:
  call void @native_irq_disable() #9, !dbg !820
  ret void, !dbg !821
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !822 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !825
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !824, metadata !DIExpression()), !dbg !826
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #8, !dbg !827, !srcloc !828
  %0 = load i64, ptr %flags, align 8, !dbg !829
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !830
  ret i64 %0, !dbg !831
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #6 align 16 !dbg !832 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !833, !srcloc !834
  ret void, !dbg !835
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !836 dso_local i32 @dmi_get_bios_year() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !838 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !842, metadata !DIExpression()), !dbg !843
  %0 = load i64, ptr %flags.addr, align 8, !dbg !844
  %and = and i64 %0, 512, !dbg !845
  %tobool = icmp ne i64 %and, 0, !dbg !846
  %lnot = xor i1 %tobool, true, !dbg !846
  %lnot.ext = zext i1 %lnot to i32, !dbg !846
  ret i32 %lnot.ext, !dbg !847
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #6 align 16 !dbg !848 {
entry:
  call void @native_irq_enable() #9, !dbg !849
  ret void, !dbg !850
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #6 align 16 !dbg !851 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !852, !srcloc !853
  ret void, !dbg !854
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_direct_conf1", scope: !2, file: !3, line: 83, type: !43, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/pci/.direct.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/pci/direct\22 -D KBUILD_BASENAME=\22direct\22 -D KBUILD_MODNAME=\22direct\22 -D __KBUILD_MODNAME=kmod_direct -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/pci/direct.ll arch/x86/pci/direct.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/pci/direct.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5dcabe9c574cf62b4e528fc4d5edd33")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !17, !20}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !13, line: 17, baseType: !14)
!13 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !13, line: 19, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !15, line: 24, baseType: !19)
!19 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !13, line: 21, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !15, line: 27, baseType: !7)
!22 = !{!0, !23, !29, !34, !39, !41, !57}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 416, elements: !27)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !{!28}
!28 = !DISubrange(count: 52)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 440, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 55)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 80, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 10)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 300, type: !36, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "pci_direct_conf2", scope: !2, file: !3, line: 179, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_raw_ops", file: !45, line: 118, size: 128, elements: !46)
!45 = !DIFile(filename: "./arch/x86/include/asm/pci_x86.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c32a69340c2514dde4670e44e5a823b3")
!46 = !{!47, !53}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !44, file: !45, line: 119, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !7, !7, !7, !51, !51, !52}
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !44, file: !45, line: 121, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!51, !7, !7, !7, !51, !51, !20}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 176, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 22)
!62 = !{i32 7, !"Dwarf Version", i32 5}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 8, !"cf-protection-branch", i32 1}
!66 = !{i32 4, !"function_return_thunk_extern", i32 1}
!67 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!68 = !{i32 1, !"Code Model", i32 2}
!69 = !{i32 1, !"override-stack-alignment", i32 8}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = distinct !DISubprogram(name: "pci_conf1_read", scope: !3, file: !3, line: 21, type: !49, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !81, !84, !85, !88}
!73 = !DILocalVariable(name: "seg", arg: 1, scope: !71, file: !3, line: 21, type: !7)
!74 = !DILocalVariable(name: "bus", arg: 2, scope: !71, file: !3, line: 21, type: !7)
!75 = !DILocalVariable(name: "devfn", arg: 3, scope: !71, file: !3, line: 22, type: !7)
!76 = !DILocalVariable(name: "reg", arg: 4, scope: !71, file: !3, line: 22, type: !51)
!77 = !DILocalVariable(name: "len", arg: 5, scope: !71, file: !3, line: 22, type: !51)
!78 = !DILocalVariable(name: "value", arg: 6, scope: !71, file: !3, line: 22, type: !52)
!79 = !DILocalVariable(name: "flags", scope: !71, file: !3, line: 24, type: !80)
!80 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!81 = !DILocalVariable(name: "__dummy", scope: !82, file: !3, line: 31, type: !80)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 31, column: 2)
!83 = distinct !DILexicalBlock(scope: !71, file: !3, line: 31, column: 2)
!84 = !DILocalVariable(name: "__dummy2", scope: !82, file: !3, line: 31, type: !80)
!85 = !DILocalVariable(name: "__dummy", scope: !86, file: !3, line: 47, type: !80)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 47, column: 2)
!87 = distinct !DILexicalBlock(scope: !71, file: !3, line: 47, column: 2)
!88 = !DILocalVariable(name: "__dummy2", scope: !86, file: !3, line: 47, type: !80)
!89 = !DILocation(line: 21, column: 40, scope: !71)
!90 = !DILocation(line: 21, column: 58, scope: !71)
!91 = !DILocation(line: 22, column: 19, scope: !71)
!92 = !DILocation(line: 22, column: 30, scope: !71)
!93 = !DILocation(line: 22, column: 39, scope: !71)
!94 = !DILocation(line: 22, column: 49, scope: !71)
!95 = !DILocation(line: 24, column: 2, scope: !71)
!96 = !DILocation(line: 24, column: 16, scope: !71)
!97 = !DILocation(line: 26, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !71, file: !3, line: 26, column: 6)
!99 = !DILocation(line: 26, column: 10, scope: !98)
!100 = !DILocation(line: 26, column: 14, scope: !98)
!101 = !DILocation(line: 26, column: 18, scope: !98)
!102 = !DILocation(line: 26, column: 25, scope: !98)
!103 = !DILocation(line: 26, column: 29, scope: !98)
!104 = !DILocation(line: 26, column: 35, scope: !98)
!105 = !DILocation(line: 26, column: 42, scope: !98)
!106 = !DILocation(line: 26, column: 46, scope: !98)
!107 = !DILocation(line: 26, column: 50, scope: !98)
!108 = !DILocation(line: 26, column: 6, scope: !71)
!109 = !DILocation(line: 27, column: 4, scope: !110)
!110 = distinct !DILexicalBlock(scope: !98, file: !3, line: 26, column: 59)
!111 = !DILocation(line: 27, column: 10, scope: !110)
!112 = !DILocation(line: 28, column: 3, scope: !110)
!113 = !DILocation(line: 31, column: 2, scope: !71)
!114 = !DILocation(line: 31, column: 2, scope: !82)
!115 = !DILocation(line: 31, column: 2, scope: !83)
!116 = !DILocation(line: 33, column: 7, scope: !71)
!117 = !DILocation(line: 33, column: 2, scope: !71)
!118 = !DILocation(line: 35, column: 10, scope: !71)
!119 = !DILocation(line: 35, column: 2, scope: !71)
!120 = !DILocation(line: 37, column: 25, scope: !121)
!121 = distinct !DILexicalBlock(scope: !71, file: !3, line: 35, column: 15)
!122 = !DILocation(line: 37, column: 29, scope: !121)
!123 = !DILocation(line: 37, column: 22, scope: !121)
!124 = !DILocation(line: 37, column: 16, scope: !121)
!125 = !DILocation(line: 37, column: 12, scope: !121)
!126 = !DILocation(line: 37, column: 4, scope: !121)
!127 = !DILocation(line: 37, column: 10, scope: !121)
!128 = !DILocation(line: 38, column: 3, scope: !121)
!129 = !DILocation(line: 40, column: 25, scope: !121)
!130 = !DILocation(line: 40, column: 29, scope: !121)
!131 = !DILocation(line: 40, column: 22, scope: !121)
!132 = !DILocation(line: 40, column: 16, scope: !121)
!133 = !DILocation(line: 40, column: 12, scope: !121)
!134 = !DILocation(line: 40, column: 4, scope: !121)
!135 = !DILocation(line: 40, column: 10, scope: !121)
!136 = !DILocation(line: 41, column: 3, scope: !121)
!137 = !DILocation(line: 43, column: 12, scope: !121)
!138 = !DILocation(line: 43, column: 4, scope: !121)
!139 = !DILocation(line: 43, column: 10, scope: !121)
!140 = !DILocation(line: 44, column: 3, scope: !121)
!141 = !DILocation(line: 47, column: 2, scope: !71)
!142 = !DILocation(line: 47, column: 2, scope: !86)
!143 = !DILocation(line: 47, column: 2, scope: !87)
!144 = !DILocation(line: 49, column: 2, scope: !71)
!145 = !DILocation(line: 50, column: 1, scope: !71)
!146 = distinct !DISubprogram(name: "pci_conf1_write", scope: !3, file: !3, line: 52, type: !55, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !158, !159, !162}
!148 = !DILocalVariable(name: "seg", arg: 1, scope: !146, file: !3, line: 52, type: !7)
!149 = !DILocalVariable(name: "bus", arg: 2, scope: !146, file: !3, line: 52, type: !7)
!150 = !DILocalVariable(name: "devfn", arg: 3, scope: !146, file: !3, line: 53, type: !7)
!151 = !DILocalVariable(name: "reg", arg: 4, scope: !146, file: !3, line: 53, type: !51)
!152 = !DILocalVariable(name: "len", arg: 5, scope: !146, file: !3, line: 53, type: !51)
!153 = !DILocalVariable(name: "value", arg: 6, scope: !146, file: !3, line: 53, type: !20)
!154 = !DILocalVariable(name: "flags", scope: !146, file: !3, line: 55, type: !80)
!155 = !DILocalVariable(name: "__dummy", scope: !156, file: !3, line: 60, type: !80)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 60, column: 2)
!157 = distinct !DILexicalBlock(scope: !146, file: !3, line: 60, column: 2)
!158 = !DILocalVariable(name: "__dummy2", scope: !156, file: !3, line: 60, type: !80)
!159 = !DILocalVariable(name: "__dummy", scope: !160, file: !3, line: 76, type: !80)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 76, column: 2)
!161 = distinct !DILexicalBlock(scope: !146, file: !3, line: 76, column: 2)
!162 = !DILocalVariable(name: "__dummy2", scope: !160, file: !3, line: 76, type: !80)
!163 = !DILocation(line: 52, column: 41, scope: !146)
!164 = !DILocation(line: 52, column: 59, scope: !146)
!165 = !DILocation(line: 53, column: 20, scope: !146)
!166 = !DILocation(line: 53, column: 31, scope: !146)
!167 = !DILocation(line: 53, column: 40, scope: !146)
!168 = !DILocation(line: 53, column: 49, scope: !146)
!169 = !DILocation(line: 55, column: 2, scope: !146)
!170 = !DILocation(line: 55, column: 16, scope: !146)
!171 = !DILocation(line: 57, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !146, file: !3, line: 57, column: 6)
!173 = !DILocation(line: 57, column: 10, scope: !172)
!174 = !DILocation(line: 57, column: 14, scope: !172)
!175 = !DILocation(line: 57, column: 18, scope: !172)
!176 = !DILocation(line: 57, column: 25, scope: !172)
!177 = !DILocation(line: 57, column: 29, scope: !172)
!178 = !DILocation(line: 57, column: 35, scope: !172)
!179 = !DILocation(line: 57, column: 42, scope: !172)
!180 = !DILocation(line: 57, column: 46, scope: !172)
!181 = !DILocation(line: 57, column: 50, scope: !172)
!182 = !DILocation(line: 57, column: 6, scope: !146)
!183 = !DILocation(line: 58, column: 3, scope: !172)
!184 = !DILocation(line: 60, column: 2, scope: !146)
!185 = !DILocation(line: 60, column: 2, scope: !156)
!186 = !DILocation(line: 60, column: 2, scope: !157)
!187 = !DILocation(line: 62, column: 7, scope: !146)
!188 = !DILocation(line: 62, column: 2, scope: !146)
!189 = !DILocation(line: 64, column: 10, scope: !146)
!190 = !DILocation(line: 64, column: 2, scope: !146)
!191 = !DILocation(line: 66, column: 12, scope: !192)
!192 = distinct !DILexicalBlock(scope: !146, file: !3, line: 64, column: 15)
!193 = !DILocation(line: 66, column: 8, scope: !192)
!194 = !DILocation(line: 66, column: 28, scope: !192)
!195 = !DILocation(line: 66, column: 32, scope: !192)
!196 = !DILocation(line: 66, column: 25, scope: !192)
!197 = !DILocation(line: 66, column: 19, scope: !192)
!198 = !DILocation(line: 66, column: 3, scope: !192)
!199 = !DILocation(line: 67, column: 3, scope: !192)
!200 = !DILocation(line: 69, column: 13, scope: !192)
!201 = !DILocation(line: 69, column: 8, scope: !192)
!202 = !DILocation(line: 69, column: 29, scope: !192)
!203 = !DILocation(line: 69, column: 33, scope: !192)
!204 = !DILocation(line: 69, column: 26, scope: !192)
!205 = !DILocation(line: 69, column: 20, scope: !192)
!206 = !DILocation(line: 69, column: 3, scope: !192)
!207 = !DILocation(line: 70, column: 3, scope: !192)
!208 = !DILocation(line: 72, column: 13, scope: !192)
!209 = !DILocation(line: 72, column: 3, scope: !192)
!210 = !DILocation(line: 73, column: 3, scope: !192)
!211 = !DILocation(line: 76, column: 2, scope: !146)
!212 = !DILocation(line: 76, column: 2, scope: !160)
!213 = !DILocation(line: 76, column: 2, scope: !161)
!214 = !DILocation(line: 78, column: 2, scope: !146)
!215 = !DILocation(line: 79, column: 1, scope: !146)
!216 = distinct !DISubprogram(name: "pci_direct_init", scope: !3, file: !3, line: 263, type: !217, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !51}
!219 = !{!220}
!220 = !DILocalVariable(name: "type", arg: 1, scope: !216, file: !3, line: 263, type: !51)
!221 = !DILocation(line: 263, column: 33, scope: !216)
!222 = !DILocation(line: 265, column: 6, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !3, line: 265, column: 6)
!224 = !DILocation(line: 265, column: 11, scope: !223)
!225 = !DILocation(line: 265, column: 6, scope: !216)
!226 = !DILocation(line: 266, column: 3, scope: !223)
!227 = !DILocation(line: 267, column: 2, scope: !228)
!228 = distinct !DILexicalBlock(scope: !216, file: !3, line: 267, column: 2)
!229 = !DILocation(line: 267, column: 2, scope: !230)
!230 = distinct !DILexicalBlock(scope: !228, file: !3, line: 267, column: 2)
!231 = !DILocation(line: 269, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !216, file: !3, line: 269, column: 6)
!233 = !DILocation(line: 269, column: 11, scope: !232)
!234 = !DILocation(line: 269, column: 6, scope: !216)
!235 = !DILocation(line: 270, column: 15, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 269, column: 17)
!237 = !DILocation(line: 271, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !3, line: 271, column: 7)
!239 = !DILocation(line: 271, column: 7, scope: !236)
!240 = !DILocation(line: 272, column: 4, scope: !238)
!241 = !DILocation(line: 273, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !236, file: !3, line: 273, column: 7)
!243 = !DILocation(line: 273, column: 19, scope: !242)
!244 = !DILocation(line: 273, column: 7, scope: !236)
!245 = !DILocation(line: 274, column: 4, scope: !242)
!246 = !DILocation(line: 275, column: 3, scope: !247)
!247 = distinct !DILexicalBlock(scope: !236, file: !3, line: 275, column: 3)
!248 = !DILocation(line: 275, column: 3, scope: !249)
!249 = distinct !DILexicalBlock(scope: !247, file: !3, line: 275, column: 3)
!250 = !DILocation(line: 277, column: 19, scope: !236)
!251 = !DILocation(line: 278, column: 3, scope: !236)
!252 = !DILocation(line: 280, column: 14, scope: !216)
!253 = !DILocation(line: 281, column: 1, scope: !216)
!254 = !DISubprogram(name: "_printk", scope: !255, file: !255, line: 153, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!256 = !DISubroutineType(types: !257)
!257 = !{!51, !258, null}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!260 = distinct !DISubprogram(name: "pci_direct_probe", scope: !3, file: !3, line: 283, type: !261, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!51}
!263 = !{!264, !265}
!264 = !DILabel(scope: !260, name: "type2", file: !3, line: 297)
!265 = !DILabel(scope: !260, name: "fail2", file: !3, line: 312)
!266 = !DILocation(line: 285, column: 7, scope: !267)
!267 = distinct !DILexicalBlock(scope: !260, file: !3, line: 285, column: 6)
!268 = !DILocation(line: 285, column: 17, scope: !267)
!269 = !DILocation(line: 285, column: 36, scope: !267)
!270 = !DILocation(line: 285, column: 6, scope: !260)
!271 = !DILocation(line: 286, column: 3, scope: !267)
!272 = !DILocation(line: 287, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !260, file: !3, line: 287, column: 6)
!274 = !DILocation(line: 287, column: 6, scope: !260)
!275 = !DILocation(line: 288, column: 3, scope: !273)
!276 = !DILocation(line: 290, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !260, file: !3, line: 290, column: 6)
!278 = !DILocation(line: 290, column: 6, scope: !260)
!279 = !DILocation(line: 291, column: 15, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !3, line: 290, column: 25)
!281 = !DILocation(line: 292, column: 17, scope: !280)
!282 = !DILocation(line: 293, column: 3, scope: !280)
!283 = !DILocation(line: 295, column: 2, scope: !260)
!284 = !DILocation(line: 297, column: 2, scope: !260)
!285 = !DILocation(line: 298, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !260, file: !3, line: 298, column: 6)
!287 = !DILocation(line: 298, column: 17, scope: !286)
!288 = !DILocation(line: 298, column: 36, scope: !286)
!289 = !DILocation(line: 298, column: 6, scope: !260)
!290 = !DILocation(line: 299, column: 3, scope: !286)
!291 = !DILocation(line: 300, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !260, file: !3, line: 300, column: 6)
!293 = !DILocation(line: 300, column: 6, scope: !260)
!294 = !DILocation(line: 301, column: 3, scope: !292)
!295 = !DILocation(line: 302, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !260, file: !3, line: 302, column: 6)
!297 = !DILocation(line: 302, column: 6, scope: !260)
!298 = !DILocation(line: 303, column: 3, scope: !296)
!299 = !DILocation(line: 305, column: 6, scope: !300)
!300 = distinct !DILexicalBlock(scope: !260, file: !3, line: 305, column: 6)
!301 = !DILocation(line: 305, column: 6, scope: !260)
!302 = !DILocation(line: 306, column: 15, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 305, column: 25)
!304 = !DILocation(line: 307, column: 17, scope: !303)
!305 = !DILocation(line: 308, column: 3, scope: !303)
!306 = !DILocation(line: 311, column: 2, scope: !260)
!307 = !DILocation(line: 312, column: 2, scope: !260)
!308 = !DILocation(line: 313, column: 2, scope: !260)
!309 = !DILocation(line: 314, column: 2, scope: !260)
!310 = !DILocation(line: 315, column: 1, scope: !260)
!311 = !DISubprogram(name: "__request_region", scope: !312, file: !312, line: 278, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !315, !319, !319, !258, !51}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !312, line: 21, size: 512, elements: !317)
!317 = !{!318, !325, !326, !327, !328, !329, !330, !331}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !316, file: !312, line: 22, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !320, line: 164, baseType: !321)
!320 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !320, line: 159, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !13, line: 23, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !15, line: 31, baseType: !324)
!324 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !316, file: !312, line: 23, baseType: !319, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !312, line: 24, baseType: !258, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !312, line: 25, baseType: !80, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !316, file: !312, line: 26, baseType: !80, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !316, file: !312, line: 27, baseType: !315, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !316, file: !312, line: 27, baseType: !315, size: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !316, file: !312, line: 27, baseType: !315, size: 64, offset: 448)
!332 = distinct !DISubprogram(name: "pci_check_type1", scope: !3, file: !3, line: 223, type: !261, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!333 = !{!334, !335, !336, !337, !341, !342, !346}
!334 = !DILocalVariable(name: "flags", scope: !332, file: !3, line: 225, type: !80)
!335 = !DILocalVariable(name: "tmp", scope: !332, file: !3, line: 226, type: !7)
!336 = !DILocalVariable(name: "works", scope: !332, file: !3, line: 227, type: !51)
!337 = !DILocalVariable(name: "__dummy", scope: !338, file: !3, line: 229, type: !80)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 229, column: 2)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 229, column: 2)
!340 = distinct !DILexicalBlock(scope: !332, file: !3, line: 229, column: 2)
!341 = !DILocalVariable(name: "__dummy2", scope: !338, file: !3, line: 229, type: !80)
!342 = !DILocalVariable(name: "__dummy", scope: !343, file: !3, line: 238, type: !80)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 238, column: 2)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 238, column: 2)
!345 = distinct !DILexicalBlock(scope: !332, file: !3, line: 238, column: 2)
!346 = !DILocalVariable(name: "__dummy2", scope: !343, file: !3, line: 238, type: !80)
!347 = !DILocation(line: 225, column: 2, scope: !332)
!348 = !DILocation(line: 225, column: 16, scope: !332)
!349 = !DILocation(line: 226, column: 2, scope: !332)
!350 = !DILocation(line: 226, column: 15, scope: !332)
!351 = !DILocation(line: 227, column: 2, scope: !332)
!352 = !DILocation(line: 227, column: 6, scope: !332)
!353 = !DILocation(line: 229, column: 2, scope: !332)
!354 = !DILocation(line: 229, column: 2, scope: !340)
!355 = !DILocation(line: 229, column: 2, scope: !338)
!356 = !DILocation(line: 229, column: 2, scope: !339)
!357 = !DILocation(line: 231, column: 2, scope: !332)
!358 = !DILocation(line: 232, column: 8, scope: !332)
!359 = !DILocation(line: 232, column: 6, scope: !332)
!360 = !DILocation(line: 233, column: 2, scope: !332)
!361 = !DILocation(line: 234, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !332, file: !3, line: 234, column: 6)
!363 = !DILocation(line: 234, column: 17, scope: !362)
!364 = !DILocation(line: 234, column: 31, scope: !362)
!365 = !DILocation(line: 234, column: 34, scope: !362)
!366 = !DILocation(line: 234, column: 6, scope: !332)
!367 = !DILocation(line: 235, column: 9, scope: !368)
!368 = distinct !DILexicalBlock(scope: !362, file: !3, line: 234, column: 71)
!369 = !DILocation(line: 236, column: 2, scope: !368)
!370 = !DILocation(line: 237, column: 7, scope: !332)
!371 = !DILocation(line: 237, column: 2, scope: !332)
!372 = !DILocation(line: 238, column: 2, scope: !332)
!373 = !DILocation(line: 238, column: 2, scope: !345)
!374 = !DILocation(line: 238, column: 2, scope: !343)
!375 = !DILocation(line: 238, column: 2, scope: !344)
!376 = !DILocation(line: 238, column: 2, scope: !377)
!377 = distinct !DILexicalBlock(scope: !344, file: !3, line: 238, column: 2)
!378 = !DILocation(line: 240, column: 9, scope: !332)
!379 = !DILocation(line: 241, column: 1, scope: !332)
!380 = !DILocation(line: 240, column: 2, scope: !332)
!381 = !DISubprogram(name: "__release_region", scope: !312, file: !312, line: 287, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !315, !319, !319}
!384 = distinct !DISubprogram(name: "pci_check_type2", scope: !3, file: !3, line: 243, type: !261, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!385 = !{!386, !387, !388, !392, !393, !397}
!386 = !DILocalVariable(name: "flags", scope: !384, file: !3, line: 245, type: !80)
!387 = !DILocalVariable(name: "works", scope: !384, file: !3, line: 246, type: !51)
!388 = !DILocalVariable(name: "__dummy", scope: !389, file: !3, line: 248, type: !80)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 248, column: 2)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 248, column: 2)
!391 = distinct !DILexicalBlock(scope: !384, file: !3, line: 248, column: 2)
!392 = !DILocalVariable(name: "__dummy2", scope: !389, file: !3, line: 248, type: !80)
!393 = !DILocalVariable(name: "__dummy", scope: !394, file: !3, line: 258, type: !80)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 258, column: 2)
!395 = distinct !DILexicalBlock(scope: !396, file: !3, line: 258, column: 2)
!396 = distinct !DILexicalBlock(scope: !384, file: !3, line: 258, column: 2)
!397 = !DILocalVariable(name: "__dummy2", scope: !394, file: !3, line: 258, type: !80)
!398 = !DILocation(line: 245, column: 2, scope: !384)
!399 = !DILocation(line: 245, column: 16, scope: !384)
!400 = !DILocation(line: 246, column: 2, scope: !384)
!401 = !DILocation(line: 246, column: 6, scope: !384)
!402 = !DILocation(line: 248, column: 2, scope: !384)
!403 = !DILocation(line: 248, column: 2, scope: !391)
!404 = !DILocation(line: 248, column: 2, scope: !389)
!405 = !DILocation(line: 248, column: 2, scope: !390)
!406 = !DILocation(line: 250, column: 2, scope: !384)
!407 = !DILocation(line: 251, column: 2, scope: !384)
!408 = !DILocation(line: 252, column: 2, scope: !384)
!409 = !DILocation(line: 253, column: 6, scope: !410)
!410 = distinct !DILexicalBlock(scope: !384, file: !3, line: 253, column: 6)
!411 = !DILocation(line: 253, column: 17, scope: !410)
!412 = !DILocation(line: 253, column: 25, scope: !410)
!413 = !DILocation(line: 253, column: 28, scope: !410)
!414 = !DILocation(line: 253, column: 39, scope: !410)
!415 = !DILocation(line: 253, column: 47, scope: !410)
!416 = !DILocation(line: 254, column: 6, scope: !410)
!417 = !DILocation(line: 253, column: 6, scope: !384)
!418 = !DILocation(line: 255, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !410, file: !3, line: 254, column: 43)
!420 = !DILocation(line: 256, column: 2, scope: !419)
!421 = !DILocation(line: 258, column: 2, scope: !384)
!422 = !DILocation(line: 258, column: 2, scope: !396)
!423 = !DILocation(line: 258, column: 2, scope: !394)
!424 = !DILocation(line: 258, column: 2, scope: !395)
!425 = !DILocation(line: 258, column: 2, scope: !426)
!426 = distinct !DILexicalBlock(scope: !395, file: !3, line: 258, column: 2)
!427 = !DILocation(line: 260, column: 9, scope: !384)
!428 = !DILocation(line: 261, column: 1, scope: !384)
!429 = !DILocation(line: 260, column: 2, scope: !384)
!430 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !431, file: !431, line: 32, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!432 = !DISubroutineType(types: !433)
!433 = !{!80, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !436, line: 23, baseType: !437)
!436 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !436, line: 14, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !437, file: !436, line: 15, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !441, line: 44, baseType: !442)
!441 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !441, line: 14, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !441, line: 15, baseType: !445, size: 32)
!445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !441, line: 15, size: 32, elements: !446)
!446 = !{!447, !452, !457}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !445, file: !441, line: 16, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !320, line: 174, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 172, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !449, file: !320, line: 173, baseType: !51, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !441, line: 24, baseType: !453, size: 16)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !445, file: !441, line: 24, size: 16, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !453, file: !441, line: 25, baseType: !12, size: 8)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !453, file: !441, line: 26, baseType: !12, size: 8, offset: 8)
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !441, line: 28, baseType: !458, size: 32)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !445, file: !441, line: 28, size: 32, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !458, file: !441, line: 29, baseType: !17, size: 16)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !458, file: !441, line: 30, baseType: !17, size: 16, offset: 16)
!462 = distinct !DISubprogram(name: "__outl", scope: !463, file: !463, line: 24, type: !464, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !466)
!463 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!464 = !DISubroutineType(types: !465)
!465 = !{null, !20, !17}
!466 = !{!467, !468}
!467 = !DILocalVariable(name: "value", arg: 1, scope: !462, file: !463, line: 24, type: !20)
!468 = !DILocalVariable(name: "port", arg: 2, scope: !462, file: !463, line: 24, type: !17)
!469 = !DILocation(line: 24, column: 1, scope: !462)
!470 = !{i64 2152778266}
!471 = distinct !DISubprogram(name: "__inb", scope: !463, file: !463, line: 22, type: !472, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!12, !17}
!474 = !{!475, !476}
!475 = !DILocalVariable(name: "port", arg: 1, scope: !471, file: !463, line: 22, type: !17)
!476 = !DILocalVariable(name: "value", scope: !471, file: !463, line: 22, type: !12)
!477 = !DILocation(line: 22, column: 1, scope: !471)
!478 = !{i64 2152776777}
!479 = distinct !DISubprogram(name: "__inw", scope: !463, file: !463, line: 23, type: !480, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!480 = !DISubroutineType(types: !481)
!481 = !{!17, !17}
!482 = !{!483, !484}
!483 = !DILocalVariable(name: "port", arg: 1, scope: !479, file: !463, line: 23, type: !17)
!484 = !DILocalVariable(name: "value", scope: !479, file: !463, line: 23, type: !17)
!485 = !DILocation(line: 23, column: 1, scope: !479)
!486 = !{i64 2152777618}
!487 = distinct !DISubprogram(name: "__inl", scope: !463, file: !463, line: 24, type: !488, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!20, !17}
!490 = !{!491, !492}
!491 = !DILocalVariable(name: "port", arg: 1, scope: !487, file: !463, line: 24, type: !17)
!492 = !DILocalVariable(name: "value", scope: !487, file: !463, line: 24, type: !20)
!493 = !DILocation(line: 24, column: 1, scope: !487)
!494 = !{i64 2152778462}
!495 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !431, file: !431, line: 43, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !434, !80}
!498 = distinct !DISubprogram(name: "__outb", scope: !463, file: !463, line: 22, type: !499, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !12, !17}
!501 = !{!502, !503}
!502 = !DILocalVariable(name: "value", arg: 1, scope: !498, file: !463, line: 22, type: !12)
!503 = !DILocalVariable(name: "port", arg: 2, scope: !498, file: !463, line: 22, type: !17)
!504 = !DILocation(line: 22, column: 1, scope: !498)
!505 = !{i64 2152776581}
!506 = distinct !DISubprogram(name: "__outw", scope: !463, file: !463, line: 23, type: !507, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !17, !17}
!509 = !{!510, !511}
!510 = !DILocalVariable(name: "value", arg: 1, scope: !506, file: !463, line: 23, type: !17)
!511 = !DILocalVariable(name: "port", arg: 2, scope: !506, file: !463, line: 23, type: !17)
!512 = !DILocation(line: 23, column: 1, scope: !506)
!513 = !{i64 2152777422}
!514 = distinct !DISubprogram(name: "pci_conf2_read", scope: !3, file: !3, line: 95, type: !49, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !527, !530, !533, !534, !537}
!516 = !DILocalVariable(name: "seg", arg: 1, scope: !514, file: !3, line: 95, type: !7)
!517 = !DILocalVariable(name: "bus", arg: 2, scope: !514, file: !3, line: 95, type: !7)
!518 = !DILocalVariable(name: "devfn", arg: 3, scope: !514, file: !3, line: 96, type: !7)
!519 = !DILocalVariable(name: "reg", arg: 4, scope: !514, file: !3, line: 96, type: !51)
!520 = !DILocalVariable(name: "len", arg: 5, scope: !514, file: !3, line: 96, type: !51)
!521 = !DILocalVariable(name: "value", arg: 6, scope: !514, file: !3, line: 96, type: !52)
!522 = !DILocalVariable(name: "flags", scope: !514, file: !3, line: 98, type: !80)
!523 = !DILocalVariable(name: "dev", scope: !514, file: !3, line: 99, type: !51)
!524 = !DILocalVariable(name: "fn", scope: !514, file: !3, line: 99, type: !51)
!525 = !DILocalVariable(name: "__ret_warn_on", scope: !526, file: !3, line: 101, type: !51)
!526 = distinct !DILexicalBlock(scope: !514, file: !3, line: 101, column: 2)
!527 = !DILocalVariable(name: "__flags", scope: !528, file: !3, line: 101, type: !51)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 101, column: 2)
!529 = distinct !DILexicalBlock(scope: !526, file: !3, line: 101, column: 2)
!530 = !DILocalVariable(name: "__dummy", scope: !531, file: !3, line: 113, type: !80)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 113, column: 2)
!532 = distinct !DILexicalBlock(scope: !514, file: !3, line: 113, column: 2)
!533 = !DILocalVariable(name: "__dummy2", scope: !531, file: !3, line: 113, type: !80)
!534 = !DILocalVariable(name: "__dummy", scope: !535, file: !3, line: 132, type: !80)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 132, column: 2)
!536 = distinct !DILexicalBlock(scope: !514, file: !3, line: 132, column: 2)
!537 = !DILocalVariable(name: "__dummy2", scope: !535, file: !3, line: 132, type: !80)
!538 = !DILocation(line: 95, column: 40, scope: !514)
!539 = !DILocation(line: 95, column: 58, scope: !514)
!540 = !DILocation(line: 96, column: 19, scope: !514)
!541 = !DILocation(line: 96, column: 30, scope: !514)
!542 = !DILocation(line: 96, column: 39, scope: !514)
!543 = !DILocation(line: 96, column: 49, scope: !514)
!544 = !DILocation(line: 98, column: 2, scope: !514)
!545 = !DILocation(line: 98, column: 16, scope: !514)
!546 = !DILocation(line: 99, column: 2, scope: !514)
!547 = !DILocation(line: 99, column: 6, scope: !514)
!548 = !DILocation(line: 99, column: 11, scope: !514)
!549 = !DILocation(line: 101, column: 2, scope: !526)
!550 = !DILocation(line: 101, column: 2, scope: !529)
!551 = !DILocation(line: 101, column: 2, scope: !528)
!552 = !DILocation(line: 101, column: 2, scope: !553)
!553 = distinct !DILexicalBlock(scope: !528, file: !3, line: 101, column: 2)
!554 = !DILocation(line: 101, column: 2, scope: !555)
!555 = distinct !DILexicalBlock(scope: !528, file: !3, line: 101, column: 2)
!556 = !{i64 2155017881, i64 2155017910, i64 2155017956, i64 2155018014, i64 2155018068, i64 2155018122, i64 2155018177, i64 2155018208, i64 2155018516, i64 2155018522, i64 2155018569, i64 2155018592, i64 2155018618}
!557 = !DILocation(line: 101, column: 2, scope: !558)
!558 = distinct !DILexicalBlock(scope: !528, file: !3, line: 101, column: 2)
!559 = !DILocation(line: 101, column: 2, scope: !514)
!560 = !DILocation(line: 102, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !514, file: !3, line: 102, column: 6)
!562 = !DILocation(line: 102, column: 11, scope: !561)
!563 = !DILocation(line: 102, column: 18, scope: !561)
!564 = !DILocation(line: 102, column: 22, scope: !561)
!565 = !DILocation(line: 102, column: 28, scope: !561)
!566 = !DILocation(line: 102, column: 35, scope: !561)
!567 = !DILocation(line: 102, column: 39, scope: !561)
!568 = !DILocation(line: 102, column: 43, scope: !561)
!569 = !DILocation(line: 102, column: 6, scope: !514)
!570 = !DILocation(line: 103, column: 4, scope: !571)
!571 = distinct !DILexicalBlock(scope: !561, file: !3, line: 102, column: 51)
!572 = !DILocation(line: 103, column: 10, scope: !571)
!573 = !DILocation(line: 104, column: 3, scope: !571)
!574 = !DILocation(line: 107, column: 8, scope: !514)
!575 = !DILocation(line: 107, column: 6, scope: !514)
!576 = !DILocation(line: 108, column: 7, scope: !514)
!577 = !DILocation(line: 108, column: 5, scope: !514)
!578 = !DILocation(line: 110, column: 6, scope: !579)
!579 = distinct !DILexicalBlock(scope: !514, file: !3, line: 110, column: 6)
!580 = !DILocation(line: 110, column: 10, scope: !579)
!581 = !DILocation(line: 110, column: 6, scope: !514)
!582 = !DILocation(line: 111, column: 3, scope: !579)
!583 = !DILocation(line: 113, column: 2, scope: !514)
!584 = !DILocation(line: 113, column: 2, scope: !531)
!585 = !DILocation(line: 113, column: 2, scope: !532)
!586 = !DILocation(line: 115, column: 20, scope: !514)
!587 = !DILocation(line: 115, column: 23, scope: !514)
!588 = !DILocation(line: 115, column: 17, scope: !514)
!589 = !DILocation(line: 115, column: 7, scope: !514)
!590 = !DILocation(line: 115, column: 2, scope: !514)
!591 = !DILocation(line: 116, column: 11, scope: !514)
!592 = !DILocation(line: 116, column: 7, scope: !514)
!593 = !DILocation(line: 116, column: 2, scope: !514)
!594 = !DILocation(line: 118, column: 10, scope: !514)
!595 = !DILocation(line: 118, column: 2, scope: !514)
!596 = !DILocation(line: 120, column: 16, scope: !597)
!597 = distinct !DILexicalBlock(scope: !514, file: !3, line: 118, column: 15)
!598 = !DILocation(line: 120, column: 12, scope: !597)
!599 = !DILocation(line: 120, column: 4, scope: !597)
!600 = !DILocation(line: 120, column: 10, scope: !597)
!601 = !DILocation(line: 121, column: 3, scope: !597)
!602 = !DILocation(line: 123, column: 16, scope: !597)
!603 = !DILocation(line: 123, column: 12, scope: !597)
!604 = !DILocation(line: 123, column: 4, scope: !597)
!605 = !DILocation(line: 123, column: 10, scope: !597)
!606 = !DILocation(line: 124, column: 3, scope: !597)
!607 = !DILocation(line: 126, column: 16, scope: !597)
!608 = !DILocation(line: 126, column: 12, scope: !597)
!609 = !DILocation(line: 126, column: 4, scope: !597)
!610 = !DILocation(line: 126, column: 10, scope: !597)
!611 = !DILocation(line: 127, column: 3, scope: !597)
!612 = !DILocation(line: 130, column: 2, scope: !514)
!613 = !DILocation(line: 132, column: 2, scope: !514)
!614 = !DILocation(line: 132, column: 2, scope: !535)
!615 = !DILocation(line: 132, column: 2, scope: !536)
!616 = !DILocation(line: 134, column: 2, scope: !514)
!617 = !DILocation(line: 135, column: 1, scope: !514)
!618 = distinct !DISubprogram(name: "pci_conf2_write", scope: !3, file: !3, line: 137, type: !55, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !631, !634, !637, !638, !641}
!620 = !DILocalVariable(name: "seg", arg: 1, scope: !618, file: !3, line: 137, type: !7)
!621 = !DILocalVariable(name: "bus", arg: 2, scope: !618, file: !3, line: 137, type: !7)
!622 = !DILocalVariable(name: "devfn", arg: 3, scope: !618, file: !3, line: 138, type: !7)
!623 = !DILocalVariable(name: "reg", arg: 4, scope: !618, file: !3, line: 138, type: !51)
!624 = !DILocalVariable(name: "len", arg: 5, scope: !618, file: !3, line: 138, type: !51)
!625 = !DILocalVariable(name: "value", arg: 6, scope: !618, file: !3, line: 138, type: !20)
!626 = !DILocalVariable(name: "flags", scope: !618, file: !3, line: 140, type: !80)
!627 = !DILocalVariable(name: "dev", scope: !618, file: !3, line: 141, type: !51)
!628 = !DILocalVariable(name: "fn", scope: !618, file: !3, line: 141, type: !51)
!629 = !DILocalVariable(name: "__ret_warn_on", scope: !630, file: !3, line: 143, type: !51)
!630 = distinct !DILexicalBlock(scope: !618, file: !3, line: 143, column: 2)
!631 = !DILocalVariable(name: "__flags", scope: !632, file: !3, line: 143, type: !51)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 143, column: 2)
!633 = distinct !DILexicalBlock(scope: !630, file: !3, line: 143, column: 2)
!634 = !DILocalVariable(name: "__dummy", scope: !635, file: !3, line: 153, type: !80)
!635 = distinct !DILexicalBlock(scope: !636, file: !3, line: 153, column: 2)
!636 = distinct !DILexicalBlock(scope: !618, file: !3, line: 153, column: 2)
!637 = !DILocalVariable(name: "__dummy2", scope: !635, file: !3, line: 153, type: !80)
!638 = !DILocalVariable(name: "__dummy", scope: !639, file: !3, line: 172, type: !80)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 172, column: 2)
!640 = distinct !DILexicalBlock(scope: !618, file: !3, line: 172, column: 2)
!641 = !DILocalVariable(name: "__dummy2", scope: !639, file: !3, line: 172, type: !80)
!642 = !DILocation(line: 137, column: 41, scope: !618)
!643 = !DILocation(line: 137, column: 59, scope: !618)
!644 = !DILocation(line: 138, column: 20, scope: !618)
!645 = !DILocation(line: 138, column: 31, scope: !618)
!646 = !DILocation(line: 138, column: 40, scope: !618)
!647 = !DILocation(line: 138, column: 49, scope: !618)
!648 = !DILocation(line: 140, column: 2, scope: !618)
!649 = !DILocation(line: 140, column: 16, scope: !618)
!650 = !DILocation(line: 141, column: 2, scope: !618)
!651 = !DILocation(line: 141, column: 6, scope: !618)
!652 = !DILocation(line: 141, column: 11, scope: !618)
!653 = !DILocation(line: 143, column: 2, scope: !630)
!654 = !DILocation(line: 143, column: 2, scope: !633)
!655 = !DILocation(line: 143, column: 2, scope: !632)
!656 = !DILocation(line: 143, column: 2, scope: !657)
!657 = distinct !DILexicalBlock(scope: !632, file: !3, line: 143, column: 2)
!658 = !DILocation(line: 143, column: 2, scope: !659)
!659 = distinct !DILexicalBlock(scope: !632, file: !3, line: 143, column: 2)
!660 = !{i64 2155020078, i64 2155020107, i64 2155020153, i64 2155020211, i64 2155020265, i64 2155020319, i64 2155020374, i64 2155020405, i64 2155020713, i64 2155020719, i64 2155020766, i64 2155020789, i64 2155020815}
!661 = !DILocation(line: 143, column: 2, scope: !662)
!662 = distinct !DILexicalBlock(scope: !632, file: !3, line: 143, column: 2)
!663 = !DILocation(line: 143, column: 2, scope: !618)
!664 = !DILocation(line: 144, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !618, file: !3, line: 144, column: 6)
!666 = !DILocation(line: 144, column: 11, scope: !665)
!667 = !DILocation(line: 144, column: 18, scope: !665)
!668 = !DILocation(line: 144, column: 22, scope: !665)
!669 = !DILocation(line: 144, column: 28, scope: !665)
!670 = !DILocation(line: 144, column: 35, scope: !665)
!671 = !DILocation(line: 144, column: 39, scope: !665)
!672 = !DILocation(line: 144, column: 43, scope: !665)
!673 = !DILocation(line: 144, column: 6, scope: !618)
!674 = !DILocation(line: 145, column: 3, scope: !665)
!675 = !DILocation(line: 147, column: 8, scope: !618)
!676 = !DILocation(line: 147, column: 6, scope: !618)
!677 = !DILocation(line: 148, column: 7, scope: !618)
!678 = !DILocation(line: 148, column: 5, scope: !618)
!679 = !DILocation(line: 150, column: 6, scope: !680)
!680 = distinct !DILexicalBlock(scope: !618, file: !3, line: 150, column: 6)
!681 = !DILocation(line: 150, column: 10, scope: !680)
!682 = !DILocation(line: 150, column: 6, scope: !618)
!683 = !DILocation(line: 151, column: 3, scope: !680)
!684 = !DILocation(line: 153, column: 2, scope: !618)
!685 = !DILocation(line: 153, column: 2, scope: !635)
!686 = !DILocation(line: 153, column: 2, scope: !636)
!687 = !DILocation(line: 155, column: 20, scope: !618)
!688 = !DILocation(line: 155, column: 23, scope: !618)
!689 = !DILocation(line: 155, column: 17, scope: !618)
!690 = !DILocation(line: 155, column: 7, scope: !618)
!691 = !DILocation(line: 155, column: 2, scope: !618)
!692 = !DILocation(line: 156, column: 11, scope: !618)
!693 = !DILocation(line: 156, column: 7, scope: !618)
!694 = !DILocation(line: 156, column: 2, scope: !618)
!695 = !DILocation(line: 158, column: 10, scope: !618)
!696 = !DILocation(line: 158, column: 2, scope: !618)
!697 = !DILocation(line: 160, column: 12, scope: !698)
!698 = distinct !DILexicalBlock(scope: !618, file: !3, line: 158, column: 15)
!699 = !DILocation(line: 160, column: 8, scope: !698)
!700 = !DILocation(line: 160, column: 19, scope: !698)
!701 = !DILocation(line: 160, column: 3, scope: !698)
!702 = !DILocation(line: 161, column: 3, scope: !698)
!703 = !DILocation(line: 163, column: 13, scope: !698)
!704 = !DILocation(line: 163, column: 8, scope: !698)
!705 = !DILocation(line: 163, column: 20, scope: !698)
!706 = !DILocation(line: 163, column: 3, scope: !698)
!707 = !DILocation(line: 164, column: 3, scope: !698)
!708 = !DILocation(line: 166, column: 13, scope: !698)
!709 = !DILocation(line: 166, column: 20, scope: !698)
!710 = !DILocation(line: 166, column: 3, scope: !698)
!711 = !DILocation(line: 167, column: 3, scope: !698)
!712 = !DILocation(line: 170, column: 2, scope: !618)
!713 = !DILocation(line: 172, column: 2, scope: !618)
!714 = !DILocation(line: 172, column: 2, scope: !639)
!715 = !DILocation(line: 172, column: 2, scope: !640)
!716 = !DILocation(line: 174, column: 2, scope: !618)
!717 = !DILocation(line: 175, column: 1, scope: !618)
!718 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !719, file: !719, line: 101, type: !720, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !722)
!719 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!720 = !DISubroutineType(types: !721)
!721 = !{!80}
!722 = !{!723}
!723 = !DILocalVariable(name: "flags", scope: !718, file: !719, line: 103, type: !80)
!724 = !DILocation(line: 103, column: 2, scope: !718)
!725 = !DILocation(line: 103, column: 16, scope: !718)
!726 = !DILocation(line: 103, column: 24, scope: !718)
!727 = !DILocation(line: 104, column: 2, scope: !718)
!728 = !DILocation(line: 105, column: 9, scope: !718)
!729 = !DILocation(line: 106, column: 1, scope: !718)
!730 = !DILocation(line: 105, column: 2, scope: !718)
!731 = distinct !DISubprogram(name: "pci_sanity_check", scope: !3, file: !3, line: 195, type: !732, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !735)
!732 = !DISubroutineType(types: !733)
!733 = !{!51, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!735 = !{!736, !737, !738}
!736 = !DILocalVariable(name: "o", arg: 1, scope: !731, file: !3, line: 195, type: !734)
!737 = !DILocalVariable(name: "x", scope: !731, file: !3, line: 197, type: !20)
!738 = !DILocalVariable(name: "devfn", scope: !731, file: !3, line: 198, type: !51)
!739 = !DILocation(line: 195, column: 62, scope: !731)
!740 = !DILocation(line: 197, column: 2, scope: !731)
!741 = !DILocation(line: 197, column: 6, scope: !731)
!742 = !DILocation(line: 198, column: 2, scope: !731)
!743 = !DILocation(line: 198, column: 6, scope: !731)
!744 = !DILocation(line: 200, column: 6, scope: !745)
!745 = distinct !DILexicalBlock(scope: !731, file: !3, line: 200, column: 6)
!746 = !DILocation(line: 200, column: 16, scope: !745)
!747 = !DILocation(line: 200, column: 6, scope: !731)
!748 = !DILocation(line: 201, column: 3, scope: !745)
!749 = !DILocation(line: 204, column: 6, scope: !750)
!750 = distinct !DILexicalBlock(scope: !731, file: !3, line: 204, column: 6)
!751 = !DILocation(line: 204, column: 26, scope: !750)
!752 = !DILocation(line: 204, column: 6, scope: !731)
!753 = !DILocation(line: 205, column: 3, scope: !750)
!754 = !DILocation(line: 207, column: 13, scope: !755)
!755 = distinct !DILexicalBlock(scope: !731, file: !3, line: 207, column: 2)
!756 = !DILocation(line: 207, column: 7, scope: !755)
!757 = !DILocation(line: 207, column: 18, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !3, line: 207, column: 2)
!759 = !DILocation(line: 207, column: 24, scope: !758)
!760 = !DILocation(line: 207, column: 2, scope: !755)
!761 = !DILocation(line: 208, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 208, column: 7)
!763 = distinct !DILexicalBlock(scope: !758, file: !3, line: 207, column: 42)
!764 = !DILocation(line: 208, column: 10, scope: !762)
!765 = !DILocation(line: 208, column: 21, scope: !762)
!766 = !DILocation(line: 208, column: 7, scope: !763)
!767 = !DILocation(line: 209, column: 4, scope: !762)
!768 = !DILocation(line: 210, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !763, file: !3, line: 210, column: 7)
!770 = !DILocation(line: 210, column: 9, scope: !769)
!771 = !DILocation(line: 210, column: 34, scope: !769)
!772 = !DILocation(line: 210, column: 37, scope: !769)
!773 = !DILocation(line: 210, column: 39, scope: !769)
!774 = !DILocation(line: 210, column: 7, scope: !763)
!775 = !DILocation(line: 211, column: 4, scope: !769)
!776 = !DILocation(line: 213, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !763, file: !3, line: 213, column: 7)
!778 = !DILocation(line: 213, column: 10, scope: !777)
!779 = !DILocation(line: 213, column: 21, scope: !777)
!780 = !DILocation(line: 213, column: 7, scope: !763)
!781 = !DILocation(line: 214, column: 4, scope: !777)
!782 = !DILocation(line: 215, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !763, file: !3, line: 215, column: 7)
!784 = !DILocation(line: 215, column: 9, scope: !783)
!785 = !DILocation(line: 215, column: 32, scope: !783)
!786 = !DILocation(line: 215, column: 35, scope: !783)
!787 = !DILocation(line: 215, column: 37, scope: !783)
!788 = !DILocation(line: 215, column: 7, scope: !763)
!789 = !DILocation(line: 216, column: 4, scope: !783)
!790 = !DILocation(line: 217, column: 2, scope: !763)
!791 = !DILocation(line: 207, column: 38, scope: !758)
!792 = !DILocation(line: 207, column: 2, scope: !758)
!793 = distinct !{!793, !760, !794, !795, !796}
!794 = !DILocation(line: 217, column: 2, scope: !755)
!795 = !{!"llvm.loop.mustprogress"}
!796 = !{!"llvm.loop.unroll.disable"}
!797 = !DILocation(line: 219, column: 2, scope: !731)
!798 = !DILocation(line: 219, column: 2, scope: !799)
!799 = distinct !DILexicalBlock(scope: !731, file: !3, line: 219, column: 2)
!800 = !DILocation(line: 220, column: 2, scope: !731)
!801 = !DILocation(line: 221, column: 1, scope: !731)
!802 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !719, file: !719, line: 132, type: !803, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !80}
!805 = !{!806}
!806 = !DILocalVariable(name: "flags", arg: 1, scope: !802, file: !719, line: 132, type: !80)
!807 = !DILocation(line: 132, column: 66, scope: !802)
!808 = !DILocation(line: 134, column: 32, scope: !809)
!809 = distinct !DILexicalBlock(scope: !802, file: !719, line: 134, column: 6)
!810 = !DILocation(line: 134, column: 7, scope: !809)
!811 = !DILocation(line: 134, column: 6, scope: !802)
!812 = !DILocation(line: 135, column: 3, scope: !809)
!813 = !DILocation(line: 136, column: 1, scope: !802)
!814 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !719, file: !719, line: 65, type: !720, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!815 = !DILocation(line: 67, column: 9, scope: !814)
!816 = !DILocation(line: 67, column: 2, scope: !814)
!817 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !719, file: !719, line: 70, type: !818, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!818 = !DISubroutineType(types: !819)
!819 = !{null}
!820 = !DILocation(line: 72, column: 2, scope: !817)
!821 = !DILocation(line: 73, column: 1, scope: !817)
!822 = distinct !DISubprogram(name: "native_save_fl", scope: !719, file: !719, line: 17, type: !720, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !823)
!823 = !{!824}
!824 = !DILocalVariable(name: "flags", scope: !822, file: !719, line: 19, type: !80)
!825 = !DILocation(line: 19, column: 2, scope: !822)
!826 = !DILocation(line: 19, column: 16, scope: !822)
!827 = !DILocation(line: 26, column: 2, scope: !822)
!828 = !{i64 2150071, i64 2150092}
!829 = !DILocation(line: 32, column: 9, scope: !822)
!830 = !DILocation(line: 33, column: 1, scope: !822)
!831 = !DILocation(line: 32, column: 2, scope: !822)
!832 = distinct !DISubprogram(name: "native_irq_disable", scope: !719, file: !719, line: 35, type: !818, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!833 = !DILocation(line: 37, column: 2, scope: !832)
!834 = !{i64 2150275}
!835 = !DILocation(line: 38, column: 1, scope: !832)
!836 = !DISubprogram(name: "dmi_get_bios_year", scope: !837, file: !837, line: 107, type: !261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!838 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !719, file: !719, line: 120, type: !839, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{!51, !80}
!841 = !{!842}
!842 = !DILocalVariable(name: "flags", arg: 1, scope: !838, file: !719, line: 120, type: !80)
!843 = !DILocation(line: 120, column: 67, scope: !838)
!844 = !DILocation(line: 122, column: 11, scope: !838)
!845 = !DILocation(line: 122, column: 17, scope: !838)
!846 = !DILocation(line: 122, column: 9, scope: !838)
!847 = !DILocation(line: 122, column: 2, scope: !838)
!848 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !719, file: !719, line: 75, type: !818, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!849 = !DILocation(line: 77, column: 2, scope: !848)
!850 = !DILocation(line: 78, column: 1, scope: !848)
!851 = distinct !DISubprogram(name: "native_irq_enable", scope: !719, file: !719, line: 40, type: !818, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!852 = !DILocation(line: 42, column: 2, scope: !851)
!853 = !{i64 2150367}
!854 = !DILocation(line: 43, column: 1, scope: !851)
