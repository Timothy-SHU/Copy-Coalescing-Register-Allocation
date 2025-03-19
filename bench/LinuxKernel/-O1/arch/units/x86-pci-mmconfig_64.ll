; ModuleID = 'arch/x86/pci/mmconfig_64.c'
source_filename = "arch/x86/pci/mmconfig_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_raw_ops = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pci_mmcfg_region = type { %struct.list_head, %struct.resource, i64, ptr, i16, i8, i8, [30 x i8] }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }

@pci_mmcfg = hidden constant %struct.pci_raw_ops { ptr @pci_mmcfg_read, ptr @pci_mmcfg_write }, align 8, !dbg !0
@pci_mmcfg_list = external dso_local global %struct.list_head, align 8
@raw_pci_ext_ops = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"\013PCI: can't map MMCONFIG at %pR\0A\00", align 1, !dbg !58

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_mmcfg_read(i32 noundef %seg, i32 noundef %bus, i32 noundef %devfn, i32 noundef %reg, i32 noundef %len, ptr noundef %value) #0 align 16 !dbg !88 {
entry:
  %retval = alloca i32, align 4
  %seg.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !90, metadata !DIExpression()), !dbg !100
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !91, metadata !DIExpression()), !dbg !101
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !92, metadata !DIExpression()), !dbg !102
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !93, metadata !DIExpression()), !dbg !103
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !94, metadata !DIExpression()), !dbg !104
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !95, metadata !DIExpression()), !dbg !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !106
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !96, metadata !DIExpression()), !dbg !107
  %0 = load i32, ptr %bus.addr, align 4, !dbg !108
  %cmp = icmp ugt i32 %0, 255, !dbg !108
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !108

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %devfn.addr, align 4, !dbg !108
  %cmp1 = icmp ugt i32 %1, 255, !dbg !108
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !108

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, ptr %reg.addr, align 4, !dbg !108
  %cmp2 = icmp sgt i32 %2, 4095, !dbg !108
  br label %lor.end, !dbg !108

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %3, true, !dbg !108
  %lnot3 = xor i1 %lnot, true, !dbg !108
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !108
  %conv = sext i32 %lnot.ext to i64, !dbg !108
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !108
  %tobool = icmp ne i64 %expval, 0, !dbg !108
  br i1 %tobool, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %lor.end
  br label %err, !dbg !110

err:                                              ; preds = %if.then5, %if.then
  call void @llvm.dbg.label(metadata !97), !dbg !111
  %4 = load ptr, ptr %value.addr, align 8, !dbg !112
  store i32 -1, ptr %4, align 4, !dbg !113
  store i32 -22, ptr %retval, align 4, !dbg !114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !114

if.end:                                           ; preds = %lor.end
  call void @rcu_read_lock() #10, !dbg !115
  %5 = load i32, ptr %seg.addr, align 4, !dbg !116
  %6 = load i32, ptr %bus.addr, align 4, !dbg !117
  %7 = load i32, ptr %devfn.addr, align 4, !dbg !118
  %call = call ptr @pci_dev_base(i32 noundef %5, i32 noundef %6, i32 noundef %7) #10, !dbg !119
  store ptr %call, ptr %addr, align 8, !dbg !120
  %8 = load ptr, ptr %addr, align 8, !dbg !121
  %tobool4 = icmp ne ptr %8, null, !dbg !121
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !123

if.then5:                                         ; preds = %if.end
  call void @rcu_read_unlock() #10, !dbg !124
  br label %err, !dbg !126

if.end6:                                          ; preds = %if.end
  %9 = load i32, ptr %len.addr, align 4, !dbg !127
  switch i32 %9, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 4, label %sw.bb14
  ], !dbg !128

sw.bb:                                            ; preds = %if.end6
  %10 = load ptr, ptr %addr, align 8, !dbg !129
  %11 = load i32, ptr %reg.addr, align 4, !dbg !131
  %idx.ext = sext i32 %11 to i64, !dbg !132
  %add.ptr = getelementptr i8, ptr %10, i64 %idx.ext, !dbg !132
  %call7 = call zeroext i8 @mmio_config_readb(ptr noundef %add.ptr) #10, !dbg !133
  %conv8 = zext i8 %call7 to i32, !dbg !133
  %12 = load ptr, ptr %value.addr, align 8, !dbg !134
  store i32 %conv8, ptr %12, align 4, !dbg !135
  br label %sw.epilog, !dbg !136

sw.bb9:                                           ; preds = %if.end6
  %13 = load ptr, ptr %addr, align 8, !dbg !137
  %14 = load i32, ptr %reg.addr, align 4, !dbg !138
  %idx.ext10 = sext i32 %14 to i64, !dbg !139
  %add.ptr11 = getelementptr i8, ptr %13, i64 %idx.ext10, !dbg !139
  %call12 = call zeroext i16 @mmio_config_readw(ptr noundef %add.ptr11) #10, !dbg !140
  %conv13 = zext i16 %call12 to i32, !dbg !140
  %15 = load ptr, ptr %value.addr, align 8, !dbg !141
  store i32 %conv13, ptr %15, align 4, !dbg !142
  br label %sw.epilog, !dbg !143

sw.bb14:                                          ; preds = %if.end6
  %16 = load ptr, ptr %addr, align 8, !dbg !144
  %17 = load i32, ptr %reg.addr, align 4, !dbg !145
  %idx.ext15 = sext i32 %17 to i64, !dbg !146
  %add.ptr16 = getelementptr i8, ptr %16, i64 %idx.ext15, !dbg !146
  %call17 = call i32 @mmio_config_readl(ptr noundef %add.ptr16) #10, !dbg !147
  %18 = load ptr, ptr %value.addr, align 8, !dbg !148
  store i32 %call17, ptr %18, align 4, !dbg !149
  br label %sw.epilog, !dbg !150

sw.epilog:                                        ; preds = %if.end6, %sw.bb14, %sw.bb9, %sw.bb
  call void @rcu_read_unlock() #10, !dbg !151
  store i32 0, ptr %retval, align 4, !dbg !152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !152

cleanup:                                          ; preds = %sw.epilog, %err
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !153
  %19 = load i32, ptr %retval, align 4, !dbg !153
  ret i32 %19, !dbg !153
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_mmcfg_write(i32 noundef %seg, i32 noundef %bus, i32 noundef %devfn, i32 noundef %reg, i32 noundef %len, i32 noundef %value) #0 align 16 !dbg !154 {
entry:
  %retval = alloca i32, align 4
  %seg.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %addr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !156, metadata !DIExpression()), !dbg !163
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !157, metadata !DIExpression()), !dbg !164
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !158, metadata !DIExpression()), !dbg !165
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !159, metadata !DIExpression()), !dbg !166
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !160, metadata !DIExpression()), !dbg !167
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !161, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !162, metadata !DIExpression()), !dbg !170
  %0 = load i32, ptr %bus.addr, align 4, !dbg !171
  %cmp = icmp ugt i32 %0, 255, !dbg !171
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !171

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %devfn.addr, align 4, !dbg !171
  %cmp1 = icmp ugt i32 %1, 255, !dbg !171
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !171

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, ptr %reg.addr, align 4, !dbg !171
  %cmp2 = icmp sgt i32 %2, 4095, !dbg !171
  br label %lor.end, !dbg !171

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %3, true, !dbg !171
  %lnot3 = xor i1 %lnot, true, !dbg !171
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !171
  %conv = sext i32 %lnot.ext to i64, !dbg !171
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !171
  %tobool = icmp ne i64 %expval, 0, !dbg !171
  br i1 %tobool, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !174

if.end:                                           ; preds = %lor.end
  call void @rcu_read_lock() #10, !dbg !175
  %4 = load i32, ptr %seg.addr, align 4, !dbg !176
  %5 = load i32, ptr %bus.addr, align 4, !dbg !177
  %6 = load i32, ptr %devfn.addr, align 4, !dbg !178
  %call = call ptr @pci_dev_base(i32 noundef %4, i32 noundef %5, i32 noundef %6) #10, !dbg !179
  store ptr %call, ptr %addr, align 8, !dbg !180
  %7 = load ptr, ptr %addr, align 8, !dbg !181
  %tobool4 = icmp ne ptr %7, null, !dbg !181
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !183

if.then5:                                         ; preds = %if.end
  call void @rcu_read_unlock() #10, !dbg !184
  store i32 -22, ptr %retval, align 4, !dbg !186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !186

if.end6:                                          ; preds = %if.end
  %8 = load i32, ptr %len.addr, align 4, !dbg !187
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 4, label %sw.bb12
  ], !dbg !188

sw.bb:                                            ; preds = %if.end6
  %9 = load ptr, ptr %addr, align 8, !dbg !189
  %10 = load i32, ptr %reg.addr, align 4, !dbg !191
  %idx.ext = sext i32 %10 to i64, !dbg !192
  %add.ptr = getelementptr i8, ptr %9, i64 %idx.ext, !dbg !192
  %11 = load i32, ptr %value.addr, align 4, !dbg !193
  %conv7 = trunc i32 %11 to i8, !dbg !193
  call void @mmio_config_writeb(ptr noundef %add.ptr, i8 noundef zeroext %conv7) #10, !dbg !194
  br label %sw.epilog, !dbg !195

sw.bb8:                                           ; preds = %if.end6
  %12 = load ptr, ptr %addr, align 8, !dbg !196
  %13 = load i32, ptr %reg.addr, align 4, !dbg !197
  %idx.ext9 = sext i32 %13 to i64, !dbg !198
  %add.ptr10 = getelementptr i8, ptr %12, i64 %idx.ext9, !dbg !198
  %14 = load i32, ptr %value.addr, align 4, !dbg !199
  %conv11 = trunc i32 %14 to i16, !dbg !199
  call void @mmio_config_writew(ptr noundef %add.ptr10, i16 noundef zeroext %conv11) #10, !dbg !200
  br label %sw.epilog, !dbg !201

sw.bb12:                                          ; preds = %if.end6
  %15 = load ptr, ptr %addr, align 8, !dbg !202
  %16 = load i32, ptr %reg.addr, align 4, !dbg !203
  %idx.ext13 = sext i32 %16 to i64, !dbg !204
  %add.ptr14 = getelementptr i8, ptr %15, i64 %idx.ext13, !dbg !204
  %17 = load i32, ptr %value.addr, align 4, !dbg !205
  call void @mmio_config_writel(ptr noundef %add.ptr14, i32 noundef %17) #10, !dbg !206
  br label %sw.epilog, !dbg !207

sw.epilog:                                        ; preds = %if.end6, %sw.bb12, %sw.bb8, %sw.bb
  call void @rcu_read_unlock() #10, !dbg !208
  store i32 0, ptr %retval, align 4, !dbg !209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !209

cleanup:                                          ; preds = %sw.epilog, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !210
  %18 = load i32, ptr %retval, align 4, !dbg !210
  ret i32 %18, !dbg !210
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @pci_mmcfg_arch_init() #1 section ".init.text" align 16 !dbg !211 {
entry:
  %retval = alloca i32, align 4
  %cfg = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #9, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !215, metadata !DIExpression()), !dbg !223
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !216, metadata !DIExpression()), !dbg !224
  %0 = load ptr, ptr @pci_mmcfg_list, align 8, !dbg !224
  store ptr %0, ptr %__mptr, align 8, !dbg !224
  %1 = load ptr, ptr %__mptr, align 8, !dbg !224
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !224
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !225
  %2 = load ptr, ptr %tmp, align 8, !dbg !224
  store ptr %2, ptr %cfg, align 8, !dbg !225
  br label %for.cond, !dbg !225

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cfg, align 8, !dbg !226
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %3, i32 0, i32 0, !dbg !226
  %cmp = icmp eq ptr %list, @pci_mmcfg_list, !dbg !226
  %lnot = xor i1 %cmp, true, !dbg !226
  br i1 %lnot, label %for.body, label %for.end, !dbg !225

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cfg, align 8, !dbg !227
  %call = call i32 @pci_mmcfg_arch_map(ptr noundef %4) #10, !dbg !229
  %tobool = icmp ne i32 %call, 0, !dbg !229
  br i1 %tobool, label %if.then, label %if.end, !dbg !230

if.then:                                          ; preds = %for.body
  call void @pci_mmcfg_arch_free() #11, !dbg !231
  store i32 0, ptr %retval, align 4, !dbg !233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !233

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !234

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #9, !dbg !235
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !219, metadata !DIExpression()), !dbg !235
  %5 = load ptr, ptr %cfg, align 8, !dbg !235
  %list2 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %5, i32 0, i32 0, !dbg !235
  %next = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 0, !dbg !235
  %6 = load ptr, ptr %next, align 8, !dbg !235
  store ptr %6, ptr %__mptr1, align 8, !dbg !235
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !235
  %add.ptr4 = getelementptr i8, ptr %7, i64 0, !dbg !235
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !235
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #9, !dbg !226
  %8 = load ptr, ptr %tmp3, align 8, !dbg !235
  store ptr %8, ptr %cfg, align 8, !dbg !226
  br label %for.cond, !dbg !226, !llvm.loop !236

for.end:                                          ; preds = %for.cond
  store ptr @pci_mmcfg, ptr @raw_pci_ext_ops, align 8, !dbg !240
  store i32 1, ptr %retval, align 4, !dbg !241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !241

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #9, !dbg !242
  %9 = load i32, ptr %retval, align 4, !dbg !242
  ret i32 %9, !dbg !242
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_mmcfg_arch_map(ptr noundef %cfg) #0 align 16 !dbg !243 {
entry:
  %retval = alloca i32, align 4
  %cfg.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %cfg, ptr %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg.addr, metadata !247, metadata !DIExpression()), !dbg !248
  %0 = load ptr, ptr %cfg.addr, align 8, !dbg !249
  %call = call ptr @mcfg_ioremap(ptr noundef %0) #10, !dbg !250
  %1 = load ptr, ptr %cfg.addr, align 8, !dbg !251
  %virt = getelementptr inbounds %struct.pci_mmcfg_region, ptr %1, i32 0, i32 3, !dbg !252
  store ptr %call, ptr %virt, align 8, !dbg !253
  %2 = load ptr, ptr %cfg.addr, align 8, !dbg !254
  %virt1 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %2, i32 0, i32 3, !dbg !256
  %3 = load ptr, ptr %virt1, align 8, !dbg !256
  %tobool = icmp ne ptr %3, null, !dbg !254
  br i1 %tobool, label %if.end, label %if.then, !dbg !257

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !258

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !261

do.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %cfg.addr, align 8, !dbg !258
  %res = getelementptr inbounds %struct.pci_mmcfg_region, ptr %4, i32 0, i32 1, !dbg !258
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %res) #11, !dbg !258
  store i32 %call2, ptr %tmp, align 4, !dbg !261
  %5 = load i32, ptr %tmp, align 4, !dbg !258
  store i32 -12, ptr %retval, align 4, !dbg !263
  br label %return, !dbg !263

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !264
  br label %return, !dbg !264

return:                                           ; preds = %if.end, %do.end
  %6 = load i32, ptr %retval, align 4, !dbg !265
  ret i32 %6, !dbg !265
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pci_mmcfg_arch_free() #1 section ".init.text" align 16 !dbg !266 {
entry:
  %cfg = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #9, !dbg !277
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !270, metadata !DIExpression()), !dbg !278
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !271, metadata !DIExpression()), !dbg !279
  %0 = load ptr, ptr @pci_mmcfg_list, align 8, !dbg !279
  store ptr %0, ptr %__mptr, align 8, !dbg !279
  %1 = load ptr, ptr %__mptr, align 8, !dbg !279
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !279
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !279
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !280
  %2 = load ptr, ptr %tmp, align 8, !dbg !279
  store ptr %2, ptr %cfg, align 8, !dbg !280
  br label %for.cond, !dbg !280

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cfg, align 8, !dbg !281
  %list = getelementptr inbounds %struct.pci_mmcfg_region, ptr %3, i32 0, i32 0, !dbg !281
  %cmp = icmp eq ptr %list, @pci_mmcfg_list, !dbg !281
  %lnot = xor i1 %cmp, true, !dbg !281
  br i1 %lnot, label %for.body, label %for.end, !dbg !280

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cfg, align 8, !dbg !282
  call void @pci_mmcfg_arch_unmap(ptr noundef %4) #10, !dbg !283
  br label %for.inc, !dbg !283

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #9, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !274, metadata !DIExpression()), !dbg !284
  %5 = load ptr, ptr %cfg, align 8, !dbg !284
  %list2 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %5, i32 0, i32 0, !dbg !284
  %next = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 0, !dbg !284
  %6 = load ptr, ptr %next, align 8, !dbg !284
  store ptr %6, ptr %__mptr1, align 8, !dbg !284
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !284
  %add.ptr4 = getelementptr i8, ptr %7, i64 0, !dbg !284
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !284
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #9, !dbg !281
  %8 = load ptr, ptr %tmp3, align 8, !dbg !284
  store ptr %8, ptr %cfg, align 8, !dbg !281
  br label %for.cond, !dbg !281, !llvm.loop !285

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #9, !dbg !287
  ret void, !dbg !287
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_mmcfg_arch_unmap(ptr noundef %cfg) #0 align 16 !dbg !288 {
entry:
  %cfg.addr = alloca ptr, align 8
  store ptr %cfg, ptr %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load ptr, ptr %cfg.addr, align 8, !dbg !294
  %tobool = icmp ne ptr %0, null, !dbg !294
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !296

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %cfg.addr, align 8, !dbg !297
  %virt = getelementptr inbounds %struct.pci_mmcfg_region, ptr %1, i32 0, i32 3, !dbg !298
  %2 = load ptr, ptr %virt, align 8, !dbg !298
  %tobool1 = icmp ne ptr %2, null, !dbg !297
  br i1 %tobool1, label %if.then, label %if.end, !dbg !299

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %cfg.addr, align 8, !dbg !300
  %virt2 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %3, i32 0, i32 3, !dbg !302
  %4 = load ptr, ptr %virt2, align 8, !dbg !302
  %5 = load ptr, ptr %cfg.addr, align 8, !dbg !303
  %start_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %5, i32 0, i32 5, !dbg !303
  %6 = load i8, ptr %start_bus, align 2, !dbg !303
  %conv = zext i8 %6 to i32, !dbg !303
  %shl = shl i32 %conv, 20, !dbg !303
  %idx.ext = sext i32 %shl to i64, !dbg !304
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !304
  call void @iounmap(ptr noundef %add.ptr) #10, !dbg !305
  %7 = load ptr, ptr %cfg.addr, align 8, !dbg !306
  %virt3 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %7, i32 0, i32 3, !dbg !307
  store ptr null, ptr %virt3, align 8, !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mcfg_ioremap(ptr noundef %cfg) #0 align 16 !dbg !311 {
entry:
  %cfg.addr = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %num_buses = alloca i32, align 4
  store ptr %cfg, ptr %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cfg.addr, metadata !314, metadata !DIExpression()), !dbg !319
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !320
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !315, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #9, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %start, metadata !316, metadata !DIExpression()), !dbg !323
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #9, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %size, metadata !317, metadata !DIExpression()), !dbg !324
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_buses) #9, !dbg !325
  call void @llvm.dbg.declare(metadata ptr %num_buses, metadata !318, metadata !DIExpression()), !dbg !326
  %0 = load ptr, ptr %cfg.addr, align 8, !dbg !327
  %address = getelementptr inbounds %struct.pci_mmcfg_region, ptr %0, i32 0, i32 2, !dbg !328
  %1 = load i64, ptr %address, align 8, !dbg !328
  %2 = load ptr, ptr %cfg.addr, align 8, !dbg !329
  %start_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %2, i32 0, i32 5, !dbg !329
  %3 = load i8, ptr %start_bus, align 2, !dbg !329
  %conv = zext i8 %3 to i32, !dbg !329
  %shl = shl i32 %conv, 20, !dbg !329
  %conv1 = sext i32 %shl to i64, !dbg !329
  %add = add i64 %1, %conv1, !dbg !330
  store i64 %add, ptr %start, align 8, !dbg !331
  %4 = load ptr, ptr %cfg.addr, align 8, !dbg !332
  %end_bus = getelementptr inbounds %struct.pci_mmcfg_region, ptr %4, i32 0, i32 6, !dbg !333
  %5 = load i8, ptr %end_bus, align 1, !dbg !333
  %conv2 = zext i8 %5 to i32, !dbg !332
  %6 = load ptr, ptr %cfg.addr, align 8, !dbg !334
  %start_bus3 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %6, i32 0, i32 5, !dbg !335
  %7 = load i8, ptr %start_bus3, align 2, !dbg !335
  %conv4 = zext i8 %7 to i32, !dbg !334
  %sub = sub i32 %conv2, %conv4, !dbg !336
  %add5 = add i32 %sub, 1, !dbg !337
  store i32 %add5, ptr %num_buses, align 4, !dbg !338
  %8 = load i32, ptr %num_buses, align 4, !dbg !339
  %shl6 = shl i32 %8, 20, !dbg !339
  %conv7 = sext i32 %shl6 to i64, !dbg !339
  store i64 %conv7, ptr %size, align 8, !dbg !340
  %9 = load i64, ptr %start, align 8, !dbg !341
  %10 = load i64, ptr %size, align 8, !dbg !342
  %call = call ptr @ioremap(i64 noundef %9, i64 noundef %10) #10, !dbg !343
  store ptr %call, ptr %addr, align 8, !dbg !344
  %11 = load ptr, ptr %addr, align 8, !dbg !345
  %tobool = icmp ne ptr %11, null, !dbg !345
  br i1 %tobool, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %cfg.addr, align 8, !dbg !348
  %start_bus8 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %12, i32 0, i32 5, !dbg !348
  %13 = load i8, ptr %start_bus8, align 2, !dbg !348
  %conv9 = zext i8 %13 to i32, !dbg !348
  %shl10 = shl i32 %conv9, 20, !dbg !348
  %14 = load ptr, ptr %addr, align 8, !dbg !349
  %idx.ext = sext i32 %shl10 to i64, !dbg !349
  %idx.neg = sub i64 0, %idx.ext, !dbg !349
  %add.ptr = getelementptr i8, ptr %14, i64 %idx.neg, !dbg !349
  store ptr %add.ptr, ptr %addr, align 8, !dbg !349
  br label %if.end, !dbg !350

if.end:                                           ; preds = %if.then, %entry
  %15 = load ptr, ptr %addr, align 8, !dbg !351
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_buses) #9, !dbg !352
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #9, !dbg !352
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #9, !dbg !352
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !352
  ret ptr %15, !dbg !353
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !354 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !358 dso_local void @iounmap(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #7 align 16 !dbg !364 {
entry:
  call void @__rcu_read_lock() #10, !dbg !366
  br label %do.body, !dbg !367

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !368

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !370

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !371

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !373
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_dev_base(i32 noundef %seg, i32 noundef %bus, i32 noundef %devfn) #0 align 16 !dbg !374 {
entry:
  %retval = alloca ptr, align 8
  %seg.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %cfg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !378, metadata !DIExpression()), !dbg !382
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !379, metadata !DIExpression()), !dbg !383
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !380, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #9, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !381, metadata !DIExpression()), !dbg !386
  %0 = load i32, ptr %seg.addr, align 4, !dbg !387
  %1 = load i32, ptr %bus.addr, align 4, !dbg !388
  %call = call ptr @pci_mmconfig_lookup(i32 noundef %0, i32 noundef %1) #10, !dbg !389
  store ptr %call, ptr %cfg, align 8, !dbg !386
  %2 = load ptr, ptr %cfg, align 8, !dbg !390
  %tobool = icmp ne ptr %2, null, !dbg !390
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !392

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %cfg, align 8, !dbg !393
  %virt = getelementptr inbounds %struct.pci_mmcfg_region, ptr %3, i32 0, i32 3, !dbg !394
  %4 = load ptr, ptr %virt, align 8, !dbg !394
  %tobool1 = icmp ne ptr %4, null, !dbg !393
  br i1 %tobool1, label %if.then, label %if.end, !dbg !395

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %cfg, align 8, !dbg !396
  %virt2 = getelementptr inbounds %struct.pci_mmcfg_region, ptr %5, i32 0, i32 3, !dbg !397
  %6 = load ptr, ptr %virt2, align 8, !dbg !397
  %7 = load i32, ptr %bus.addr, align 4, !dbg !398
  %shl = shl i32 %7, 20, !dbg !398
  %8 = load i32, ptr %devfn.addr, align 4, !dbg !399
  %shl3 = shl i32 %8, 12, !dbg !400
  %or = or i32 %shl, %shl3, !dbg !401
  %idx.ext = zext i32 %or to i64, !dbg !402
  %add.ptr = getelementptr i8, ptr %6, i64 %idx.ext, !dbg !402
  store ptr %add.ptr, ptr %retval, align 8, !dbg !403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !403

if.end:                                           ; preds = %land.lhs.true, %entry
  store ptr null, ptr %retval, align 8, !dbg !404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !404

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #9, !dbg !405
  %9 = load ptr, ptr %retval, align 8, !dbg !405
  ret ptr %9, !dbg !405
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #8 align 16 !dbg !406 {
entry:
  br label %do.body, !dbg !407

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !408

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #10, !dbg !410
  br label %do.body1, !dbg !411

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !412

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !414
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @mmio_config_readb(ptr noundef %pos) #8 align 16 !dbg !415 {
entry:
  %pos.addr = alloca ptr, align 8
  %val = alloca i8, align 1
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !419, metadata !DIExpression()), !dbg !421
  call void @llvm.lifetime.start.p0(i64 1, ptr %val) #9, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %val, metadata !420, metadata !DIExpression()), !dbg !423
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !424
  %1 = call i8 asm sideeffect "movb ($1),%al", "={ax},r,~{dirflag},~{fpsr},~{flags}"(ptr %0) #9, !dbg !425, !srcloc !426
  store i8 %1, ptr %val, align 1, !dbg !425
  %2 = load i8, ptr %val, align 1, !dbg !427
  call void @llvm.lifetime.end.p0(i64 1, ptr %val) #9, !dbg !428
  ret i8 %2, !dbg !429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @mmio_config_readw(ptr noundef %pos) #8 align 16 !dbg !430 {
entry:
  %pos.addr = alloca ptr, align 8
  %val = alloca i16, align 2
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !434, metadata !DIExpression()), !dbg !436
  call void @llvm.lifetime.start.p0(i64 2, ptr %val) #9, !dbg !437
  call void @llvm.dbg.declare(metadata ptr %val, metadata !435, metadata !DIExpression()), !dbg !438
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !439
  %1 = call i16 asm sideeffect "movw ($1),%ax", "={ax},r,~{dirflag},~{fpsr},~{flags}"(ptr %0) #9, !dbg !440, !srcloc !441
  store i16 %1, ptr %val, align 2, !dbg !440
  %2 = load i16, ptr %val, align 2, !dbg !442
  call void @llvm.lifetime.end.p0(i64 2, ptr %val) #9, !dbg !443
  ret i16 %2, !dbg !444
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mmio_config_readl(ptr noundef %pos) #8 align 16 !dbg !445 {
entry:
  %pos.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !449, metadata !DIExpression()), !dbg !451
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #9, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %val, metadata !450, metadata !DIExpression()), !dbg !453
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !454
  %1 = call i32 asm sideeffect "movl ($1),%eax", "={ax},r,~{dirflag},~{fpsr},~{flags}"(ptr %0) #9, !dbg !455, !srcloc !456
  store i32 %1, ptr %val, align 4, !dbg !455
  %2 = load i32, ptr %val, align 4, !dbg !457
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #9, !dbg !458
  ret i32 %2, !dbg !459
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !460 dso_local void @__rcu_read_lock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !461 dso_local ptr @pci_mmconfig_lookup(i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !464 dso_local void @__rcu_read_unlock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmio_config_writeb(ptr noundef %pos, i8 noundef zeroext %val) #8 align 16 !dbg !465 {
entry:
  %pos.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !469, metadata !DIExpression()), !dbg !471
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !470, metadata !DIExpression()), !dbg !472
  %0 = load i8, ptr %val.addr, align 1, !dbg !473
  %1 = load ptr, ptr %pos.addr, align 8, !dbg !474
  call void asm sideeffect "movb %al,($1)", "{ax},r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, ptr %1) #9, !dbg !475, !srcloc !476
  ret void, !dbg !477
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmio_config_writew(ptr noundef %pos, i16 noundef zeroext %val) #8 align 16 !dbg !478 {
entry:
  %pos.addr = alloca ptr, align 8
  %val.addr = alloca i16, align 2
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !482, metadata !DIExpression()), !dbg !484
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !483, metadata !DIExpression()), !dbg !485
  %0 = load i16, ptr %val.addr, align 2, !dbg !486
  %1 = load ptr, ptr %pos.addr, align 8, !dbg !487
  call void asm sideeffect "movw %ax,($1)", "{ax},r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, ptr %1) #9, !dbg !488, !srcloc !489
  ret void, !dbg !490
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmio_config_writel(ptr noundef %pos, i32 noundef %val) #8 align 16 !dbg !491 {
entry:
  %pos.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !495, metadata !DIExpression()), !dbg !497
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !496, metadata !DIExpression()), !dbg !498
  %0 = load i32, ptr %val.addr, align 4, !dbg !499
  %1 = load ptr, ptr %pos.addr, align 8, !dbg !500
  call void asm sideeffect "movl %eax,($1)", "{ax},r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr %1) #9, !dbg !501, !srcloc !502
  ret void, !dbg !503
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !504 dso_local ptr @ioremap(i64 noundef, i64 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_mmcfg", scope: !2, file: !3, line: 94, type: !63, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/pci/.mmconfig_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/pci/mmconfig_64\22 -D KBUILD_BASENAME=\22mmconfig_64\22 -D KBUILD_MODNAME=\22mmconfig_64\22 -D __KBUILD_MODNAME=kmod_mmconfig_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/pci/mmconfig_64.ll arch/x86/pci/mmconfig_64.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !57, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/pci/mmconfig_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "028832f9979358b8ab094eca45fc68a1")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_mmcfg_region", file: !8, line: 169, size: 1088, elements: !9)
!8 = !DIFile(filename: "./arch/x86/include/asm/pci_x86.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c32a69340c2514dde4670e44e5a823b3")
!9 = !{!10, !17, !41, !42, !44, !48, !52, !53}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !7, file: !8, line: 170, baseType: !11, size: 128)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !12, line: 190, size: 128, elements: !13)
!12 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!13 = !{!14, !16}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !12, line: 191, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !11, file: !12, line: 191, baseType: !15, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !7, file: !8, line: 171, baseType: !18, size: 512, offset: 128)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !19, line: 21, size: 512, elements: !20)
!19 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!20 = !{!21, !29, !30, !34, !36, !37, !39, !40}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !18, file: !19, line: 22, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !12, line: 164, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !12, line: 159, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !18, file: !19, line: 23, baseType: !22, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !18, file: !19, line: 24, baseType: !31, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !18, file: !19, line: 25, baseType: !35, size: 64, offset: 192)
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !18, file: !19, line: 26, baseType: !35, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !18, file: !19, line: 27, baseType: !38, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !18, file: !19, line: 27, baseType: !38, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !18, file: !19, line: 27, baseType: !38, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !7, file: !8, line: 172, baseType: !24, size: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "virt", scope: !7, file: !8, line: 173, baseType: !43, size: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !7, file: !8, line: 174, baseType: !45, size: 16, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "start_bus", scope: !7, file: !8, line: 175, baseType: !49, size: 8, offset: 784)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !51)
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "end_bus", scope: !7, file: !8, line: 176, baseType: !49, size: 8, offset: 792)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !8, line: 177, baseType: !54, size: 240, offset: 800)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 240, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 30)
!57 = !{!0, !58}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 272, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 34)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_raw_ops", file: !8, line: 118, size: 128, elements: !65)
!65 = !{!66, !75}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !64, file: !8, line: 119, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !71, !71, !71, !70, !70, !72}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !71)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !64, file: !8, line: 121, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!70, !71, !71, !71, !70, !70, !73}
!79 = !{i32 7, !"Dwarf Version", i32 5}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 8, !"cf-protection-branch", i32 1}
!83 = !{i32 4, !"function_return_thunk_extern", i32 1}
!84 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!85 = !{i32 1, !"Code Model", i32 2}
!86 = !{i32 1, !"override-stack-alignment", i32 8}
!87 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!88 = distinct !DISubprogram(name: "pci_mmcfg_read", scope: !3, file: !3, line: 28, type: !68, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97}
!90 = !DILocalVariable(name: "seg", arg: 1, scope: !88, file: !3, line: 28, type: !71)
!91 = !DILocalVariable(name: "bus", arg: 2, scope: !88, file: !3, line: 28, type: !71)
!92 = !DILocalVariable(name: "devfn", arg: 3, scope: !88, file: !3, line: 29, type: !71)
!93 = !DILocalVariable(name: "reg", arg: 4, scope: !88, file: !3, line: 29, type: !70)
!94 = !DILocalVariable(name: "len", arg: 5, scope: !88, file: !3, line: 29, type: !70)
!95 = !DILocalVariable(name: "value", arg: 6, scope: !88, file: !3, line: 29, type: !72)
!96 = !DILocalVariable(name: "addr", scope: !88, file: !3, line: 31, type: !43)
!97 = !DILabel(scope: !98, name: "err", file: !3, line: 35)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 34, column: 62)
!99 = distinct !DILexicalBlock(scope: !88, file: !3, line: 34, column: 6)
!100 = !DILocation(line: 28, column: 40, scope: !88)
!101 = !DILocation(line: 28, column: 58, scope: !88)
!102 = !DILocation(line: 29, column: 19, scope: !88)
!103 = !DILocation(line: 29, column: 30, scope: !88)
!104 = !DILocation(line: 29, column: 39, scope: !88)
!105 = !DILocation(line: 29, column: 49, scope: !88)
!106 = !DILocation(line: 31, column: 2, scope: !88)
!107 = !DILocation(line: 31, column: 16, scope: !88)
!108 = !DILocation(line: 34, column: 6, scope: !99)
!109 = !DILocation(line: 34, column: 6, scope: !88)
!110 = !DILocation(line: 34, column: 62, scope: !99)
!111 = !DILocation(line: 35, column: 1, scope: !98)
!112 = !DILocation(line: 35, column: 8, scope: !98)
!113 = !DILocation(line: 35, column: 14, scope: !98)
!114 = !DILocation(line: 36, column: 3, scope: !98)
!115 = !DILocation(line: 39, column: 2, scope: !88)
!116 = !DILocation(line: 40, column: 22, scope: !88)
!117 = !DILocation(line: 40, column: 27, scope: !88)
!118 = !DILocation(line: 40, column: 32, scope: !88)
!119 = !DILocation(line: 40, column: 9, scope: !88)
!120 = !DILocation(line: 40, column: 7, scope: !88)
!121 = !DILocation(line: 41, column: 7, scope: !122)
!122 = distinct !DILexicalBlock(scope: !88, file: !3, line: 41, column: 6)
!123 = !DILocation(line: 41, column: 6, scope: !88)
!124 = !DILocation(line: 42, column: 3, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !3, line: 41, column: 13)
!126 = !DILocation(line: 43, column: 3, scope: !125)
!127 = !DILocation(line: 46, column: 10, scope: !88)
!128 = !DILocation(line: 46, column: 2, scope: !88)
!129 = !DILocation(line: 48, column: 30, scope: !130)
!130 = distinct !DILexicalBlock(scope: !88, file: !3, line: 46, column: 15)
!131 = !DILocation(line: 48, column: 37, scope: !130)
!132 = !DILocation(line: 48, column: 35, scope: !130)
!133 = !DILocation(line: 48, column: 12, scope: !130)
!134 = !DILocation(line: 48, column: 4, scope: !130)
!135 = !DILocation(line: 48, column: 10, scope: !130)
!136 = !DILocation(line: 49, column: 3, scope: !130)
!137 = !DILocation(line: 51, column: 30, scope: !130)
!138 = !DILocation(line: 51, column: 37, scope: !130)
!139 = !DILocation(line: 51, column: 35, scope: !130)
!140 = !DILocation(line: 51, column: 12, scope: !130)
!141 = !DILocation(line: 51, column: 4, scope: !130)
!142 = !DILocation(line: 51, column: 10, scope: !130)
!143 = !DILocation(line: 52, column: 3, scope: !130)
!144 = !DILocation(line: 54, column: 30, scope: !130)
!145 = !DILocation(line: 54, column: 37, scope: !130)
!146 = !DILocation(line: 54, column: 35, scope: !130)
!147 = !DILocation(line: 54, column: 12, scope: !130)
!148 = !DILocation(line: 54, column: 4, scope: !130)
!149 = !DILocation(line: 54, column: 10, scope: !130)
!150 = !DILocation(line: 55, column: 3, scope: !130)
!151 = !DILocation(line: 57, column: 2, scope: !88)
!152 = !DILocation(line: 59, column: 2, scope: !88)
!153 = !DILocation(line: 60, column: 1, scope: !88)
!154 = distinct !DISubprogram(name: "pci_mmcfg_write", scope: !3, file: !3, line: 62, type: !77, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162}
!156 = !DILocalVariable(name: "seg", arg: 1, scope: !154, file: !3, line: 62, type: !71)
!157 = !DILocalVariable(name: "bus", arg: 2, scope: !154, file: !3, line: 62, type: !71)
!158 = !DILocalVariable(name: "devfn", arg: 3, scope: !154, file: !3, line: 63, type: !71)
!159 = !DILocalVariable(name: "reg", arg: 4, scope: !154, file: !3, line: 63, type: !70)
!160 = !DILocalVariable(name: "len", arg: 5, scope: !154, file: !3, line: 63, type: !70)
!161 = !DILocalVariable(name: "value", arg: 6, scope: !154, file: !3, line: 63, type: !73)
!162 = !DILocalVariable(name: "addr", scope: !154, file: !3, line: 65, type: !43)
!163 = !DILocation(line: 62, column: 41, scope: !154)
!164 = !DILocation(line: 62, column: 59, scope: !154)
!165 = !DILocation(line: 63, column: 20, scope: !154)
!166 = !DILocation(line: 63, column: 31, scope: !154)
!167 = !DILocation(line: 63, column: 40, scope: !154)
!168 = !DILocation(line: 63, column: 49, scope: !154)
!169 = !DILocation(line: 65, column: 2, scope: !154)
!170 = !DILocation(line: 65, column: 16, scope: !154)
!171 = !DILocation(line: 68, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !154, file: !3, line: 68, column: 6)
!173 = !DILocation(line: 68, column: 6, scope: !154)
!174 = !DILocation(line: 69, column: 3, scope: !172)
!175 = !DILocation(line: 71, column: 2, scope: !154)
!176 = !DILocation(line: 72, column: 22, scope: !154)
!177 = !DILocation(line: 72, column: 27, scope: !154)
!178 = !DILocation(line: 72, column: 32, scope: !154)
!179 = !DILocation(line: 72, column: 9, scope: !154)
!180 = !DILocation(line: 72, column: 7, scope: !154)
!181 = !DILocation(line: 73, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !154, file: !3, line: 73, column: 6)
!183 = !DILocation(line: 73, column: 6, scope: !154)
!184 = !DILocation(line: 74, column: 3, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 73, column: 13)
!186 = !DILocation(line: 75, column: 3, scope: !185)
!187 = !DILocation(line: 78, column: 10, scope: !154)
!188 = !DILocation(line: 78, column: 2, scope: !154)
!189 = !DILocation(line: 80, column: 22, scope: !190)
!190 = distinct !DILexicalBlock(scope: !154, file: !3, line: 78, column: 15)
!191 = !DILocation(line: 80, column: 29, scope: !190)
!192 = !DILocation(line: 80, column: 27, scope: !190)
!193 = !DILocation(line: 80, column: 34, scope: !190)
!194 = !DILocation(line: 80, column: 3, scope: !190)
!195 = !DILocation(line: 81, column: 3, scope: !190)
!196 = !DILocation(line: 83, column: 22, scope: !190)
!197 = !DILocation(line: 83, column: 29, scope: !190)
!198 = !DILocation(line: 83, column: 27, scope: !190)
!199 = !DILocation(line: 83, column: 34, scope: !190)
!200 = !DILocation(line: 83, column: 3, scope: !190)
!201 = !DILocation(line: 84, column: 3, scope: !190)
!202 = !DILocation(line: 86, column: 22, scope: !190)
!203 = !DILocation(line: 86, column: 29, scope: !190)
!204 = !DILocation(line: 86, column: 27, scope: !190)
!205 = !DILocation(line: 86, column: 34, scope: !190)
!206 = !DILocation(line: 86, column: 3, scope: !190)
!207 = !DILocation(line: 87, column: 3, scope: !190)
!208 = !DILocation(line: 89, column: 2, scope: !154)
!209 = !DILocation(line: 91, column: 2, scope: !154)
!210 = !DILocation(line: 92, column: 1, scope: !154)
!211 = distinct !DISubprogram(name: "pci_mmcfg_arch_init", scope: !3, file: !3, line: 114, type: !212, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{!70}
!214 = !{!215, !216, !219}
!215 = !DILocalVariable(name: "cfg", scope: !211, file: !3, line: 116, type: !6)
!216 = !DILocalVariable(name: "__mptr", scope: !217, file: !3, line: 118, type: !5)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 118, column: 2)
!218 = distinct !DILexicalBlock(scope: !211, file: !3, line: 118, column: 2)
!219 = !DILocalVariable(name: "__mptr", scope: !220, file: !3, line: 118, type: !5)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 118, column: 2)
!221 = distinct !DILexicalBlock(scope: !218, file: !3, line: 118, column: 2)
!222 = !DILocation(line: 116, column: 2, scope: !211)
!223 = !DILocation(line: 116, column: 27, scope: !211)
!224 = !DILocation(line: 118, column: 2, scope: !217)
!225 = !DILocation(line: 118, column: 2, scope: !218)
!226 = !DILocation(line: 118, column: 2, scope: !221)
!227 = !DILocation(line: 119, column: 26, scope: !228)
!228 = distinct !DILexicalBlock(scope: !221, file: !3, line: 119, column: 7)
!229 = !DILocation(line: 119, column: 7, scope: !228)
!230 = !DILocation(line: 119, column: 7, scope: !221)
!231 = !DILocation(line: 120, column: 4, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !3, line: 119, column: 32)
!233 = !DILocation(line: 121, column: 4, scope: !232)
!234 = !DILocation(line: 119, column: 29, scope: !228)
!235 = !DILocation(line: 118, column: 2, scope: !220)
!236 = distinct !{!236, !225, !237, !238, !239}
!237 = !DILocation(line: 122, column: 3, scope: !218)
!238 = !{!"llvm.loop.mustprogress"}
!239 = !{!"llvm.loop.unroll.disable"}
!240 = !DILocation(line: 124, column: 18, scope: !211)
!241 = !DILocation(line: 126, column: 2, scope: !211)
!242 = !DILocation(line: 127, column: 1, scope: !211)
!243 = distinct !DISubprogram(name: "pci_mmcfg_arch_map", scope: !3, file: !3, line: 137, type: !244, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{!70, !6}
!246 = !{!247}
!247 = !DILocalVariable(name: "cfg", arg: 1, scope: !243, file: !3, line: 137, type: !6)
!248 = !DILocation(line: 137, column: 49, scope: !243)
!249 = !DILocation(line: 139, column: 27, scope: !243)
!250 = !DILocation(line: 139, column: 14, scope: !243)
!251 = !DILocation(line: 139, column: 2, scope: !243)
!252 = !DILocation(line: 139, column: 7, scope: !243)
!253 = !DILocation(line: 139, column: 12, scope: !243)
!254 = !DILocation(line: 140, column: 7, scope: !255)
!255 = distinct !DILexicalBlock(scope: !243, file: !3, line: 140, column: 6)
!256 = !DILocation(line: 140, column: 12, scope: !255)
!257 = !DILocation(line: 140, column: 6, scope: !243)
!258 = !DILocation(line: 141, column: 3, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 141, column: 3)
!260 = distinct !DILexicalBlock(scope: !255, file: !3, line: 140, column: 18)
!261 = !DILocation(line: 141, column: 3, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !3, line: 141, column: 3)
!263 = !DILocation(line: 142, column: 3, scope: !260)
!264 = !DILocation(line: 145, column: 2, scope: !243)
!265 = !DILocation(line: 146, column: 1, scope: !243)
!266 = distinct !DISubprogram(name: "pci_mmcfg_arch_free", scope: !3, file: !3, line: 129, type: !267, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !269)
!267 = !DISubroutineType(types: !268)
!268 = !{null}
!269 = !{!270, !271, !274}
!270 = !DILocalVariable(name: "cfg", scope: !266, file: !3, line: 131, type: !6)
!271 = !DILocalVariable(name: "__mptr", scope: !272, file: !3, line: 133, type: !5)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 133, column: 2)
!273 = distinct !DILexicalBlock(scope: !266, file: !3, line: 133, column: 2)
!274 = !DILocalVariable(name: "__mptr", scope: !275, file: !3, line: 133, type: !5)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 133, column: 2)
!276 = distinct !DILexicalBlock(scope: !273, file: !3, line: 133, column: 2)
!277 = !DILocation(line: 131, column: 2, scope: !266)
!278 = !DILocation(line: 131, column: 27, scope: !266)
!279 = !DILocation(line: 133, column: 2, scope: !272)
!280 = !DILocation(line: 133, column: 2, scope: !273)
!281 = !DILocation(line: 133, column: 2, scope: !276)
!282 = !DILocation(line: 134, column: 24, scope: !276)
!283 = !DILocation(line: 134, column: 3, scope: !276)
!284 = !DILocation(line: 133, column: 2, scope: !275)
!285 = distinct !{!285, !280, !286, !238, !239}
!286 = !DILocation(line: 134, column: 27, scope: !273)
!287 = !DILocation(line: 135, column: 1, scope: !266)
!288 = distinct !DISubprogram(name: "pci_mmcfg_arch_unmap", scope: !3, file: !3, line: 148, type: !289, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !6}
!291 = !{!292}
!292 = !DILocalVariable(name: "cfg", arg: 1, scope: !288, file: !3, line: 148, type: !6)
!293 = !DILocation(line: 148, column: 52, scope: !288)
!294 = !DILocation(line: 150, column: 6, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !3, line: 150, column: 6)
!296 = !DILocation(line: 150, column: 10, scope: !295)
!297 = !DILocation(line: 150, column: 13, scope: !295)
!298 = !DILocation(line: 150, column: 18, scope: !295)
!299 = !DILocation(line: 150, column: 6, scope: !288)
!300 = !DILocation(line: 151, column: 11, scope: !301)
!301 = distinct !DILexicalBlock(scope: !295, file: !3, line: 150, column: 24)
!302 = !DILocation(line: 151, column: 16, scope: !301)
!303 = !DILocation(line: 151, column: 23, scope: !301)
!304 = !DILocation(line: 151, column: 21, scope: !301)
!305 = !DILocation(line: 151, column: 3, scope: !301)
!306 = !DILocation(line: 152, column: 3, scope: !301)
!307 = !DILocation(line: 152, column: 8, scope: !301)
!308 = !DILocation(line: 152, column: 13, scope: !301)
!309 = !DILocation(line: 153, column: 2, scope: !301)
!310 = !DILocation(line: 154, column: 1, scope: !288)
!311 = distinct !DISubprogram(name: "mcfg_ioremap", scope: !3, file: !3, line: 99, type: !312, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!312 = !DISubroutineType(types: !4)
!313 = !{!314, !315, !316, !317, !318}
!314 = !DILocalVariable(name: "cfg", arg: 1, scope: !311, file: !3, line: 99, type: !6)
!315 = !DILocalVariable(name: "addr", scope: !311, file: !3, line: 101, type: !5)
!316 = !DILocalVariable(name: "start", scope: !311, file: !3, line: 102, type: !24)
!317 = !DILocalVariable(name: "size", scope: !311, file: !3, line: 102, type: !24)
!318 = !DILocalVariable(name: "num_buses", scope: !311, file: !3, line: 103, type: !70)
!319 = !DILocation(line: 99, column: 60, scope: !311)
!320 = !DILocation(line: 101, column: 2, scope: !311)
!321 = !DILocation(line: 101, column: 16, scope: !311)
!322 = !DILocation(line: 102, column: 2, scope: !311)
!323 = !DILocation(line: 102, column: 6, scope: !311)
!324 = !DILocation(line: 102, column: 13, scope: !311)
!325 = !DILocation(line: 103, column: 2, scope: !311)
!326 = !DILocation(line: 103, column: 6, scope: !311)
!327 = !DILocation(line: 105, column: 10, scope: !311)
!328 = !DILocation(line: 105, column: 15, scope: !311)
!329 = !DILocation(line: 105, column: 25, scope: !311)
!330 = !DILocation(line: 105, column: 23, scope: !311)
!331 = !DILocation(line: 105, column: 8, scope: !311)
!332 = !DILocation(line: 106, column: 14, scope: !311)
!333 = !DILocation(line: 106, column: 19, scope: !311)
!334 = !DILocation(line: 106, column: 29, scope: !311)
!335 = !DILocation(line: 106, column: 34, scope: !311)
!336 = !DILocation(line: 106, column: 27, scope: !311)
!337 = !DILocation(line: 106, column: 44, scope: !311)
!338 = !DILocation(line: 106, column: 12, scope: !311)
!339 = !DILocation(line: 107, column: 9, scope: !311)
!340 = !DILocation(line: 107, column: 7, scope: !311)
!341 = !DILocation(line: 108, column: 17, scope: !311)
!342 = !DILocation(line: 108, column: 24, scope: !311)
!343 = !DILocation(line: 108, column: 9, scope: !311)
!344 = !DILocation(line: 108, column: 7, scope: !311)
!345 = !DILocation(line: 109, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !311, file: !3, line: 109, column: 6)
!347 = !DILocation(line: 109, column: 6, scope: !311)
!348 = !DILocation(line: 110, column: 11, scope: !346)
!349 = !DILocation(line: 110, column: 8, scope: !346)
!350 = !DILocation(line: 110, column: 3, scope: !346)
!351 = !DILocation(line: 111, column: 9, scope: !311)
!352 = !DILocation(line: 112, column: 1, scope: !311)
!353 = !DILocation(line: 111, column: 2, scope: !311)
!354 = !DISubprogram(name: "_printk", scope: !355, file: !355, line: 153, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!356 = !DISubroutineType(types: !357)
!357 = !{!70, !31, null}
!358 = !DISubprogram(name: "iounmap", scope: !359, file: !359, line: 199, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!364 = distinct !DISubprogram(name: "rcu_read_lock", scope: !365, file: !365, line: 782, type: !267, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!365 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!366 = !DILocation(line: 784, column: 2, scope: !364)
!367 = !DILocation(line: 786, column: 2, scope: !364)
!368 = !DILocation(line: 786, column: 2, scope: !369)
!369 = distinct !DILexicalBlock(scope: !364, file: !365, line: 786, column: 2)
!370 = !DILocation(line: 787, column: 2, scope: !364)
!371 = !DILocation(line: 787, column: 2, scope: !372)
!372 = distinct !DILexicalBlock(scope: !364, file: !365, line: 787, column: 2)
!373 = !DILocation(line: 789, column: 1, scope: !364)
!374 = distinct !DISubprogram(name: "pci_dev_base", scope: !3, file: !3, line: 19, type: !375, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!43, !71, !71, !71}
!377 = !{!378, !379, !380, !381}
!378 = !DILocalVariable(name: "seg", arg: 1, scope: !374, file: !3, line: 19, type: !71)
!379 = !DILocalVariable(name: "bus", arg: 2, scope: !374, file: !3, line: 19, type: !71)
!380 = !DILocalVariable(name: "devfn", arg: 3, scope: !374, file: !3, line: 19, type: !71)
!381 = !DILocalVariable(name: "cfg", scope: !374, file: !3, line: 21, type: !6)
!382 = !DILocation(line: 19, column: 48, scope: !374)
!383 = !DILocation(line: 19, column: 66, scope: !374)
!384 = !DILocation(line: 19, column: 84, scope: !374)
!385 = !DILocation(line: 21, column: 2, scope: !374)
!386 = !DILocation(line: 21, column: 27, scope: !374)
!387 = !DILocation(line: 21, column: 53, scope: !374)
!388 = !DILocation(line: 21, column: 58, scope: !374)
!389 = !DILocation(line: 21, column: 33, scope: !374)
!390 = !DILocation(line: 23, column: 6, scope: !391)
!391 = distinct !DILexicalBlock(scope: !374, file: !3, line: 23, column: 6)
!392 = !DILocation(line: 23, column: 10, scope: !391)
!393 = !DILocation(line: 23, column: 13, scope: !391)
!394 = !DILocation(line: 23, column: 18, scope: !391)
!395 = !DILocation(line: 23, column: 6, scope: !374)
!396 = !DILocation(line: 24, column: 10, scope: !391)
!397 = !DILocation(line: 24, column: 15, scope: !391)
!398 = !DILocation(line: 24, column: 23, scope: !391)
!399 = !DILocation(line: 24, column: 52, scope: !391)
!400 = !DILocation(line: 24, column: 58, scope: !391)
!401 = !DILocation(line: 24, column: 49, scope: !391)
!402 = !DILocation(line: 24, column: 20, scope: !391)
!403 = !DILocation(line: 24, column: 3, scope: !391)
!404 = !DILocation(line: 25, column: 2, scope: !374)
!405 = !DILocation(line: 26, column: 1, scope: !374)
!406 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !365, file: !365, line: 813, type: !267, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!407 = !DILocation(line: 815, column: 2, scope: !406)
!408 = !DILocation(line: 815, column: 2, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !365, line: 815, column: 2)
!410 = !DILocation(line: 818, column: 2, scope: !406)
!411 = !DILocation(line: 819, column: 2, scope: !406)
!412 = !DILocation(line: 819, column: 2, scope: !413)
!413 = distinct !DILexicalBlock(scope: !406, file: !365, line: 819, column: 2)
!414 = !DILocation(line: 820, column: 1, scope: !406)
!415 = distinct !DISubprogram(name: "mmio_config_readb", scope: !8, file: !8, line: 202, type: !416, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{!51, !5}
!418 = !{!419, !420}
!419 = !DILocalVariable(name: "pos", arg: 1, scope: !415, file: !8, line: 202, type: !5)
!420 = !DILocalVariable(name: "val", scope: !415, file: !8, line: 204, type: !49)
!421 = !DILocation(line: 202, column: 61, scope: !415)
!422 = !DILocation(line: 204, column: 2, scope: !415)
!423 = !DILocation(line: 204, column: 5, scope: !415)
!424 = !DILocation(line: 205, column: 52, scope: !415)
!425 = !DILocation(line: 205, column: 2, scope: !415)
!426 = !{i64 8168863}
!427 = !DILocation(line: 206, column: 9, scope: !415)
!428 = !DILocation(line: 207, column: 1, scope: !415)
!429 = !DILocation(line: 206, column: 2, scope: !415)
!430 = distinct !DISubprogram(name: "mmio_config_readw", scope: !8, file: !8, line: 209, type: !431, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!47, !5}
!433 = !{!434, !435}
!434 = !DILocalVariable(name: "pos", arg: 1, scope: !430, file: !8, line: 209, type: !5)
!435 = !DILocalVariable(name: "val", scope: !430, file: !8, line: 211, type: !45)
!436 = !DILocation(line: 209, column: 62, scope: !430)
!437 = !DILocation(line: 211, column: 2, scope: !430)
!438 = !DILocation(line: 211, column: 6, scope: !430)
!439 = !DILocation(line: 212, column: 52, scope: !430)
!440 = !DILocation(line: 212, column: 2, scope: !430)
!441 = !{i64 8169015}
!442 = !DILocation(line: 213, column: 9, scope: !430)
!443 = !DILocation(line: 214, column: 1, scope: !430)
!444 = !DILocation(line: 213, column: 2, scope: !430)
!445 = distinct !DISubprogram(name: "mmio_config_readl", scope: !8, file: !8, line: 216, type: !446, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !448)
!446 = !DISubroutineType(types: !447)
!447 = !{!71, !5}
!448 = !{!449, !450}
!449 = !DILocalVariable(name: "pos", arg: 1, scope: !445, file: !8, line: 216, type: !5)
!450 = !DILocalVariable(name: "val", scope: !445, file: !8, line: 218, type: !73)
!451 = !DILocation(line: 216, column: 60, scope: !445)
!452 = !DILocation(line: 218, column: 2, scope: !445)
!453 = !DILocation(line: 218, column: 6, scope: !445)
!454 = !DILocation(line: 219, column: 53, scope: !445)
!455 = !DILocation(line: 219, column: 2, scope: !445)
!456 = !{i64 8169165}
!457 = !DILocation(line: 220, column: 9, scope: !445)
!458 = !DILocation(line: 221, column: 1, scope: !445)
!459 = !DILocation(line: 220, column: 2, scope: !445)
!460 = !DISubprogram(name: "__rcu_read_lock", scope: !365, file: !365, line: 74, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubprogram(name: "pci_mmconfig_lookup", scope: !8, file: !8, line: 187, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = !DISubroutineType(types: !463)
!463 = !{!6, !70, !70}
!464 = !DISubprogram(name: "__rcu_read_unlock", scope: !365, file: !365, line: 75, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = distinct !DISubprogram(name: "mmio_config_writeb", scope: !8, file: !8, line: 223, type: !466, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !5, !49}
!468 = !{!469, !470}
!469 = !DILocalVariable(name: "pos", arg: 1, scope: !465, file: !8, line: 223, type: !5)
!470 = !DILocalVariable(name: "val", arg: 2, scope: !465, file: !8, line: 223, type: !49)
!471 = !DILocation(line: 223, column: 53, scope: !465)
!472 = !DILocation(line: 223, column: 61, scope: !465)
!473 = !DILocation(line: 225, column: 41, scope: !465)
!474 = !DILocation(line: 225, column: 52, scope: !465)
!475 = !DILocation(line: 225, column: 2, scope: !465)
!476 = !{i64 8169307}
!477 = !DILocation(line: 226, column: 1, scope: !465)
!478 = distinct !DISubprogram(name: "mmio_config_writew", scope: !8, file: !8, line: 228, type: !479, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !5, !45}
!481 = !{!482, !483}
!482 = !DILocalVariable(name: "pos", arg: 1, scope: !478, file: !8, line: 228, type: !5)
!483 = !DILocalVariable(name: "val", arg: 2, scope: !478, file: !8, line: 228, type: !45)
!484 = !DILocation(line: 228, column: 53, scope: !478)
!485 = !DILocation(line: 228, column: 62, scope: !478)
!486 = !DILocation(line: 230, column: 41, scope: !478)
!487 = !DILocation(line: 230, column: 52, scope: !478)
!488 = !DILocation(line: 230, column: 2, scope: !478)
!489 = !{i64 8169447}
!490 = !DILocation(line: 231, column: 1, scope: !478)
!491 = distinct !DISubprogram(name: "mmio_config_writel", scope: !8, file: !8, line: 233, type: !492, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !5, !73}
!494 = !{!495, !496}
!495 = !DILocalVariable(name: "pos", arg: 1, scope: !491, file: !8, line: 233, type: !5)
!496 = !DILocalVariable(name: "val", arg: 2, scope: !491, file: !8, line: 233, type: !73)
!497 = !DILocation(line: 233, column: 53, scope: !491)
!498 = !DILocation(line: 233, column: 62, scope: !491)
!499 = !DILocation(line: 235, column: 42, scope: !491)
!500 = !DILocation(line: 235, column: 53, scope: !491)
!501 = !DILocation(line: 235, column: 2, scope: !491)
!502 = !{i64 8169587}
!503 = !DILocation(line: 236, column: 1, scope: !491)
!504 = !DISubprogram(name: "ioremap", scope: !359, file: !359, line: 196, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!505 = !DISubroutineType(types: !506)
!506 = !{!5, !22, !35}
