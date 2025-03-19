; ModuleID = 'arch/x86/kernel/early_printk.c'
source_filename = "arch/x86/kernel/early_printk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i64, i64, ptr, %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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

@__setup_str_setup_early_printk = internal constant [12 x i8] c"earlyprintk\00", section ".init.rodata", align 1, !dbg !0
@__setup_setup_early_printk = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_early_printk, ptr @setup_early_printk, i32 1 }, section ".init.setup", align 8, !dbg !38
@early_console = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"keep\00", align 1, !dbg !52
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1, !dbg !57
@early_serial_console = internal global %struct.console { [16 x i8] c"earlyser\00\00\00\00\00\00\00\00", ptr @early_serial_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, i64 0, i64 0, ptr null, %struct.hlist_node zeroinitializer }, align 8, !dbg !123
@.str.2 = private unnamed_addr constant [6 x i8] c",ttyS\00", align 1, !dbg !62
@.str.3 = private unnamed_addr constant [5 x i8] c"ttyS\00", align 1, !dbg !67
@.str.4 = private unnamed_addr constant [10 x i8] c"pciserial\00", align 1, !dbg !69
@.str.5 = private unnamed_addr constant [4 x i8] c"vga\00", align 1, !dbg !74
@boot_params = external dso_local global %struct.boot_params, align 1
@max_xpos = internal global i32 80, align 4, !dbg !187
@max_ypos = internal global i32 25, align 4, !dbg !189
@current_ypos = internal global i32 25, align 4, !dbg !191
@early_vga_console = internal global %struct.console { [16 x i8] c"earlyvga\00\00\00\00\00\00\00\00", ptr @early_vga_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, i64 0, i64 0, ptr null, %struct.hlist_node zeroinitializer }, align 8, !dbg !193
@.str.6 = private unnamed_addr constant [5 x i8] c"dbgp\00", align 1, !dbg !79
@early_dbgp_console = external dso_local global %struct.console, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"0x\00", align 1, !dbg !81
@early_serial_base = internal global i64 1016, align 8, !dbg !106
@early_serial_init.bases = internal constant [2 x i32] [i32 1016, i32 760], section ".init.rodata", align 4, !dbg !86
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !103
@serial_in = internal global ptr @io_serial_in, align 8, !dbg !108
@serial_out = internal global ptr @io_serial_out, align 8, !dbg !113
@.str.9 = private unnamed_addr constant [39 x i8] c"\012ERROR: earlyprintk= %s already used\0A\00", align 1, !dbg !118
@.str.10 = private unnamed_addr constant [7 x i8] c"force,\00", align 1, !dbg !183
@.str.11 = private unnamed_addr constant [6 x i8] c"nocfg\00", align 1, !dbg !185
@page_offset_base = external dso_local global i64, align 8
@current_xpos = internal global i32 0, align 4, !dbg !195
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_setup_early_printk], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @setup_early_printk(ptr noundef %buf) #0 section ".init.text" align 16 !dbg !209 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %keep = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !211, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 4, ptr %keep) #8, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %keep, metadata !212, metadata !DIExpression()), !dbg !215
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !216
  %tobool = icmp ne ptr %0, null, !dbg !216
  br i1 %tobool, label %if.end, label %if.then, !dbg !218

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !219

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @early_console, align 8, !dbg !220
  %tobool1 = icmp ne ptr %1, null, !dbg !220
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !222

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !223

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !224
  %call = call ptr @strstr(ptr noundef %2, ptr noundef @.str) #9, !dbg !225
  %cmp = icmp ne ptr %call, null, !dbg !226
  %conv = zext i1 %cmp to i32, !dbg !226
  store i32 %conv, ptr %keep, align 4, !dbg !227
  br label %while.cond, !dbg !228

while.cond:                                       ; preds = %if.end44, %if.end3
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !229
  %4 = load i8, ptr %3, align 1, !dbg !230
  %conv4 = zext i8 %4 to i32, !dbg !230
  %cmp5 = icmp ne i32 %conv4, 0, !dbg !231
  br i1 %cmp5, label %while.body, label %while.end, !dbg !228

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !232
  %call7 = call i32 @strncmp(ptr noundef %5, ptr noundef @.str.1, i64 noundef 6) #9, !dbg !235
  %tobool8 = icmp ne i32 %call7, 0, !dbg !235
  br i1 %tobool8, label %if.end15, label %if.then9, !dbg !236

if.then9:                                         ; preds = %while.body
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !237
  %add.ptr = getelementptr i8, ptr %6, i64 6, !dbg !237
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !237
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !239
  call void @early_serial_init(ptr noundef %7) #10, !dbg !240
  %8 = load i32, ptr %keep, align 4, !dbg !241
  call void @early_console_register(ptr noundef @early_serial_console, i32 noundef %8) #9, !dbg !242
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !243
  %call10 = call i32 @strncmp(ptr noundef %9, ptr noundef @.str.2, i64 noundef 5) #9, !dbg !245
  %tobool11 = icmp ne i32 %call10, 0, !dbg !245
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !246

if.then12:                                        ; preds = %if.then9
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !247
  %add.ptr13 = getelementptr i8, ptr %10, i64 5, !dbg !247
  store ptr %add.ptr13, ptr %buf.addr, align 8, !dbg !247
  br label %if.end14, !dbg !248

if.end14:                                         ; preds = %if.then12, %if.then9
  br label %if.end15, !dbg !249

if.end15:                                         ; preds = %if.end14, %while.body
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !250
  %call16 = call i32 @strncmp(ptr noundef %11, ptr noundef @.str.3, i64 noundef 4) #9, !dbg !252
  %tobool17 = icmp ne i32 %call16, 0, !dbg !252
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !253

if.then18:                                        ; preds = %if.end15
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !254
  %add.ptr19 = getelementptr i8, ptr %12, i64 4, !dbg !256
  call void @early_serial_init(ptr noundef %add.ptr19) #10, !dbg !257
  %13 = load i32, ptr %keep, align 4, !dbg !258
  call void @early_console_register(ptr noundef @early_serial_console, i32 noundef %13) #9, !dbg !259
  br label %if.end20, !dbg !260

if.end20:                                         ; preds = %if.then18, %if.end15
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !261
  %call21 = call i32 @strncmp(ptr noundef %14, ptr noundef @.str.4, i64 noundef 9) #9, !dbg !263
  %tobool22 = icmp ne i32 %call21, 0, !dbg !263
  br i1 %tobool22, label %if.end26, label %if.then23, !dbg !264

if.then23:                                        ; preds = %if.end20
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !265
  %add.ptr24 = getelementptr i8, ptr %15, i64 9, !dbg !267
  call void @early_pci_serial_init(ptr noundef %add.ptr24) #10, !dbg !268
  %16 = load i32, ptr %keep, align 4, !dbg !269
  call void @early_console_register(ptr noundef @early_serial_console, i32 noundef %16) #9, !dbg !270
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !271
  %add.ptr25 = getelementptr i8, ptr %17, i64 9, !dbg !271
  store ptr %add.ptr25, ptr %buf.addr, align 8, !dbg !271
  br label %if.end26, !dbg !272

if.end26:                                         ; preds = %if.then23, %if.end20
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !273
  %call27 = call i32 @strncmp(ptr noundef %18, ptr noundef @.str.5, i64 noundef 3) #9, !dbg !275
  %tobool28 = icmp ne i32 %call27, 0, !dbg !275
  br i1 %tobool28, label %if.end36, label %land.lhs.true, !dbg !276

land.lhs.true:                                    ; preds = %if.end26
  %19 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 11), align 1, !dbg !277
  %conv29 = zext i8 %19 to i32, !dbg !278
  %cmp30 = icmp eq i32 %conv29, 1, !dbg !279
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !280

if.then32:                                        ; preds = %land.lhs.true
  %20 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 5), align 1, !dbg !281
  %conv33 = zext i8 %20 to i32, !dbg !283
  store i32 %conv33, ptr @max_xpos, align 4, !dbg !284
  %21 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 10), align 1, !dbg !285
  %conv34 = zext i8 %21 to i32, !dbg !286
  store i32 %conv34, ptr @max_ypos, align 4, !dbg !287
  %22 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 1), align 1, !dbg !288
  %conv35 = zext i8 %22 to i32, !dbg !289
  store i32 %conv35, ptr @current_ypos, align 4, !dbg !290
  %23 = load i32, ptr %keep, align 4, !dbg !291
  call void @early_console_register(ptr noundef @early_vga_console, i32 noundef %23) #9, !dbg !292
  br label %if.end36, !dbg !293

if.end36:                                         ; preds = %if.then32, %land.lhs.true, %if.end26
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !294
  %call37 = call i32 @strncmp(ptr noundef %24, ptr noundef @.str.6, i64 noundef 4) #9, !dbg !296
  %tobool38 = icmp ne i32 %call37, 0, !dbg !296
  br i1 %tobool38, label %if.end44, label %land.lhs.true39, !dbg !297

land.lhs.true39:                                  ; preds = %if.end36
  %25 = load ptr, ptr %buf.addr, align 8, !dbg !298
  %add.ptr40 = getelementptr i8, ptr %25, i64 4, !dbg !299
  %call41 = call i32 @early_dbgp_init(ptr noundef %add.ptr40) #9, !dbg !300
  %tobool42 = icmp ne i32 %call41, 0, !dbg !300
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !301

if.then43:                                        ; preds = %land.lhs.true39
  %26 = load i32, ptr %keep, align 4, !dbg !302
  call void @early_console_register(ptr noundef @early_dbgp_console, i32 noundef %26) #9, !dbg !303
  br label %if.end44, !dbg !303

if.end44:                                         ; preds = %if.then43, %land.lhs.true39, %if.end36
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !304
  %incdec.ptr = getelementptr i8, ptr %27, i32 1, !dbg !304
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !304
  br label %while.cond, !dbg !228, !llvm.loop !305

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !309

cleanup:                                          ; preds = %while.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %keep) #8, !dbg !310
  %28 = load i32, ptr %retval, align 4, !dbg !310
  ret i32 %28, !dbg !310
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !311 dso_local ptr @strstr(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !315 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @early_serial_init(ptr noundef %s) #0 section ".init.text" align 16 !dbg !88 {
entry:
  %s.addr = alloca ptr, align 8
  %divisor = alloca i32, align 4
  %baud = alloca i64, align 8
  %e = alloca ptr, align 8
  %port = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !92, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 4, ptr %divisor) #8, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %divisor, metadata !93, metadata !DIExpression()), !dbg !323
  call void @llvm.lifetime.start.p0(i64 8, ptr %baud) #8, !dbg !324
  call void @llvm.dbg.declare(metadata ptr %baud, metadata !94, metadata !DIExpression()), !dbg !325
  store i64 9600, ptr %baud, align 8, !dbg !325
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #8, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %e, metadata !95, metadata !DIExpression()), !dbg !327
  %0 = load ptr, ptr %s.addr, align 8, !dbg !328
  %1 = load i8, ptr %0, align 1, !dbg !330
  %conv = zext i8 %1 to i32, !dbg !330
  %cmp = icmp eq i32 %conv, 44, !dbg !331
  br i1 %cmp, label %if.then, label %if.end, !dbg !332

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !333
  %incdec.ptr = getelementptr i8, ptr %2, i32 1, !dbg !333
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !333
  br label %if.end, !dbg !333

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !334
  %4 = load i8, ptr %3, align 1, !dbg !335
  %tobool = icmp ne i8 %4, 0, !dbg !335
  br i1 %tobool, label %if.then2, label %if.end28, !dbg !336

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %port) #8, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %port, metadata !96, metadata !DIExpression()), !dbg !338
  %5 = load ptr, ptr %s.addr, align 8, !dbg !339
  %call = call i32 @strncmp(ptr noundef %5, ptr noundef @.str.7, i64 noundef 2) #9, !dbg !341
  %tobool3 = icmp ne i32 %call, 0, !dbg !341
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !342

if.then4:                                         ; preds = %if.then2
  %6 = load ptr, ptr %s.addr, align 8, !dbg !343
  %call5 = call i64 @simple_strtoul(ptr noundef %6, ptr noundef %e, i32 noundef 16) #9, !dbg !345
  store i64 %call5, ptr @early_serial_base, align 8, !dbg !346
  br label %if.end19, !dbg !347

if.else:                                          ; preds = %if.then2
  %7 = load ptr, ptr %s.addr, align 8, !dbg !348
  %call6 = call i32 @strncmp(ptr noundef %7, ptr noundef @.str.3, i64 noundef 4) #9, !dbg !351
  %tobool7 = icmp ne i32 %call6, 0, !dbg !351
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !352

if.then8:                                         ; preds = %if.else
  %8 = load ptr, ptr %s.addr, align 8, !dbg !353
  %add.ptr = getelementptr i8, ptr %8, i64 4, !dbg !353
  store ptr %add.ptr, ptr %s.addr, align 8, !dbg !353
  br label %if.end9, !dbg !354

if.end9:                                          ; preds = %if.then8, %if.else
  %9 = load ptr, ptr %s.addr, align 8, !dbg !355
  %call10 = call i64 @simple_strtoul(ptr noundef %9, ptr noundef %e, i32 noundef 10) #9, !dbg !356
  %conv11 = trunc i64 %call10 to i32, !dbg !356
  store i32 %conv11, ptr %port, align 4, !dbg !357
  %10 = load i32, ptr %port, align 4, !dbg !358
  %cmp12 = icmp ugt i32 %10, 1, !dbg !360
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !361

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load ptr, ptr %s.addr, align 8, !dbg !362
  %12 = load ptr, ptr %e, align 8, !dbg !363
  %cmp14 = icmp eq ptr %11, %12, !dbg !364
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !365

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  store i32 0, ptr %port, align 4, !dbg !366
  br label %if.end17, !dbg !367

if.end17:                                         ; preds = %if.then16, %lor.lhs.false
  %13 = load i32, ptr %port, align 4, !dbg !368
  %idxprom = zext i32 %13 to i64, !dbg !369
  %arrayidx = getelementptr [2 x i32], ptr @early_serial_init.bases, i64 0, i64 %idxprom, !dbg !369
  %14 = load i32, ptr %arrayidx, align 4, !dbg !369
  %conv18 = sext i32 %14 to i64, !dbg !369
  store i64 %conv18, ptr @early_serial_base, align 8, !dbg !370
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.then4
  %15 = load ptr, ptr %s.addr, align 8, !dbg !371
  %call20 = call i64 @strcspn(ptr noundef %15, ptr noundef @.str.8) #9, !dbg !372
  %16 = load ptr, ptr %s.addr, align 8, !dbg !373
  %add.ptr21 = getelementptr i8, ptr %16, i64 %call20, !dbg !373
  store ptr %add.ptr21, ptr %s.addr, align 8, !dbg !373
  %17 = load ptr, ptr %s.addr, align 8, !dbg !374
  %18 = load i8, ptr %17, align 1, !dbg !376
  %conv22 = zext i8 %18 to i32, !dbg !376
  %cmp23 = icmp eq i32 %conv22, 44, !dbg !377
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !378

if.then25:                                        ; preds = %if.end19
  %19 = load ptr, ptr %s.addr, align 8, !dbg !379
  %incdec.ptr26 = getelementptr i8, ptr %19, i32 1, !dbg !379
  store ptr %incdec.ptr26, ptr %s.addr, align 8, !dbg !379
  br label %if.end27, !dbg !380

if.end27:                                         ; preds = %if.then25, %if.end19
  call void @llvm.lifetime.end.p0(i64 4, ptr %port) #8, !dbg !381
  br label %if.end28, !dbg !382

if.end28:                                         ; preds = %if.end27, %if.end
  %20 = load ptr, ptr %s.addr, align 8, !dbg !383
  %21 = load i8, ptr %20, align 1, !dbg !385
  %tobool29 = icmp ne i8 %21, 0, !dbg !385
  br i1 %tobool29, label %if.then30, label %if.end39, !dbg !386

if.then30:                                        ; preds = %if.end28
  %22 = load ptr, ptr %s.addr, align 8, !dbg !387
  %call31 = call i64 @simple_strtoull(ptr noundef %22, ptr noundef %e, i32 noundef 0) #9, !dbg !389
  store i64 %call31, ptr %baud, align 8, !dbg !390
  %23 = load i64, ptr %baud, align 8, !dbg !391
  %cmp32 = icmp eq i64 %23, 0, !dbg !393
  br i1 %cmp32, label %if.then37, label %lor.lhs.false34, !dbg !394

lor.lhs.false34:                                  ; preds = %if.then30
  %24 = load ptr, ptr %s.addr, align 8, !dbg !395
  %25 = load ptr, ptr %e, align 8, !dbg !396
  %cmp35 = icmp eq ptr %24, %25, !dbg !397
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !398

if.then37:                                        ; preds = %lor.lhs.false34, %if.then30
  store i64 9600, ptr %baud, align 8, !dbg !399
  br label %if.end38, !dbg !400

if.end38:                                         ; preds = %if.then37, %lor.lhs.false34
  br label %if.end39, !dbg !401

if.end39:                                         ; preds = %if.end38, %if.end28
  %26 = load i64, ptr %baud, align 8, !dbg !402
  %div = udiv i64 115200, %26, !dbg !403
  %conv40 = trunc i64 %div to i32, !dbg !404
  store i32 %conv40, ptr %divisor, align 4, !dbg !405
  store ptr @io_serial_in, ptr @serial_in, align 8, !dbg !406
  store ptr @io_serial_out, ptr @serial_out, align 8, !dbg !407
  %27 = load i32, ptr %divisor, align 4, !dbg !408
  call void @early_serial_hw_init(i32 noundef %27) #10, !dbg !409
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #8, !dbg !410
  call void @llvm.lifetime.end.p0(i64 8, ptr %baud) #8, !dbg !410
  call void @llvm.lifetime.end.p0(i64 4, ptr %divisor) #8, !dbg !410
  ret void, !dbg !410
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_console_register(ptr noundef %con, i32 noundef %keep_early) #4 align 16 !dbg !411 {
entry:
  %con.addr = alloca ptr, align 8
  %keep_early.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %con, ptr %con.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con.addr, metadata !415, metadata !DIExpression()), !dbg !417
  store i32 %keep_early, ptr %keep_early.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keep_early.addr, metadata !416, metadata !DIExpression()), !dbg !418
  %0 = load ptr, ptr %con.addr, align 8, !dbg !419
  %index = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9, !dbg !421
  %1 = load i16, ptr %index, align 2, !dbg !421
  %conv = sext i16 %1 to i32, !dbg !419
  %cmp = icmp ne i32 %conv, -1, !dbg !422
  br i1 %cmp, label %if.then, label %if.end, !dbg !423

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !424

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !427

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %con.addr, align 8, !dbg !424
  %name = getelementptr inbounds %struct.console, ptr %2, i32 0, i32 0, !dbg !424
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !424
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, ptr noundef %arraydecay) #10, !dbg !424
  store i32 %call, ptr %tmp, align 4, !dbg !427
  %3 = load i32, ptr %tmp, align 4, !dbg !424
  br label %return, !dbg !429

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %con.addr, align 8, !dbg !430
  store ptr %4, ptr @early_console, align 8, !dbg !431
  %5 = load i32, ptr %keep_early.addr, align 4, !dbg !432
  %tobool = icmp ne i32 %5, 0, !dbg !432
  br i1 %tobool, label %if.then2, label %if.else, !dbg !434

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr @early_console, align 8, !dbg !435
  %flags = getelementptr inbounds %struct.console, ptr %6, i32 0, i32 8, !dbg !436
  %7 = load i16, ptr %flags, align 8, !dbg !437
  %conv3 = sext i16 %7 to i32, !dbg !437
  %and = and i32 %conv3, -9, !dbg !437
  %conv4 = trunc i32 %and to i16, !dbg !437
  store i16 %conv4, ptr %flags, align 8, !dbg !437
  br label %if.end8, !dbg !435

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr @early_console, align 8, !dbg !438
  %flags5 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 8, !dbg !439
  %9 = load i16, ptr %flags5, align 8, !dbg !440
  %conv6 = sext i16 %9 to i32, !dbg !440
  %or = or i32 %conv6, 8, !dbg !440
  %conv7 = trunc i32 %or to i16, !dbg !440
  store i16 %conv7, ptr %flags5, align 8, !dbg !440
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %10 = load ptr, ptr @early_console, align 8, !dbg !441
  call void @register_console(ptr noundef %10) #9, !dbg !442
  br label %return, !dbg !443

return:                                           ; preds = %if.end8, %do.end
  ret void, !dbg !443
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @early_pci_serial_init(ptr noundef %s) #0 section ".init.text" align 16 !dbg !444 {
entry:
  %s.addr = alloca ptr, align 8
  %divisor = alloca i32, align 4
  %baud = alloca i64, align 8
  %bus = alloca i8, align 1
  %slot = alloca i8, align 1
  %func = alloca i8, align 1
  %classcode = alloca i32, align 4
  %bar0 = alloca i32, align 4
  %cmdreg = alloca i16, align 2
  %e = alloca ptr, align 8
  %force = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !446, metadata !DIExpression()), !dbg !459
  call void @llvm.lifetime.start.p0(i64 4, ptr %divisor) #8, !dbg !460
  call void @llvm.dbg.declare(metadata ptr %divisor, metadata !447, metadata !DIExpression()), !dbg !461
  call void @llvm.lifetime.start.p0(i64 8, ptr %baud) #8, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %baud, metadata !448, metadata !DIExpression()), !dbg !463
  store i64 9600, ptr %baud, align 8, !dbg !463
  call void @llvm.lifetime.start.p0(i64 1, ptr %bus) #8, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !449, metadata !DIExpression()), !dbg !465
  call void @llvm.lifetime.start.p0(i64 1, ptr %slot) #8, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !450, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 1, ptr %func) #8, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %func, metadata !451, metadata !DIExpression()), !dbg !467
  call void @llvm.lifetime.start.p0(i64 4, ptr %classcode) #8, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %classcode, metadata !452, metadata !DIExpression()), !dbg !469
  call void @llvm.lifetime.start.p0(i64 4, ptr %bar0) #8, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %bar0, metadata !453, metadata !DIExpression()), !dbg !470
  call void @llvm.lifetime.start.p0(i64 2, ptr %cmdreg) #8, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %cmdreg, metadata !454, metadata !DIExpression()), !dbg !472
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #8, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %e, metadata !457, metadata !DIExpression()), !dbg !474
  call void @llvm.lifetime.start.p0(i64 4, ptr %force) #8, !dbg !475
  call void @llvm.dbg.declare(metadata ptr %force, metadata !458, metadata !DIExpression()), !dbg !476
  store i32 0, ptr %force, align 4, !dbg !476
  %0 = load ptr, ptr %s.addr, align 8, !dbg !477
  %1 = load i8, ptr %0, align 1, !dbg !479
  %conv = zext i8 %1 to i32, !dbg !479
  %cmp = icmp eq i32 %conv, 44, !dbg !480
  br i1 %cmp, label %if.then, label %if.end, !dbg !481

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !482
  %incdec.ptr = getelementptr i8, ptr %2, i32 1, !dbg !482
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !482
  br label %if.end, !dbg !482

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !483
  %4 = load i8, ptr %3, align 1, !dbg !485
  %conv2 = zext i8 %4 to i32, !dbg !485
  %cmp3 = icmp eq i32 %conv2, 0, !dbg !486
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !487

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !488

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %s.addr, align 8, !dbg !489
  %call = call i32 @strncmp(ptr noundef %5, ptr noundef @.str.10, i64 noundef 6) #9, !dbg !491
  %tobool = icmp ne i32 %call, 0, !dbg !491
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !492

if.then7:                                         ; preds = %if.end6
  store i32 1, ptr %force, align 4, !dbg !493
  %6 = load ptr, ptr %s.addr, align 8, !dbg !495
  %add.ptr = getelementptr i8, ptr %6, i64 6, !dbg !495
  store ptr %add.ptr, ptr %s.addr, align 8, !dbg !495
  br label %if.end8, !dbg !496

if.end8:                                          ; preds = %if.then7, %if.end6
  %7 = load ptr, ptr %s.addr, align 8, !dbg !497
  %call9 = call i64 @simple_strtoul(ptr noundef %7, ptr noundef %e, i32 noundef 16) #9, !dbg !498
  %conv10 = trunc i64 %call9 to i8, !dbg !499
  store i8 %conv10, ptr %bus, align 1, !dbg !500
  %8 = load ptr, ptr %e, align 8, !dbg !501
  store ptr %8, ptr %s.addr, align 8, !dbg !502
  %9 = load ptr, ptr %s.addr, align 8, !dbg !503
  %10 = load i8, ptr %9, align 1, !dbg !505
  %conv11 = zext i8 %10 to i32, !dbg !505
  %cmp12 = icmp ne i32 %conv11, 58, !dbg !506
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !507

if.then14:                                        ; preds = %if.end8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !508

if.end15:                                         ; preds = %if.end8
  %11 = load ptr, ptr %s.addr, align 8, !dbg !509
  %incdec.ptr16 = getelementptr i8, ptr %11, i32 1, !dbg !509
  store ptr %incdec.ptr16, ptr %s.addr, align 8, !dbg !509
  %12 = load ptr, ptr %s.addr, align 8, !dbg !510
  %call17 = call i64 @simple_strtoul(ptr noundef %12, ptr noundef %e, i32 noundef 16) #9, !dbg !511
  %conv18 = trunc i64 %call17 to i8, !dbg !512
  store i8 %conv18, ptr %slot, align 1, !dbg !513
  %13 = load ptr, ptr %e, align 8, !dbg !514
  store ptr %13, ptr %s.addr, align 8, !dbg !515
  %14 = load ptr, ptr %s.addr, align 8, !dbg !516
  %15 = load i8, ptr %14, align 1, !dbg !518
  %conv19 = zext i8 %15 to i32, !dbg !518
  %cmp20 = icmp ne i32 %conv19, 46, !dbg !519
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !520

if.then22:                                        ; preds = %if.end15
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !521

if.end23:                                         ; preds = %if.end15
  %16 = load ptr, ptr %s.addr, align 8, !dbg !522
  %incdec.ptr24 = getelementptr i8, ptr %16, i32 1, !dbg !522
  store ptr %incdec.ptr24, ptr %s.addr, align 8, !dbg !522
  %17 = load ptr, ptr %s.addr, align 8, !dbg !523
  %call25 = call i64 @simple_strtoul(ptr noundef %17, ptr noundef %e, i32 noundef 16) #9, !dbg !524
  %conv26 = trunc i64 %call25 to i8, !dbg !525
  store i8 %conv26, ptr %func, align 1, !dbg !526
  %18 = load ptr, ptr %e, align 8, !dbg !527
  store ptr %18, ptr %s.addr, align 8, !dbg !528
  %19 = load ptr, ptr %s.addr, align 8, !dbg !529
  %20 = load i8, ptr %19, align 1, !dbg !531
  %conv27 = zext i8 %20 to i32, !dbg !531
  %cmp28 = icmp eq i32 %conv27, 44, !dbg !532
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !533

if.then30:                                        ; preds = %if.end23
  %21 = load ptr, ptr %s.addr, align 8, !dbg !534
  %incdec.ptr31 = getelementptr i8, ptr %21, i32 1, !dbg !534
  store ptr %incdec.ptr31, ptr %s.addr, align 8, !dbg !534
  br label %if.end32, !dbg !535

if.end32:                                         ; preds = %if.then30, %if.end23
  %22 = load i8, ptr %bus, align 1, !dbg !536
  %23 = load i8, ptr %slot, align 1, !dbg !537
  %24 = load i8, ptr %func, align 1, !dbg !538
  %call33 = call i32 @read_pci_config(i8 noundef zeroext %22, i8 noundef zeroext %23, i8 noundef zeroext %24, i8 noundef zeroext 4) #9, !dbg !539
  %conv34 = trunc i32 %call33 to i16, !dbg !539
  store i16 %conv34, ptr %cmdreg, align 2, !dbg !540
  %25 = load i8, ptr %bus, align 1, !dbg !541
  %26 = load i8, ptr %slot, align 1, !dbg !542
  %27 = load i8, ptr %func, align 1, !dbg !543
  %call35 = call i32 @read_pci_config(i8 noundef zeroext %25, i8 noundef zeroext %26, i8 noundef zeroext %27, i8 noundef zeroext 8) #9, !dbg !544
  store i32 %call35, ptr %classcode, align 4, !dbg !545
  %28 = load i8, ptr %bus, align 1, !dbg !546
  %29 = load i8, ptr %slot, align 1, !dbg !547
  %30 = load i8, ptr %func, align 1, !dbg !548
  %call36 = call i32 @read_pci_config(i8 noundef zeroext %28, i8 noundef zeroext %29, i8 noundef zeroext %30, i8 noundef zeroext 16) #9, !dbg !549
  store i32 %call36, ptr %bar0, align 4, !dbg !550
  %31 = load i32, ptr %classcode, align 4, !dbg !551
  %shr = lshr i32 %31, 16, !dbg !553
  %cmp37 = icmp ne i32 %shr, 1795, !dbg !554
  br i1 %cmp37, label %land.lhs.true, label %lor.lhs.false, !dbg !555

land.lhs.true:                                    ; preds = %if.end32
  %32 = load i32, ptr %classcode, align 4, !dbg !556
  %shr39 = lshr i32 %32, 16, !dbg !557
  %cmp40 = icmp ne i32 %shr39, 1792, !dbg !558
  br i1 %cmp40, label %if.then45, label %lor.lhs.false, !dbg !559

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end32
  %33 = load i32, ptr %classcode, align 4, !dbg !560
  %shr42 = lshr i32 %33, 8, !dbg !561
  %and = and i32 %shr42, 255, !dbg !562
  %cmp43 = icmp ne i32 %and, 2, !dbg !563
  br i1 %cmp43, label %if.then45, label %if.end49, !dbg !564

if.then45:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %34 = load i32, ptr %force, align 4, !dbg !565
  %tobool46 = icmp ne i32 %34, 0, !dbg !565
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !568

if.then47:                                        ; preds = %if.then45
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !569

if.end48:                                         ; preds = %if.then45
  br label %if.end49, !dbg !570

if.end49:                                         ; preds = %if.end48, %lor.lhs.false
  %35 = load i32, ptr %bar0, align 4, !dbg !571
  %and50 = and i32 %35, 1, !dbg !573
  %cmp51 = icmp eq i32 %and50, 1, !dbg !574
  br i1 %cmp51, label %if.then53, label %if.else, !dbg !575

if.then53:                                        ; preds = %if.end49
  store ptr @io_serial_in, ptr @serial_in, align 8, !dbg !576
  store ptr @io_serial_out, ptr @serial_out, align 8, !dbg !578
  %36 = load i32, ptr %bar0, align 4, !dbg !579
  %conv54 = zext i32 %36 to i64, !dbg !579
  %and55 = and i64 %conv54, -4, !dbg !580
  store i64 %and55, ptr @early_serial_base, align 8, !dbg !581
  %37 = load i8, ptr %bus, align 1, !dbg !582
  %38 = load i8, ptr %slot, align 1, !dbg !583
  %39 = load i8, ptr %func, align 1, !dbg !584
  %40 = load i16, ptr %cmdreg, align 2, !dbg !585
  %conv56 = zext i16 %40 to i32, !dbg !585
  %or = or i32 %conv56, 1, !dbg !586
  call void @write_pci_config(i8 noundef zeroext %37, i8 noundef zeroext %38, i8 noundef zeroext %39, i8 noundef zeroext 4, i32 noundef %or) #9, !dbg !587
  br label %if.end62, !dbg !588

if.else:                                          ; preds = %if.end49
  store ptr @mem32_serial_in, ptr @serial_in, align 8, !dbg !589
  store ptr @mem32_serial_out, ptr @serial_out, align 8, !dbg !591
  %41 = load i32, ptr %bar0, align 4, !dbg !592
  %conv57 = zext i32 %41 to i64, !dbg !592
  %and58 = and i64 %conv57, -16, !dbg !593
  %call59 = call ptr @early_ioremap(i64 noundef %and58, i64 noundef 16) #9, !dbg !594
  %42 = ptrtoint ptr %call59 to i64, !dbg !595
  store i64 %42, ptr @early_serial_base, align 8, !dbg !596
  %43 = load i8, ptr %bus, align 1, !dbg !597
  %44 = load i8, ptr %slot, align 1, !dbg !598
  %45 = load i8, ptr %func, align 1, !dbg !599
  %46 = load i16, ptr %cmdreg, align 2, !dbg !600
  %conv60 = zext i16 %46 to i32, !dbg !600
  %or61 = or i32 %conv60, 2, !dbg !601
  call void @write_pci_config(i8 noundef zeroext %43, i8 noundef zeroext %44, i8 noundef zeroext %45, i8 noundef zeroext 4, i32 noundef %or61) #9, !dbg !602
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then53
  %47 = load ptr, ptr %s.addr, align 8, !dbg !603
  %48 = load i8, ptr %47, align 1, !dbg !605
  %tobool63 = icmp ne i8 %48, 0, !dbg !605
  br i1 %tobool63, label %if.then64, label %if.end78, !dbg !606

if.then64:                                        ; preds = %if.end62
  %49 = load ptr, ptr %s.addr, align 8, !dbg !607
  %call65 = call i32 @strcmp(ptr noundef %49, ptr noundef @.str.11) #9, !dbg !610
  %cmp66 = icmp eq i32 %call65, 0, !dbg !611
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !612

if.then68:                                        ; preds = %if.then64
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !613

if.end69:                                         ; preds = %if.then64
  %50 = load ptr, ptr %s.addr, align 8, !dbg !614
  %call70 = call i32 @kstrtoul(ptr noundef %50, i32 noundef 0, ptr noundef %baud) #9, !dbg !616
  %cmp71 = icmp slt i32 %call70, 0, !dbg !617
  br i1 %cmp71, label %if.then76, label %lor.lhs.false73, !dbg !618

lor.lhs.false73:                                  ; preds = %if.end69
  %51 = load i64, ptr %baud, align 8, !dbg !619
  %cmp74 = icmp eq i64 %51, 0, !dbg !620
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !621

if.then76:                                        ; preds = %lor.lhs.false73, %if.end69
  store i64 9600, ptr %baud, align 8, !dbg !622
  br label %if.end77, !dbg !623

if.end77:                                         ; preds = %if.then76, %lor.lhs.false73
  br label %if.end78, !dbg !624

if.end78:                                         ; preds = %if.end77, %if.end62
  %52 = load i64, ptr %baud, align 8, !dbg !625
  %div = udiv i64 115200, %52, !dbg !626
  %conv79 = trunc i64 %div to i32, !dbg !627
  store i32 %conv79, ptr %divisor, align 4, !dbg !628
  %53 = load i32, ptr %divisor, align 4, !dbg !629
  call void @early_serial_hw_init(i32 noundef %53) #10, !dbg !630
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !631
  br label %cleanup, !dbg !631

cleanup:                                          ; preds = %if.end78, %if.then68, %if.then47, %if.then22, %if.then14, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %force) #8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 2, ptr %cmdreg) #8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 4, ptr %bar0) #8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 4, ptr %classcode) #8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 1, ptr %func) #8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 1, ptr %slot) #8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 1, ptr %bus) #8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 8, ptr %baud) #8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 4, ptr %divisor) #8, !dbg !631
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !631

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !632 dso_local i32 @early_dbgp_init(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !634 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !639 dso_local i64 @strcspn(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !642 dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @io_serial_in(i64 noundef %addr, i32 noundef %offset) #4 align 16 !dbg !645 {
entry:
  %addr.addr = alloca i64, align 8
  %offset.addr = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !647, metadata !DIExpression()), !dbg !649
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !648, metadata !DIExpression()), !dbg !650
  %0 = load i64, ptr %addr.addr, align 8, !dbg !651
  %1 = load i32, ptr %offset.addr, align 4, !dbg !652
  %conv = sext i32 %1 to i64, !dbg !652
  %add = add i64 %0, %conv, !dbg !653
  %conv1 = trunc i64 %add to i16, !dbg !651
  %call = call zeroext i8 @__inb(i16 noundef zeroext %conv1) #9, !dbg !654
  %conv2 = zext i8 %call to i32, !dbg !654
  ret i32 %conv2, !dbg !655
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @io_serial_out(i64 noundef %addr, i32 noundef %offset, i32 noundef %value) #4 align 16 !dbg !656 {
entry:
  %addr.addr = alloca i64, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !658, metadata !DIExpression()), !dbg !661
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !659, metadata !DIExpression()), !dbg !662
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !660, metadata !DIExpression()), !dbg !663
  %0 = load i32, ptr %value.addr, align 4, !dbg !664
  %conv = trunc i32 %0 to i8, !dbg !664
  %1 = load i64, ptr %addr.addr, align 8, !dbg !665
  %2 = load i32, ptr %offset.addr, align 4, !dbg !666
  %conv1 = sext i32 %2 to i64, !dbg !666
  %add = add i64 %1, %conv1, !dbg !667
  %conv2 = trunc i64 %add to i16, !dbg !665
  call void @__outb(i8 noundef zeroext %conv, i16 noundef zeroext %conv2) #9, !dbg !668
  ret void, !dbg !669
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @early_serial_hw_init(i32 noundef %divisor) #0 section ".init.text" align 16 !dbg !670 {
entry:
  %divisor.addr = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !674, metadata !DIExpression()), !dbg !676
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #8, !dbg !677
  call void @llvm.dbg.declare(metadata ptr %c, metadata !675, metadata !DIExpression()), !dbg !678
  %0 = load ptr, ptr @serial_out, align 8, !dbg !679
  %1 = load i64, ptr @early_serial_base, align 8, !dbg !680
  call void %0(i64 noundef %1, i32 noundef 3, i32 noundef 3) #9, !dbg !679
  %2 = load ptr, ptr @serial_out, align 8, !dbg !681
  %3 = load i64, ptr @early_serial_base, align 8, !dbg !682
  call void %2(i64 noundef %3, i32 noundef 1, i32 noundef 0) #9, !dbg !681
  %4 = load ptr, ptr @serial_out, align 8, !dbg !683
  %5 = load i64, ptr @early_serial_base, align 8, !dbg !684
  call void %4(i64 noundef %5, i32 noundef 2, i32 noundef 0) #9, !dbg !683
  %6 = load ptr, ptr @serial_out, align 8, !dbg !685
  %7 = load i64, ptr @early_serial_base, align 8, !dbg !686
  call void %6(i64 noundef %7, i32 noundef 4, i32 noundef 3) #9, !dbg !685
  %8 = load ptr, ptr @serial_in, align 8, !dbg !687
  %9 = load i64, ptr @early_serial_base, align 8, !dbg !688
  %call = call i32 %8(i64 noundef %9, i32 noundef 3) #9, !dbg !687
  %conv = trunc i32 %call to i8, !dbg !687
  store i8 %conv, ptr %c, align 1, !dbg !689
  %10 = load ptr, ptr @serial_out, align 8, !dbg !690
  %11 = load i64, ptr @early_serial_base, align 8, !dbg !691
  %12 = load i8, ptr %c, align 1, !dbg !692
  %conv1 = zext i8 %12 to i32, !dbg !692
  %or = or i32 %conv1, 128, !dbg !693
  call void %10(i64 noundef %11, i32 noundef 3, i32 noundef %or) #9, !dbg !690
  %13 = load ptr, ptr @serial_out, align 8, !dbg !694
  %14 = load i64, ptr @early_serial_base, align 8, !dbg !695
  %15 = load i32, ptr %divisor.addr, align 4, !dbg !696
  %and = and i32 %15, 255, !dbg !697
  call void %13(i64 noundef %14, i32 noundef 0, i32 noundef %and) #9, !dbg !694
  %16 = load ptr, ptr @serial_out, align 8, !dbg !698
  %17 = load i64, ptr @early_serial_base, align 8, !dbg !699
  %18 = load i32, ptr %divisor.addr, align 4, !dbg !700
  %shr = lshr i32 %18, 8, !dbg !701
  %and2 = and i32 %shr, 255, !dbg !702
  call void %16(i64 noundef %17, i32 noundef 1, i32 noundef %and2) #9, !dbg !698
  %19 = load ptr, ptr @serial_out, align 8, !dbg !703
  %20 = load i64, ptr @early_serial_base, align 8, !dbg !704
  %21 = load i8, ptr %c, align 1, !dbg !705
  %conv3 = zext i8 %21 to i32, !dbg !705
  %and4 = and i32 %conv3, -129, !dbg !706
  call void %19(i64 noundef %20, i32 noundef 3, i32 noundef %and4) #9, !dbg !703
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #8, !dbg !707
  ret void, !dbg !707
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #5 align 16 !dbg !708 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !713, metadata !DIExpression()), !dbg !715
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #8, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %value, metadata !714, metadata !DIExpression()), !dbg !715
  %0 = load i16, ptr %port.addr, align 2, !dbg !715
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #8, !dbg !715, !srcloc !716
  store i8 %1, ptr %value, align 1, !dbg !715
  %2 = load i8, ptr %value, align 1, !dbg !715
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #8, !dbg !715
  ret i8 %2, !dbg !715
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #5 align 16 !dbg !717 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !721, metadata !DIExpression()), !dbg !723
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load i8, ptr %value.addr, align 1, !dbg !723
  %1 = load i16, ptr %port.addr, align 2, !dbg !723
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #8, !dbg !723, !srcloc !724
  ret void, !dbg !723
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !725 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !729 dso_local void @register_console(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_serial_write(ptr noundef %con, ptr noundef %s, i32 noundef %n) #4 align 16 !dbg !732 {
entry:
  %con.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %con, ptr %con.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con.addr, metadata !734, metadata !DIExpression()), !dbg !737
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !735, metadata !DIExpression()), !dbg !738
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !736, metadata !DIExpression()), !dbg !739
  br label %while.cond, !dbg !740

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !741
  %1 = load i8, ptr %0, align 1, !dbg !742
  %conv = zext i8 %1 to i32, !dbg !742
  %tobool = icmp ne i32 %conv, 0, !dbg !742
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !743

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %n.addr, align 4, !dbg !744
  %dec = add i32 %2, -1, !dbg !744
  store i32 %dec, ptr %n.addr, align 4, !dbg !744
  %cmp = icmp ugt i32 %2, 0, !dbg !745
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !746
  br i1 %3, label %while.body, label %while.end, !dbg !740

while.body:                                       ; preds = %land.end
  %4 = load ptr, ptr %s.addr, align 8, !dbg !747
  %5 = load i8, ptr %4, align 1, !dbg !750
  %conv2 = zext i8 %5 to i32, !dbg !750
  %cmp3 = icmp eq i32 %conv2, 10, !dbg !751
  br i1 %cmp3, label %if.then, label %if.end, !dbg !752

if.then:                                          ; preds = %while.body
  %call = call i32 @early_serial_putc(i8 noundef zeroext 13) #9, !dbg !753
  br label %if.end, !dbg !753

if.end:                                           ; preds = %if.then, %while.body
  %6 = load ptr, ptr %s.addr, align 8, !dbg !754
  %7 = load i8, ptr %6, align 1, !dbg !755
  %call5 = call i32 @early_serial_putc(i8 noundef zeroext %7) #9, !dbg !756
  %8 = load ptr, ptr %s.addr, align 8, !dbg !757
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !757
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !757
  br label %while.cond, !dbg !740, !llvm.loop !758

while.end:                                        ; preds = %land.end
  ret void, !dbg !760
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @early_serial_putc(i8 noundef zeroext %ch) #4 align 16 !dbg !761 {
entry:
  %ch.addr = alloca i8, align 1
  %timeout = alloca i32, align 4
  store i8 %ch, ptr %ch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !765, metadata !DIExpression()), !dbg !767
  call void @llvm.lifetime.start.p0(i64 4, ptr %timeout) #8, !dbg !768
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !766, metadata !DIExpression()), !dbg !769
  store i32 65535, ptr %timeout, align 4, !dbg !769
  br label %while.cond, !dbg !770

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @serial_in, align 8, !dbg !771
  %1 = load i64, ptr @early_serial_base, align 8, !dbg !772
  %call = call i32 %0(i64 noundef %1, i32 noundef 5) #9, !dbg !771
  %and = and i32 %call, 32, !dbg !773
  %cmp = icmp eq i32 %and, 0, !dbg !774
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !775

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %timeout, align 4, !dbg !776
  %dec = add i32 %2, -1, !dbg !776
  store i32 %dec, ptr %timeout, align 4, !dbg !776
  %tobool = icmp ne i32 %dec, 0, !dbg !775
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !777
  br i1 %3, label %while.body, label %while.end, !dbg !770

while.body:                                       ; preds = %land.end
  call void @cpu_relax() #9, !dbg !778
  br label %while.cond, !dbg !770, !llvm.loop !779

while.end:                                        ; preds = %land.end
  %4 = load ptr, ptr @serial_out, align 8, !dbg !781
  %5 = load i64, ptr @early_serial_base, align 8, !dbg !782
  %6 = load i8, ptr %ch.addr, align 1, !dbg !783
  %conv = zext i8 %6 to i32, !dbg !783
  call void %4(i64 noundef %5, i32 noundef 0, i32 noundef %conv) #9, !dbg !781
  %7 = load i32, ptr %timeout, align 4, !dbg !784
  %tobool1 = icmp ne i32 %7, 0, !dbg !784
  %8 = zext i1 %tobool1 to i64, !dbg !784
  %cond = select i1 %tobool1, i32 0, i32 -1, !dbg !784
  call void @llvm.lifetime.end.p0(i64 4, ptr %timeout) #8, !dbg !785
  ret i32 %cond, !dbg !786
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #5 align 16 !dbg !787 {
entry:
  call void @rep_nop() #9, !dbg !789
  ret void, !dbg !790
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #5 align 16 !dbg !791 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !792, !srcloc !793
  ret void, !dbg !794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !795 dso_local i32 @read_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !799 dso_local void @write_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mem32_serial_in(i64 noundef %addr, i32 noundef %offset) #4 align 16 !dbg !802 {
entry:
  %addr.addr = alloca i64, align 8
  %offset.addr = alloca i32, align 4
  %vaddr = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !804, metadata !DIExpression()), !dbg !807
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !805, metadata !DIExpression()), !dbg !808
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #8, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !806, metadata !DIExpression()), !dbg !810
  %0 = load i64, ptr %addr.addr, align 8, !dbg !811
  %1 = inttoptr i64 %0 to ptr, !dbg !812
  store ptr %1, ptr %vaddr, align 8, !dbg !810
  %2 = load ptr, ptr %vaddr, align 8, !dbg !813
  %3 = load i32, ptr %offset.addr, align 4, !dbg !814
  %idx.ext = sext i32 %3 to i64, !dbg !815
  %add.ptr = getelementptr i32, ptr %2, i64 %idx.ext, !dbg !815
  %call = call i32 @readl(ptr noundef %add.ptr) #9, !dbg !816
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #8, !dbg !817
  ret i32 %call, !dbg !818
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mem32_serial_out(i64 noundef %addr, i32 noundef %offset, i32 noundef %value) #4 align 16 !dbg !819 {
entry:
  %addr.addr = alloca i64, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %vaddr = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !821, metadata !DIExpression()), !dbg !825
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !822, metadata !DIExpression()), !dbg !826
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !823, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #8, !dbg !828
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !824, metadata !DIExpression()), !dbg !829
  %0 = load i64, ptr %addr.addr, align 8, !dbg !830
  %1 = inttoptr i64 %0 to ptr, !dbg !831
  store ptr %1, ptr %vaddr, align 8, !dbg !829
  %2 = load i32, ptr %value.addr, align 4, !dbg !832
  %3 = load ptr, ptr %vaddr, align 8, !dbg !833
  %4 = load i32, ptr %offset.addr, align 4, !dbg !834
  %idx.ext = sext i32 %4 to i64, !dbg !835
  %add.ptr = getelementptr i32, ptr %3, i64 %idx.ext, !dbg !835
  call void @writel(i32 noundef %2, ptr noundef %add.ptr) #9, !dbg !836
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #8, !dbg !837
  ret void, !dbg !837
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !838 dso_local ptr @early_ioremap(i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !844 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #7 align 16 !dbg !847 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !852, metadata !DIExpression()), !dbg !855
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !853, metadata !DIExpression()), !dbg !856
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !854, metadata !DIExpression()), !dbg !857
  %0 = load ptr, ptr %s.addr, align 8, !dbg !858
  %1 = load i32, ptr %base.addr, align 4, !dbg !860
  %2 = load ptr, ptr %res.addr, align 8, !dbg !861
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9, !dbg !862
  ret i32 %call, !dbg !863
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #7 align 16 !dbg !864 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !872, metadata !DIExpression()), !dbg !874
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !873, metadata !DIExpression()), !dbg !874
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !874
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #8, !dbg !874, !srcloc !875
  store i32 %1, ptr %ret, align 4, !dbg !874
  %2 = load i32, ptr %ret, align 4, !dbg !874
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !874
  ret i32 %2, !dbg !874
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #7 align 16 !dbg !876 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !881, metadata !DIExpression()), !dbg !883
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !882, metadata !DIExpression()), !dbg !883
  %0 = load i32, ptr %val.addr, align 4, !dbg !883
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !883
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #8, !dbg !883, !srcloc !884
  ret void, !dbg !883
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !885 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_vga_write(ptr noundef %con, ptr noundef %str, i32 noundef %n) #4 align 16 !dbg !888 {
entry:
  %con.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %con, ptr %con.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con.addr, metadata !890, metadata !DIExpression()), !dbg !897
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !891, metadata !DIExpression()), !dbg !898
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !892, metadata !DIExpression()), !dbg !899
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #8, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %c, metadata !893, metadata !DIExpression()), !dbg !901
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !902
  call void @llvm.dbg.declare(metadata ptr %i, metadata !894, metadata !DIExpression()), !dbg !903
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8, !dbg !902
  call void @llvm.dbg.declare(metadata ptr %k, metadata !895, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8, !dbg !902
  call void @llvm.dbg.declare(metadata ptr %j, metadata !896, metadata !DIExpression()), !dbg !905
  br label %while.cond, !dbg !906

while.cond:                                       ; preds = %if.end62, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !907
  %incdec.ptr = getelementptr i8, ptr %0, i32 1, !dbg !907
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !907
  %1 = load i8, ptr %0, align 1, !dbg !908
  store i8 %1, ptr %c, align 1, !dbg !909
  %conv = zext i8 %1 to i32, !dbg !910
  %cmp = icmp ne i32 %conv, 0, !dbg !911
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !912

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %n.addr, align 4, !dbg !913
  %dec = add i32 %2, -1, !dbg !913
  store i32 %dec, ptr %n.addr, align 4, !dbg !913
  %cmp2 = icmp ugt i32 %2, 0, !dbg !914
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ], !dbg !915
  br i1 %3, label %while.body, label %while.end, !dbg !906

while.body:                                       ; preds = %land.end
  %4 = load i32, ptr @current_ypos, align 4, !dbg !916
  %5 = load i32, ptr @max_ypos, align 4, !dbg !919
  %cmp4 = icmp sge i32 %4, %5, !dbg !920
  br i1 %cmp4, label %if.then, label %if.end, !dbg !921

if.then:                                          ; preds = %while.body
  store i32 1, ptr %k, align 4, !dbg !922
  store i32 0, ptr %j, align 4, !dbg !925
  br label %for.cond, !dbg !926

for.cond:                                         ; preds = %for.inc20, %if.then
  %6 = load i32, ptr %k, align 4, !dbg !927
  %7 = load i32, ptr @max_ypos, align 4, !dbg !929
  %cmp6 = icmp slt i32 %6, %7, !dbg !930
  br i1 %cmp6, label %for.body, label %for.end23, !dbg !931

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !932
  br label %for.cond8, !dbg !935

for.cond8:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %i, align 4, !dbg !936
  %9 = load i32, ptr @max_xpos, align 4, !dbg !938
  %cmp9 = icmp slt i32 %8, %9, !dbg !939
  br i1 %cmp9, label %for.body11, label %for.end, !dbg !940

for.body11:                                       ; preds = %for.cond8
  %10 = load i64, ptr @page_offset_base, align 8, !dbg !941
  %11 = inttoptr i64 %10 to ptr, !dbg !941
  %add.ptr = getelementptr i8, ptr %11, i64 753664, !dbg !941
  %12 = load i32, ptr @max_xpos, align 4, !dbg !943
  %13 = load i32, ptr %k, align 4, !dbg !944
  %mul = mul i32 %12, %13, !dbg !945
  %14 = load i32, ptr %i, align 4, !dbg !946
  %add = add i32 %mul, %14, !dbg !947
  %mul12 = mul i32 2, %add, !dbg !948
  %idx.ext = sext i32 %mul12 to i64, !dbg !949
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i64 %idx.ext, !dbg !949
  %call = call zeroext i16 @readw(ptr noundef %add.ptr13) #9, !dbg !950
  %15 = load i64, ptr @page_offset_base, align 8, !dbg !951
  %16 = inttoptr i64 %15 to ptr, !dbg !951
  %add.ptr14 = getelementptr i8, ptr %16, i64 753664, !dbg !951
  %17 = load i32, ptr @max_xpos, align 4, !dbg !952
  %18 = load i32, ptr %j, align 4, !dbg !953
  %mul15 = mul i32 %17, %18, !dbg !954
  %19 = load i32, ptr %i, align 4, !dbg !955
  %add16 = add i32 %mul15, %19, !dbg !956
  %mul17 = mul i32 2, %add16, !dbg !957
  %idx.ext18 = sext i32 %mul17 to i64, !dbg !958
  %add.ptr19 = getelementptr i8, ptr %add.ptr14, i64 %idx.ext18, !dbg !958
  call void @writew(i16 noundef zeroext %call, ptr noundef %add.ptr19) #9, !dbg !959
  br label %for.inc, !dbg !960

for.inc:                                          ; preds = %for.body11
  %20 = load i32, ptr %i, align 4, !dbg !961
  %inc = add i32 %20, 1, !dbg !961
  store i32 %inc, ptr %i, align 4, !dbg !961
  br label %for.cond8, !dbg !962, !llvm.loop !963

for.end:                                          ; preds = %for.cond8
  br label %for.inc20, !dbg !965

for.inc20:                                        ; preds = %for.end
  %21 = load i32, ptr %k, align 4, !dbg !966
  %inc21 = add i32 %21, 1, !dbg !966
  store i32 %inc21, ptr %k, align 4, !dbg !966
  %22 = load i32, ptr %j, align 4, !dbg !967
  %inc22 = add i32 %22, 1, !dbg !967
  store i32 %inc22, ptr %j, align 4, !dbg !967
  br label %for.cond, !dbg !968, !llvm.loop !969

for.end23:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !971
  br label %for.cond24, !dbg !973

for.cond24:                                       ; preds = %for.inc34, %for.end23
  %23 = load i32, ptr %i, align 4, !dbg !974
  %24 = load i32, ptr @max_xpos, align 4, !dbg !976
  %cmp25 = icmp slt i32 %23, %24, !dbg !977
  br i1 %cmp25, label %for.body27, label %for.end36, !dbg !978

for.body27:                                       ; preds = %for.cond24
  %25 = load i64, ptr @page_offset_base, align 8, !dbg !979
  %26 = inttoptr i64 %25 to ptr, !dbg !979
  %add.ptr28 = getelementptr i8, ptr %26, i64 753664, !dbg !979
  %27 = load i32, ptr @max_xpos, align 4, !dbg !980
  %28 = load i32, ptr %j, align 4, !dbg !981
  %mul29 = mul i32 %27, %28, !dbg !982
  %29 = load i32, ptr %i, align 4, !dbg !983
  %add30 = add i32 %mul29, %29, !dbg !984
  %mul31 = mul i32 2, %add30, !dbg !985
  %idx.ext32 = sext i32 %mul31 to i64, !dbg !986
  %add.ptr33 = getelementptr i8, ptr %add.ptr28, i64 %idx.ext32, !dbg !986
  call void @writew(i16 noundef zeroext 1824, ptr noundef %add.ptr33) #9, !dbg !987
  br label %for.inc34, !dbg !987

for.inc34:                                        ; preds = %for.body27
  %30 = load i32, ptr %i, align 4, !dbg !988
  %inc35 = add i32 %30, 1, !dbg !988
  store i32 %inc35, ptr %i, align 4, !dbg !988
  br label %for.cond24, !dbg !989, !llvm.loop !990

for.end36:                                        ; preds = %for.cond24
  %31 = load i32, ptr @max_ypos, align 4, !dbg !992
  %sub = sub i32 %31, 1, !dbg !993
  store i32 %sub, ptr @current_ypos, align 4, !dbg !994
  br label %if.end, !dbg !995

if.end:                                           ; preds = %for.end36, %while.body
  %32 = load i8, ptr %c, align 1, !dbg !996
  %conv37 = zext i8 %32 to i32, !dbg !996
  %cmp38 = icmp eq i32 %conv37, 10, !dbg !998
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !999

if.then40:                                        ; preds = %if.end
  store i32 0, ptr @current_xpos, align 4, !dbg !1000
  %33 = load i32, ptr @current_ypos, align 4, !dbg !1002
  %inc41 = add i32 %33, 1, !dbg !1002
  store i32 %inc41, ptr @current_ypos, align 4, !dbg !1002
  br label %if.end62, !dbg !1003

if.else:                                          ; preds = %if.end
  %34 = load i8, ptr %c, align 1, !dbg !1004
  %conv42 = zext i8 %34 to i32, !dbg !1004
  %cmp43 = icmp ne i32 %conv42, 13, !dbg !1006
  br i1 %cmp43, label %if.then45, label %if.end61, !dbg !1007

if.then45:                                        ; preds = %if.else
  %35 = load i8, ptr %c, align 1, !dbg !1008
  %conv46 = zext i8 %35 to i16, !dbg !1010
  %conv47 = zext i16 %conv46 to i32, !dbg !1010
  %or = or i32 1792, %conv47, !dbg !1011
  %conv48 = trunc i32 %or to i16, !dbg !1012
  %36 = load i64, ptr @page_offset_base, align 8, !dbg !1013
  %37 = inttoptr i64 %36 to ptr, !dbg !1013
  %add.ptr49 = getelementptr i8, ptr %37, i64 753664, !dbg !1013
  %38 = load i32, ptr @max_xpos, align 4, !dbg !1014
  %39 = load i32, ptr @current_ypos, align 4, !dbg !1015
  %mul50 = mul i32 %38, %39, !dbg !1016
  %40 = load i32, ptr @current_xpos, align 4, !dbg !1017
  %inc51 = add i32 %40, 1, !dbg !1017
  store i32 %inc51, ptr @current_xpos, align 4, !dbg !1017
  %add52 = add i32 %mul50, %40, !dbg !1018
  %mul53 = mul i32 2, %add52, !dbg !1019
  %idx.ext54 = sext i32 %mul53 to i64, !dbg !1020
  %add.ptr55 = getelementptr i8, ptr %add.ptr49, i64 %idx.ext54, !dbg !1020
  call void @writew(i16 noundef zeroext %conv48, ptr noundef %add.ptr55) #9, !dbg !1021
  %41 = load i32, ptr @current_xpos, align 4, !dbg !1022
  %42 = load i32, ptr @max_xpos, align 4, !dbg !1024
  %cmp56 = icmp sge i32 %41, %42, !dbg !1025
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !1026

if.then58:                                        ; preds = %if.then45
  store i32 0, ptr @current_xpos, align 4, !dbg !1027
  %43 = load i32, ptr @current_ypos, align 4, !dbg !1029
  %inc59 = add i32 %43, 1, !dbg !1029
  store i32 %inc59, ptr @current_ypos, align 4, !dbg !1029
  br label %if.end60, !dbg !1030

if.end60:                                         ; preds = %if.then58, %if.then45
  br label %if.end61, !dbg !1031

if.end61:                                         ; preds = %if.end60, %if.else
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then40
  br label %while.cond, !dbg !906, !llvm.loop !1032

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #8, !dbg !1034
  ret void, !dbg !1034
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writew(i16 noundef zeroext %val, ptr noundef %addr) #7 align 16 !dbg !1035 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1039, metadata !DIExpression()), !dbg !1041
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1040, metadata !DIExpression()), !dbg !1041
  %0 = load i16, ptr %val.addr, align 2, !dbg !1041
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1041
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, ptr elementtype(i16) %1) #8, !dbg !1041, !srcloc !1042
  ret void, !dbg !1041
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @readw(ptr noundef %addr) #7 align 16 !dbg !1043 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i16, align 2
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1047, metadata !DIExpression()), !dbg !1049
  call void @llvm.lifetime.start.p0(i64 2, ptr %ret) #8, !dbg !1049
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1048, metadata !DIExpression()), !dbg !1049
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1049
  %1 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %0) #8, !dbg !1049, !srcloc !1050
  store i16 %1, ptr %ret, align 2, !dbg !1049
  %2 = load i16, ptr %ret, align 2, !dbg !1049
  call void @llvm.lifetime.end.p0(i64 2, ptr %ret) #8, !dbg !1049
  ret i16 %2, !dbg !1049
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_setup_early_printk", scope: !2, file: !3, line: 398, type: !197, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.early_printk.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/early_printk\22 -D KBUILD_BASENAME=\22early_printk\22 -D KBUILD_MODNAME=\22early_printk\22 -D __KBUILD_MODNAME=kmod_early_printk -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/early_printk.ll arch/x86/kernel/early_printk.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/early_printk.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e3c8b28b17a03ca996507fc42ad35b3")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cons_flags", file: !6, line: 160, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/console.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d83301157f54621331b27ae09c0fe11")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "CON_PRINTBUFFER", value: 1)
!10 = !DIEnumerator(name: "CON_CONSDEV", value: 2)
!11 = !DIEnumerator(name: "CON_ENABLED", value: 4)
!12 = !DIEnumerator(name: "CON_BOOT", value: 8)
!13 = !DIEnumerator(name: "CON_ANYTIME", value: 16)
!14 = !DIEnumerator(name: "CON_BRL", value: 32)
!15 = !DIEnumerator(name: "CON_EXTENDED", value: 64)
!16 = !DIEnumerator(name: "CON_SUSPENDED", value: 128)
!17 = !{!18, !19, !24, !25, !28, !30, !32, !34, !35}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !20, line: 17, baseType: !21)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !22, line: 21, baseType: !23)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !20, line: 21, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !22, line: 27, baseType: !7)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!37 = !{!38, !0, !52, !57, !62, !67, !69, !74, !79, !81, !86, !103, !106, !108, !113, !118, !123, !183, !185, !187, !189, !191, !193, !195}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__setup_setup_early_printk", scope: !2, file: !3, line: 398, type: !40, isLocal: true, isDefinition: true, align: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !41, line: 324, size: 192, elements: !42)
!41 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!42 = !{!43, !46, !51}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !40, file: !41, line: 325, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !40, file: !41, line: 326, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !32}
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !40, file: !41, line: 327, baseType: !50, size: 32, offset: 128)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 40, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 5)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !3, line: 355, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 56, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 7)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 48, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 6)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !54, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !3, line: 367, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 80, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 10)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 4)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !3, line: 381, type: !54, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !3, line: 159, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 3)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "bases", scope: !88, file: !3, line: 162, type: !99, isLocal: true, isDefinition: true)
!88 = distinct !DISubprogram(name: "early_serial_init", scope: !3, file: !3, line: 148, type: !89, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !32}
!91 = !{!92, !93, !94, !95, !96}
!92 = !DILocalVariable(name: "s", arg: 1, scope: !88, file: !3, line: 148, type: !32)
!93 = !DILocalVariable(name: "divisor", scope: !88, file: !3, line: 150, type: !7)
!94 = !DILocalVariable(name: "baud", scope: !88, file: !3, line: 151, type: !24)
!95 = !DILocalVariable(name: "e", scope: !88, file: !3, line: 152, type: !32)
!96 = !DILocalVariable(name: "port", scope: !97, file: !3, line: 158, type: !7)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 157, column: 10)
!98 = distinct !DILexicalBlock(scope: !88, file: !3, line: 157, column: 6)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !101)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!101 = !{!102}
!102 = !DISubrange(count: 2)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 16, elements: !101)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "early_serial_base", scope: !2, file: !3, line: 79, type: !24, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "serial_in", scope: !2, file: !3, line: 107, type: !110, isLocal: true, isDefinition: true)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!7, !24, !50}
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "serial_out", scope: !2, file: !3, line: 108, type: !115, isLocal: true, isDefinition: true)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !24, !50, !50}
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !3, line: 330, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 312, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 39)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "early_serial_console", scope: !2, file: !3, line: 320, type: !125, isLocal: true, isDefinition: true)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console", file: !6, line: 191, size: 1024, elements: !126)
!126 = !{!127, !131, !136, !140, !147, !151, !155, !159, !163, !165, !166, !167, !170, !171, !174, !175, !176}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !6, line: 192, baseType: !128, size: 128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !125, file: !6, line: 193, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135, !44, !7}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !125, file: !6, line: 194, baseType: !137, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!50, !135, !32, !7}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !125, file: !6, line: 195, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !135, !146}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !6, line: 195, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "unblank", scope: !125, file: !6, line: 196, baseType: !148, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !125, file: !6, line: 197, baseType: !152, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!50, !135, !32}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !125, file: !6, line: 198, baseType: !156, size: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!50, !135}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !125, file: !6, line: 199, baseType: !160, size: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!50, !135, !32, !50, !32}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !6, line: 200, baseType: !164, size: 16, offset: 576)
!164 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !125, file: !6, line: 201, baseType: !164, size: 16, offset: 592)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cflag", scope: !125, file: !6, line: 202, baseType: !50, size: 32, offset: 608)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ispeed", scope: !125, file: !6, line: 203, baseType: !168, size: 32, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !169, line: 93, baseType: !7)
!169 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ospeed", scope: !125, file: !6, line: 204, baseType: !168, size: 32, offset: 672)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !125, file: !6, line: 205, baseType: !172, size: 64, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !20, line: 23, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !22, line: 31, baseType: !31)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !125, file: !6, line: 206, baseType: !24, size: 64, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !125, file: !6, line: 207, baseType: !18, size: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !6, line: 208, baseType: !177, size: 128, offset: 896)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !169, line: 198, size: 128, elements: !178)
!178 = !{!179, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !169, line: 199, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !177, file: !169, line: 199, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 234, type: !59, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !64, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "max_xpos", scope: !2, file: !3, line: 26, type: !50, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "max_ypos", scope: !2, file: !3, line: 26, type: !50, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "current_ypos", scope: !2, file: !3, line: 27, type: !50, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "early_vga_console", scope: !2, file: !3, line: 70, type: !125, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "current_xpos", scope: !2, file: !3, line: 27, type: !50, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 96, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 12)
!200 = !{i32 7, !"Dwarf Version", i32 5}
!201 = !{i32 2, !"Debug Info Version", i32 3}
!202 = !{i32 1, !"wchar_size", i32 2}
!203 = !{i32 8, !"cf-protection-branch", i32 1}
!204 = !{i32 4, !"function_return_thunk_extern", i32 1}
!205 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!206 = !{i32 1, !"Code Model", i32 2}
!207 = !{i32 1, !"override-stack-alignment", i32 8}
!208 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!209 = distinct !DISubprogram(name: "setup_early_printk", scope: !3, file: !3, line: 342, type: !48, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!210 = !{!211, !212}
!211 = !DILocalVariable(name: "buf", arg: 1, scope: !209, file: !3, line: 342, type: !32)
!212 = !DILocalVariable(name: "keep", scope: !209, file: !3, line: 344, type: !50)
!213 = !DILocation(line: 342, column: 44, scope: !209)
!214 = !DILocation(line: 344, column: 2, scope: !209)
!215 = !DILocation(line: 344, column: 6, scope: !209)
!216 = !DILocation(line: 346, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !209, file: !3, line: 346, column: 6)
!218 = !DILocation(line: 346, column: 6, scope: !209)
!219 = !DILocation(line: 347, column: 3, scope: !217)
!220 = !DILocation(line: 349, column: 6, scope: !221)
!221 = distinct !DILexicalBlock(scope: !209, file: !3, line: 349, column: 6)
!222 = !DILocation(line: 349, column: 6, scope: !209)
!223 = !DILocation(line: 350, column: 3, scope: !221)
!224 = !DILocation(line: 352, column: 17, scope: !209)
!225 = !DILocation(line: 352, column: 10, scope: !209)
!226 = !DILocation(line: 352, column: 30, scope: !209)
!227 = !DILocation(line: 352, column: 7, scope: !209)
!228 = !DILocation(line: 354, column: 2, scope: !209)
!229 = !DILocation(line: 354, column: 10, scope: !209)
!230 = !DILocation(line: 354, column: 9, scope: !209)
!231 = !DILocation(line: 354, column: 14, scope: !209)
!232 = !DILocation(line: 355, column: 16, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 355, column: 7)
!234 = distinct !DILexicalBlock(scope: !209, file: !3, line: 354, column: 23)
!235 = !DILocation(line: 355, column: 8, scope: !233)
!236 = !DILocation(line: 355, column: 7, scope: !234)
!237 = !DILocation(line: 356, column: 8, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !3, line: 355, column: 35)
!239 = !DILocation(line: 357, column: 22, scope: !238)
!240 = !DILocation(line: 357, column: 4, scope: !238)
!241 = !DILocation(line: 358, column: 50, scope: !238)
!242 = !DILocation(line: 358, column: 4, scope: !238)
!243 = !DILocation(line: 359, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !238, file: !3, line: 359, column: 8)
!245 = !DILocation(line: 359, column: 9, scope: !244)
!246 = !DILocation(line: 359, column: 8, scope: !238)
!247 = !DILocation(line: 360, column: 9, scope: !244)
!248 = !DILocation(line: 360, column: 5, scope: !244)
!249 = !DILocation(line: 361, column: 3, scope: !238)
!250 = !DILocation(line: 362, column: 16, scope: !251)
!251 = distinct !DILexicalBlock(scope: !234, file: !3, line: 362, column: 7)
!252 = !DILocation(line: 362, column: 8, scope: !251)
!253 = !DILocation(line: 362, column: 7, scope: !234)
!254 = !DILocation(line: 363, column: 22, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 362, column: 33)
!256 = !DILocation(line: 363, column: 26, scope: !255)
!257 = !DILocation(line: 363, column: 4, scope: !255)
!258 = !DILocation(line: 364, column: 50, scope: !255)
!259 = !DILocation(line: 364, column: 4, scope: !255)
!260 = !DILocation(line: 365, column: 3, scope: !255)
!261 = !DILocation(line: 367, column: 16, scope: !262)
!262 = distinct !DILexicalBlock(scope: !234, file: !3, line: 367, column: 7)
!263 = !DILocation(line: 367, column: 8, scope: !262)
!264 = !DILocation(line: 367, column: 7, scope: !234)
!265 = !DILocation(line: 368, column: 26, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 367, column: 38)
!267 = !DILocation(line: 368, column: 30, scope: !266)
!268 = !DILocation(line: 368, column: 4, scope: !266)
!269 = !DILocation(line: 369, column: 50, scope: !266)
!270 = !DILocation(line: 369, column: 4, scope: !266)
!271 = !DILocation(line: 370, column: 8, scope: !266)
!272 = !DILocation(line: 371, column: 3, scope: !266)
!273 = !DILocation(line: 373, column: 16, scope: !274)
!274 = distinct !DILexicalBlock(scope: !234, file: !3, line: 373, column: 7)
!275 = !DILocation(line: 373, column: 8, scope: !274)
!276 = !DILocation(line: 373, column: 31, scope: !274)
!277 = !DILocation(line: 374, column: 31, scope: !274)
!278 = !DILocation(line: 374, column: 7, scope: !274)
!279 = !DILocation(line: 374, column: 48, scope: !274)
!280 = !DILocation(line: 373, column: 7, scope: !234)
!281 = !DILocation(line: 375, column: 39, scope: !282)
!282 = distinct !DILexicalBlock(scope: !274, file: !3, line: 374, column: 54)
!283 = !DILocation(line: 375, column: 15, scope: !282)
!284 = !DILocation(line: 375, column: 13, scope: !282)
!285 = !DILocation(line: 376, column: 39, scope: !282)
!286 = !DILocation(line: 376, column: 15, scope: !282)
!287 = !DILocation(line: 376, column: 13, scope: !282)
!288 = !DILocation(line: 377, column: 43, scope: !282)
!289 = !DILocation(line: 377, column: 19, scope: !282)
!290 = !DILocation(line: 377, column: 17, scope: !282)
!291 = !DILocation(line: 378, column: 47, scope: !282)
!292 = !DILocation(line: 378, column: 4, scope: !282)
!293 = !DILocation(line: 379, column: 3, scope: !282)
!294 = !DILocation(line: 381, column: 16, scope: !295)
!295 = distinct !DILexicalBlock(scope: !234, file: !3, line: 381, column: 7)
!296 = !DILocation(line: 381, column: 8, scope: !295)
!297 = !DILocation(line: 381, column: 32, scope: !295)
!298 = !DILocation(line: 381, column: 52, scope: !295)
!299 = !DILocation(line: 381, column: 56, scope: !295)
!300 = !DILocation(line: 381, column: 36, scope: !295)
!301 = !DILocation(line: 381, column: 7, scope: !234)
!302 = !DILocation(line: 382, column: 48, scope: !295)
!303 = !DILocation(line: 382, column: 4, scope: !295)
!304 = !DILocation(line: 393, column: 6, scope: !234)
!305 = distinct !{!305, !228, !306, !307, !308}
!306 = !DILocation(line: 394, column: 2, scope: !209)
!307 = !{!"llvm.loop.mustprogress"}
!308 = !{!"llvm.loop.unroll.disable"}
!309 = !DILocation(line: 395, column: 2, scope: !209)
!310 = !DILocation(line: 396, column: 1, scope: !209)
!311 = !DISubprogram(name: "strstr", scope: !312, file: !312, line: 122, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!313 = !DISubroutineType(types: !314)
!314 = !{!32, !44, !44}
!315 = !DISubprogram(name: "strncmp", scope: !312, file: !312, line: 91, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(types: !317)
!317 = !{!50, !44, !44, !318}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !319, line: 72, baseType: !320)
!319 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !319, line: 16, baseType: !24)
!321 = !DILocation(line: 148, column: 44, scope: !88)
!322 = !DILocation(line: 150, column: 2, scope: !88)
!323 = !DILocation(line: 150, column: 11, scope: !88)
!324 = !DILocation(line: 151, column: 2, scope: !88)
!325 = !DILocation(line: 151, column: 16, scope: !88)
!326 = !DILocation(line: 152, column: 2, scope: !88)
!327 = !DILocation(line: 152, column: 8, scope: !88)
!328 = !DILocation(line: 154, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !88, file: !3, line: 154, column: 6)
!330 = !DILocation(line: 154, column: 6, scope: !329)
!331 = !DILocation(line: 154, column: 9, scope: !329)
!332 = !DILocation(line: 154, column: 6, scope: !88)
!333 = !DILocation(line: 155, column: 3, scope: !329)
!334 = !DILocation(line: 157, column: 7, scope: !98)
!335 = !DILocation(line: 157, column: 6, scope: !98)
!336 = !DILocation(line: 157, column: 6, scope: !88)
!337 = !DILocation(line: 158, column: 3, scope: !97)
!338 = !DILocation(line: 158, column: 12, scope: !97)
!339 = !DILocation(line: 159, column: 16, scope: !340)
!340 = distinct !DILexicalBlock(scope: !97, file: !3, line: 159, column: 7)
!341 = !DILocation(line: 159, column: 8, scope: !340)
!342 = !DILocation(line: 159, column: 7, scope: !97)
!343 = !DILocation(line: 160, column: 39, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !3, line: 159, column: 29)
!345 = !DILocation(line: 160, column: 24, scope: !344)
!346 = !DILocation(line: 160, column: 22, scope: !344)
!347 = !DILocation(line: 161, column: 3, scope: !344)
!348 = !DILocation(line: 164, column: 17, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 164, column: 8)
!350 = distinct !DILexicalBlock(scope: !340, file: !3, line: 161, column: 10)
!351 = !DILocation(line: 164, column: 9, scope: !349)
!352 = !DILocation(line: 164, column: 8, scope: !350)
!353 = !DILocation(line: 165, column: 7, scope: !349)
!354 = !DILocation(line: 165, column: 5, scope: !349)
!355 = !DILocation(line: 166, column: 26, scope: !350)
!356 = !DILocation(line: 166, column: 11, scope: !350)
!357 = !DILocation(line: 166, column: 9, scope: !350)
!358 = !DILocation(line: 167, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !350, file: !3, line: 167, column: 8)
!360 = !DILocation(line: 167, column: 13, scope: !359)
!361 = !DILocation(line: 167, column: 17, scope: !359)
!362 = !DILocation(line: 167, column: 20, scope: !359)
!363 = !DILocation(line: 167, column: 25, scope: !359)
!364 = !DILocation(line: 167, column: 22, scope: !359)
!365 = !DILocation(line: 167, column: 8, scope: !350)
!366 = !DILocation(line: 168, column: 10, scope: !359)
!367 = !DILocation(line: 168, column: 5, scope: !359)
!368 = !DILocation(line: 169, column: 30, scope: !350)
!369 = !DILocation(line: 169, column: 24, scope: !350)
!370 = !DILocation(line: 169, column: 22, scope: !350)
!371 = !DILocation(line: 171, column: 16, scope: !97)
!372 = !DILocation(line: 171, column: 8, scope: !97)
!373 = !DILocation(line: 171, column: 5, scope: !97)
!374 = !DILocation(line: 172, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !97, file: !3, line: 172, column: 7)
!376 = !DILocation(line: 172, column: 7, scope: !375)
!377 = !DILocation(line: 172, column: 10, scope: !375)
!378 = !DILocation(line: 172, column: 7, scope: !97)
!379 = !DILocation(line: 173, column: 5, scope: !375)
!380 = !DILocation(line: 173, column: 4, scope: !375)
!381 = !DILocation(line: 174, column: 2, scope: !98)
!382 = !DILocation(line: 174, column: 2, scope: !97)
!383 = !DILocation(line: 176, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !88, file: !3, line: 176, column: 6)
!385 = !DILocation(line: 176, column: 6, scope: !384)
!386 = !DILocation(line: 176, column: 6, scope: !88)
!387 = !DILocation(line: 177, column: 26, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !3, line: 176, column: 10)
!389 = !DILocation(line: 177, column: 10, scope: !388)
!390 = !DILocation(line: 177, column: 8, scope: !388)
!391 = !DILocation(line: 179, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 179, column: 7)
!393 = !DILocation(line: 179, column: 12, scope: !392)
!394 = !DILocation(line: 179, column: 17, scope: !392)
!395 = !DILocation(line: 179, column: 20, scope: !392)
!396 = !DILocation(line: 179, column: 25, scope: !392)
!397 = !DILocation(line: 179, column: 22, scope: !392)
!398 = !DILocation(line: 179, column: 7, scope: !388)
!399 = !DILocation(line: 180, column: 9, scope: !392)
!400 = !DILocation(line: 180, column: 4, scope: !392)
!401 = !DILocation(line: 181, column: 2, scope: !388)
!402 = !DILocation(line: 184, column: 21, scope: !88)
!403 = !DILocation(line: 184, column: 19, scope: !88)
!404 = !DILocation(line: 184, column: 12, scope: !88)
!405 = !DILocation(line: 184, column: 10, scope: !88)
!406 = !DILocation(line: 187, column: 12, scope: !88)
!407 = !DILocation(line: 188, column: 13, scope: !88)
!408 = !DILocation(line: 191, column: 23, scope: !88)
!409 = !DILocation(line: 191, column: 2, scope: !88)
!410 = !DILocation(line: 192, column: 1, scope: !88)
!411 = distinct !DISubprogram(name: "early_console_register", scope: !3, file: !3, line: 327, type: !412, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !135, !50}
!414 = !{!415, !416}
!415 = !DILocalVariable(name: "con", arg: 1, scope: !411, file: !3, line: 327, type: !135)
!416 = !DILocalVariable(name: "keep_early", arg: 2, scope: !411, file: !3, line: 327, type: !50)
!417 = !DILocation(line: 327, column: 52, scope: !411)
!418 = !DILocation(line: 327, column: 61, scope: !411)
!419 = !DILocation(line: 329, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !411, file: !3, line: 329, column: 6)
!421 = !DILocation(line: 329, column: 11, scope: !420)
!422 = !DILocation(line: 329, column: 17, scope: !420)
!423 = !DILocation(line: 329, column: 6, scope: !411)
!424 = !DILocation(line: 330, column: 3, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 330, column: 3)
!426 = distinct !DILexicalBlock(scope: !420, file: !3, line: 329, column: 24)
!427 = !DILocation(line: 330, column: 3, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !3, line: 330, column: 3)
!429 = !DILocation(line: 332, column: 3, scope: !426)
!430 = !DILocation(line: 334, column: 18, scope: !411)
!431 = !DILocation(line: 334, column: 16, scope: !411)
!432 = !DILocation(line: 335, column: 6, scope: !433)
!433 = distinct !DILexicalBlock(scope: !411, file: !3, line: 335, column: 6)
!434 = !DILocation(line: 335, column: 6, scope: !411)
!435 = !DILocation(line: 336, column: 3, scope: !433)
!436 = !DILocation(line: 336, column: 18, scope: !433)
!437 = !DILocation(line: 336, column: 24, scope: !433)
!438 = !DILocation(line: 338, column: 3, scope: !433)
!439 = !DILocation(line: 338, column: 18, scope: !433)
!440 = !DILocation(line: 338, column: 24, scope: !433)
!441 = !DILocation(line: 339, column: 19, scope: !411)
!442 = !DILocation(line: 339, column: 2, scope: !411)
!443 = !DILocation(line: 340, column: 1, scope: !411)
!444 = distinct !DISubprogram(name: "early_pci_serial_init", scope: !3, file: !3, line: 217, type: !89, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !457, !458}
!446 = !DILocalVariable(name: "s", arg: 1, scope: !444, file: !3, line: 217, type: !32)
!447 = !DILocalVariable(name: "divisor", scope: !444, file: !3, line: 219, type: !7)
!448 = !DILocalVariable(name: "baud", scope: !444, file: !3, line: 220, type: !24)
!449 = !DILocalVariable(name: "bus", scope: !444, file: !3, line: 221, type: !19)
!450 = !DILocalVariable(name: "slot", scope: !444, file: !3, line: 221, type: !19)
!451 = !DILocalVariable(name: "func", scope: !444, file: !3, line: 221, type: !19)
!452 = !DILocalVariable(name: "classcode", scope: !444, file: !3, line: 222, type: !26)
!453 = !DILocalVariable(name: "bar0", scope: !444, file: !3, line: 222, type: !26)
!454 = !DILocalVariable(name: "cmdreg", scope: !444, file: !3, line: 223, type: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !20, line: 19, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !22, line: 24, baseType: !34)
!457 = !DILocalVariable(name: "e", scope: !444, file: !3, line: 224, type: !32)
!458 = !DILocalVariable(name: "force", scope: !444, file: !3, line: 225, type: !50)
!459 = !DILocation(line: 217, column: 48, scope: !444)
!460 = !DILocation(line: 219, column: 2, scope: !444)
!461 = !DILocation(line: 219, column: 11, scope: !444)
!462 = !DILocation(line: 220, column: 2, scope: !444)
!463 = !DILocation(line: 220, column: 16, scope: !444)
!464 = !DILocation(line: 221, column: 2, scope: !444)
!465 = !DILocation(line: 221, column: 5, scope: !444)
!466 = !DILocation(line: 221, column: 10, scope: !444)
!467 = !DILocation(line: 221, column: 16, scope: !444)
!468 = !DILocation(line: 222, column: 2, scope: !444)
!469 = !DILocation(line: 222, column: 6, scope: !444)
!470 = !DILocation(line: 222, column: 17, scope: !444)
!471 = !DILocation(line: 223, column: 2, scope: !444)
!472 = !DILocation(line: 223, column: 6, scope: !444)
!473 = !DILocation(line: 224, column: 2, scope: !444)
!474 = !DILocation(line: 224, column: 8, scope: !444)
!475 = !DILocation(line: 225, column: 2, scope: !444)
!476 = !DILocation(line: 225, column: 6, scope: !444)
!477 = !DILocation(line: 227, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !444, file: !3, line: 227, column: 6)
!479 = !DILocation(line: 227, column: 6, scope: !478)
!480 = !DILocation(line: 227, column: 9, scope: !478)
!481 = !DILocation(line: 227, column: 6, scope: !444)
!482 = !DILocation(line: 228, column: 3, scope: !478)
!483 = !DILocation(line: 230, column: 7, scope: !484)
!484 = distinct !DILexicalBlock(scope: !444, file: !3, line: 230, column: 6)
!485 = !DILocation(line: 230, column: 6, scope: !484)
!486 = !DILocation(line: 230, column: 9, scope: !484)
!487 = !DILocation(line: 230, column: 6, scope: !444)
!488 = !DILocation(line: 231, column: 3, scope: !484)
!489 = !DILocation(line: 234, column: 15, scope: !490)
!490 = distinct !DILexicalBlock(scope: !444, file: !3, line: 234, column: 6)
!491 = !DILocation(line: 234, column: 7, scope: !490)
!492 = !DILocation(line: 234, column: 6, scope: !444)
!493 = !DILocation(line: 235, column: 9, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !3, line: 234, column: 32)
!495 = !DILocation(line: 236, column: 5, scope: !494)
!496 = !DILocation(line: 237, column: 2, scope: !494)
!497 = !DILocation(line: 242, column: 27, scope: !444)
!498 = !DILocation(line: 242, column: 12, scope: !444)
!499 = !DILocation(line: 242, column: 8, scope: !444)
!500 = !DILocation(line: 242, column: 6, scope: !444)
!501 = !DILocation(line: 243, column: 6, scope: !444)
!502 = !DILocation(line: 243, column: 4, scope: !444)
!503 = !DILocation(line: 244, column: 7, scope: !504)
!504 = distinct !DILexicalBlock(scope: !444, file: !3, line: 244, column: 6)
!505 = !DILocation(line: 244, column: 6, scope: !504)
!506 = !DILocation(line: 244, column: 9, scope: !504)
!507 = !DILocation(line: 244, column: 6, scope: !444)
!508 = !DILocation(line: 245, column: 3, scope: !504)
!509 = !DILocation(line: 246, column: 2, scope: !444)
!510 = !DILocation(line: 247, column: 28, scope: !444)
!511 = !DILocation(line: 247, column: 13, scope: !444)
!512 = !DILocation(line: 247, column: 9, scope: !444)
!513 = !DILocation(line: 247, column: 7, scope: !444)
!514 = !DILocation(line: 248, column: 6, scope: !444)
!515 = !DILocation(line: 248, column: 4, scope: !444)
!516 = !DILocation(line: 249, column: 7, scope: !517)
!517 = distinct !DILexicalBlock(scope: !444, file: !3, line: 249, column: 6)
!518 = !DILocation(line: 249, column: 6, scope: !517)
!519 = !DILocation(line: 249, column: 9, scope: !517)
!520 = !DILocation(line: 249, column: 6, scope: !444)
!521 = !DILocation(line: 250, column: 3, scope: !517)
!522 = !DILocation(line: 251, column: 2, scope: !444)
!523 = !DILocation(line: 252, column: 28, scope: !444)
!524 = !DILocation(line: 252, column: 13, scope: !444)
!525 = !DILocation(line: 252, column: 9, scope: !444)
!526 = !DILocation(line: 252, column: 7, scope: !444)
!527 = !DILocation(line: 253, column: 6, scope: !444)
!528 = !DILocation(line: 253, column: 4, scope: !444)
!529 = !DILocation(line: 256, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !444, file: !3, line: 256, column: 6)
!531 = !DILocation(line: 256, column: 6, scope: !530)
!532 = !DILocation(line: 256, column: 9, scope: !530)
!533 = !DILocation(line: 256, column: 6, scope: !444)
!534 = !DILocation(line: 257, column: 4, scope: !530)
!535 = !DILocation(line: 257, column: 3, scope: !530)
!536 = !DILocation(line: 262, column: 27, scope: !444)
!537 = !DILocation(line: 262, column: 32, scope: !444)
!538 = !DILocation(line: 262, column: 38, scope: !444)
!539 = !DILocation(line: 262, column: 11, scope: !444)
!540 = !DILocation(line: 262, column: 9, scope: !444)
!541 = !DILocation(line: 263, column: 30, scope: !444)
!542 = !DILocation(line: 263, column: 35, scope: !444)
!543 = !DILocation(line: 263, column: 41, scope: !444)
!544 = !DILocation(line: 263, column: 14, scope: !444)
!545 = !DILocation(line: 263, column: 12, scope: !444)
!546 = !DILocation(line: 264, column: 25, scope: !444)
!547 = !DILocation(line: 264, column: 30, scope: !444)
!548 = !DILocation(line: 264, column: 36, scope: !444)
!549 = !DILocation(line: 264, column: 9, scope: !444)
!550 = !DILocation(line: 264, column: 7, scope: !444)
!551 = !DILocation(line: 269, column: 8, scope: !552)
!552 = distinct !DILexicalBlock(scope: !444, file: !3, line: 269, column: 6)
!553 = !DILocation(line: 269, column: 18, scope: !552)
!554 = !DILocation(line: 269, column: 24, scope: !552)
!555 = !DILocation(line: 269, column: 58, scope: !552)
!556 = !DILocation(line: 270, column: 8, scope: !552)
!557 = !DILocation(line: 270, column: 18, scope: !552)
!558 = !DILocation(line: 270, column: 24, scope: !552)
!559 = !DILocation(line: 270, column: 60, scope: !552)
!560 = !DILocation(line: 271, column: 9, scope: !552)
!561 = !DILocation(line: 271, column: 19, scope: !552)
!562 = !DILocation(line: 271, column: 25, scope: !552)
!563 = !DILocation(line: 271, column: 33, scope: !552)
!564 = !DILocation(line: 269, column: 6, scope: !444)
!565 = !DILocation(line: 272, column: 8, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 272, column: 7)
!567 = distinct !DILexicalBlock(scope: !552, file: !3, line: 271, column: 66)
!568 = !DILocation(line: 272, column: 7, scope: !567)
!569 = !DILocation(line: 273, column: 4, scope: !566)
!570 = !DILocation(line: 274, column: 2, scope: !567)
!571 = !DILocation(line: 279, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !444, file: !3, line: 279, column: 6)
!573 = !DILocation(line: 279, column: 12, scope: !572)
!574 = !DILocation(line: 279, column: 38, scope: !572)
!575 = !DILocation(line: 279, column: 6, scope: !444)
!576 = !DILocation(line: 281, column: 13, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !3, line: 279, column: 68)
!578 = !DILocation(line: 282, column: 14, scope: !577)
!579 = !DILocation(line: 283, column: 23, scope: !577)
!580 = !DILocation(line: 283, column: 28, scope: !577)
!581 = !DILocation(line: 283, column: 21, scope: !577)
!582 = !DILocation(line: 284, column: 20, scope: !577)
!583 = !DILocation(line: 284, column: 25, scope: !577)
!584 = !DILocation(line: 284, column: 31, scope: !577)
!585 = !DILocation(line: 285, column: 6, scope: !577)
!586 = !DILocation(line: 285, column: 12, scope: !577)
!587 = !DILocation(line: 284, column: 3, scope: !577)
!588 = !DILocation(line: 286, column: 2, scope: !577)
!589 = !DILocation(line: 288, column: 13, scope: !590)
!590 = distinct !DILexicalBlock(scope: !572, file: !3, line: 286, column: 9)
!591 = !DILocation(line: 289, column: 14, scope: !590)
!592 = !DILocation(line: 292, column: 33, scope: !590)
!593 = !DILocation(line: 292, column: 38, scope: !590)
!594 = !DILocation(line: 292, column: 19, scope: !590)
!595 = !DILocation(line: 292, column: 4, scope: !590)
!596 = !DILocation(line: 291, column: 21, scope: !590)
!597 = !DILocation(line: 293, column: 20, scope: !590)
!598 = !DILocation(line: 293, column: 25, scope: !590)
!599 = !DILocation(line: 293, column: 31, scope: !590)
!600 = !DILocation(line: 294, column: 6, scope: !590)
!601 = !DILocation(line: 294, column: 12, scope: !590)
!602 = !DILocation(line: 293, column: 3, scope: !590)
!603 = !DILocation(line: 300, column: 7, scope: !604)
!604 = distinct !DILexicalBlock(scope: !444, file: !3, line: 300, column: 6)
!605 = !DILocation(line: 300, column: 6, scope: !604)
!606 = !DILocation(line: 300, column: 6, scope: !444)
!607 = !DILocation(line: 301, column: 14, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 301, column: 7)
!609 = distinct !DILexicalBlock(scope: !604, file: !3, line: 300, column: 10)
!610 = !DILocation(line: 301, column: 7, scope: !608)
!611 = !DILocation(line: 301, column: 26, scope: !608)
!612 = !DILocation(line: 301, column: 7, scope: !609)
!613 = !DILocation(line: 307, column: 4, scope: !608)
!614 = !DILocation(line: 308, column: 16, scope: !615)
!615 = distinct !DILexicalBlock(scope: !609, file: !3, line: 308, column: 7)
!616 = !DILocation(line: 308, column: 7, scope: !615)
!617 = !DILocation(line: 308, column: 29, scope: !615)
!618 = !DILocation(line: 308, column: 33, scope: !615)
!619 = !DILocation(line: 308, column: 36, scope: !615)
!620 = !DILocation(line: 308, column: 41, scope: !615)
!621 = !DILocation(line: 308, column: 7, scope: !609)
!622 = !DILocation(line: 309, column: 9, scope: !615)
!623 = !DILocation(line: 309, column: 4, scope: !615)
!624 = !DILocation(line: 310, column: 2, scope: !609)
!625 = !DILocation(line: 313, column: 21, scope: !444)
!626 = !DILocation(line: 313, column: 19, scope: !444)
!627 = !DILocation(line: 313, column: 12, scope: !444)
!628 = !DILocation(line: 313, column: 10, scope: !444)
!629 = !DILocation(line: 316, column: 23, scope: !444)
!630 = !DILocation(line: 316, column: 2, scope: !444)
!631 = !DILocation(line: 317, column: 1, scope: !444)
!632 = !DISubprogram(name: "early_dbgp_init", scope: !633, file: !633, line: 47, type: !48, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!633 = !DIFile(filename: "./include/linux/usb/ehci-dbgp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f4a5d17563349dd8c76bba0a9c34830")
!634 = !DISubprogram(name: "simple_strtoul", scope: !635, file: !635, line: 145, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!636 = !DISubroutineType(types: !637)
!637 = !{!24, !44, !638, !7}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!639 = !DISubprogram(name: "strcspn", scope: !312, file: !312, line: 143, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = !DISubroutineType(types: !641)
!641 = !{!24, !44, !44}
!642 = !DISubprogram(name: "simple_strtoull", scope: !635, file: !635, line: 147, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!643 = !DISubroutineType(types: !644)
!644 = !{!31, !44, !638, !7}
!645 = distinct !DISubprogram(name: "io_serial_in", scope: !3, file: !3, line: 97, type: !111, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!646 = !{!647, !648}
!647 = !DILocalVariable(name: "addr", arg: 1, scope: !645, file: !3, line: 97, type: !24)
!648 = !DILocalVariable(name: "offset", arg: 2, scope: !645, file: !3, line: 97, type: !50)
!649 = !DILocation(line: 97, column: 48, scope: !645)
!650 = !DILocation(line: 97, column: 58, scope: !645)
!651 = !DILocation(line: 99, column: 13, scope: !645)
!652 = !DILocation(line: 99, column: 20, scope: !645)
!653 = !DILocation(line: 99, column: 18, scope: !645)
!654 = !DILocation(line: 99, column: 9, scope: !645)
!655 = !DILocation(line: 99, column: 2, scope: !645)
!656 = distinct !DISubprogram(name: "io_serial_out", scope: !3, file: !3, line: 102, type: !116, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !657)
!657 = !{!658, !659, !660}
!658 = !DILocalVariable(name: "addr", arg: 1, scope: !656, file: !3, line: 102, type: !24)
!659 = !DILocalVariable(name: "offset", arg: 2, scope: !656, file: !3, line: 102, type: !50)
!660 = !DILocalVariable(name: "value", arg: 3, scope: !656, file: !3, line: 102, type: !50)
!661 = !DILocation(line: 102, column: 41, scope: !656)
!662 = !DILocation(line: 102, column: 51, scope: !656)
!663 = !DILocation(line: 102, column: 63, scope: !656)
!664 = !DILocation(line: 104, column: 7, scope: !656)
!665 = !DILocation(line: 104, column: 14, scope: !656)
!666 = !DILocation(line: 104, column: 21, scope: !656)
!667 = !DILocation(line: 104, column: 19, scope: !656)
!668 = !DILocation(line: 104, column: 2, scope: !656)
!669 = !DILocation(line: 105, column: 1, scope: !656)
!670 = distinct !DISubprogram(name: "early_serial_hw_init", scope: !3, file: !3, line: 130, type: !671, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !7}
!673 = !{!674, !675}
!674 = !DILocalVariable(name: "divisor", arg: 1, scope: !670, file: !3, line: 130, type: !7)
!675 = !DILocalVariable(name: "c", scope: !670, file: !3, line: 132, type: !23)
!676 = !DILocation(line: 130, column: 50, scope: !670)
!677 = !DILocation(line: 132, column: 2, scope: !670)
!678 = !DILocation(line: 132, column: 16, scope: !670)
!679 = !DILocation(line: 134, column: 2, scope: !670)
!680 = !DILocation(line: 134, column: 13, scope: !670)
!681 = !DILocation(line: 135, column: 2, scope: !670)
!682 = !DILocation(line: 135, column: 13, scope: !670)
!683 = !DILocation(line: 136, column: 2, scope: !670)
!684 = !DILocation(line: 136, column: 13, scope: !670)
!685 = !DILocation(line: 137, column: 2, scope: !670)
!686 = !DILocation(line: 137, column: 13, scope: !670)
!687 = !DILocation(line: 139, column: 6, scope: !670)
!688 = !DILocation(line: 139, column: 16, scope: !670)
!689 = !DILocation(line: 139, column: 4, scope: !670)
!690 = !DILocation(line: 140, column: 2, scope: !670)
!691 = !DILocation(line: 140, column: 13, scope: !670)
!692 = !DILocation(line: 140, column: 37, scope: !670)
!693 = !DILocation(line: 140, column: 39, scope: !670)
!694 = !DILocation(line: 141, column: 2, scope: !670)
!695 = !DILocation(line: 141, column: 13, scope: !670)
!696 = !DILocation(line: 141, column: 37, scope: !670)
!697 = !DILocation(line: 141, column: 45, scope: !670)
!698 = !DILocation(line: 142, column: 2, scope: !670)
!699 = !DILocation(line: 142, column: 13, scope: !670)
!700 = !DILocation(line: 142, column: 38, scope: !670)
!701 = !DILocation(line: 142, column: 46, scope: !670)
!702 = !DILocation(line: 142, column: 52, scope: !670)
!703 = !DILocation(line: 143, column: 2, scope: !670)
!704 = !DILocation(line: 143, column: 13, scope: !670)
!705 = !DILocation(line: 143, column: 37, scope: !670)
!706 = !DILocation(line: 143, column: 39, scope: !670)
!707 = !DILocation(line: 144, column: 1, scope: !670)
!708 = distinct !DISubprogram(name: "__inb", scope: !709, file: !709, line: 22, type: !710, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !712)
!709 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!710 = !DISubroutineType(types: !711)
!711 = !{!19, !455}
!712 = !{!713, !714}
!713 = !DILocalVariable(name: "port", arg: 1, scope: !708, file: !709, line: 22, type: !455)
!714 = !DILocalVariable(name: "value", scope: !708, file: !709, line: 22, type: !19)
!715 = !DILocation(line: 22, column: 1, scope: !708)
!716 = !{i64 2151433787}
!717 = distinct !DISubprogram(name: "__outb", scope: !709, file: !709, line: 22, type: !718, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !19, !455}
!720 = !{!721, !722}
!721 = !DILocalVariable(name: "value", arg: 1, scope: !717, file: !709, line: 22, type: !19)
!722 = !DILocalVariable(name: "port", arg: 2, scope: !717, file: !709, line: 22, type: !455)
!723 = !DILocation(line: 22, column: 1, scope: !717)
!724 = !{i64 2151433591}
!725 = !DISubprogram(name: "_printk", scope: !726, file: !726, line: 153, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!726 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!727 = !DISubroutineType(types: !728)
!728 = !{!50, !44, null}
!729 = !DISubprogram(name: "register_console", scope: !6, file: !6, line: 345, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !135}
!732 = distinct !DISubprogram(name: "early_serial_write", scope: !3, file: !3, line: 120, type: !133, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !733)
!733 = !{!734, !735, !736}
!734 = !DILocalVariable(name: "con", arg: 1, scope: !732, file: !3, line: 120, type: !135)
!735 = !DILocalVariable(name: "s", arg: 2, scope: !732, file: !3, line: 120, type: !44)
!736 = !DILocalVariable(name: "n", arg: 3, scope: !732, file: !3, line: 120, type: !7)
!737 = !DILocation(line: 120, column: 48, scope: !732)
!738 = !DILocation(line: 120, column: 65, scope: !732)
!739 = !DILocation(line: 120, column: 77, scope: !732)
!740 = !DILocation(line: 122, column: 2, scope: !732)
!741 = !DILocation(line: 122, column: 10, scope: !732)
!742 = !DILocation(line: 122, column: 9, scope: !732)
!743 = !DILocation(line: 122, column: 12, scope: !732)
!744 = !DILocation(line: 122, column: 16, scope: !732)
!745 = !DILocation(line: 122, column: 19, scope: !732)
!746 = !DILocation(line: 0, scope: !732)
!747 = !DILocation(line: 123, column: 8, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 123, column: 7)
!749 = distinct !DILexicalBlock(scope: !732, file: !3, line: 122, column: 24)
!750 = !DILocation(line: 123, column: 7, scope: !748)
!751 = !DILocation(line: 123, column: 10, scope: !748)
!752 = !DILocation(line: 123, column: 7, scope: !749)
!753 = !DILocation(line: 124, column: 4, scope: !748)
!754 = !DILocation(line: 125, column: 22, scope: !749)
!755 = !DILocation(line: 125, column: 21, scope: !749)
!756 = !DILocation(line: 125, column: 3, scope: !749)
!757 = !DILocation(line: 126, column: 4, scope: !749)
!758 = distinct !{!758, !740, !759, !307, !308}
!759 = !DILocation(line: 127, column: 2, scope: !732)
!760 = !DILocation(line: 128, column: 1, scope: !732)
!761 = distinct !DISubprogram(name: "early_serial_putc", scope: !3, file: !3, line: 110, type: !762, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{!50, !23}
!764 = !{!765, !766}
!765 = !DILocalVariable(name: "ch", arg: 1, scope: !761, file: !3, line: 110, type: !23)
!766 = !DILocalVariable(name: "timeout", scope: !761, file: !3, line: 112, type: !7)
!767 = !DILocation(line: 110, column: 44, scope: !761)
!768 = !DILocation(line: 112, column: 2, scope: !761)
!769 = !DILocation(line: 112, column: 11, scope: !761)
!770 = !DILocation(line: 114, column: 2, scope: !761)
!771 = !DILocation(line: 114, column: 10, scope: !761)
!772 = !DILocation(line: 114, column: 20, scope: !761)
!773 = !DILocation(line: 114, column: 44, scope: !761)
!774 = !DILocation(line: 114, column: 54, scope: !761)
!775 = !DILocation(line: 114, column: 59, scope: !761)
!776 = !DILocation(line: 114, column: 62, scope: !761)
!777 = !DILocation(line: 0, scope: !761)
!778 = !DILocation(line: 115, column: 3, scope: !761)
!779 = distinct !{!779, !770, !780, !307, !308}
!780 = !DILocation(line: 115, column: 13, scope: !761)
!781 = !DILocation(line: 116, column: 2, scope: !761)
!782 = !DILocation(line: 116, column: 13, scope: !761)
!783 = !DILocation(line: 116, column: 37, scope: !761)
!784 = !DILocation(line: 117, column: 9, scope: !761)
!785 = !DILocation(line: 118, column: 1, scope: !761)
!786 = !DILocation(line: 117, column: 2, scope: !761)
!787 = distinct !DISubprogram(name: "cpu_relax", scope: !788, file: !788, line: 16, type: !149, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!788 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!789 = !DILocation(line: 18, column: 2, scope: !787)
!790 = !DILocation(line: 19, column: 1, scope: !787)
!791 = distinct !DISubprogram(name: "rep_nop", scope: !788, file: !788, line: 11, type: !149, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!792 = !DILocation(line: 13, column: 2, scope: !791)
!793 = !{i64 1997208}
!794 = !DILocation(line: 14, column: 1, scope: !791)
!795 = !DISubprogram(name: "read_pci_config", scope: !796, file: !796, line: 10, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DIFile(filename: "./arch/x86/include/asm/pci-direct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09799ff96bfe39e3d200f5cb3dffbc74")
!797 = !DISubroutineType(types: !798)
!798 = !{!26, !19, !19, !19, !19}
!799 = !DISubprogram(name: "write_pci_config", scope: !796, file: !796, line: 13, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !19, !19, !19, !19, !26}
!802 = distinct !DISubprogram(name: "mem32_serial_in", scope: !3, file: !3, line: 202, type: !111, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!803 = !{!804, !805, !806}
!804 = !DILocalVariable(name: "addr", arg: 1, scope: !802, file: !3, line: 202, type: !24)
!805 = !DILocalVariable(name: "offset", arg: 2, scope: !802, file: !3, line: 202, type: !50)
!806 = !DILocalVariable(name: "vaddr", scope: !802, file: !3, line: 204, type: !25)
!807 = !DILocation(line: 202, column: 51, scope: !802)
!808 = !DILocation(line: 202, column: 61, scope: !802)
!809 = !DILocation(line: 204, column: 2, scope: !802)
!810 = !DILocation(line: 204, column: 15, scope: !802)
!811 = !DILocation(line: 204, column: 38, scope: !802)
!812 = !DILocation(line: 204, column: 23, scope: !802)
!813 = !DILocation(line: 206, column: 15, scope: !802)
!814 = !DILocation(line: 206, column: 23, scope: !802)
!815 = !DILocation(line: 206, column: 21, scope: !802)
!816 = !DILocation(line: 206, column: 9, scope: !802)
!817 = !DILocation(line: 207, column: 1, scope: !802)
!818 = !DILocation(line: 206, column: 2, scope: !802)
!819 = distinct !DISubprogram(name: "mem32_serial_out", scope: !3, file: !3, line: 195, type: !116, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!820 = !{!821, !822, !823, !824}
!821 = !DILocalVariable(name: "addr", arg: 1, scope: !819, file: !3, line: 195, type: !24)
!822 = !DILocalVariable(name: "offset", arg: 2, scope: !819, file: !3, line: 195, type: !50)
!823 = !DILocalVariable(name: "value", arg: 3, scope: !819, file: !3, line: 195, type: !50)
!824 = !DILocalVariable(name: "vaddr", scope: !819, file: !3, line: 197, type: !25)
!825 = !DILocation(line: 195, column: 44, scope: !819)
!826 = !DILocation(line: 195, column: 54, scope: !819)
!827 = !DILocation(line: 195, column: 66, scope: !819)
!828 = !DILocation(line: 197, column: 2, scope: !819)
!829 = !DILocation(line: 197, column: 15, scope: !819)
!830 = !DILocation(line: 197, column: 38, scope: !819)
!831 = !DILocation(line: 197, column: 23, scope: !819)
!832 = !DILocation(line: 199, column: 9, scope: !819)
!833 = !DILocation(line: 199, column: 16, scope: !819)
!834 = !DILocation(line: 199, column: 24, scope: !819)
!835 = !DILocation(line: 199, column: 22, scope: !819)
!836 = !DILocation(line: 199, column: 2, scope: !819)
!837 = !DILocation(line: 200, column: 1, scope: !819)
!838 = !DISubprogram(name: "early_ioremap", scope: !839, file: !839, line: 11, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!839 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!840 = !DISubroutineType(types: !841)
!841 = !{!18, !842, !24}
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !169, line: 164, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !169, line: 159, baseType: !172)
!844 = !DISubprogram(name: "strcmp", scope: !312, file: !312, line: 88, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!845 = !DISubroutineType(types: !846)
!846 = !{!50, !44, !44}
!847 = distinct !DISubprogram(name: "kstrtoul", scope: !635, file: !635, line: 30, type: !848, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !851)
!848 = !DISubroutineType(types: !849)
!849 = !{!50, !44, !7, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!851 = !{!852, !853, !854}
!852 = !DILocalVariable(name: "s", arg: 1, scope: !847, file: !635, line: 30, type: !44)
!853 = !DILocalVariable(name: "base", arg: 2, scope: !847, file: !635, line: 30, type: !7)
!854 = !DILocalVariable(name: "res", arg: 3, scope: !847, file: !635, line: 30, type: !850)
!855 = !DILocation(line: 30, column: 53, scope: !847)
!856 = !DILocation(line: 30, column: 69, scope: !847)
!857 = !DILocation(line: 30, column: 90, scope: !847)
!858 = !DILocation(line: 38, column: 20, scope: !859)
!859 = distinct !DILexicalBlock(scope: !847, file: !635, line: 36, column: 6)
!860 = !DILocation(line: 38, column: 23, scope: !859)
!861 = !DILocation(line: 38, column: 51, scope: !859)
!862 = !DILocation(line: 38, column: 10, scope: !859)
!863 = !DILocation(line: 38, column: 3, scope: !859)
!864 = distinct !DISubprogram(name: "readl", scope: !865, file: !865, line: 58, type: !866, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!865 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!866 = !DISubroutineType(types: !867)
!867 = !{!7, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!871 = !{!872, !873}
!872 = !DILocalVariable(name: "addr", arg: 1, scope: !864, file: !865, line: 58, type: !868)
!873 = !DILocalVariable(name: "ret", scope: !864, file: !865, line: 58, type: !7)
!874 = !DILocation(line: 58, column: 1, scope: !864)
!875 = !{i64 2151436945}
!876 = distinct !DISubprogram(name: "writel", scope: !865, file: !865, line: 66, type: !877, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !880)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !7, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!880 = !{!881, !882}
!881 = !DILocalVariable(name: "val", arg: 1, scope: !876, file: !865, line: 66, type: !7)
!882 = !DILocalVariable(name: "addr", arg: 2, scope: !876, file: !865, line: 66, type: !879)
!883 = !DILocation(line: 66, column: 1, scope: !876)
!884 = !{i64 2151439338}
!885 = !DISubprogram(name: "kstrtoull", scope: !635, file: !635, line: 12, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!886 = !DISubroutineType(types: !887)
!887 = !{!50, !44, !7, !30}
!888 = distinct !DISubprogram(name: "early_vga_write", scope: !3, file: !3, line: 29, type: !133, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!889 = !{!890, !891, !892, !893, !894, !895, !896}
!890 = !DILocalVariable(name: "con", arg: 1, scope: !888, file: !3, line: 29, type: !135)
!891 = !DILocalVariable(name: "str", arg: 2, scope: !888, file: !3, line: 29, type: !44)
!892 = !DILocalVariable(name: "n", arg: 3, scope: !888, file: !3, line: 29, type: !7)
!893 = !DILocalVariable(name: "c", scope: !888, file: !3, line: 31, type: !33)
!894 = !DILocalVariable(name: "i", scope: !888, file: !3, line: 32, type: !50)
!895 = !DILocalVariable(name: "k", scope: !888, file: !3, line: 32, type: !50)
!896 = !DILocalVariable(name: "j", scope: !888, file: !3, line: 32, type: !50)
!897 = !DILocation(line: 29, column: 45, scope: !888)
!898 = !DILocation(line: 29, column: 62, scope: !888)
!899 = !DILocation(line: 29, column: 76, scope: !888)
!900 = !DILocation(line: 31, column: 2, scope: !888)
!901 = !DILocation(line: 31, column: 7, scope: !888)
!902 = !DILocation(line: 32, column: 2, scope: !888)
!903 = !DILocation(line: 32, column: 7, scope: !888)
!904 = !DILocation(line: 32, column: 10, scope: !888)
!905 = !DILocation(line: 32, column: 13, scope: !888)
!906 = !DILocation(line: 34, column: 2, scope: !888)
!907 = !DILocation(line: 34, column: 18, scope: !888)
!908 = !DILocation(line: 34, column: 14, scope: !888)
!909 = !DILocation(line: 34, column: 12, scope: !888)
!910 = !DILocation(line: 34, column: 9, scope: !888)
!911 = !DILocation(line: 34, column: 22, scope: !888)
!912 = !DILocation(line: 34, column: 30, scope: !888)
!913 = !DILocation(line: 34, column: 34, scope: !888)
!914 = !DILocation(line: 34, column: 37, scope: !888)
!915 = !DILocation(line: 0, scope: !888)
!916 = !DILocation(line: 35, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 35, column: 7)
!918 = distinct !DILexicalBlock(scope: !888, file: !3, line: 34, column: 42)
!919 = !DILocation(line: 35, column: 23, scope: !917)
!920 = !DILocation(line: 35, column: 20, scope: !917)
!921 = !DILocation(line: 35, column: 7, scope: !918)
!922 = !DILocation(line: 37, column: 11, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 37, column: 4)
!924 = distinct !DILexicalBlock(scope: !917, file: !3, line: 35, column: 33)
!925 = !DILocation(line: 37, column: 18, scope: !923)
!926 = !DILocation(line: 37, column: 9, scope: !923)
!927 = !DILocation(line: 37, column: 23, scope: !928)
!928 = distinct !DILexicalBlock(scope: !923, file: !3, line: 37, column: 4)
!929 = !DILocation(line: 37, column: 27, scope: !928)
!930 = !DILocation(line: 37, column: 25, scope: !928)
!931 = !DILocation(line: 37, column: 4, scope: !923)
!932 = !DILocation(line: 38, column: 12, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 38, column: 5)
!934 = distinct !DILexicalBlock(scope: !928, file: !3, line: 37, column: 47)
!935 = !DILocation(line: 38, column: 10, scope: !933)
!936 = !DILocation(line: 38, column: 17, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !3, line: 38, column: 5)
!938 = !DILocation(line: 38, column: 21, scope: !937)
!939 = !DILocation(line: 38, column: 19, scope: !937)
!940 = !DILocation(line: 38, column: 5, scope: !933)
!941 = !DILocation(line: 39, column: 19, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !3, line: 38, column: 36)
!943 = !DILocation(line: 39, column: 30, scope: !942)
!944 = !DILocation(line: 39, column: 39, scope: !942)
!945 = !DILocation(line: 39, column: 38, scope: !942)
!946 = !DILocation(line: 39, column: 41, scope: !942)
!947 = !DILocation(line: 39, column: 40, scope: !942)
!948 = !DILocation(line: 39, column: 28, scope: !942)
!949 = !DILocation(line: 39, column: 26, scope: !942)
!950 = !DILocation(line: 39, column: 13, scope: !942)
!951 = !DILocation(line: 40, column: 13, scope: !942)
!952 = !DILocation(line: 40, column: 26, scope: !942)
!953 = !DILocation(line: 40, column: 35, scope: !942)
!954 = !DILocation(line: 40, column: 34, scope: !942)
!955 = !DILocation(line: 40, column: 39, scope: !942)
!956 = !DILocation(line: 40, column: 37, scope: !942)
!957 = !DILocation(line: 40, column: 24, scope: !942)
!958 = !DILocation(line: 40, column: 21, scope: !942)
!959 = !DILocation(line: 39, column: 6, scope: !942)
!960 = !DILocation(line: 41, column: 5, scope: !942)
!961 = !DILocation(line: 38, column: 32, scope: !937)
!962 = !DILocation(line: 38, column: 5, scope: !937)
!963 = distinct !{!963, !940, !964, !307, !308}
!964 = !DILocation(line: 41, column: 5, scope: !933)
!965 = !DILocation(line: 42, column: 4, scope: !934)
!966 = !DILocation(line: 37, column: 38, scope: !928)
!967 = !DILocation(line: 37, column: 43, scope: !928)
!968 = !DILocation(line: 37, column: 4, scope: !928)
!969 = distinct !{!969, !931, !970, !307, !308}
!970 = !DILocation(line: 42, column: 4, scope: !923)
!971 = !DILocation(line: 43, column: 11, scope: !972)
!972 = distinct !DILexicalBlock(scope: !924, file: !3, line: 43, column: 4)
!973 = !DILocation(line: 43, column: 9, scope: !972)
!974 = !DILocation(line: 43, column: 16, scope: !975)
!975 = distinct !DILexicalBlock(scope: !972, file: !3, line: 43, column: 4)
!976 = !DILocation(line: 43, column: 20, scope: !975)
!977 = !DILocation(line: 43, column: 18, scope: !975)
!978 = !DILocation(line: 43, column: 4, scope: !972)
!979 = !DILocation(line: 44, column: 19, scope: !975)
!980 = !DILocation(line: 44, column: 32, scope: !975)
!981 = !DILocation(line: 44, column: 41, scope: !975)
!982 = !DILocation(line: 44, column: 40, scope: !975)
!983 = !DILocation(line: 44, column: 45, scope: !975)
!984 = !DILocation(line: 44, column: 43, scope: !975)
!985 = !DILocation(line: 44, column: 30, scope: !975)
!986 = !DILocation(line: 44, column: 27, scope: !975)
!987 = !DILocation(line: 44, column: 5, scope: !975)
!988 = !DILocation(line: 43, column: 31, scope: !975)
!989 = !DILocation(line: 43, column: 4, scope: !975)
!990 = distinct !{!990, !978, !991, !307, !308}
!991 = !DILocation(line: 44, column: 47, scope: !972)
!992 = !DILocation(line: 45, column: 19, scope: !924)
!993 = !DILocation(line: 45, column: 27, scope: !924)
!994 = !DILocation(line: 45, column: 17, scope: !924)
!995 = !DILocation(line: 46, column: 3, scope: !924)
!996 = !DILocation(line: 55, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !918, file: !3, line: 55, column: 7)
!998 = !DILocation(line: 55, column: 9, scope: !997)
!999 = !DILocation(line: 55, column: 7, scope: !918)
!1000 = !DILocation(line: 56, column: 17, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !3, line: 55, column: 18)
!1002 = !DILocation(line: 57, column: 16, scope: !1001)
!1003 = !DILocation(line: 58, column: 3, scope: !1001)
!1004 = !DILocation(line: 58, column: 14, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !997, file: !3, line: 58, column: 14)
!1006 = !DILocation(line: 58, column: 16, scope: !1005)
!1007 = !DILocation(line: 58, column: 14, scope: !997)
!1008 = !DILocation(line: 59, column: 42, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 58, column: 26)
!1010 = !DILocation(line: 59, column: 25, scope: !1009)
!1011 = !DILocation(line: 59, column: 23, scope: !1009)
!1012 = !DILocation(line: 59, column: 11, scope: !1009)
!1013 = !DILocation(line: 60, column: 11, scope: !1009)
!1014 = !DILocation(line: 60, column: 24, scope: !1009)
!1015 = !DILocation(line: 60, column: 33, scope: !1009)
!1016 = !DILocation(line: 60, column: 32, scope: !1009)
!1017 = !DILocation(line: 61, column: 19, scope: !1009)
!1018 = !DILocation(line: 60, column: 46, scope: !1009)
!1019 = !DILocation(line: 60, column: 22, scope: !1009)
!1020 = !DILocation(line: 60, column: 19, scope: !1009)
!1021 = !DILocation(line: 59, column: 4, scope: !1009)
!1022 = !DILocation(line: 62, column: 8, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 62, column: 8)
!1024 = !DILocation(line: 62, column: 24, scope: !1023)
!1025 = !DILocation(line: 62, column: 21, scope: !1023)
!1026 = !DILocation(line: 62, column: 8, scope: !1009)
!1027 = !DILocation(line: 63, column: 18, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 62, column: 34)
!1029 = !DILocation(line: 64, column: 17, scope: !1028)
!1030 = !DILocation(line: 65, column: 4, scope: !1028)
!1031 = !DILocation(line: 66, column: 3, scope: !1009)
!1032 = distinct !{!1032, !906, !1033, !307, !308}
!1033 = !DILocation(line: 67, column: 2, scope: !888)
!1034 = !DILocation(line: 68, column: 1, scope: !888)
!1035 = distinct !DISubprogram(name: "writew", scope: !865, file: !865, line: 65, type: !1036, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1038)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !34, !879}
!1038 = !{!1039, !1040}
!1039 = !DILocalVariable(name: "val", arg: 1, scope: !1035, file: !865, line: 65, type: !34)
!1040 = !DILocalVariable(name: "addr", arg: 2, scope: !1035, file: !865, line: 65, type: !879)
!1041 = !DILocation(line: 65, column: 1, scope: !1035)
!1042 = !{i64 2151438952}
!1043 = distinct !DISubprogram(name: "readw", scope: !865, file: !865, line: 57, type: !1044, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!34, !868}
!1046 = !{!1047, !1048}
!1047 = !DILocalVariable(name: "addr", arg: 1, scope: !1043, file: !865, line: 57, type: !868)
!1048 = !DILocalVariable(name: "ret", scope: !1043, file: !865, line: 57, type: !34)
!1049 = !DILocation(line: 57, column: 1, scope: !1043)
!1050 = !{i64 2151436528}
