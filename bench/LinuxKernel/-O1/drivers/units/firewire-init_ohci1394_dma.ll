; ModuleID = 'drivers/firewire/init_ohci1394_dma.c'
source_filename = "drivers/firewire/init_ohci1394_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.ohci = type { ptr }
%struct.pgprot = type { i64 }

@.str = private unnamed_addr constant [53 x i8] c"\016init_ohci1394_dma: finished initializing OHCI DMA\0A\00", align 1, !dbg !0
@__setup_str_setup_ohci1394_dma = internal constant [13 x i8] c"ohci1394_dma\00", section ".init.rodata", align 1, !dbg !7
@__setup_setup_ohci1394_dma = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_ohci1394_dma, ptr @setup_ohci1394_dma, i32 1 }, section ".init.setup", align 8, !dbg !44
@init_ohci1394_dma_early = hidden global i32 0, section ".init.data", align 4, !dbg !59
@.str.1 = private unnamed_addr constant [61 x i8] c"\016init_ohci1394_dma: initializing OHCI-1394 at %02x:%02x.%x\0A\00", align 1, !dbg !61
@__default_kernel_pte_mask = external dso_local global i64, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"early\00", align 1, !dbg !66
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_setup_ohci1394_dma], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @init_ohci1394_dma_on_all_controllers() #0 section ".init.text" align 16 !dbg !83 {
entry:
  %num = alloca i32, align 4
  %slot = alloca i32, align 4
  %func = alloca i32, align 4
  %class = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #9, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %num, metadata !87, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #9, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !88, metadata !DIExpression()), !dbg !97
  call void @llvm.lifetime.start.p0(i64 4, ptr %func) #9, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %func, metadata !89, metadata !DIExpression()), !dbg !98
  call void @llvm.lifetime.start.p0(i64 4, ptr %class) #9, !dbg !99
  call void @llvm.dbg.declare(metadata ptr %class, metadata !90, metadata !DIExpression()), !dbg !100
  %call = call i32 @early_pci_allowed() #10, !dbg !101
  %tobool = icmp ne i32 %call, 0, !dbg !101
  br i1 %tobool, label %if.end, label %if.then, !dbg !103

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !104

if.end:                                           ; preds = %entry
  store i32 0, ptr %num, align 4, !dbg !105
  br label %for.cond, !dbg !107

for.cond:                                         ; preds = %for.inc21, %if.end
  %0 = load i32, ptr %num, align 4, !dbg !108
  %cmp = icmp slt i32 %0, 32, !dbg !110
  br i1 %cmp, label %for.body, label %for.end23, !dbg !111

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %slot, align 4, !dbg !112
  br label %for.cond1, !dbg !115

for.cond1:                                        ; preds = %for.inc18, %for.body
  %1 = load i32, ptr %slot, align 4, !dbg !116
  %cmp2 = icmp slt i32 %1, 32, !dbg !118
  br i1 %cmp2, label %for.body3, label %for.end20, !dbg !119

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %func, align 4, !dbg !120
  br label %for.cond4, !dbg !123

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %func, align 4, !dbg !124
  %cmp5 = icmp slt i32 %2, 8, !dbg !126
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !127

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %num, align 4, !dbg !128
  %conv = trunc i32 %3 to i8, !dbg !128
  %4 = load i32, ptr %slot, align 4, !dbg !130
  %conv7 = trunc i32 %4 to i8, !dbg !130
  %5 = load i32, ptr %func, align 4, !dbg !131
  %conv8 = trunc i32 %5 to i8, !dbg !131
  %call9 = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv7, i8 noundef zeroext %conv8, i8 noundef zeroext 8) #10, !dbg !132
  store i32 %call9, ptr %class, align 4, !dbg !133
  %6 = load i32, ptr %class, align 4, !dbg !134
  %cmp10 = icmp eq i32 %6, -1, !dbg !136
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !137

if.then12:                                        ; preds = %for.body6
  br label %for.inc, !dbg !138

if.end13:                                         ; preds = %for.body6
  %7 = load i32, ptr %class, align 4, !dbg !139
  %shr = lshr i32 %7, 8, !dbg !141
  %cmp14 = icmp ne i32 %shr, 786448, !dbg !142
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !143

if.then16:                                        ; preds = %if.end13
  br label %for.inc, !dbg !144

if.end17:                                         ; preds = %if.end13
  %8 = load i32, ptr %num, align 4, !dbg !145
  %9 = load i32, ptr %slot, align 4, !dbg !146
  %10 = load i32, ptr %func, align 4, !dbg !147
  call void @init_ohci1394_controller(i32 noundef %8, i32 noundef %9, i32 noundef %10) #11, !dbg !148
  br label %for.end, !dbg !149

for.inc:                                          ; preds = %if.then16, %if.then12
  %11 = load i32, ptr %func, align 4, !dbg !150
  %inc = add i32 %11, 1, !dbg !150
  store i32 %inc, ptr %func, align 4, !dbg !150
  br label %for.cond4, !dbg !151, !llvm.loop !152

for.end:                                          ; preds = %if.end17, %for.cond4
  br label %for.inc18, !dbg !156

for.inc18:                                        ; preds = %for.end
  %12 = load i32, ptr %slot, align 4, !dbg !157
  %inc19 = add i32 %12, 1, !dbg !157
  store i32 %inc19, ptr %slot, align 4, !dbg !157
  br label %for.cond1, !dbg !158, !llvm.loop !159

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21, !dbg !161

for.inc21:                                        ; preds = %for.end20
  %13 = load i32, ptr %num, align 4, !dbg !162
  %inc22 = add i32 %13, 1, !dbg !162
  store i32 %inc22, ptr %num, align 4, !dbg !162
  br label %for.cond, !dbg !163, !llvm.loop !164

for.end23:                                        ; preds = %for.cond
  br label %do.body, !dbg !166

do.body:                                          ; preds = %for.end23
  br label %do.cond, !dbg !168

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !168

do.end:                                           ; preds = %do.cond
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #11, !dbg !166
  store i32 %call24, ptr %tmp, align 4, !dbg !168
  %14 = load i32, ptr %tmp, align 4, !dbg !166
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !170
  br label %cleanup, !dbg !170

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %class) #9, !dbg !170
  call void @llvm.lifetime.end.p0(i64 4, ptr %func) #9, !dbg !170
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #9, !dbg !170
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #9, !dbg !170
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !170

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !171 dso_local i32 @early_pci_allowed() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !175 dso_local i32 @read_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @init_ohci1394_controller(i32 noundef %num, i32 noundef %slot, i32 noundef %func) #4 section ".init.text" align 16 !dbg !181 {
entry:
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %ohci_base = alloca i64, align 8
  %ohci = alloca %struct.ohci, align 8
  %tmp = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !185, metadata !DIExpression()), !dbg !193
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !186, metadata !DIExpression()), !dbg !194
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !187, metadata !DIExpression()), !dbg !195
  call void @llvm.lifetime.start.p0(i64 8, ptr %ohci_base) #9, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %ohci_base, metadata !188, metadata !DIExpression()), !dbg !197
  call void @llvm.lifetime.start.p0(i64 8, ptr %ohci) #9, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %ohci, metadata !189, metadata !DIExpression()), !dbg !199
  br label %do.body, !dbg !200

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !202

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !202

do.end:                                           ; preds = %do.cond
  %0 = load i32, ptr %num.addr, align 4, !dbg !200
  %1 = load i32, ptr %slot.addr, align 4, !dbg !200
  %2 = load i32, ptr %func.addr, align 4, !dbg !200
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %0, i32 noundef %1, i32 noundef %2) #11, !dbg !200
  store i32 %call, ptr %tmp, align 4, !dbg !202
  %3 = load i32, ptr %tmp, align 4, !dbg !200
  %4 = load i32, ptr %num.addr, align 4, !dbg !204
  %conv = trunc i32 %4 to i8, !dbg !204
  %5 = load i32, ptr %slot.addr, align 4, !dbg !205
  %conv1 = trunc i32 %5 to i8, !dbg !205
  %6 = load i32, ptr %func.addr, align 4, !dbg !206
  %conv2 = trunc i32 %6 to i8, !dbg !206
  %call3 = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 16) #10, !dbg !207
  %conv4 = zext i32 %call3 to i64, !dbg !207
  %and = and i64 %conv4, -16, !dbg !208
  store i64 %and, ptr %ohci_base, align 8, !dbg !209
  %7 = load i64, ptr %ohci_base, align 8, !dbg !210
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !210
  %call5 = call i64 @cachemode2protval(i32 noundef 3) #10, !dbg !210
  %or = or i64 -9223372036854775453, %call5, !dbg !210
  %8 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !210
  %and6 = and i64 %or, %8, !dbg !210
  store i64 %and6, ptr %pgprot, align 8, !dbg !210
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !210
  %9 = load i64, ptr %coerce.dive, align 8, !dbg !210
  call void @__set_fixmap(i32 noundef 514, i64 noundef %7, i64 %9) #10, !dbg !210
  %call7 = call i64 @fix_to_virt(i32 noundef 514) #10, !dbg !211
  %10 = inttoptr i64 %call7 to ptr, !dbg !212
  %registers = getelementptr inbounds %struct.ohci, ptr %ohci, i32 0, i32 0, !dbg !213
  store ptr %10, ptr %registers, align 8, !dbg !214
  call void @init_ohci1394_reset_and_init_dma(ptr noundef %ohci) #11, !dbg !215
  call void @llvm.lifetime.end.p0(i64 8, ptr %ohci) #9, !dbg !216
  call void @llvm.lifetime.end.p0(i64 8, ptr %ohci_base) #9, !dbg !216
  ret void, !dbg !216
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !217 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @setup_ohci1394_dma(ptr noundef %opt) #0 section ".init.text" align 16 !dbg !221 {
entry:
  %opt.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opt.addr, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = load ptr, ptr %opt.addr, align 8, !dbg !225
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.2) #10, !dbg !227
  %tobool = icmp ne i32 %call, 0, !dbg !227
  br i1 %tobool, label %if.end, label %if.then, !dbg !228

if.then:                                          ; preds = %entry
  store i32 1, ptr @init_ohci1394_dma_early, align 4, !dbg !229
  br label %if.end, !dbg !230

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !231
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__set_fixmap(i32 noundef %idx, i64 noundef %phys, i64 %flags.coerce) #6 align 16 !dbg !232 {
entry:
  %flags = alloca %struct.pgprot, align 8
  %idx.addr = alloca i32, align 4
  %phys.addr = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0
  store i64 %flags.coerce, ptr %coerce.dive, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !246, metadata !DIExpression()), !dbg !249
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !247, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !248, metadata !DIExpression()), !dbg !251
  %0 = load i32, ptr %idx.addr, align 4, !dbg !252
  %1 = load i64, ptr %phys.addr, align 8, !dbg !253
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0, !dbg !254
  %2 = load i64, ptr %coerce.dive1, align 8, !dbg !254
  call void @native_set_fixmap(i32 noundef %0, i64 noundef %1, i64 %2) #10, !dbg !254
  ret void, !dbg !255
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !256 dso_local i64 @cachemode2protval(i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fix_to_virt(i32 noundef %idx) #7 align 16 !dbg !259 {
entry:
  %idx.addr = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !265, metadata !DIExpression()), !dbg !266
  br label %do.body, !dbg !267

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %idx.addr, align 4, !dbg !268
  %cmp = icmp uge i32 %0, 1536, !dbg !268
  br i1 %cmp, label %if.then, label %if.end, !dbg !271

if.then:                                          ; preds = %do.body
  call void @__compiletime_assert_215() #12, !dbg !268, !srcloc !272
  unreachable, !dbg !268

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !271

do.end:                                           ; preds = %if.end
  %1 = load i32, ptr %idx.addr, align 4, !dbg !273
  %shl = shl i32 %1, 12, !dbg !273
  %conv = zext i32 %shl to i64, !dbg !273
  %sub = sub i64 -8392704, %conv, !dbg !273
  ret i64 %sub, !dbg !274
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @init_ohci1394_reset_and_init_dma(ptr noundef %ohci) #4 section ".init.text" align 16 !dbg !275 {
entry:
  %ohci.addr = alloca ptr, align 8
  %__ms = alloca i64, align 8
  store ptr %ohci, ptr %ohci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ohci.addr, metadata !280, metadata !DIExpression()), !dbg !283
  %0 = load ptr, ptr %ohci.addr, align 8, !dbg !284
  call void @init_ohci1394_soft_reset(ptr noundef %0) #11, !dbg !285
  %1 = load ptr, ptr %ohci.addr, align 8, !dbg !286
  call void @reg_write(ptr noundef %1, i32 noundef 80, i32 noundef 524288) #10, !dbg !287
  %2 = load ptr, ptr %ohci.addr, align 8, !dbg !288
  call void @reg_write(ptr noundef %2, i32 noundef 132, i32 noundef -1) #10, !dbg !289
  %3 = load ptr, ptr %ohci.addr, align 8, !dbg !290
  call void @reg_write(ptr noundef %3, i32 noundef 140, i32 noundef -1) #10, !dbg !291
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ms) #9, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %__ms, metadata !281, metadata !DIExpression()), !dbg !292
  store i64 50, ptr %__ms, align 8, !dbg !292
  br label %while.cond, !dbg !292

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i64, ptr %__ms, align 8, !dbg !292
  %dec = add i64 %4, -1, !dbg !292
  store i64 %dec, ptr %__ms, align 8, !dbg !292
  %tobool = icmp ne i64 %4, 0, !dbg !292
  br i1 %tobool, label %while.body, label %while.end, !dbg !292

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 noundef 4295000) #10, !dbg !293
  br label %while.cond, !dbg !292, !llvm.loop !298

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ms) #9, !dbg !299
  %5 = load ptr, ptr %ohci.addr, align 8, !dbg !300
  call void @init_ohci1394_initialize(ptr noundef %5) #11, !dbg !301
  %6 = load ptr, ptr %ohci.addr, align 8, !dbg !302
  call void @init_ohci1394_wait_for_busresets(ptr noundef %6) #11, !dbg !303
  %7 = load ptr, ptr %ohci.addr, align 8, !dbg !304
  call void @init_ohci1394_enable_physical_dma(ptr noundef %7) #11, !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !307 dso_local void @native_set_fixmap(i32 noundef, i64 noundef, i64) #3

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !310 dso_local void @__compiletime_assert_215() #8

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @init_ohci1394_soft_reset(ptr noundef %ohci) #4 section ".init.text" align 16 !dbg !311 {
entry:
  %ohci.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %ohci, ptr %ohci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ohci.addr, metadata !313, metadata !DIExpression()), !dbg !315
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !316
  call void @llvm.dbg.declare(metadata ptr %i, metadata !314, metadata !DIExpression()), !dbg !317
  %0 = load ptr, ptr %ohci.addr, align 8, !dbg !318
  call void @reg_write(ptr noundef %0, i32 noundef 80, i32 noundef 65536) #10, !dbg !319
  store i32 0, ptr %i, align 4, !dbg !320
  br label %for.cond, !dbg !322

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !323
  %cmp = icmp slt i32 %1, 100, !dbg !325
  br i1 %cmp, label %for.body, label %for.end, !dbg !326

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ohci.addr, align 8, !dbg !327
  %call = call i32 @reg_read(ptr noundef %2, i32 noundef 80) #10, !dbg !330
  %and = and i32 %call, 65536, !dbg !331
  %tobool = icmp ne i32 %and, 0, !dbg !331
  br i1 %tobool, label %if.end, label %if.then, !dbg !332

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !333

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 noundef 4295000) #10, !dbg !334
  br label %for.inc, !dbg !339

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %i, align 4, !dbg !340
  %inc = add i32 %3, 1, !dbg !340
  store i32 %inc, ptr %i, align 4, !dbg !340
  br label %for.cond, !dbg !341, !llvm.loop !342

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !344
  ret void, !dbg !344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reg_write(ptr noundef %ohci, i32 noundef %offset, i32 noundef %data) #6 align 16 !dbg !345 {
entry:
  %ohci.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  store ptr %ohci, ptr %ohci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ohci.addr, metadata !351, metadata !DIExpression()), !dbg !354
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !352, metadata !DIExpression()), !dbg !355
  store i32 %data, ptr %data.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !353, metadata !DIExpression()), !dbg !356
  %0 = load i32, ptr %data.addr, align 4, !dbg !357
  %1 = load ptr, ptr %ohci.addr, align 8, !dbg !358
  %registers = getelementptr inbounds %struct.ohci, ptr %1, i32 0, i32 0, !dbg !359
  %2 = load ptr, ptr %registers, align 8, !dbg !359
  %3 = load i32, ptr %offset.addr, align 4, !dbg !360
  %idx.ext = sext i32 %3 to i64, !dbg !361
  %add.ptr = getelementptr i8, ptr %2, i64 %idx.ext, !dbg !361
  call void @writel(i32 noundef %0, ptr noundef %add.ptr) #10, !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !364 dso_local void @__const_udelay(i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @init_ohci1394_initialize(ptr noundef %ohci) #4 section ".init.text" align 16 !dbg !368 {
entry:
  %ohci.addr = alloca ptr, align 8
  %bus_options = alloca i32, align 4
  %num_ports = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %ohci, ptr %ohci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ohci.addr, metadata !370, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 4, ptr %bus_options) #9, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %bus_options, metadata !371, metadata !DIExpression()), !dbg !380
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_ports) #9, !dbg !381
  call void @llvm.dbg.declare(metadata ptr %num_ports, metadata !372, metadata !DIExpression()), !dbg !382
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !381
  call void @llvm.dbg.declare(metadata ptr %i, metadata !373, metadata !DIExpression()), !dbg !383
  %0 = load ptr, ptr %ohci.addr, align 8, !dbg !384
  %call = call i32 @reg_read(ptr noundef %0, i32 noundef 32) #10, !dbg !385
  store i32 %call, ptr %bus_options, align 4, !dbg !386
  %1 = load i32, ptr %bus_options, align 4, !dbg !387
  %or = or i32 %1, 1610612736, !dbg !387
  store i32 %or, ptr %bus_options, align 4, !dbg !387
  %2 = load i32, ptr %bus_options, align 4, !dbg !388
  %and = and i32 %2, -16711681, !dbg !388
  store i32 %and, ptr %bus_options, align 4, !dbg !388
  %3 = load i32, ptr %bus_options, align 4, !dbg !389
  %and1 = and i32 %3, -402653185, !dbg !389
  store i32 %and1, ptr %bus_options, align 4, !dbg !389
  %4 = load ptr, ptr %ohci.addr, align 8, !dbg !390
  %5 = load i32, ptr %bus_options, align 4, !dbg !391
  call void @reg_write(ptr noundef %4, i32 noundef 32, i32 noundef %5) #10, !dbg !392
  %6 = load ptr, ptr %ohci.addr, align 8, !dbg !393
  call void @reg_write(ptr noundef %6, i32 noundef 232, i32 noundef 65472) #10, !dbg !394
  %7 = load ptr, ptr %ohci.addr, align 8, !dbg !395
  call void @reg_write(ptr noundef %7, i32 noundef 80, i32 noundef 262144) #10, !dbg !396
  %8 = load ptr, ptr %ohci.addr, align 8, !dbg !397
  call void @reg_write(ptr noundef %8, i32 noundef 228, i32 noundef -1) #10, !dbg !398
  %9 = load ptr, ptr %ohci.addr, align 8, !dbg !399
  call void @reg_write(ptr noundef %9, i32 noundef 224, i32 noundef 1024) #10, !dbg !400
  %10 = load ptr, ptr %ohci.addr, align 8, !dbg !401
  call void @reg_write(ptr noundef %10, i32 noundef 228, i32 noundef 1024) #10, !dbg !402
  %11 = load ptr, ptr %ohci.addr, align 8, !dbg !403
  call void @reg_write(ptr noundef %11, i32 noundef 172, i32 noundef -1) #10, !dbg !404
  %12 = load ptr, ptr %ohci.addr, align 8, !dbg !405
  call void @reg_write(ptr noundef %12, i32 noundef 164, i32 noundef -1) #10, !dbg !406
  %13 = load ptr, ptr %ohci.addr, align 8, !dbg !407
  call void @reg_write(ptr noundef %13, i32 noundef 156, i32 noundef -1) #10, !dbg !408
  %14 = load ptr, ptr %ohci.addr, align 8, !dbg !409
  call void @reg_write(ptr noundef %14, i32 noundef 148, i32 noundef -1) #10, !dbg !410
  %15 = load ptr, ptr %ohci.addr, align 8, !dbg !411
  call void @reg_write(ptr noundef %15, i32 noundef 256, i32 noundef -2147483648) #10, !dbg !412
  %16 = load ptr, ptr %ohci.addr, align 8, !dbg !413
  call void @reg_write(ptr noundef %16, i32 noundef 8, i32 noundef 2095) #10, !dbg !414
  %17 = load ptr, ptr %ohci.addr, align 8, !dbg !415
  call void @reg_write(ptr noundef %17, i32 noundef 84, i32 noundef 1073741824) #10, !dbg !416
  %18 = load ptr, ptr %ohci.addr, align 8, !dbg !417
  call void @reg_write(ptr noundef %18, i32 noundef 80, i32 noundef 131072) #10, !dbg !418
  %19 = load ptr, ptr %ohci.addr, align 8, !dbg !419
  %call2 = call zeroext i8 @get_phy_reg(ptr noundef %19, i8 noundef zeroext 2) #11, !dbg !420
  %conv = zext i8 %call2 to i32, !dbg !420
  %and3 = and i32 %conv, 15, !dbg !421
  store i32 %and3, ptr %num_ports, align 4, !dbg !422
  store i32 0, ptr %i, align 4, !dbg !423
  br label %for.cond, !dbg !424

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, ptr %i, align 4, !dbg !425
  %21 = load i32, ptr %num_ports, align 4, !dbg !426
  %cmp = icmp slt i32 %20, %21, !dbg !427
  br i1 %cmp, label %for.body, label %for.end, !dbg !428

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #9, !dbg !429
  call void @llvm.dbg.declare(metadata ptr %status, metadata !374, metadata !DIExpression()), !dbg !430
  %22 = load ptr, ptr %ohci.addr, align 8, !dbg !431
  %23 = load i32, ptr %i, align 4, !dbg !432
  %conv5 = trunc i32 %23 to i8, !dbg !432
  call void @set_phy_reg(ptr noundef %22, i8 noundef zeroext 7, i8 noundef zeroext %conv5) #11, !dbg !433
  %24 = load ptr, ptr %ohci.addr, align 8, !dbg !434
  %call6 = call zeroext i8 @get_phy_reg(ptr noundef %24, i8 noundef zeroext 8) #11, !dbg !435
  %conv7 = zext i8 %call6 to i32, !dbg !435
  store i32 %conv7, ptr %status, align 4, !dbg !436
  %25 = load i32, ptr %status, align 4, !dbg !437
  %and8 = and i32 %25, 32, !dbg !439
  %tobool = icmp ne i32 %and8, 0, !dbg !439
  br i1 %tobool, label %if.then, label %if.end, !dbg !440

if.then:                                          ; preds = %for.body
  %26 = load ptr, ptr %ohci.addr, align 8, !dbg !441
  %27 = load i32, ptr %status, align 4, !dbg !442
  %and9 = and i32 %27, -2, !dbg !443
  %conv10 = trunc i32 %and9 to i8, !dbg !442
  call void @set_phy_reg(ptr noundef %26, i8 noundef zeroext 8, i8 noundef zeroext %conv10) #11, !dbg !444
  br label %if.end, !dbg !444

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #9, !dbg !445
  br label %for.inc, !dbg !446

for.inc:                                          ; preds = %if.end
  %28 = load i32, ptr %i, align 4, !dbg !447
  %inc = add i32 %28, 1, !dbg !447
  store i32 %inc, ptr %i, align 4, !dbg !447
  br label %for.cond, !dbg !448, !llvm.loop !449

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !451
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_ports) #9, !dbg !451
  call void @llvm.lifetime.end.p0(i64 4, ptr %bus_options) #9, !dbg !451
  ret void, !dbg !451
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @init_ohci1394_wait_for_busresets(ptr noundef %ohci) #4 section ".init.text" align 16 !dbg !452 {
entry:
  %ohci.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %events = alloca i32, align 4
  %__ms = alloca i64, align 8
  store ptr %ohci, ptr %ohci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ohci.addr, metadata !454, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %i, metadata !455, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 4, ptr %events) #9, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %events, metadata !456, metadata !DIExpression()), !dbg !465
  store i32 0, ptr %i, align 4, !dbg !466
  br label %for.cond, !dbg !467

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !468
  %cmp = icmp slt i32 %0, 9, !dbg !469
  br i1 %cmp, label %for.body, label %for.end, !dbg !470

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ms) #9, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %__ms, metadata !457, metadata !DIExpression()), !dbg !471
  store i64 200, ptr %__ms, align 8, !dbg !471
  br label %while.cond, !dbg !471

while.cond:                                       ; preds = %while.body, %for.body
  %1 = load i64, ptr %__ms, align 8, !dbg !471
  %dec = add i64 %1, -1, !dbg !471
  store i64 %dec, ptr %__ms, align 8, !dbg !471
  %tobool = icmp ne i64 %1, 0, !dbg !471
  br i1 %tobool, label %while.body, label %while.end, !dbg !471

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 noundef 4295000) #10, !dbg !472
  br label %while.cond, !dbg !471, !llvm.loop !477

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ms) #9, !dbg !478
  %2 = load ptr, ptr %ohci.addr, align 8, !dbg !479
  %call = call i32 @reg_read(ptr noundef %2, i32 noundef 128) #10, !dbg !480
  store i32 %call, ptr %events, align 4, !dbg !481
  %3 = load i32, ptr %events, align 4, !dbg !482
  %and = and i32 %3, 131072, !dbg !484
  %tobool1 = icmp ne i32 %and, 0, !dbg !484
  br i1 %tobool1, label %if.then, label %if.end, !dbg !485

if.then:                                          ; preds = %while.end
  %4 = load ptr, ptr %ohci.addr, align 8, !dbg !486
  call void @reg_write(ptr noundef %4, i32 noundef 132, i32 noundef 131072) #10, !dbg !487
  br label %if.end, !dbg !487

if.end:                                           ; preds = %if.then, %while.end
  br label %for.inc, !dbg !488

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !489
  %inc = add i32 %5, 1, !dbg !489
  store i32 %inc, ptr %i, align 4, !dbg !489
  br label %for.cond, !dbg !490, !llvm.loop !491

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %events) #9, !dbg !493
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !493
  ret void, !dbg !493
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @init_ohci1394_enable_physical_dma(ptr noundef %ohci) #4 section ".init.text" align 16 !dbg !494 {
entry:
  %ohci.addr = alloca ptr, align 8
  store ptr %ohci, ptr %ohci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ohci.addr, metadata !496, metadata !DIExpression()), !dbg !497
  %0 = load ptr, ptr %ohci.addr, align 8, !dbg !498
  call void @reg_write(ptr noundef %0, i32 noundef 272, i32 noundef -1) #10, !dbg !499
  %1 = load ptr, ptr %ohci.addr, align 8, !dbg !500
  call void @reg_write(ptr noundef %1, i32 noundef 280, i32 noundef -1) #10, !dbg !501
  %2 = load ptr, ptr %ohci.addr, align 8, !dbg !502
  call void @reg_write(ptr noundef %2, i32 noundef 288, i32 noundef -65536) #10, !dbg !503
  ret void, !dbg !504
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reg_read(ptr noundef %ohci, i32 noundef %offset) #6 align 16 !dbg !505 {
entry:
  %ohci.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  store ptr %ohci, ptr %ohci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ohci.addr, metadata !509, metadata !DIExpression()), !dbg !511
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !510, metadata !DIExpression()), !dbg !512
  %0 = load ptr, ptr %ohci.addr, align 8, !dbg !513
  %registers = getelementptr inbounds %struct.ohci, ptr %0, i32 0, i32 0, !dbg !514
  %1 = load ptr, ptr %registers, align 8, !dbg !514
  %2 = load i32, ptr %offset.addr, align 4, !dbg !515
  %idx.ext = sext i32 %2 to i64, !dbg !516
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !516
  %call = call i32 @readl(ptr noundef %add.ptr) #10, !dbg !517
  ret i32 %call, !dbg !518
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #6 align 16 !dbg !519 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !527, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !529
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #9, !dbg !529, !srcloc !530
  store i32 %1, ptr %ret, align 4, !dbg !529
  %2 = load i32, ptr %ret, align 4, !dbg !529
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !529
  ret i32 %2, !dbg !529
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #6 align 16 !dbg !531 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !536, metadata !DIExpression()), !dbg !538
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i32, ptr %val.addr, align 4, !dbg !538
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !538
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #9, !dbg !538, !srcloc !539
  ret void, !dbg !538
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i8 @get_phy_reg(ptr noundef %ohci, i8 noundef zeroext %addr) #4 section ".init.text" align 16 !dbg !540 {
entry:
  %ohci.addr = alloca ptr, align 8
  %addr.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store ptr %ohci, ptr %ohci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ohci.addr, metadata !544, metadata !DIExpression()), !dbg !548
  store i8 %addr, ptr %addr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !545, metadata !DIExpression()), !dbg !549
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %i, metadata !546, metadata !DIExpression()), !dbg !551
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #9, !dbg !552
  call void @llvm.dbg.declare(metadata ptr %r, metadata !547, metadata !DIExpression()), !dbg !553
  %0 = load ptr, ptr %ohci.addr, align 8, !dbg !554
  %1 = load i8, ptr %addr.addr, align 1, !dbg !555
  %conv = zext i8 %1 to i32, !dbg !555
  %shl = shl i32 %conv, 8, !dbg !556
  %or = or i32 %shl, 32768, !dbg !557
  call void @reg_write(ptr noundef %0, i32 noundef 236, i32 noundef %or) #10, !dbg !558
  store i32 0, ptr %i, align 4, !dbg !559
  br label %for.cond, !dbg !561

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !562
  %cmp = icmp slt i32 %2, 100, !dbg !564
  br i1 %cmp, label %for.body, label %for.end, !dbg !565

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ohci.addr, align 8, !dbg !566
  %call = call i32 @reg_read(ptr noundef %3, i32 noundef 236) #10, !dbg !569
  %and = and i32 %call, -2147483648, !dbg !570
  %tobool = icmp ne i32 %and, 0, !dbg !570
  br i1 %tobool, label %if.then, label %if.end, !dbg !571

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !572

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 noundef 4295000) #10, !dbg !573
  br label %for.inc, !dbg !578

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !dbg !579
  %inc = add i32 %4, 1, !dbg !579
  store i32 %inc, ptr %i, align 4, !dbg !579
  br label %for.cond, !dbg !580, !llvm.loop !581

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load ptr, ptr %ohci.addr, align 8, !dbg !583
  %call2 = call i32 @reg_read(ptr noundef %5, i32 noundef 236) #10, !dbg !584
  store i32 %call2, ptr %r, align 4, !dbg !585
  %6 = load i32, ptr %r, align 4, !dbg !586
  %and3 = and i32 %6, 16711680, !dbg !587
  %shr = lshr i32 %and3, 16, !dbg !588
  %conv4 = trunc i32 %shr to i8, !dbg !589
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #9, !dbg !590
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !590
  ret i8 %conv4, !dbg !591
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @set_phy_reg(ptr noundef %ohci, i8 noundef zeroext %addr, i8 noundef zeroext %data) #4 section ".init.text" align 16 !dbg !592 {
entry:
  %ohci.addr = alloca ptr, align 8
  %addr.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %ohci, ptr %ohci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ohci.addr, metadata !596, metadata !DIExpression()), !dbg !600
  store i8 %addr, ptr %addr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !597, metadata !DIExpression()), !dbg !601
  store i8 %data, ptr %data.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !598, metadata !DIExpression()), !dbg !602
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !603
  call void @llvm.dbg.declare(metadata ptr %i, metadata !599, metadata !DIExpression()), !dbg !604
  %0 = load ptr, ptr %ohci.addr, align 8, !dbg !605
  %1 = load i8, ptr %addr.addr, align 1, !dbg !606
  %conv = zext i8 %1 to i32, !dbg !606
  %shl = shl i32 %conv, 8, !dbg !607
  %2 = load i8, ptr %data.addr, align 1, !dbg !608
  %conv1 = zext i8 %2 to i32, !dbg !608
  %or = or i32 %shl, %conv1, !dbg !609
  %or2 = or i32 %or, 16384, !dbg !610
  call void @reg_write(ptr noundef %0, i32 noundef 236, i32 noundef %or2) #10, !dbg !611
  store i32 0, ptr %i, align 4, !dbg !612
  br label %for.cond, !dbg !614

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !615
  %cmp = icmp slt i32 %3, 100, !dbg !617
  br i1 %cmp, label %for.body, label %for.end, !dbg !618

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %ohci.addr, align 8, !dbg !619
  %call = call i32 @reg_read(ptr noundef %4, i32 noundef 236) #10, !dbg !622
  %and = and i32 %call, 16384, !dbg !623
  %tobool = icmp ne i32 %and, 0, !dbg !623
  br i1 %tobool, label %if.end, label %if.then, !dbg !624

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !625

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 noundef 4295000) #10, !dbg !626
  br label %for.inc, !dbg !631

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !632
  %inc = add i32 %5, 1, !dbg !632
  store i32 %inc, ptr %i, align 4, !dbg !632
  br label %for.cond, !dbg !633, !llvm.loop !634

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !636
  ret void, !dbg !636
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !637 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: idx >= __end_of_fixed_addresses" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firewire/init_ohci1394_dma.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2212089b6958da5c3ca17a2d33900bdc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 53)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__setup_str_setup_ohci1394_dma", scope: !9, file: !2, line: 296, type: !71, isLocal: true, isDefinition: true, align: 8)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firewire/.init_ohci1394_dma.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/firewire/init_ohci1394_dma\22 -D KBUILD_BASENAME=\22init_ohci1394_dma\22 -D KBUILD_MODNAME=\22init_ohci1394_dma\22 -D __KBUILD_MODNAME=kmod_init_ohci1394_dma -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firewire/init_ohci1394_dma.ll drivers/firewire/init_ohci1394_dma.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !36, globals: !43, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !26}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fixed_addresses", file: !12, line: 81, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./arch/x86/include/asm/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7ee1b51217b4f967bead339632e7de6")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!15 = !DIEnumerator(name: "VSYSCALL_PAGE", value: 511)
!16 = !DIEnumerator(name: "FIX_DBGP_BASE", value: 512)
!17 = !DIEnumerator(name: "FIX_EARLYCON_MEM_BASE", value: 513)
!18 = !DIEnumerator(name: "FIX_OHCI1394_BASE", value: 514)
!19 = !DIEnumerator(name: "FIX_APIC_BASE", value: 515)
!20 = !DIEnumerator(name: "FIX_IO_APIC_BASE_0", value: 516)
!21 = !DIEnumerator(name: "FIX_IO_APIC_BASE_END", value: 643)
!22 = !DIEnumerator(name: "__end_of_permanent_fixed_addresses", value: 644)
!23 = !DIEnumerator(name: "FIX_BTMAP_END", value: 1024)
!24 = !DIEnumerator(name: "FIX_BTMAP_BEGIN", value: 1535)
!25 = !DIEnumerator(name: "__end_of_fixed_addresses", value: 1536)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_cache_mode", file: !27, line: 168, baseType: !13, size: 32, elements: !28)
!27 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!28 = !{!29, !30, !31, !32, !33, !34, !35}
!29 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WB", value: 0)
!30 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WC", value: 1)
!31 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC_MINUS", value: 2)
!32 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC", value: 3)
!33 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WT", value: 4)
!34 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WP", value: 5)
!35 = !DIEnumerator(name: "_PAGE_CACHE_MODE_NUM", value: 8)
!36 = !{!37, !40, !39, !41}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !38, line: 14, baseType: !39)
!38 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!43 = !{!0, !44, !59, !61, !7, !66}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "__setup_setup_ohci1394_dma", scope: !9, file: !2, line: 296, type: !46, isLocal: true, isDefinition: true, align: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !47, line: 324, size: 192, elements: !48)
!47 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!48 = !{!49, !52, !58}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !46, file: !47, line: 325, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !46, file: !47, line: 326, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !57}
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !46, file: !47, line: 327, baseType: !56, size: 32, offset: 128)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "init_ohci1394_dma_early", scope: !9, file: !2, line: 34, type: !56, isLocal: false, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 61)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 290, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 6)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 104, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 13)
!74 = !{i32 7, !"Dwarf Version", i32 5}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 8, !"cf-protection-branch", i32 1}
!78 = !{i32 4, !"function_return_thunk_extern", i32 1}
!79 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!80 = !{i32 1, !"Code Model", i32 2}
!81 = !{i32 1, !"override-stack-alignment", i32 8}
!82 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!83 = distinct !DISubprogram(name: "init_ohci1394_dma_on_all_controllers", scope: !2, file: !2, line: 257, type: !84, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{null}
!86 = !{!87, !88, !89, !90}
!87 = !DILocalVariable(name: "num", scope: !83, file: !2, line: 259, type: !56)
!88 = !DILocalVariable(name: "slot", scope: !83, file: !2, line: 259, type: !56)
!89 = !DILocalVariable(name: "func", scope: !83, file: !2, line: 259, type: !56)
!90 = !DILocalVariable(name: "class", scope: !83, file: !2, line: 260, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !92, line: 21, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !94, line: 27, baseType: !13)
!94 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!95 = !DILocation(line: 259, column: 2, scope: !83)
!96 = !DILocation(line: 259, column: 6, scope: !83)
!97 = !DILocation(line: 259, column: 11, scope: !83)
!98 = !DILocation(line: 259, column: 17, scope: !83)
!99 = !DILocation(line: 260, column: 2, scope: !83)
!100 = !DILocation(line: 260, column: 6, scope: !83)
!101 = !DILocation(line: 262, column: 7, scope: !102)
!102 = distinct !DILexicalBlock(scope: !83, file: !2, line: 262, column: 6)
!103 = !DILocation(line: 262, column: 6, scope: !83)
!104 = !DILocation(line: 263, column: 3, scope: !102)
!105 = !DILocation(line: 266, column: 11, scope: !106)
!106 = distinct !DILexicalBlock(scope: !83, file: !2, line: 266, column: 2)
!107 = !DILocation(line: 266, column: 7, scope: !106)
!108 = !DILocation(line: 266, column: 16, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !2, line: 266, column: 2)
!110 = !DILocation(line: 266, column: 20, scope: !109)
!111 = !DILocation(line: 266, column: 2, scope: !106)
!112 = !DILocation(line: 267, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 267, column: 3)
!114 = distinct !DILexicalBlock(scope: !109, file: !2, line: 266, column: 33)
!115 = !DILocation(line: 267, column: 8, scope: !113)
!116 = !DILocation(line: 267, column: 18, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !2, line: 267, column: 3)
!118 = !DILocation(line: 267, column: 23, scope: !117)
!119 = !DILocation(line: 267, column: 3, scope: !113)
!120 = !DILocation(line: 268, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 268, column: 4)
!122 = distinct !DILexicalBlock(scope: !117, file: !2, line: 267, column: 37)
!123 = !DILocation(line: 268, column: 9, scope: !121)
!124 = !DILocation(line: 268, column: 19, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !2, line: 268, column: 4)
!126 = !DILocation(line: 268, column: 24, scope: !125)
!127 = !DILocation(line: 268, column: 4, scope: !121)
!128 = !DILocation(line: 269, column: 29, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !2, line: 268, column: 37)
!130 = !DILocation(line: 269, column: 34, scope: !129)
!131 = !DILocation(line: 269, column: 40, scope: !129)
!132 = !DILocation(line: 269, column: 13, scope: !129)
!133 = !DILocation(line: 269, column: 11, scope: !129)
!134 = !DILocation(line: 271, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !2, line: 271, column: 9)
!136 = !DILocation(line: 271, column: 15, scope: !135)
!137 = !DILocation(line: 271, column: 9, scope: !129)
!138 = !DILocation(line: 272, column: 6, scope: !135)
!139 = !DILocation(line: 274, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !129, file: !2, line: 274, column: 9)
!141 = !DILocation(line: 274, column: 14, scope: !140)
!142 = !DILocation(line: 274, column: 18, scope: !140)
!143 = !DILocation(line: 274, column: 9, scope: !129)
!144 = !DILocation(line: 275, column: 6, scope: !140)
!145 = !DILocation(line: 277, column: 30, scope: !129)
!146 = !DILocation(line: 277, column: 35, scope: !129)
!147 = !DILocation(line: 277, column: 41, scope: !129)
!148 = !DILocation(line: 277, column: 5, scope: !129)
!149 = !DILocation(line: 278, column: 5, scope: !129)
!150 = !DILocation(line: 268, column: 33, scope: !125)
!151 = !DILocation(line: 268, column: 4, scope: !125)
!152 = distinct !{!152, !127, !153, !154, !155}
!153 = !DILocation(line: 279, column: 4, scope: !121)
!154 = !{!"llvm.loop.mustprogress"}
!155 = !{!"llvm.loop.unroll.disable"}
!156 = !DILocation(line: 280, column: 3, scope: !122)
!157 = !DILocation(line: 267, column: 33, scope: !117)
!158 = !DILocation(line: 267, column: 3, scope: !117)
!159 = distinct !{!159, !119, !160, !154, !155}
!160 = !DILocation(line: 280, column: 3, scope: !113)
!161 = !DILocation(line: 281, column: 2, scope: !114)
!162 = !DILocation(line: 266, column: 29, scope: !109)
!163 = !DILocation(line: 266, column: 2, scope: !109)
!164 = distinct !{!164, !111, !165, !154, !155}
!165 = !DILocation(line: 281, column: 2, scope: !106)
!166 = !DILocation(line: 282, column: 2, scope: !167)
!167 = distinct !DILexicalBlock(scope: !83, file: !2, line: 282, column: 2)
!168 = !DILocation(line: 282, column: 2, scope: !169)
!169 = distinct !DILexicalBlock(scope: !167, file: !2, line: 282, column: 2)
!170 = !DILocation(line: 283, column: 1, scope: !83)
!171 = !DISubprogram(name: "early_pci_allowed", scope: !172, file: !172, line: 17, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DIFile(filename: "./arch/x86/include/asm/pci-direct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09799ff96bfe39e3d200f5cb3dffbc74")
!173 = !DISubroutineType(types: !174)
!174 = !{!56}
!175 = !DISubprogram(name: "read_pci_config", scope: !172, file: !172, line: 10, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{!91, !178, !178, !178, !178}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !92, line: 17, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !94, line: 21, baseType: !180)
!180 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!181 = distinct !DISubprogram(name: "init_ohci1394_controller", scope: !2, file: !2, line: 235, type: !182, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !56, !56, !56}
!184 = !{!185, !186, !187, !188, !189}
!185 = !DILocalVariable(name: "num", arg: 1, scope: !181, file: !2, line: 235, type: !56)
!186 = !DILocalVariable(name: "slot", arg: 2, scope: !181, file: !2, line: 235, type: !56)
!187 = !DILocalVariable(name: "func", arg: 3, scope: !181, file: !2, line: 235, type: !56)
!188 = !DILocalVariable(name: "ohci_base", scope: !181, file: !2, line: 237, type: !39)
!189 = !DILocalVariable(name: "ohci", scope: !181, file: !2, line: 238, type: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ohci", file: !2, line: 36, size: 64, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "registers", scope: !190, file: !2, line: 37, baseType: !40, size: 64)
!193 = !DILocation(line: 235, column: 56, scope: !181)
!194 = !DILocation(line: 235, column: 65, scope: !181)
!195 = !DILocation(line: 235, column: 75, scope: !181)
!196 = !DILocation(line: 237, column: 2, scope: !181)
!197 = !DILocation(line: 237, column: 16, scope: !181)
!198 = !DILocation(line: 238, column: 2, scope: !181)
!199 = !DILocation(line: 238, column: 14, scope: !181)
!200 = !DILocation(line: 240, column: 2, scope: !201)
!201 = distinct !DILexicalBlock(scope: !181, file: !2, line: 240, column: 2)
!202 = !DILocation(line: 240, column: 2, scope: !203)
!203 = distinct !DILexicalBlock(scope: !201, file: !2, line: 240, column: 2)
!204 = !DILocation(line: 243, column: 30, scope: !181)
!205 = !DILocation(line: 243, column: 35, scope: !181)
!206 = !DILocation(line: 243, column: 41, scope: !181)
!207 = !DILocation(line: 243, column: 14, scope: !181)
!208 = !DILocation(line: 244, column: 10, scope: !181)
!209 = !DILocation(line: 243, column: 12, scope: !181)
!210 = !DILocation(line: 246, column: 2, scope: !181)
!211 = !DILocation(line: 248, column: 35, scope: !181)
!212 = !DILocation(line: 248, column: 19, scope: !181)
!213 = !DILocation(line: 248, column: 7, scope: !181)
!214 = !DILocation(line: 248, column: 17, scope: !181)
!215 = !DILocation(line: 250, column: 2, scope: !181)
!216 = !DILocation(line: 251, column: 1, scope: !181)
!217 = !DISubprogram(name: "_printk", scope: !218, file: !218, line: 153, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!219 = !DISubroutineType(types: !220)
!220 = !{!56, !50, null}
!221 = distinct !DISubprogram(name: "setup_ohci1394_dma", scope: !2, file: !2, line: 288, type: !54, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !222)
!222 = !{!223}
!223 = !DILocalVariable(name: "opt", arg: 1, scope: !221, file: !2, line: 288, type: !57)
!224 = !DILocation(line: 288, column: 44, scope: !221)
!225 = !DILocation(line: 290, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !2, line: 290, column: 6)
!227 = !DILocation(line: 290, column: 7, scope: !226)
!228 = !DILocation(line: 290, column: 6, scope: !221)
!229 = !DILocation(line: 291, column: 27, scope: !226)
!230 = !DILocation(line: 291, column: 3, scope: !226)
!231 = !DILocation(line: 292, column: 2, scope: !221)
!232 = distinct !DISubprogram(name: "__set_fixmap", scope: !12, file: !12, line: 164, type: !233, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !245)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !11, !235, !240}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !236, line: 159, baseType: !237)
!236 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !92, line: 23, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !94, line: 31, baseType: !239)
!239 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !27, line: 297, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !27, line: 297, size: 64, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !241, file: !27, line: 297, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !38, line: 19, baseType: !39)
!245 = !{!246, !247, !248}
!246 = !DILocalVariable(name: "idx", arg: 1, scope: !232, file: !12, line: 164, type: !11)
!247 = !DILocalVariable(name: "phys", arg: 2, scope: !232, file: !12, line: 165, type: !235)
!248 = !DILocalVariable(name: "flags", arg: 3, scope: !232, file: !12, line: 165, type: !240)
!249 = !DILocation(line: 164, column: 54, scope: !232)
!250 = !DILocation(line: 165, column: 17, scope: !232)
!251 = !DILocation(line: 165, column: 32, scope: !232)
!252 = !DILocation(line: 167, column: 20, scope: !232)
!253 = !DILocation(line: 167, column: 25, scope: !232)
!254 = !DILocation(line: 167, column: 2, scope: !232)
!255 = !DILocation(line: 168, column: 1, scope: !232)
!256 = !DISubprogram(name: "cachemode2protval", scope: !27, file: !27, line: 497, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{!39, !26}
!259 = distinct !DISubprogram(name: "fix_to_virt", scope: !260, file: !260, line: 30, type: !261, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !264)
!260 = !DIFile(filename: "./include/asm-generic/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd8c6683336efdf1b0dfbdd9b73a00ed")
!261 = !DISubroutineType(types: !262)
!262 = !{!39, !263}
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!264 = !{!265}
!265 = !DILocalVariable(name: "idx", arg: 1, scope: !259, file: !260, line: 30, type: !263)
!266 = !DILocation(line: 30, column: 69, scope: !259)
!267 = !DILocation(line: 32, column: 2, scope: !259)
!268 = !DILocation(line: 32, column: 2, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !260, line: 32, column: 2)
!270 = distinct !DILexicalBlock(scope: !259, file: !260, line: 32, column: 2)
!271 = !DILocation(line: 32, column: 2, scope: !270)
!272 = !{i32 -2141265591}
!273 = !DILocation(line: 33, column: 9, scope: !259)
!274 = !DILocation(line: 33, column: 2, scope: !259)
!275 = distinct !DISubprogram(name: "init_ohci1394_reset_and_init_dma", scope: !2, file: !2, line: 206, type: !276, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !279)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!279 = !{!280, !281}
!280 = !DILocalVariable(name: "ohci", arg: 1, scope: !275, file: !2, line: 206, type: !278)
!281 = !DILocalVariable(name: "__ms", scope: !282, file: !2, line: 218, type: !39)
!282 = distinct !DILexicalBlock(scope: !275, file: !2, line: 218, column: 2)
!283 = !DILocation(line: 206, column: 73, scope: !275)
!284 = !DILocation(line: 209, column: 27, scope: !275)
!285 = !DILocation(line: 209, column: 2, scope: !275)
!286 = !DILocation(line: 212, column: 12, scope: !275)
!287 = !DILocation(line: 212, column: 2, scope: !275)
!288 = !DILocation(line: 215, column: 12, scope: !275)
!289 = !DILocation(line: 215, column: 2, scope: !275)
!290 = !DILocation(line: 216, column: 12, scope: !275)
!291 = !DILocation(line: 216, column: 2, scope: !275)
!292 = !DILocation(line: 218, column: 2, scope: !282)
!293 = !DILocation(line: 218, column: 2, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !2, line: 218, column: 2)
!295 = distinct !DILexicalBlock(scope: !296, file: !2, line: 218, column: 2)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 218, column: 2)
!297 = distinct !DILexicalBlock(scope: !282, file: !2, line: 218, column: 2)
!298 = distinct !{!298, !292, !292, !154, !155}
!299 = !DILocation(line: 218, column: 2, scope: !275)
!300 = !DILocation(line: 220, column: 27, scope: !275)
!301 = !DILocation(line: 220, column: 2, scope: !275)
!302 = !DILocation(line: 225, column: 35, scope: !275)
!303 = !DILocation(line: 225, column: 2, scope: !275)
!304 = !DILocation(line: 228, column: 36, scope: !275)
!305 = !DILocation(line: 228, column: 2, scope: !275)
!306 = !DILocation(line: 229, column: 1, scope: !275)
!307 = !DISubprogram(name: "native_set_fixmap", scope: !12, file: !12, line: 160, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !13, !235, !240}
!310 = !DISubprogram(name: "__compiletime_assert_215", scope: !260, file: !260, line: 32, type: !84, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!311 = distinct !DISubprogram(name: "init_ohci1394_soft_reset", scope: !2, file: !2, line: 85, type: !276, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !312)
!312 = !{!313, !314}
!313 = !DILocalVariable(name: "ohci", arg: 1, scope: !311, file: !2, line: 85, type: !278)
!314 = !DILocalVariable(name: "i", scope: !311, file: !2, line: 87, type: !56)
!315 = !DILocation(line: 85, column: 65, scope: !311)
!316 = !DILocation(line: 87, column: 2, scope: !311)
!317 = !DILocation(line: 87, column: 6, scope: !311)
!318 = !DILocation(line: 89, column: 12, scope: !311)
!319 = !DILocation(line: 89, column: 2, scope: !311)
!320 = !DILocation(line: 91, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !311, file: !2, line: 91, column: 2)
!322 = !DILocation(line: 91, column: 7, scope: !321)
!323 = !DILocation(line: 91, column: 14, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !2, line: 91, column: 2)
!325 = !DILocation(line: 91, column: 16, scope: !324)
!326 = !DILocation(line: 91, column: 2, scope: !321)
!327 = !DILocation(line: 92, column: 18, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 92, column: 7)
!329 = distinct !DILexicalBlock(scope: !324, file: !2, line: 91, column: 40)
!330 = !DILocation(line: 92, column: 9, scope: !328)
!331 = !DILocation(line: 93, column: 8, scope: !328)
!332 = !DILocation(line: 92, column: 7, scope: !329)
!333 = !DILocation(line: 94, column: 4, scope: !328)
!334 = !DILocation(line: 95, column: 3, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 95, column: 3)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 95, column: 3)
!337 = distinct !DILexicalBlock(scope: !338, file: !2, line: 95, column: 3)
!338 = distinct !DILexicalBlock(scope: !329, file: !2, line: 95, column: 3)
!339 = !DILocation(line: 96, column: 2, scope: !329)
!340 = !DILocation(line: 91, column: 36, scope: !324)
!341 = !DILocation(line: 91, column: 2, scope: !324)
!342 = distinct !{!342, !326, !343, !154, !155}
!343 = !DILocation(line: 96, column: 2, scope: !321)
!344 = !DILocation(line: 97, column: 1, scope: !311)
!345 = distinct !DISubprogram(name: "reg_write", scope: !2, file: !2, line: 40, type: !346, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !350)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348, !56, !91}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!350 = !{!351, !352, !353}
!351 = !DILocalVariable(name: "ohci", arg: 1, scope: !345, file: !2, line: 40, type: !348)
!352 = !DILocalVariable(name: "offset", arg: 2, scope: !345, file: !2, line: 40, type: !56)
!353 = !DILocalVariable(name: "data", arg: 3, scope: !345, file: !2, line: 40, type: !91)
!354 = !DILocation(line: 40, column: 49, scope: !345)
!355 = !DILocation(line: 40, column: 59, scope: !345)
!356 = !DILocation(line: 40, column: 71, scope: !345)
!357 = !DILocation(line: 42, column: 9, scope: !345)
!358 = !DILocation(line: 42, column: 15, scope: !345)
!359 = !DILocation(line: 42, column: 21, scope: !345)
!360 = !DILocation(line: 42, column: 33, scope: !345)
!361 = !DILocation(line: 42, column: 31, scope: !345)
!362 = !DILocation(line: 42, column: 2, scope: !345)
!363 = !DILocation(line: 43, column: 1, scope: !345)
!364 = !DISubprogram(name: "__const_udelay", scope: !365, file: !365, line: 11, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!365 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!366 = !DISubroutineType(types: !367)
!367 = !{null, !39}
!368 = distinct !DISubprogram(name: "init_ohci1394_initialize", scope: !2, file: !2, line: 104, type: !276, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !369)
!369 = !{!370, !371, !372, !373, !374}
!370 = !DILocalVariable(name: "ohci", arg: 1, scope: !368, file: !2, line: 104, type: !278)
!371 = !DILocalVariable(name: "bus_options", scope: !368, file: !2, line: 106, type: !91)
!372 = !DILocalVariable(name: "num_ports", scope: !368, file: !2, line: 107, type: !56)
!373 = !DILocalVariable(name: "i", scope: !368, file: !2, line: 107, type: !56)
!374 = !DILocalVariable(name: "status", scope: !375, file: !2, line: 158, type: !13)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 157, column: 34)
!376 = distinct !DILexicalBlock(scope: !377, file: !2, line: 157, column: 2)
!377 = distinct !DILexicalBlock(scope: !368, file: !2, line: 157, column: 2)
!378 = !DILocation(line: 104, column: 65, scope: !368)
!379 = !DILocation(line: 106, column: 2, scope: !368)
!380 = !DILocation(line: 106, column: 6, scope: !368)
!381 = !DILocation(line: 107, column: 2, scope: !368)
!382 = !DILocation(line: 107, column: 6, scope: !368)
!383 = !DILocation(line: 107, column: 17, scope: !368)
!384 = !DILocation(line: 110, column: 25, scope: !368)
!385 = !DILocation(line: 110, column: 16, scope: !368)
!386 = !DILocation(line: 110, column: 14, scope: !368)
!387 = !DILocation(line: 111, column: 14, scope: !368)
!388 = !DILocation(line: 112, column: 14, scope: !368)
!389 = !DILocation(line: 113, column: 14, scope: !368)
!390 = !DILocation(line: 114, column: 12, scope: !368)
!391 = !DILocation(line: 114, column: 39, scope: !368)
!392 = !DILocation(line: 114, column: 2, scope: !368)
!393 = !DILocation(line: 117, column: 12, scope: !368)
!394 = !DILocation(line: 117, column: 2, scope: !368)
!395 = !DILocation(line: 120, column: 12, scope: !368)
!396 = !DILocation(line: 120, column: 2, scope: !368)
!397 = !DILocation(line: 124, column: 12, scope: !368)
!398 = !DILocation(line: 124, column: 2, scope: !368)
!399 = !DILocation(line: 127, column: 12, scope: !368)
!400 = !DILocation(line: 127, column: 2, scope: !368)
!401 = !DILocation(line: 131, column: 12, scope: !368)
!402 = !DILocation(line: 131, column: 2, scope: !368)
!403 = !DILocation(line: 134, column: 12, scope: !368)
!404 = !DILocation(line: 134, column: 2, scope: !368)
!405 = !DILocation(line: 135, column: 12, scope: !368)
!406 = !DILocation(line: 135, column: 2, scope: !368)
!407 = !DILocation(line: 136, column: 12, scope: !368)
!408 = !DILocation(line: 136, column: 2, scope: !368)
!409 = !DILocation(line: 137, column: 12, scope: !368)
!410 = !DILocation(line: 137, column: 2, scope: !368)
!411 = !DILocation(line: 140, column: 12, scope: !368)
!412 = !DILocation(line: 140, column: 2, scope: !368)
!413 = !DILocation(line: 143, column: 12, scope: !368)
!414 = !DILocation(line: 143, column: 2, scope: !368)
!415 = !DILocation(line: 149, column: 12, scope: !368)
!416 = !DILocation(line: 149, column: 2, scope: !368)
!417 = !DILocation(line: 153, column: 12, scope: !368)
!418 = !DILocation(line: 153, column: 2, scope: !368)
!419 = !DILocation(line: 156, column: 26, scope: !368)
!420 = !DILocation(line: 156, column: 14, scope: !368)
!421 = !DILocation(line: 156, column: 35, scope: !368)
!422 = !DILocation(line: 156, column: 12, scope: !368)
!423 = !DILocation(line: 157, column: 9, scope: !377)
!424 = !DILocation(line: 157, column: 7, scope: !377)
!425 = !DILocation(line: 157, column: 14, scope: !376)
!426 = !DILocation(line: 157, column: 18, scope: !376)
!427 = !DILocation(line: 157, column: 16, scope: !376)
!428 = !DILocation(line: 157, column: 2, scope: !377)
!429 = !DILocation(line: 158, column: 3, scope: !375)
!430 = !DILocation(line: 158, column: 16, scope: !375)
!431 = !DILocation(line: 160, column: 15, scope: !375)
!432 = !DILocation(line: 160, column: 24, scope: !375)
!433 = !DILocation(line: 160, column: 3, scope: !375)
!434 = !DILocation(line: 161, column: 24, scope: !375)
!435 = !DILocation(line: 161, column: 12, scope: !375)
!436 = !DILocation(line: 161, column: 10, scope: !375)
!437 = !DILocation(line: 163, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !375, file: !2, line: 163, column: 7)
!439 = !DILocation(line: 163, column: 14, scope: !438)
!440 = !DILocation(line: 163, column: 7, scope: !375)
!441 = !DILocation(line: 164, column: 16, scope: !438)
!442 = !DILocation(line: 164, column: 25, scope: !438)
!443 = !DILocation(line: 164, column: 32, scope: !438)
!444 = !DILocation(line: 164, column: 4, scope: !438)
!445 = !DILocation(line: 165, column: 2, scope: !376)
!446 = !DILocation(line: 165, column: 2, scope: !375)
!447 = !DILocation(line: 157, column: 30, scope: !376)
!448 = !DILocation(line: 157, column: 2, scope: !376)
!449 = distinct !{!449, !428, !450, !154, !155}
!450 = !DILocation(line: 165, column: 2, scope: !377)
!451 = !DILocation(line: 166, column: 1, scope: !368)
!452 = distinct !DISubprogram(name: "init_ohci1394_wait_for_busresets", scope: !2, file: !2, line: 177, type: !276, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !453)
!453 = !{!454, !455, !456, !457}
!454 = !DILocalVariable(name: "ohci", arg: 1, scope: !452, file: !2, line: 177, type: !278)
!455 = !DILocalVariable(name: "i", scope: !452, file: !2, line: 179, type: !56)
!456 = !DILocalVariable(name: "events", scope: !452, file: !2, line: 179, type: !56)
!457 = !DILocalVariable(name: "__ms", scope: !458, file: !2, line: 182, type: !39)
!458 = distinct !DILexicalBlock(scope: !459, file: !2, line: 182, column: 3)
!459 = distinct !DILexicalBlock(scope: !460, file: !2, line: 181, column: 26)
!460 = distinct !DILexicalBlock(scope: !461, file: !2, line: 181, column: 2)
!461 = distinct !DILexicalBlock(scope: !452, file: !2, line: 181, column: 2)
!462 = !DILocation(line: 177, column: 73, scope: !452)
!463 = !DILocation(line: 179, column: 2, scope: !452)
!464 = !DILocation(line: 179, column: 6, scope: !452)
!465 = !DILocation(line: 179, column: 9, scope: !452)
!466 = !DILocation(line: 181, column: 9, scope: !461)
!467 = !DILocation(line: 181, column: 7, scope: !461)
!468 = !DILocation(line: 181, column: 14, scope: !460)
!469 = !DILocation(line: 181, column: 16, scope: !460)
!470 = !DILocation(line: 181, column: 2, scope: !461)
!471 = !DILocation(line: 182, column: 3, scope: !458)
!472 = !DILocation(line: 182, column: 3, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !2, line: 182, column: 3)
!474 = distinct !DILexicalBlock(scope: !475, file: !2, line: 182, column: 3)
!475 = distinct !DILexicalBlock(scope: !476, file: !2, line: 182, column: 3)
!476 = distinct !DILexicalBlock(scope: !458, file: !2, line: 182, column: 3)
!477 = distinct !{!477, !471, !471, !154, !155}
!478 = !DILocation(line: 182, column: 3, scope: !459)
!479 = !DILocation(line: 183, column: 21, scope: !459)
!480 = !DILocation(line: 183, column: 12, scope: !459)
!481 = !DILocation(line: 183, column: 10, scope: !459)
!482 = !DILocation(line: 184, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !459, file: !2, line: 184, column: 7)
!484 = !DILocation(line: 184, column: 14, scope: !483)
!485 = !DILocation(line: 184, column: 7, scope: !459)
!486 = !DILocation(line: 185, column: 14, scope: !483)
!487 = !DILocation(line: 185, column: 4, scope: !483)
!488 = !DILocation(line: 187, column: 2, scope: !459)
!489 = !DILocation(line: 181, column: 22, scope: !460)
!490 = !DILocation(line: 181, column: 2, scope: !460)
!491 = distinct !{!491, !470, !492, !154, !155}
!492 = !DILocation(line: 187, column: 2, scope: !461)
!493 = !DILocation(line: 188, column: 1, scope: !452)
!494 = distinct !DISubprogram(name: "init_ohci1394_enable_physical_dma", scope: !2, file: !2, line: 195, type: !276, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !495)
!495 = !{!496}
!496 = !DILocalVariable(name: "ohci", arg: 1, scope: !494, file: !2, line: 195, type: !278)
!497 = !DILocation(line: 195, column: 74, scope: !494)
!498 = !DILocation(line: 197, column: 12, scope: !494)
!499 = !DILocation(line: 197, column: 2, scope: !494)
!500 = !DILocation(line: 198, column: 12, scope: !494)
!501 = !DILocation(line: 198, column: 2, scope: !494)
!502 = !DILocation(line: 199, column: 12, scope: !494)
!503 = !DILocation(line: 199, column: 2, scope: !494)
!504 = !DILocation(line: 200, column: 1, scope: !494)
!505 = distinct !DISubprogram(name: "reg_read", scope: !2, file: !2, line: 45, type: !506, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!91, !348, !56}
!508 = !{!509, !510}
!509 = !DILocalVariable(name: "ohci", arg: 1, scope: !505, file: !2, line: 45, type: !348)
!510 = !DILocalVariable(name: "offset", arg: 2, scope: !505, file: !2, line: 45, type: !56)
!511 = !DILocation(line: 45, column: 47, scope: !505)
!512 = !DILocation(line: 45, column: 57, scope: !505)
!513 = !DILocation(line: 47, column: 15, scope: !505)
!514 = !DILocation(line: 47, column: 21, scope: !505)
!515 = !DILocation(line: 47, column: 33, scope: !505)
!516 = !DILocation(line: 47, column: 31, scope: !505)
!517 = !DILocation(line: 47, column: 9, scope: !505)
!518 = !DILocation(line: 47, column: 2, scope: !505)
!519 = distinct !DISubprogram(name: "readl", scope: !520, file: !520, line: 58, type: !521, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !526)
!520 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!521 = !DISubroutineType(types: !522)
!522 = !{!13, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!526 = !{!527, !528}
!527 = !DILocalVariable(name: "addr", arg: 1, scope: !519, file: !520, line: 58, type: !523)
!528 = !DILocalVariable(name: "ret", scope: !519, file: !520, line: 58, type: !13)
!529 = !DILocation(line: 58, column: 1, scope: !519)
!530 = !{i64 2150820906}
!531 = distinct !DISubprogram(name: "writel", scope: !520, file: !520, line: 66, type: !532, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !535)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !13, !534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!535 = !{!536, !537}
!536 = !DILocalVariable(name: "val", arg: 1, scope: !531, file: !520, line: 66, type: !13)
!537 = !DILocalVariable(name: "addr", arg: 2, scope: !531, file: !520, line: 66, type: !534)
!538 = !DILocation(line: 66, column: 1, scope: !531)
!539 = !{i64 2150823299}
!540 = distinct !DISubprogram(name: "get_phy_reg", scope: !2, file: !2, line: 53, type: !541, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!178, !278, !178}
!543 = !{!544, !545, !546, !547}
!544 = !DILocalVariable(name: "ohci", arg: 1, scope: !540, file: !2, line: 53, type: !278)
!545 = !DILocalVariable(name: "addr", arg: 2, scope: !540, file: !2, line: 53, type: !178)
!546 = !DILocalVariable(name: "i", scope: !540, file: !2, line: 55, type: !56)
!547 = !DILocalVariable(name: "r", scope: !540, file: !2, line: 56, type: !91)
!548 = !DILocation(line: 53, column: 50, scope: !540)
!549 = !DILocation(line: 53, column: 59, scope: !540)
!550 = !DILocation(line: 55, column: 2, scope: !540)
!551 = !DILocation(line: 55, column: 6, scope: !540)
!552 = !DILocation(line: 56, column: 2, scope: !540)
!553 = !DILocation(line: 56, column: 6, scope: !540)
!554 = !DILocation(line: 58, column: 12, scope: !540)
!555 = !DILocation(line: 58, column: 40, scope: !540)
!556 = !DILocation(line: 58, column: 45, scope: !540)
!557 = !DILocation(line: 58, column: 51, scope: !540)
!558 = !DILocation(line: 58, column: 2, scope: !540)
!559 = !DILocation(line: 60, column: 9, scope: !560)
!560 = distinct !DILexicalBlock(scope: !540, file: !2, line: 60, column: 2)
!561 = !DILocation(line: 60, column: 7, scope: !560)
!562 = !DILocation(line: 60, column: 14, scope: !563)
!563 = distinct !DILexicalBlock(scope: !560, file: !2, line: 60, column: 2)
!564 = !DILocation(line: 60, column: 16, scope: !563)
!565 = !DILocation(line: 60, column: 2, scope: !560)
!566 = !DILocation(line: 61, column: 16, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !2, line: 61, column: 7)
!568 = distinct !DILexicalBlock(scope: !563, file: !2, line: 60, column: 40)
!569 = !DILocation(line: 61, column: 7, scope: !567)
!570 = !DILocation(line: 61, column: 43, scope: !567)
!571 = !DILocation(line: 61, column: 7, scope: !568)
!572 = !DILocation(line: 62, column: 4, scope: !567)
!573 = !DILocation(line: 63, column: 3, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !2, line: 63, column: 3)
!575 = distinct !DILexicalBlock(scope: !576, file: !2, line: 63, column: 3)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 63, column: 3)
!577 = distinct !DILexicalBlock(scope: !568, file: !2, line: 63, column: 3)
!578 = !DILocation(line: 64, column: 2, scope: !568)
!579 = !DILocation(line: 60, column: 36, scope: !563)
!580 = !DILocation(line: 60, column: 2, scope: !563)
!581 = distinct !{!581, !565, !582, !154, !155}
!582 = !DILocation(line: 64, column: 2, scope: !560)
!583 = !DILocation(line: 65, column: 15, scope: !540)
!584 = !DILocation(line: 65, column: 6, scope: !540)
!585 = !DILocation(line: 65, column: 4, scope: !540)
!586 = !DILocation(line: 67, column: 10, scope: !540)
!587 = !DILocation(line: 67, column: 12, scope: !540)
!588 = !DILocation(line: 67, column: 26, scope: !540)
!589 = !DILocation(line: 67, column: 9, scope: !540)
!590 = !DILocation(line: 68, column: 1, scope: !540)
!591 = !DILocation(line: 67, column: 2, scope: !540)
!592 = distinct !DISubprogram(name: "set_phy_reg", scope: !2, file: !2, line: 71, type: !593, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !278, !178, !178}
!595 = !{!596, !597, !598, !599}
!596 = !DILocalVariable(name: "ohci", arg: 1, scope: !592, file: !2, line: 71, type: !278)
!597 = !DILocalVariable(name: "addr", arg: 2, scope: !592, file: !2, line: 71, type: !178)
!598 = !DILocalVariable(name: "data", arg: 3, scope: !592, file: !2, line: 71, type: !178)
!599 = !DILocalVariable(name: "i", scope: !592, file: !2, line: 73, type: !56)
!600 = !DILocation(line: 71, column: 52, scope: !592)
!601 = !DILocation(line: 71, column: 61, scope: !592)
!602 = !DILocation(line: 71, column: 70, scope: !592)
!603 = !DILocation(line: 73, column: 2, scope: !592)
!604 = !DILocation(line: 73, column: 6, scope: !592)
!605 = !DILocation(line: 75, column: 12, scope: !592)
!606 = !DILocation(line: 75, column: 40, scope: !592)
!607 = !DILocation(line: 75, column: 45, scope: !592)
!608 = !DILocation(line: 75, column: 53, scope: !592)
!609 = !DILocation(line: 75, column: 51, scope: !592)
!610 = !DILocation(line: 75, column: 58, scope: !592)
!611 = !DILocation(line: 75, column: 2, scope: !592)
!612 = !DILocation(line: 77, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !592, file: !2, line: 77, column: 2)
!614 = !DILocation(line: 77, column: 7, scope: !613)
!615 = !DILocation(line: 77, column: 14, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !2, line: 77, column: 2)
!617 = !DILocation(line: 77, column: 16, scope: !616)
!618 = !DILocation(line: 77, column: 2, scope: !613)
!619 = !DILocation(line: 78, column: 18, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !2, line: 78, column: 7)
!621 = distinct !DILexicalBlock(scope: !616, file: !2, line: 77, column: 40)
!622 = !DILocation(line: 78, column: 9, scope: !620)
!623 = !DILocation(line: 78, column: 45, scope: !620)
!624 = !DILocation(line: 78, column: 7, scope: !621)
!625 = !DILocation(line: 79, column: 4, scope: !620)
!626 = !DILocation(line: 80, column: 3, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !2, line: 80, column: 3)
!628 = distinct !DILexicalBlock(scope: !629, file: !2, line: 80, column: 3)
!629 = distinct !DILexicalBlock(scope: !630, file: !2, line: 80, column: 3)
!630 = distinct !DILexicalBlock(scope: !621, file: !2, line: 80, column: 3)
!631 = !DILocation(line: 81, column: 2, scope: !621)
!632 = !DILocation(line: 77, column: 36, scope: !616)
!633 = !DILocation(line: 77, column: 2, scope: !616)
!634 = distinct !{!634, !618, !635, !154, !155}
!635 = !DILocation(line: 81, column: 2, scope: !613)
!636 = !DILocation(line: 82, column: 1, scope: !592)
!637 = !DISubprogram(name: "strcmp", scope: !638, file: !638, line: 88, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!638 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!639 = !DISubroutineType(types: !640)
!640 = !{!56, !50, !50}
