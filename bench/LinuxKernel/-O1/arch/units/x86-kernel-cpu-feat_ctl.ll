; ModuleID = 'arch/x86/kernel/cpu/feat_ctl.c'
source_filename = "arch/x86/kernel/cpu/feat_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%struct.atomic_t = type { i32 }
%union.anon.1 = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }

@__setup_str_nosgx = internal constant [6 x i8] c"nosgx\00", section ".init.rodata", align 1, !dbg !0
@__setup_nosgx = internal global %struct.obs_kernel_param { ptr @__setup_str_nosgx, ptr @nosgx, i32 1 }, section ".init.setup", align 8, !dbg !38
@init_ia32_feat_ctl.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !52
@.str = private unnamed_addr constant [34 x i8] c"\013x86/cpu: SGX disabled by BIOS.\0A\00", align 1, !dbg !175
@init_ia32_feat_ctl.__already_done.1 = internal global i8 0, section ".data..once", align 1, !dbg !180
@.str.2 = private unnamed_addr constant [60 x i8] c"\013x86/cpu: SGX virtualization disabled due to lack of VMX.\0A\00", align 1, !dbg !182
@init_ia32_feat_ctl.__already_done.3 = internal global i8 0, section ".data..once", align 1, !dbg !187
@.str.4 = private unnamed_addr constant [55 x i8] c"\013x86/cpu: SGX Launch Control is locked. Disable SGX.\0A\00", align 1, !dbg !189
@init_ia32_feat_ctl.__already_done.5 = internal global i8 0, section ".data..once", align 1, !dbg !194
@.str.6 = private unnamed_addr constant [75 x i8] c"\013x86/cpu: SGX Launch Control is locked. Support SGX virtualization only.\0A\00", align 1, !dbg !196
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"arch/x86/kernel/cpu/feat_ctl.c\00", align 1, !dbg !201
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_nosgx], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @nosgx(ptr noundef %str) #0 section ".init.text" align 16 !dbg !218 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !220, metadata !DIExpression()), !dbg !221
  call void @setup_clear_cpu_cap(i32 noundef 290) #11, !dbg !222
  ret i32 0, !dbg !223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @init_ia32_feat_ctl(ptr noundef %c) #1 align 16 !dbg !54 {
entry:
  %c.addr = alloca ptr, align 8
  %enable_sgx_kvm = alloca i8, align 1
  %enable_sgx_driver = alloca i8, align 1
  %tboot = alloca i8, align 1
  %enable_vmx = alloca i8, align 1
  %msr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp81 = alloca i32, align 4
  %tmp84 = alloca i64, align 8
  %__ret_do_once103 = alloca i8, align 1
  %__ret_cond104 = alloca i8, align 1
  %__ret_once111 = alloca i8, align 1
  %tmp128 = alloca i64, align 8
  %tmp141 = alloca i32, align 4
  %tmp144 = alloca i64, align 8
  %__ret_do_once161 = alloca i8, align 1
  %__ret_cond162 = alloca i8, align 1
  %__ret_once169 = alloca i8, align 1
  %tmp186 = alloca i64, align 8
  %tmp199 = alloca i32, align 4
  %tmp202 = alloca i64, align 8
  %__ret_do_once211 = alloca i8, align 1
  %__ret_cond212 = alloca i8, align 1
  %__ret_once219 = alloca i8, align 1
  %tmp236 = alloca i64, align 8
  %tmp249 = alloca i32, align 4
  %tmp252 = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !133, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 1, ptr %enable_sgx_kvm) #12, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %enable_sgx_kvm, metadata !134, metadata !DIExpression()), !dbg !226
  store i8 0, ptr %enable_sgx_kvm, align 1, !dbg !226
  call void @llvm.lifetime.start.p0(i64 1, ptr %enable_sgx_driver) #12, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %enable_sgx_driver, metadata !135, metadata !DIExpression()), !dbg !227
  store i8 0, ptr %enable_sgx_driver, align 1, !dbg !227
  call void @llvm.lifetime.start.p0(i64 1, ptr %tboot) #12, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %tboot, metadata !136, metadata !DIExpression()), !dbg !229
  store i8 0, ptr %tboot, align 1, !dbg !229
  call void @llvm.lifetime.start.p0(i64 1, ptr %enable_vmx) #12, !dbg !230
  call void @llvm.dbg.declare(metadata ptr %enable_vmx, metadata !137, metadata !DIExpression()), !dbg !231
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr) #12, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !138, metadata !DIExpression()), !dbg !233
  %call = call i32 @rdmsrl_safe(i32 noundef 58, ptr noundef %msr) #11, !dbg !234
  %tobool = icmp ne i32 %call, 0, !dbg !234
  br i1 %tobool, label %if.then, label %if.end, !dbg !236

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %c.addr, align 8, !dbg !237
  call void @clear_cpu_cap(ptr noundef %0, i32 noundef 133) #11, !dbg !239
  %1 = load ptr, ptr %c.addr, align 8, !dbg !240
  call void @clear_cpu_cap(ptr noundef %1, i32 noundef 290) #11, !dbg !241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !242

if.end:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !243

cond.true:                                        ; preds = %if.end
  br i1 true, label %land.rhs, label %land.end, !dbg !244

cond.false:                                       ; preds = %if.end
  %2 = load ptr, ptr %c.addr, align 8, !dbg !244
  %3 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 10, !dbg !244
  %arraydecay = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 0, !dbg !244
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 133, ptr noundef %arraydecay) #11, !dbg !244
  br i1 %call1, label %land.rhs, label %land.end, !dbg !243

land.rhs:                                         ; preds = %cond.false, %cond.true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true
  %4 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ false, %land.rhs ], !dbg !245
  %frombool = zext i1 %4 to i8, !dbg !246
  store i8 %frombool, ptr %enable_vmx, align 1, !dbg !246
  br i1 false, label %cond.true2, label %cond.false3, !dbg !247

cond.true2:                                       ; preds = %land.end
  br i1 true, label %land.lhs.true, label %if.end14, !dbg !249

cond.false3:                                      ; preds = %land.end
  %5 = load ptr, ptr %c.addr, align 8, !dbg !249
  %6 = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 10, !dbg !249
  %arraydecay4 = getelementptr inbounds [24 x i32], ptr %6, i64 0, i64 0, !dbg !249
  %call5 = call zeroext i1 @arch_test_bit(i64 noundef 290, ptr noundef %arraydecay4) #11, !dbg !249
  br i1 %call5, label %land.lhs.true, label %if.end14, !dbg !247

land.lhs.true:                                    ; preds = %cond.false3, %cond.true2
  br i1 false, label %if.then6, label %if.end14, !dbg !250

if.then6:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %c.addr, align 8, !dbg !251
  %8 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 10, !dbg !251
  %arraydecay7 = getelementptr inbounds [24 x i32], ptr %8, i64 0, i64 0, !dbg !251
  %call8 = call zeroext i1 @arch_test_bit(i64 noundef 542, ptr noundef %arraydecay7) #11, !dbg !251
  %frombool9 = zext i1 %call8 to i8, !dbg !253
  store i8 %frombool9, ptr %enable_sgx_driver, align 1, !dbg !253
  %9 = load i8, ptr %enable_vmx, align 1, !dbg !254, !range !255, !noundef !256
  %tobool10 = trunc i8 %9 to i1, !dbg !254
  br i1 %tobool10, label %land.rhs11, label %land.end12, !dbg !257

land.rhs11:                                       ; preds = %if.then6
  br label %land.end12

land.end12:                                       ; preds = %land.rhs11, %if.then6
  %10 = phi i1 [ false, %if.then6 ], [ false, %land.rhs11 ], !dbg !258
  %frombool13 = zext i1 %10 to i8, !dbg !259
  store i8 %frombool13, ptr %enable_sgx_kvm, align 1, !dbg !259
  br label %if.end14, !dbg !260

if.end14:                                         ; preds = %land.end12, %land.lhs.true, %cond.false3, %cond.true2
  %11 = load i64, ptr %msr, align 8, !dbg !261
  %and = and i64 %11, 1, !dbg !263
  %tobool15 = icmp ne i64 %and, 0, !dbg !263
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !264

if.then16:                                        ; preds = %if.end14
  br label %update_caps, !dbg !265

if.end17:                                         ; preds = %if.end14
  store i64 1, ptr %msr, align 8, !dbg !266
  %12 = load i8, ptr %enable_vmx, align 1, !dbg !267, !range !255, !noundef !256
  %tobool18 = trunc i8 %12 to i1, !dbg !267
  br i1 %tobool18, label %if.then19, label %if.end24, !dbg !269

if.then19:                                        ; preds = %if.end17
  %13 = load i64, ptr %msr, align 8, !dbg !270
  %or = or i64 %13, 4, !dbg !270
  store i64 %or, ptr %msr, align 8, !dbg !270
  %14 = load i8, ptr %tboot, align 1, !dbg !272, !range !255, !noundef !256
  %tobool20 = trunc i8 %14 to i1, !dbg !272
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !274

if.then21:                                        ; preds = %if.then19
  %15 = load i64, ptr %msr, align 8, !dbg !275
  %or22 = or i64 %15, 2, !dbg !275
  store i64 %or22, ptr %msr, align 8, !dbg !275
  br label %if.end23, !dbg !276

if.end23:                                         ; preds = %if.then21, %if.then19
  br label %if.end24, !dbg !277

if.end24:                                         ; preds = %if.end23, %if.end17
  %16 = load i8, ptr %enable_sgx_kvm, align 1, !dbg !278, !range !255, !noundef !256
  %tobool25 = trunc i8 %16 to i1, !dbg !278
  br i1 %tobool25, label %if.then27, label %lor.lhs.false, !dbg !280

lor.lhs.false:                                    ; preds = %if.end24
  %17 = load i8, ptr %enable_sgx_driver, align 1, !dbg !281, !range !255, !noundef !256
  %tobool26 = trunc i8 %17 to i1, !dbg !281
  br i1 %tobool26, label %if.then27, label %if.end33, !dbg !282

if.then27:                                        ; preds = %lor.lhs.false, %if.end24
  %18 = load i64, ptr %msr, align 8, !dbg !283
  %or28 = or i64 %18, 262144, !dbg !283
  store i64 %or28, ptr %msr, align 8, !dbg !283
  %19 = load i8, ptr %enable_sgx_driver, align 1, !dbg !285, !range !255, !noundef !256
  %tobool29 = trunc i8 %19 to i1, !dbg !285
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !287

if.then30:                                        ; preds = %if.then27
  %20 = load i64, ptr %msr, align 8, !dbg !288
  %or31 = or i64 %20, 131072, !dbg !288
  store i64 %or31, ptr %msr, align 8, !dbg !288
  br label %if.end32, !dbg !289

if.end32:                                         ; preds = %if.then30, %if.then27
  br label %if.end33, !dbg !290

if.end33:                                         ; preds = %if.end32, %lor.lhs.false
  %21 = load i64, ptr %msr, align 8, !dbg !291
  call void @wrmsrl(i32 noundef 58, i64 noundef %21) #11, !dbg !292
  br label %update_caps, !dbg !292

update_caps:                                      ; preds = %if.end33, %if.then16
  call void @llvm.dbg.label(metadata !139), !dbg !293
  %22 = load ptr, ptr %c.addr, align 8, !dbg !294
  %23 = getelementptr inbounds %struct.cpuinfo_x86, ptr %22, i32 0, i32 10, !dbg !294
  %arraydecay34 = getelementptr inbounds [24 x i32], ptr %23, i64 0, i64 0, !dbg !294
  call void @set_bit(i64 noundef 255, ptr noundef %arraydecay34) #11, !dbg !294
  br i1 false, label %cond.true35, label %cond.false36, !dbg !295

cond.true35:                                      ; preds = %update_caps
  br i1 true, label %if.end40, label %if.then39, !dbg !296

cond.false36:                                     ; preds = %update_caps
  %24 = load ptr, ptr %c.addr, align 8, !dbg !296
  %25 = getelementptr inbounds %struct.cpuinfo_x86, ptr %24, i32 0, i32 10, !dbg !296
  %arraydecay37 = getelementptr inbounds [24 x i32], ptr %25, i64 0, i64 0, !dbg !296
  %call38 = call zeroext i1 @arch_test_bit(i64 noundef 133, ptr noundef %arraydecay37) #11, !dbg !296
  br i1 %call38, label %if.end40, label %if.then39, !dbg !295

if.then39:                                        ; preds = %cond.false36, %cond.true35
  br label %update_sgx, !dbg !298

if.end40:                                         ; preds = %cond.false36, %cond.true35
  %26 = load i8, ptr %tboot, align 1, !dbg !299, !range !255, !noundef !256
  %tobool41 = trunc i8 %26 to i1, !dbg !299
  br i1 %tobool41, label %land.lhs.true42, label %lor.lhs.false45, !dbg !301

land.lhs.true42:                                  ; preds = %if.end40
  %27 = load i64, ptr %msr, align 8, !dbg !302
  %and43 = and i64 %27, 2, !dbg !303
  %tobool44 = icmp ne i64 %and43, 0, !dbg !303
  br i1 %tobool44, label %lor.lhs.false45, label %if.then50, !dbg !304

lor.lhs.false45:                                  ; preds = %land.lhs.true42, %if.end40
  %28 = load i8, ptr %tboot, align 1, !dbg !305, !range !255, !noundef !256
  %tobool46 = trunc i8 %28 to i1, !dbg !305
  br i1 %tobool46, label %if.else, label %land.lhs.true47, !dbg !306

land.lhs.true47:                                  ; preds = %lor.lhs.false45
  %29 = load i64, ptr %msr, align 8, !dbg !307
  %and48 = and i64 %29, 4, !dbg !308
  %tobool49 = icmp ne i64 %and48, 0, !dbg !308
  br i1 %tobool49, label %if.else, label %if.then50, !dbg !309

if.then50:                                        ; preds = %land.lhs.true47, %land.lhs.true42
  %30 = load ptr, ptr %c.addr, align 8, !dbg !310
  call void @clear_cpu_cap(ptr noundef %30, i32 noundef 133) #11, !dbg !312
  br label %if.end51, !dbg !313

if.else:                                          ; preds = %land.lhs.true47, %lor.lhs.false45
  %31 = load ptr, ptr %c.addr, align 8, !dbg !314
  call void @init_vmx_capabilities(ptr noundef %31) #11, !dbg !316
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then50
  br label %update_sgx, !dbg !317

update_sgx:                                       ; preds = %if.end51, %if.then39
  call void @llvm.dbg.label(metadata !140), !dbg !318
  %32 = load i64, ptr %msr, align 8, !dbg !319
  %and52 = and i64 %32, 262144, !dbg !320
  %tobool53 = icmp ne i64 %and52, 0, !dbg !320
  br i1 %tobool53, label %if.end93, label %if.then54, !dbg !321

if.then54:                                        ; preds = %update_sgx
  %33 = load i8, ptr %enable_sgx_kvm, align 1, !dbg !322, !range !255, !noundef !256
  %tobool55 = trunc i8 %33 to i1, !dbg !322
  br i1 %tobool55, label %if.then58, label %lor.lhs.false56, !dbg !323

lor.lhs.false56:                                  ; preds = %if.then54
  %34 = load i8, ptr %enable_sgx_driver, align 1, !dbg !324, !range !255, !noundef !256
  %tobool57 = trunc i8 %34 to i1, !dbg !324
  br i1 %tobool57, label %if.then58, label %if.end92, !dbg !325

if.then58:                                        ; preds = %lor.lhs.false56, %if.then54
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #12, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !141, metadata !DIExpression()), !dbg !326
  store i8 1, ptr %__ret_do_once, align 1, !dbg !326
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #12, !dbg !327
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !146, metadata !DIExpression()), !dbg !327
  %35 = load i8, ptr %__ret_do_once, align 1, !dbg !327, !range !255, !noundef !256
  %tobool59 = trunc i8 %35 to i1, !dbg !327
  %lnot = xor i1 %tobool59, true, !dbg !327
  %lnot60 = xor i1 %lnot, true, !dbg !327
  %frombool61 = zext i1 %lnot60 to i8, !dbg !327
  store i8 %frombool61, ptr %__ret_cond, align 1, !dbg !327
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #12, !dbg !327
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !149, metadata !DIExpression()), !dbg !327
  store i8 0, ptr %__ret_once, align 1, !dbg !327
  %36 = load i8, ptr %__ret_cond, align 1, !dbg !328, !range !255, !noundef !256
  %tobool62 = trunc i8 %36 to i1, !dbg !328
  br i1 %tobool62, label %land.rhs63, label %land.end66, !dbg !328

land.rhs63:                                       ; preds = %if.then58
  %37 = load i8, ptr @init_ia32_feat_ctl.__already_done, align 1, !dbg !328, !range !255, !noundef !256
  %tobool64 = trunc i8 %37 to i1, !dbg !328
  %lnot65 = xor i1 %tobool64, true, !dbg !328
  br label %land.end66

land.end66:                                       ; preds = %land.rhs63, %if.then58
  %38 = phi i1 [ false, %if.then58 ], [ %lnot65, %land.rhs63 ], !dbg !330
  %lnot67 = xor i1 %38, true, !dbg !328
  %lnot68 = xor i1 %lnot67, true, !dbg !328
  %lnot.ext = zext i1 %lnot68 to i32, !dbg !328
  %conv = sext i32 %lnot.ext to i64, !dbg !328
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !328
  %tobool69 = icmp ne i64 %expval, 0, !dbg !328
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !327

if.then70:                                        ; preds = %land.end66
  store i8 1, ptr @init_ia32_feat_ctl.__already_done, align 1, !dbg !331
  store i8 1, ptr %__ret_once, align 1, !dbg !331
  br label %if.end71, !dbg !331

if.end71:                                         ; preds = %if.then70, %land.end66
  %39 = load i8, ptr %__ret_once, align 1, !dbg !327, !range !255, !noundef !256
  %tobool72 = trunc i8 %39 to i1, !dbg !327
  %lnot73 = xor i1 %tobool72, true, !dbg !327
  %lnot75 = xor i1 %lnot73, true, !dbg !327
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !327
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !327
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 0), !dbg !327
  store i64 %expval78, ptr %tmp, align 8, !dbg !328
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #12, !dbg !333
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #12, !dbg !333
  %40 = load i64, ptr %tmp, align 8, !dbg !327
  %tobool79 = icmp ne i64 %40, 0, !dbg !333
  br i1 %tobool79, label %if.then80, label %if.end83, !dbg !326

if.then80:                                        ; preds = %if.end71
  br label %do.body, !dbg !334

do.body:                                          ; preds = %if.then80
  br label %do.cond, !dbg !336

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !336

do.end:                                           ; preds = %do.cond
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #13, !dbg !334
  store i32 %call82, ptr %tmp81, align 4, !dbg !336
  %41 = load i32, ptr %tmp81, align 4, !dbg !334
  br label %if.end83, !dbg !333

if.end83:                                         ; preds = %do.end, %if.end71
  %42 = load i8, ptr %__ret_do_once, align 1, !dbg !326, !range !255, !noundef !256
  %tobool85 = trunc i8 %42 to i1, !dbg !326
  %lnot86 = xor i1 %tobool85, true, !dbg !326
  %lnot88 = xor i1 %lnot86, true, !dbg !326
  %lnot.ext89 = zext i1 %lnot88 to i32, !dbg !326
  %conv90 = sext i32 %lnot.ext89 to i64, !dbg !326
  %expval91 = call i64 @llvm.expect.i64(i64 %conv90, i64 0), !dbg !326
  store i64 %expval91, ptr %tmp84, align 8, !dbg !333
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #12, !dbg !338
  %43 = load i64, ptr %tmp84, align 8, !dbg !326
  br label %if.end92, !dbg !338

if.end92:                                         ; preds = %if.end83, %lor.lhs.false56
  %44 = load ptr, ptr %c.addr, align 8, !dbg !339
  call void @clear_cpu_cap(ptr noundef %44, i32 noundef 290) #11, !dbg !340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !341

if.end93:                                         ; preds = %update_sgx
  br i1 false, label %cond.true94, label %cond.false95, !dbg !342

cond.true94:                                      ; preds = %if.end93
  br i1 true, label %if.end152, label %land.lhs.true99, !dbg !343

cond.false95:                                     ; preds = %if.end93
  %45 = load ptr, ptr %c.addr, align 8, !dbg !343
  %46 = getelementptr inbounds %struct.cpuinfo_x86, ptr %45, i32 0, i32 10, !dbg !343
  %arraydecay96 = getelementptr inbounds [24 x i32], ptr %46, i64 0, i64 0, !dbg !343
  %call97 = call zeroext i1 @arch_test_bit(i64 noundef 133, ptr noundef %arraydecay96) #11, !dbg !343
  br i1 %call97, label %if.end152, label %land.lhs.true99, !dbg !342

land.lhs.true99:                                  ; preds = %cond.false95, %cond.true94
  %47 = load i8, ptr %enable_sgx_kvm, align 1, !dbg !344, !range !255, !noundef !256
  %tobool100 = trunc i8 %47 to i1, !dbg !344
  br i1 %tobool100, label %if.then102, label %if.end152, !dbg !345

if.then102:                                       ; preds = %land.lhs.true99
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once103) #12, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once103, metadata !150, metadata !DIExpression()), !dbg !346
  store i8 1, ptr %__ret_do_once103, align 1, !dbg !346
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond104) #12, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %__ret_cond104, metadata !154, metadata !DIExpression()), !dbg !347
  %48 = load i8, ptr %__ret_do_once103, align 1, !dbg !347, !range !255, !noundef !256
  %tobool105 = trunc i8 %48 to i1, !dbg !347
  %lnot106 = xor i1 %tobool105, true, !dbg !347
  %lnot108 = xor i1 %lnot106, true, !dbg !347
  %frombool110 = zext i1 %lnot108 to i8, !dbg !347
  store i8 %frombool110, ptr %__ret_cond104, align 1, !dbg !347
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once111) #12, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %__ret_once111, metadata !157, metadata !DIExpression()), !dbg !347
  store i8 0, ptr %__ret_once111, align 1, !dbg !347
  %49 = load i8, ptr %__ret_cond104, align 1, !dbg !348, !range !255, !noundef !256
  %tobool112 = trunc i8 %49 to i1, !dbg !348
  br i1 %tobool112, label %land.rhs114, label %land.end118, !dbg !348

land.rhs114:                                      ; preds = %if.then102
  %50 = load i8, ptr @init_ia32_feat_ctl.__already_done.1, align 1, !dbg !348, !range !255, !noundef !256
  %tobool115 = trunc i8 %50 to i1, !dbg !348
  %lnot116 = xor i1 %tobool115, true, !dbg !348
  br label %land.end118

land.end118:                                      ; preds = %land.rhs114, %if.then102
  %51 = phi i1 [ false, %if.then102 ], [ %lnot116, %land.rhs114 ], !dbg !350
  %lnot119 = xor i1 %51, true, !dbg !348
  %lnot121 = xor i1 %lnot119, true, !dbg !348
  %lnot.ext122 = zext i1 %lnot121 to i32, !dbg !348
  %conv123 = sext i32 %lnot.ext122 to i64, !dbg !348
  %expval124 = call i64 @llvm.expect.i64(i64 %conv123, i64 0), !dbg !348
  %tobool125 = icmp ne i64 %expval124, 0, !dbg !348
  br i1 %tobool125, label %if.then126, label %if.end127, !dbg !347

if.then126:                                       ; preds = %land.end118
  store i8 1, ptr @init_ia32_feat_ctl.__already_done.1, align 1, !dbg !351
  store i8 1, ptr %__ret_once111, align 1, !dbg !351
  br label %if.end127, !dbg !351

if.end127:                                        ; preds = %if.then126, %land.end118
  %52 = load i8, ptr %__ret_once111, align 1, !dbg !347, !range !255, !noundef !256
  %tobool129 = trunc i8 %52 to i1, !dbg !347
  %lnot130 = xor i1 %tobool129, true, !dbg !347
  %lnot132 = xor i1 %lnot130, true, !dbg !347
  %lnot.ext133 = zext i1 %lnot132 to i32, !dbg !347
  %conv134 = sext i32 %lnot.ext133 to i64, !dbg !347
  %expval135 = call i64 @llvm.expect.i64(i64 %conv134, i64 0), !dbg !347
  store i64 %expval135, ptr %tmp128, align 8, !dbg !348
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once111) #12, !dbg !353
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond104) #12, !dbg !353
  %53 = load i64, ptr %tmp128, align 8, !dbg !347
  %tobool136 = icmp ne i64 %53, 0, !dbg !353
  br i1 %tobool136, label %if.then137, label %if.end143, !dbg !346

if.then137:                                       ; preds = %if.end127
  br label %do.body138, !dbg !354

do.body138:                                       ; preds = %if.then137
  br label %do.cond139, !dbg !356

do.cond139:                                       ; preds = %do.body138
  br label %do.end140, !dbg !356

do.end140:                                        ; preds = %do.cond139
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #13, !dbg !354
  store i32 %call142, ptr %tmp141, align 4, !dbg !356
  %54 = load i32, ptr %tmp141, align 4, !dbg !354
  br label %if.end143, !dbg !353

if.end143:                                        ; preds = %do.end140, %if.end127
  %55 = load i8, ptr %__ret_do_once103, align 1, !dbg !346, !range !255, !noundef !256
  %tobool145 = trunc i8 %55 to i1, !dbg !346
  %lnot146 = xor i1 %tobool145, true, !dbg !346
  %lnot148 = xor i1 %lnot146, true, !dbg !346
  %lnot.ext149 = zext i1 %lnot148 to i32, !dbg !346
  %conv150 = sext i32 %lnot.ext149 to i64, !dbg !346
  %expval151 = call i64 @llvm.expect.i64(i64 %conv150, i64 0), !dbg !346
  store i64 %expval151, ptr %tmp144, align 8, !dbg !353
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once103) #12, !dbg !358
  %56 = load i64, ptr %tmp144, align 8, !dbg !346
  store i8 0, ptr %enable_sgx_kvm, align 1, !dbg !359
  br label %if.end152, !dbg !360

if.end152:                                        ; preds = %if.end143, %land.lhs.true99, %cond.false95, %cond.true94
  %57 = load i64, ptr %msr, align 8, !dbg !361
  %and153 = and i64 %57, 131072, !dbg !362
  %tobool154 = icmp ne i64 %and153, 0, !dbg !362
  br i1 %tobool154, label %if.end261, label %land.lhs.true155, !dbg !363

land.lhs.true155:                                 ; preds = %if.end152
  %58 = load i8, ptr %enable_sgx_driver, align 1, !dbg !364, !range !255, !noundef !256
  %tobool156 = trunc i8 %58 to i1, !dbg !364
  br i1 %tobool156, label %if.then158, label %if.end261, !dbg !365

if.then158:                                       ; preds = %land.lhs.true155
  %59 = load i8, ptr %enable_sgx_kvm, align 1, !dbg !366, !range !255, !noundef !256
  %tobool159 = trunc i8 %59 to i1, !dbg !366
  br i1 %tobool159, label %if.else210, label %if.then160, !dbg !367

if.then160:                                       ; preds = %if.then158
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once161) #12, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once161, metadata !158, metadata !DIExpression()), !dbg !368
  store i8 1, ptr %__ret_do_once161, align 1, !dbg !368
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond162) #12, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %__ret_cond162, metadata !164, metadata !DIExpression()), !dbg !369
  %60 = load i8, ptr %__ret_do_once161, align 1, !dbg !369, !range !255, !noundef !256
  %tobool163 = trunc i8 %60 to i1, !dbg !369
  %lnot164 = xor i1 %tobool163, true, !dbg !369
  %lnot166 = xor i1 %lnot164, true, !dbg !369
  %frombool168 = zext i1 %lnot166 to i8, !dbg !369
  store i8 %frombool168, ptr %__ret_cond162, align 1, !dbg !369
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once169) #12, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %__ret_once169, metadata !167, metadata !DIExpression()), !dbg !369
  store i8 0, ptr %__ret_once169, align 1, !dbg !369
  %61 = load i8, ptr %__ret_cond162, align 1, !dbg !370, !range !255, !noundef !256
  %tobool170 = trunc i8 %61 to i1, !dbg !370
  br i1 %tobool170, label %land.rhs172, label %land.end176, !dbg !370

land.rhs172:                                      ; preds = %if.then160
  %62 = load i8, ptr @init_ia32_feat_ctl.__already_done.3, align 1, !dbg !370, !range !255, !noundef !256
  %tobool173 = trunc i8 %62 to i1, !dbg !370
  %lnot174 = xor i1 %tobool173, true, !dbg !370
  br label %land.end176

land.end176:                                      ; preds = %land.rhs172, %if.then160
  %63 = phi i1 [ false, %if.then160 ], [ %lnot174, %land.rhs172 ], !dbg !372
  %lnot177 = xor i1 %63, true, !dbg !370
  %lnot179 = xor i1 %lnot177, true, !dbg !370
  %lnot.ext180 = zext i1 %lnot179 to i32, !dbg !370
  %conv181 = sext i32 %lnot.ext180 to i64, !dbg !370
  %expval182 = call i64 @llvm.expect.i64(i64 %conv181, i64 0), !dbg !370
  %tobool183 = icmp ne i64 %expval182, 0, !dbg !370
  br i1 %tobool183, label %if.then184, label %if.end185, !dbg !369

if.then184:                                       ; preds = %land.end176
  store i8 1, ptr @init_ia32_feat_ctl.__already_done.3, align 1, !dbg !373
  store i8 1, ptr %__ret_once169, align 1, !dbg !373
  br label %if.end185, !dbg !373

if.end185:                                        ; preds = %if.then184, %land.end176
  %64 = load i8, ptr %__ret_once169, align 1, !dbg !369, !range !255, !noundef !256
  %tobool187 = trunc i8 %64 to i1, !dbg !369
  %lnot188 = xor i1 %tobool187, true, !dbg !369
  %lnot190 = xor i1 %lnot188, true, !dbg !369
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !369
  %conv192 = sext i32 %lnot.ext191 to i64, !dbg !369
  %expval193 = call i64 @llvm.expect.i64(i64 %conv192, i64 0), !dbg !369
  store i64 %expval193, ptr %tmp186, align 8, !dbg !370
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once169) #12, !dbg !375
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond162) #12, !dbg !375
  %65 = load i64, ptr %tmp186, align 8, !dbg !369
  %tobool194 = icmp ne i64 %65, 0, !dbg !375
  br i1 %tobool194, label %if.then195, label %if.end201, !dbg !368

if.then195:                                       ; preds = %if.end185
  br label %do.body196, !dbg !376

do.body196:                                       ; preds = %if.then195
  br label %do.cond197, !dbg !378

do.cond197:                                       ; preds = %do.body196
  br label %do.end198, !dbg !378

do.end198:                                        ; preds = %do.cond197
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #13, !dbg !376
  store i32 %call200, ptr %tmp199, align 4, !dbg !378
  %66 = load i32, ptr %tmp199, align 4, !dbg !376
  br label %if.end201, !dbg !375

if.end201:                                        ; preds = %do.end198, %if.end185
  %67 = load i8, ptr %__ret_do_once161, align 1, !dbg !368, !range !255, !noundef !256
  %tobool203 = trunc i8 %67 to i1, !dbg !368
  %lnot204 = xor i1 %tobool203, true, !dbg !368
  %lnot206 = xor i1 %lnot204, true, !dbg !368
  %lnot.ext207 = zext i1 %lnot206 to i32, !dbg !368
  %conv208 = sext i32 %lnot.ext207 to i64, !dbg !368
  %expval209 = call i64 @llvm.expect.i64(i64 %conv208, i64 0), !dbg !368
  store i64 %expval209, ptr %tmp202, align 8, !dbg !375
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once161) #12, !dbg !380
  %68 = load i64, ptr %tmp202, align 8, !dbg !368
  %69 = load ptr, ptr %c.addr, align 8, !dbg !381
  call void @clear_cpu_cap(ptr noundef %69, i32 noundef 290) #11, !dbg !382
  br label %if.end260, !dbg !383

if.else210:                                       ; preds = %if.then158
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once211) #12, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once211, metadata !168, metadata !DIExpression()), !dbg !384
  store i8 1, ptr %__ret_do_once211, align 1, !dbg !384
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond212) #12, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %__ret_cond212, metadata !171, metadata !DIExpression()), !dbg !385
  %70 = load i8, ptr %__ret_do_once211, align 1, !dbg !385, !range !255, !noundef !256
  %tobool213 = trunc i8 %70 to i1, !dbg !385
  %lnot214 = xor i1 %tobool213, true, !dbg !385
  %lnot216 = xor i1 %lnot214, true, !dbg !385
  %frombool218 = zext i1 %lnot216 to i8, !dbg !385
  store i8 %frombool218, ptr %__ret_cond212, align 1, !dbg !385
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once219) #12, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %__ret_once219, metadata !174, metadata !DIExpression()), !dbg !385
  store i8 0, ptr %__ret_once219, align 1, !dbg !385
  %71 = load i8, ptr %__ret_cond212, align 1, !dbg !386, !range !255, !noundef !256
  %tobool220 = trunc i8 %71 to i1, !dbg !386
  br i1 %tobool220, label %land.rhs222, label %land.end226, !dbg !386

land.rhs222:                                      ; preds = %if.else210
  %72 = load i8, ptr @init_ia32_feat_ctl.__already_done.5, align 1, !dbg !386, !range !255, !noundef !256
  %tobool223 = trunc i8 %72 to i1, !dbg !386
  %lnot224 = xor i1 %tobool223, true, !dbg !386
  br label %land.end226

land.end226:                                      ; preds = %land.rhs222, %if.else210
  %73 = phi i1 [ false, %if.else210 ], [ %lnot224, %land.rhs222 ], !dbg !388
  %lnot227 = xor i1 %73, true, !dbg !386
  %lnot229 = xor i1 %lnot227, true, !dbg !386
  %lnot.ext230 = zext i1 %lnot229 to i32, !dbg !386
  %conv231 = sext i32 %lnot.ext230 to i64, !dbg !386
  %expval232 = call i64 @llvm.expect.i64(i64 %conv231, i64 0), !dbg !386
  %tobool233 = icmp ne i64 %expval232, 0, !dbg !386
  br i1 %tobool233, label %if.then234, label %if.end235, !dbg !385

if.then234:                                       ; preds = %land.end226
  store i8 1, ptr @init_ia32_feat_ctl.__already_done.5, align 1, !dbg !389
  store i8 1, ptr %__ret_once219, align 1, !dbg !389
  br label %if.end235, !dbg !389

if.end235:                                        ; preds = %if.then234, %land.end226
  %74 = load i8, ptr %__ret_once219, align 1, !dbg !385, !range !255, !noundef !256
  %tobool237 = trunc i8 %74 to i1, !dbg !385
  %lnot238 = xor i1 %tobool237, true, !dbg !385
  %lnot240 = xor i1 %lnot238, true, !dbg !385
  %lnot.ext241 = zext i1 %lnot240 to i32, !dbg !385
  %conv242 = sext i32 %lnot.ext241 to i64, !dbg !385
  %expval243 = call i64 @llvm.expect.i64(i64 %conv242, i64 0), !dbg !385
  store i64 %expval243, ptr %tmp236, align 8, !dbg !386
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once219) #12, !dbg !391
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond212) #12, !dbg !391
  %75 = load i64, ptr %tmp236, align 8, !dbg !385
  %tobool244 = icmp ne i64 %75, 0, !dbg !391
  br i1 %tobool244, label %if.then245, label %if.end251, !dbg !384

if.then245:                                       ; preds = %if.end235
  br label %do.body246, !dbg !392

do.body246:                                       ; preds = %if.then245
  br label %do.cond247, !dbg !394

do.cond247:                                       ; preds = %do.body246
  br label %do.end248, !dbg !394

do.end248:                                        ; preds = %do.cond247
  %call250 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #13, !dbg !392
  store i32 %call250, ptr %tmp249, align 4, !dbg !394
  %76 = load i32, ptr %tmp249, align 4, !dbg !392
  br label %if.end251, !dbg !391

if.end251:                                        ; preds = %do.end248, %if.end235
  %77 = load i8, ptr %__ret_do_once211, align 1, !dbg !384, !range !255, !noundef !256
  %tobool253 = trunc i8 %77 to i1, !dbg !384
  %lnot254 = xor i1 %tobool253, true, !dbg !384
  %lnot256 = xor i1 %lnot254, true, !dbg !384
  %lnot.ext257 = zext i1 %lnot256 to i32, !dbg !384
  %conv258 = sext i32 %lnot.ext257 to i64, !dbg !384
  %expval259 = call i64 @llvm.expect.i64(i64 %conv258, i64 0), !dbg !384
  store i64 %expval259, ptr %tmp252, align 8, !dbg !391
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once211) #12, !dbg !396
  %78 = load i64, ptr %tmp252, align 8, !dbg !384
  %79 = load ptr, ptr %c.addr, align 8, !dbg !397
  call void @clear_cpu_cap(ptr noundef %79, i32 noundef 542) #11, !dbg !398
  br label %if.end260

if.end260:                                        ; preds = %if.end251, %if.end201
  br label %if.end261, !dbg !399

if.end261:                                        ; preds = %if.end260, %land.lhs.true155, %if.end152
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !400
  br label %cleanup, !dbg !400

cleanup:                                          ; preds = %if.end261, %if.end92, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr) #12, !dbg !400
  call void @llvm.lifetime.end.p0(i64 1, ptr %enable_vmx) #12, !dbg !400
  call void @llvm.lifetime.end.p0(i64 1, ptr %tboot) #12, !dbg !400
  call void @llvm.lifetime.end.p0(i64 1, ptr %enable_sgx_driver) #12, !dbg !400
  call void @llvm.lifetime.end.p0(i64 1, ptr %enable_sgx_kvm) #12, !dbg !400
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !400

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmsrl_safe(i32 noundef %msr, ptr noundef %p) #4 align 16 !dbg !401 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !407, metadata !DIExpression()), !dbg !410
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !408, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %err, metadata !409, metadata !DIExpression()), !dbg !413
  %0 = load i32, ptr %msr.addr, align 4, !dbg !414
  %call = call i64 @native_read_msr_safe(i32 noundef %0, ptr noundef %err) #11, !dbg !415
  %1 = load ptr, ptr %p.addr, align 8, !dbg !416
  store i64 %call, ptr %1, align 8, !dbg !417
  %2 = load i32, ptr %err, align 4, !dbg !418
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !419
  ret i32 %2, !dbg !420
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !421 dso_local void @clear_cpu_cap(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !425 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !433, metadata !DIExpression()), !dbg !435
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !434, metadata !DIExpression()), !dbg !436
  %0 = load i64, ptr %nr.addr, align 8, !dbg !437
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !438
  br i1 %1, label %cond.true, label %cond.false, !dbg !438

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !439
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !440
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !441
  %conv = zext i1 %call to i32, !dbg !441
  br label %cond.end, !dbg !438

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !442
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !443
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !444
  %conv2 = zext i1 %call1 to i32, !dbg !444
  br label %cond.end, !dbg !438

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !438
  %tobool = icmp ne i32 %cond, 0, !dbg !438
  ret i1 %tobool, !dbg !445
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #4 align 16 !dbg !446 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !450, metadata !DIExpression()), !dbg !452
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !451, metadata !DIExpression()), !dbg !453
  %0 = load i32, ptr %msr.addr, align 4, !dbg !454
  %1 = load i64, ptr %val.addr, align 8, !dbg !455
  %and = and i64 %1, 4294967295, !dbg !456
  %conv = trunc i64 %and to i32, !dbg !457
  %2 = load i64, ptr %val.addr, align 8, !dbg !458
  %shr = lshr i64 %2, 32, !dbg !459
  %conv1 = trunc i64 %shr to i32, !dbg !460
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #11, !dbg !461
  ret void, !dbg !462
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !463 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !469, metadata !DIExpression()), !dbg !471
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !470, metadata !DIExpression()), !dbg !472
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !473
  %1 = load i64, ptr %nr.addr, align 8, !dbg !474
  %div = sdiv i64 %1, 64, !dbg !474
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !475
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !476
  %2 = load i64, ptr %nr.addr, align 8, !dbg !477
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !478
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !479
  ret void, !dbg !480
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_vmx_capabilities(ptr noundef %c) #1 align 16 !dbg !481 {
entry:
  %c.addr = alloca ptr, align 8
  %supported = alloca i32, align 4
  %funcs = alloca i32, align 4
  %ept = alloca i32, align 4
  %vpid = alloca i32, align 4
  %ign = alloca i32, align 4
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %__val = alloca i64, align 8
  %__err = alloca i32, align 4
  %__val5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__err12 = alloca i32, align 4
  %__val13 = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  %__val24 = alloca i64, align 8
  %__err31 = alloca i32, align 4
  %__val32 = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  %__err38 = alloca i32, align 4
  %__val39 = alloca i64, align 8
  %tmp44 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp66 = alloca i64, align 8
  %__ret_warn_on74 = alloca i32, align 4
  %__flags91 = alloca i32, align 4
  %tmp104 = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !483, metadata !DIExpression()), !dbg !517
  call void @llvm.lifetime.start.p0(i64 4, ptr %supported) #12, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %supported, metadata !484, metadata !DIExpression()), !dbg !519
  call void @llvm.lifetime.start.p0(i64 4, ptr %funcs) #12, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %funcs, metadata !485, metadata !DIExpression()), !dbg !520
  call void @llvm.lifetime.start.p0(i64 4, ptr %ept) #12, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %ept, metadata !486, metadata !DIExpression()), !dbg !521
  call void @llvm.lifetime.start.p0(i64 4, ptr %vpid) #12, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %vpid, metadata !487, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 4, ptr %ign) #12, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %ign, metadata !488, metadata !DIExpression()), !dbg !523
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #12, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %low, metadata !489, metadata !DIExpression()), !dbg !524
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #12, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %high, metadata !490, metadata !DIExpression()), !dbg !525
  br label %do.body, !dbg !526

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !527

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !527

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !529

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #12, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !491, metadata !DIExpression()), !dbg !530
  %call = call i64 @native_read_msr(i32 noundef 1154) #11, !dbg !530
  store i64 %call, ptr %__val, align 8, !dbg !530
  %0 = load i64, ptr %__val, align 8, !dbg !530
  %conv = trunc i64 %0 to i32, !dbg !530
  store i32 %conv, ptr %ign, align 4, !dbg !530
  %1 = load i64, ptr %__val, align 8, !dbg !530
  %shr = lshr i64 %1, 32, !dbg !530
  %conv2 = trunc i64 %shr to i32, !dbg !530
  store i32 %conv2, ptr %supported, align 4, !dbg !530
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #12, !dbg !529
  br label %do.cond3, !dbg !530

do.cond3:                                         ; preds = %do.body1
  br label %do.end4, !dbg !530

do.end4:                                          ; preds = %do.cond3
  %2 = load i32, ptr %supported, align 4, !dbg !531
  %3 = load ptr, ptr %c.addr, align 8, !dbg !532
  %vmx_capability = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 3, !dbg !533
  %arrayidx = getelementptr [5 x i32], ptr %vmx_capability, i64 0, i64 1, !dbg !532
  store i32 %2, ptr %arrayidx, align 4, !dbg !534
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #12, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !493, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val5) #12, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %__val5, metadata !495, metadata !DIExpression()), !dbg !535
  %call6 = call i64 @native_read_msr_safe(i32 noundef 1163, ptr noundef %__err) #11, !dbg !535
  store i64 %call6, ptr %__val5, align 8, !dbg !535
  %4 = load i64, ptr %__val5, align 8, !dbg !535
  %conv7 = trunc i64 %4 to i32, !dbg !535
  store i32 %conv7, ptr %ign, align 4, !dbg !535
  %5 = load i64, ptr %__val5, align 8, !dbg !535
  %shr8 = lshr i64 %5, 32, !dbg !535
  %conv9 = trunc i64 %shr8 to i32, !dbg !535
  store i32 %conv9, ptr %supported, align 4, !dbg !535
  %6 = load i32, ptr %__err, align 4, !dbg !535
  store i32 %6, ptr %tmp, align 4, !dbg !535
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val5) #12, !dbg !536
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #12, !dbg !536
  %7 = load i32, ptr %tmp, align 4, !dbg !535
  %8 = load i32, ptr %supported, align 4, !dbg !537
  %9 = load ptr, ptr %c.addr, align 8, !dbg !538
  %vmx_capability10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 3, !dbg !539
  %arrayidx11 = getelementptr [5 x i32], ptr %vmx_capability10, i64 0, i64 2, !dbg !538
  store i32 %8, ptr %arrayidx11, align 4, !dbg !540
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err12) #12, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %__err12, metadata !496, metadata !DIExpression()), !dbg !541
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val13) #12, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %__val13, metadata !498, metadata !DIExpression()), !dbg !541
  %call14 = call i64 @native_read_msr_safe(i32 noundef 1170, ptr noundef %__err12) #11, !dbg !541
  store i64 %call14, ptr %__val13, align 8, !dbg !541
  %10 = load i64, ptr %__val13, align 8, !dbg !541
  %conv15 = trunc i64 %10 to i32, !dbg !541
  store i32 %conv15, ptr %low, align 4, !dbg !541
  %11 = load i64, ptr %__val13, align 8, !dbg !541
  %shr16 = lshr i64 %11, 32, !dbg !541
  %conv17 = trunc i64 %shr16 to i32, !dbg !541
  store i32 %conv17, ptr %high, align 4, !dbg !541
  %12 = load i32, ptr %__err12, align 4, !dbg !541
  store i32 %12, ptr %tmp18, align 4, !dbg !541
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val13) #12, !dbg !542
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err12) #12, !dbg !542
  %13 = load i32, ptr %tmp18, align 4, !dbg !541
  %14 = load i32, ptr %low, align 4, !dbg !543
  %15 = load ptr, ptr %c.addr, align 8, !dbg !544
  %vmx_capability19 = getelementptr inbounds %struct.cpuinfo_x86, ptr %15, i32 0, i32 3, !dbg !545
  %arrayidx20 = getelementptr [5 x i32], ptr %vmx_capability19, i64 0, i64 3, !dbg !544
  store i32 %14, ptr %arrayidx20, align 4, !dbg !546
  %16 = load i32, ptr %high, align 4, !dbg !547
  %17 = load ptr, ptr %c.addr, align 8, !dbg !548
  %vmx_capability21 = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 3, !dbg !549
  %arrayidx22 = getelementptr [5 x i32], ptr %vmx_capability21, i64 0, i64 4, !dbg !548
  store i32 %16, ptr %arrayidx22, align 4, !dbg !550
  br label %do.body23, !dbg !551

do.body23:                                        ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val24) #12, !dbg !552
  call void @llvm.dbg.declare(metadata ptr %__val24, metadata !499, metadata !DIExpression()), !dbg !552
  %call25 = call i64 @native_read_msr(i32 noundef 1153) #11, !dbg !552
  store i64 %call25, ptr %__val24, align 8, !dbg !552
  %18 = load i64, ptr %__val24, align 8, !dbg !552
  %conv26 = trunc i64 %18 to i32, !dbg !552
  store i32 %conv26, ptr %ign, align 4, !dbg !552
  %19 = load i64, ptr %__val24, align 8, !dbg !552
  %shr27 = lshr i64 %19, 32, !dbg !552
  %conv28 = trunc i64 %shr27 to i32, !dbg !552
  store i32 %conv28, ptr %supported, align 4, !dbg !552
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val24) #12, !dbg !551
  br label %do.cond29, !dbg !552

do.cond29:                                        ; preds = %do.body23
  br label %do.end30, !dbg !552

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err31) #12, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %__err31, metadata !501, metadata !DIExpression()), !dbg !553
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val32) #12, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %__val32, metadata !503, metadata !DIExpression()), !dbg !553
  %call33 = call i64 @native_read_msr_safe(i32 noundef 1169, ptr noundef %__err31) #11, !dbg !553
  store i64 %call33, ptr %__val32, align 8, !dbg !553
  %20 = load i64, ptr %__val32, align 8, !dbg !553
  %conv34 = trunc i64 %20 to i32, !dbg !553
  store i32 %conv34, ptr %ign, align 4, !dbg !553
  %21 = load i64, ptr %__val32, align 8, !dbg !553
  %shr35 = lshr i64 %21, 32, !dbg !553
  %conv36 = trunc i64 %shr35 to i32, !dbg !553
  store i32 %conv36, ptr %funcs, align 4, !dbg !553
  %22 = load i32, ptr %__err31, align 4, !dbg !553
  store i32 %22, ptr %tmp37, align 4, !dbg !553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val32) #12, !dbg !554
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err31) #12, !dbg !554
  %23 = load i32, ptr %tmp37, align 4, !dbg !553
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err38) #12, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %__err38, metadata !504, metadata !DIExpression()), !dbg !555
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val39) #12, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %__val39, metadata !506, metadata !DIExpression()), !dbg !555
  %call40 = call i64 @native_read_msr_safe(i32 noundef 1164, ptr noundef %__err38) #11, !dbg !555
  store i64 %call40, ptr %__val39, align 8, !dbg !555
  %24 = load i64, ptr %__val39, align 8, !dbg !555
  %conv41 = trunc i64 %24 to i32, !dbg !555
  store i32 %conv41, ptr %ept, align 4, !dbg !555
  %25 = load i64, ptr %__val39, align 8, !dbg !555
  %shr42 = lshr i64 %25, 32, !dbg !555
  %conv43 = trunc i64 %shr42 to i32, !dbg !555
  store i32 %conv43, ptr %vpid, align 4, !dbg !555
  %26 = load i32, ptr %__err38, align 4, !dbg !555
  store i32 %26, ptr %tmp44, align 4, !dbg !555
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val39) #12, !dbg !556
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err38) #12, !dbg !556
  %27 = load i32, ptr %tmp44, align 4, !dbg !555
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !507, metadata !DIExpression()), !dbg !557
  %28 = load i32, ptr %supported, align 4, !dbg !557
  %shr45 = lshr i32 %28, 16, !dbg !557
  %tobool = icmp ne i32 %shr45, 0, !dbg !557
  %lnot = xor i1 %tobool, true, !dbg !557
  %lnot46 = xor i1 %lnot, true, !dbg !557
  %lnot.ext = zext i1 %lnot46 to i32, !dbg !557
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !557
  %29 = load i32, ptr %__ret_warn_on, align 4, !dbg !558
  %tobool47 = icmp ne i32 %29, 0, !dbg !558
  %lnot48 = xor i1 %tobool47, true, !dbg !558
  %lnot50 = xor i1 %lnot48, true, !dbg !558
  %lnot.ext51 = zext i1 %lnot50 to i32, !dbg !558
  %conv52 = sext i32 %lnot.ext51 to i64, !dbg !558
  %expval = call i64 @llvm.expect.i64(i64 %conv52, i64 0), !dbg !558
  %tobool53 = icmp ne i64 %expval, 0, !dbg !558
  br i1 %tobool53, label %if.then, label %if.end, !dbg !557

if.then:                                          ; preds = %do.end30
  br label %do.body54, !dbg !558

do.body54:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !509, metadata !DIExpression()), !dbg !559
  store i32 2307, ptr %__flags, align 4, !dbg !559
  br label %do.body55, !dbg !559

do.body55:                                        ; preds = %do.body54
  br label %do.cond56, !dbg !560

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !560

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !559

do.body58:                                        ; preds = %do.end57
  %30 = load i32, ptr %__flags, align 4, !dbg !562
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 62, i32 %30, i64 12) #12, !dbg !562, !srcloc !564
  br label %do.cond59, !dbg !562

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !562

do.end60:                                         ; preds = %do.cond59
  br label %do.body61, !dbg !559

do.body61:                                        ; preds = %do.end60
  br label %do.cond62, !dbg !565

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !565

do.end63:                                         ; preds = %do.cond62
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !558
  br label %do.cond64, !dbg !559

do.cond64:                                        ; preds = %do.end63
  br label %do.end65, !dbg !559

do.end65:                                         ; preds = %do.cond64
  br label %if.end, !dbg !559

if.end:                                           ; preds = %do.end65, %do.end30
  %31 = load i32, ptr %__ret_warn_on, align 4, !dbg !557
  %tobool67 = icmp ne i32 %31, 0, !dbg !557
  %lnot68 = xor i1 %tobool67, true, !dbg !557
  %lnot70 = xor i1 %lnot68, true, !dbg !557
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !557
  %conv72 = sext i32 %lnot.ext71 to i64, !dbg !557
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 0), !dbg !557
  store i64 %expval73, ptr %tmp66, align 8, !dbg !558
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !567
  %32 = load i64, ptr %tmp66, align 8, !dbg !557
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on74) #12, !dbg !568
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on74, metadata !512, metadata !DIExpression()), !dbg !568
  %33 = load i32, ptr %funcs, align 4, !dbg !568
  %shr75 = lshr i32 %33, 4, !dbg !568
  %tobool76 = icmp ne i32 %shr75, 0, !dbg !568
  %lnot77 = xor i1 %tobool76, true, !dbg !568
  %lnot79 = xor i1 %lnot77, true, !dbg !568
  %lnot.ext80 = zext i1 %lnot79 to i32, !dbg !568
  store i32 %lnot.ext80, ptr %__ret_warn_on74, align 4, !dbg !568
  %34 = load i32, ptr %__ret_warn_on74, align 4, !dbg !569
  %tobool81 = icmp ne i32 %34, 0, !dbg !569
  %lnot82 = xor i1 %tobool81, true, !dbg !569
  %lnot84 = xor i1 %lnot82, true, !dbg !569
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !569
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !569
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0), !dbg !569
  %tobool88 = icmp ne i64 %expval87, 0, !dbg !569
  br i1 %tobool88, label %if.then89, label %if.end103, !dbg !568

if.then89:                                        ; preds = %if.end
  br label %do.body90, !dbg !569

do.body90:                                        ; preds = %if.then89
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags91) #12, !dbg !570
  call void @llvm.dbg.declare(metadata ptr %__flags91, metadata !514, metadata !DIExpression()), !dbg !570
  store i32 2307, ptr %__flags91, align 4, !dbg !570
  br label %do.body92, !dbg !570

do.body92:                                        ; preds = %do.body90
  br label %do.cond93, !dbg !571

do.cond93:                                        ; preds = %do.body92
  br label %do.end94, !dbg !571

do.end94:                                         ; preds = %do.cond93
  br label %do.body95, !dbg !570

do.body95:                                        ; preds = %do.end94
  %35 = load i32, ptr %__flags91, align 4, !dbg !573
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 63, i32 %35, i64 12) #12, !dbg !573, !srcloc !575
  br label %do.cond96, !dbg !573

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !573

do.end97:                                         ; preds = %do.cond96
  br label %do.body98, !dbg !570

do.body98:                                        ; preds = %do.end97
  br label %do.cond99, !dbg !576

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !576

do.end100:                                        ; preds = %do.cond99
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags91) #12, !dbg !569
  br label %do.cond101, !dbg !570

do.cond101:                                       ; preds = %do.end100
  br label %do.end102, !dbg !570

do.end102:                                        ; preds = %do.cond101
  br label %if.end103, !dbg !570

if.end103:                                        ; preds = %do.end102, %if.end
  %36 = load i32, ptr %__ret_warn_on74, align 4, !dbg !568
  %tobool105 = icmp ne i32 %36, 0, !dbg !568
  %lnot106 = xor i1 %tobool105, true, !dbg !568
  %lnot108 = xor i1 %lnot106, true, !dbg !568
  %lnot.ext109 = zext i1 %lnot108 to i32, !dbg !568
  %conv110 = sext i32 %lnot.ext109 to i64, !dbg !568
  %expval111 = call i64 @llvm.expect.i64(i64 %conv110, i64 0), !dbg !568
  store i64 %expval111, ptr %tmp104, align 8, !dbg !569
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on74) #12, !dbg !578
  %37 = load i64, ptr %tmp104, align 8, !dbg !568
  %38 = load i32, ptr %supported, align 4, !dbg !579
  %and = and i32 %38, 65535, !dbg !580
  %39 = load i32, ptr %vpid, align 4, !dbg !581
  %and112 = and i32 %39, 1, !dbg !582
  %shl = shl i32 %and112, 16, !dbg !583
  %or = or i32 %and, %shl, !dbg !584
  %40 = load i32, ptr %funcs, align 4, !dbg !585
  %and113 = and i32 %40, 15, !dbg !586
  %shl114 = shl i32 %and113, 28, !dbg !587
  %or115 = or i32 %or, %shl114, !dbg !588
  %41 = load ptr, ptr %c.addr, align 8, !dbg !589
  %vmx_capability116 = getelementptr inbounds %struct.cpuinfo_x86, ptr %41, i32 0, i32 3, !dbg !590
  %arrayidx117 = getelementptr [5 x i32], ptr %vmx_capability116, i64 0, i64 0, !dbg !589
  store i32 %or115, ptr %arrayidx117, align 4, !dbg !591
  %42 = load i32, ptr %ept, align 4, !dbg !592
  %conv118 = zext i32 %42 to i64, !dbg !592
  %and119 = and i64 %conv118, 1, !dbg !594
  %tobool120 = icmp ne i64 %and119, 0, !dbg !594
  br i1 %tobool120, label %if.then121, label %if.end127, !dbg !595

if.then121:                                       ; preds = %if.end103
  %43 = load ptr, ptr %c.addr, align 8, !dbg !596
  %vmx_capability122 = getelementptr inbounds %struct.cpuinfo_x86, ptr %43, i32 0, i32 3, !dbg !597
  %arrayidx123 = getelementptr [5 x i32], ptr %vmx_capability122, i64 0, i64 0, !dbg !596
  %44 = load i32, ptr %arrayidx123, align 4, !dbg !598
  %conv124 = zext i32 %44 to i64, !dbg !598
  %or125 = or i64 %conv124, 131072, !dbg !598
  %conv126 = trunc i64 %or125 to i32, !dbg !598
  store i32 %conv126, ptr %arrayidx123, align 4, !dbg !598
  br label %if.end127, !dbg !596

if.end127:                                        ; preds = %if.then121, %if.end103
  %45 = load i32, ptr %ept, align 4, !dbg !599
  %conv128 = zext i32 %45 to i64, !dbg !599
  %and129 = and i64 %conv128, 2097152, !dbg !601
  %tobool130 = icmp ne i64 %and129, 0, !dbg !601
  br i1 %tobool130, label %if.then131, label %if.end137, !dbg !602

if.then131:                                       ; preds = %if.end127
  %46 = load ptr, ptr %c.addr, align 8, !dbg !603
  %vmx_capability132 = getelementptr inbounds %struct.cpuinfo_x86, ptr %46, i32 0, i32 3, !dbg !604
  %arrayidx133 = getelementptr [5 x i32], ptr %vmx_capability132, i64 0, i64 0, !dbg !603
  %47 = load i32, ptr %arrayidx133, align 4, !dbg !605
  %conv134 = zext i32 %47 to i64, !dbg !605
  %or135 = or i64 %conv134, 262144, !dbg !605
  %conv136 = trunc i64 %or135 to i32, !dbg !605
  store i32 %conv136, ptr %arrayidx133, align 4, !dbg !605
  br label %if.end137, !dbg !603

if.end137:                                        ; preds = %if.then131, %if.end127
  %48 = load i32, ptr %ept, align 4, !dbg !606
  %conv138 = zext i32 %48 to i64, !dbg !606
  %and139 = and i64 %conv138, 131072, !dbg !608
  %tobool140 = icmp ne i64 %and139, 0, !dbg !608
  br i1 %tobool140, label %if.then141, label %if.end147, !dbg !609

if.then141:                                       ; preds = %if.end137
  %49 = load ptr, ptr %c.addr, align 8, !dbg !610
  %vmx_capability142 = getelementptr inbounds %struct.cpuinfo_x86, ptr %49, i32 0, i32 3, !dbg !611
  %arrayidx143 = getelementptr [5 x i32], ptr %vmx_capability142, i64 0, i64 0, !dbg !610
  %50 = load i32, ptr %arrayidx143, align 4, !dbg !612
  %conv144 = zext i32 %50 to i64, !dbg !612
  %or145 = or i64 %conv144, 524288, !dbg !612
  %conv146 = trunc i64 %or145 to i32, !dbg !612
  store i32 %conv146, ptr %arrayidx143, align 4, !dbg !612
  br label %if.end147, !dbg !610

if.end147:                                        ; preds = %if.then141, %if.end137
  %51 = load ptr, ptr %c.addr, align 8, !dbg !613
  %vmx_capability148 = getelementptr inbounds %struct.cpuinfo_x86, ptr %51, i32 0, i32 3, !dbg !615
  %arrayidx149 = getelementptr [5 x i32], ptr %vmx_capability148, i64 0, i64 1, !dbg !613
  %52 = load i32, ptr %arrayidx149, align 4, !dbg !613
  %conv150 = zext i32 %52 to i64, !dbg !613
  %and151 = and i64 %conv150, 2097152, !dbg !616
  %tobool152 = icmp ne i64 %and151, 0, !dbg !616
  br i1 %tobool152, label %land.lhs.true, label %if.end164, !dbg !617

land.lhs.true:                                    ; preds = %if.end147
  %53 = load ptr, ptr %c.addr, align 8, !dbg !618
  %vmx_capability153 = getelementptr inbounds %struct.cpuinfo_x86, ptr %53, i32 0, i32 3, !dbg !619
  %arrayidx154 = getelementptr [5 x i32], ptr %vmx_capability153, i64 0, i64 2, !dbg !618
  %54 = load i32, ptr %arrayidx154, align 4, !dbg !618
  %conv155 = zext i32 %54 to i64, !dbg !618
  %and156 = and i64 %conv155, 1, !dbg !620
  %tobool157 = icmp ne i64 %and156, 0, !dbg !620
  br i1 %tobool157, label %if.then158, label %if.end164, !dbg !621

if.then158:                                       ; preds = %land.lhs.true
  %55 = load ptr, ptr %c.addr, align 8, !dbg !622
  %vmx_capability159 = getelementptr inbounds %struct.cpuinfo_x86, ptr %55, i32 0, i32 3, !dbg !623
  %arrayidx160 = getelementptr [5 x i32], ptr %vmx_capability159, i64 0, i64 0, !dbg !622
  %56 = load i32, ptr %arrayidx160, align 4, !dbg !624
  %conv161 = zext i32 %56 to i64, !dbg !624
  %or162 = or i64 %conv161, 16777216, !dbg !624
  %conv163 = trunc i64 %or162 to i32, !dbg !624
  store i32 %conv163, ptr %arrayidx160, align 4, !dbg !624
  br label %if.end164, !dbg !622

if.end164:                                        ; preds = %if.then158, %land.lhs.true, %if.end147
  %57 = load ptr, ptr %c.addr, align 8, !dbg !625
  %vmx_capability165 = getelementptr inbounds %struct.cpuinfo_x86, ptr %57, i32 0, i32 3, !dbg !627
  %arrayidx166 = getelementptr [5 x i32], ptr %vmx_capability165, i64 0, i64 1, !dbg !625
  %58 = load i32, ptr %arrayidx166, align 4, !dbg !625
  %conv167 = zext i32 %58 to i64, !dbg !625
  %and168 = and i64 %conv167, 2097152, !dbg !628
  %tobool169 = icmp ne i64 %and168, 0, !dbg !628
  br i1 %tobool169, label %land.lhs.true170, label %if.end194, !dbg !629

land.lhs.true170:                                 ; preds = %if.end164
  %59 = load ptr, ptr %c.addr, align 8, !dbg !630
  %vmx_capability171 = getelementptr inbounds %struct.cpuinfo_x86, ptr %59, i32 0, i32 3, !dbg !631
  %arrayidx172 = getelementptr [5 x i32], ptr %vmx_capability171, i64 0, i64 2, !dbg !630
  %60 = load i32, ptr %arrayidx172, align 4, !dbg !630
  %conv173 = zext i32 %60 to i64, !dbg !630
  %and174 = and i64 %conv173, 256, !dbg !632
  %tobool175 = icmp ne i64 %and174, 0, !dbg !632
  br i1 %tobool175, label %land.lhs.true176, label %if.end194, !dbg !633

land.lhs.true176:                                 ; preds = %land.lhs.true170
  %61 = load ptr, ptr %c.addr, align 8, !dbg !634
  %vmx_capability177 = getelementptr inbounds %struct.cpuinfo_x86, ptr %61, i32 0, i32 3, !dbg !635
  %arrayidx178 = getelementptr [5 x i32], ptr %vmx_capability177, i64 0, i64 2, !dbg !634
  %62 = load i32, ptr %arrayidx178, align 4, !dbg !634
  %conv179 = zext i32 %62 to i64, !dbg !634
  %and180 = and i64 %conv179, 512, !dbg !636
  %tobool181 = icmp ne i64 %and180, 0, !dbg !636
  br i1 %tobool181, label %land.lhs.true182, label %if.end194, !dbg !637

land.lhs.true182:                                 ; preds = %land.lhs.true176
  %63 = load ptr, ptr %c.addr, align 8, !dbg !638
  %vmx_capability183 = getelementptr inbounds %struct.cpuinfo_x86, ptr %63, i32 0, i32 3, !dbg !639
  %arrayidx184 = getelementptr [5 x i32], ptr %vmx_capability183, i64 0, i64 0, !dbg !638
  %64 = load i32, ptr %arrayidx184, align 4, !dbg !638
  %conv185 = zext i32 %64 to i64, !dbg !638
  %and186 = and i64 %conv185, 128, !dbg !640
  %tobool187 = icmp ne i64 %and186, 0, !dbg !640
  br i1 %tobool187, label %if.then188, label %if.end194, !dbg !641

if.then188:                                       ; preds = %land.lhs.true182
  %65 = load ptr, ptr %c.addr, align 8, !dbg !642
  %vmx_capability189 = getelementptr inbounds %struct.cpuinfo_x86, ptr %65, i32 0, i32 3, !dbg !643
  %arrayidx190 = getelementptr [5 x i32], ptr %vmx_capability189, i64 0, i64 0, !dbg !642
  %66 = load i32, ptr %arrayidx190, align 4, !dbg !644
  %conv191 = zext i32 %66 to i64, !dbg !644
  %or192 = or i64 %conv191, 33554432, !dbg !644
  %conv193 = trunc i64 %or192 to i32, !dbg !644
  store i32 %conv193, ptr %arrayidx190, align 4, !dbg !644
  br label %if.end194, !dbg !642

if.end194:                                        ; preds = %if.then188, %land.lhs.true182, %land.lhs.true176, %land.lhs.true170, %if.end164
  %67 = load ptr, ptr %c.addr, align 8, !dbg !645
  %vmx_capability195 = getelementptr inbounds %struct.cpuinfo_x86, ptr %67, i32 0, i32 3, !dbg !647
  %arrayidx196 = getelementptr [5 x i32], ptr %vmx_capability195, i64 0, i64 1, !dbg !645
  %68 = load i32, ptr %arrayidx196, align 4, !dbg !645
  %conv197 = zext i32 %68 to i64, !dbg !645
  %and198 = and i64 %conv197, 2097152, !dbg !648
  %tobool199 = icmp ne i64 %and198, 0, !dbg !648
  br i1 %tobool199, label %if.then200, label %if.end201, !dbg !649

if.then200:                                       ; preds = %if.end194
  %69 = load ptr, ptr %c.addr, align 8, !dbg !650
  %70 = getelementptr inbounds %struct.cpuinfo_x86, ptr %69, i32 0, i32 10, !dbg !650
  %arraydecay = getelementptr inbounds [24 x i32], ptr %70, i64 0, i64 0, !dbg !650
  call void @set_bit(i64 noundef 256, ptr noundef %arraydecay) #11, !dbg !650
  br label %if.end201, !dbg !650

if.end201:                                        ; preds = %if.then200, %if.end194
  %71 = load ptr, ptr %c.addr, align 8, !dbg !651
  %vmx_capability202 = getelementptr inbounds %struct.cpuinfo_x86, ptr %71, i32 0, i32 3, !dbg !653
  %arrayidx203 = getelementptr [5 x i32], ptr %vmx_capability202, i64 0, i64 0, !dbg !651
  %72 = load i32, ptr %arrayidx203, align 4, !dbg !651
  %conv204 = zext i32 %72 to i64, !dbg !651
  %and205 = and i64 %conv204, 16777216, !dbg !654
  %tobool206 = icmp ne i64 %and205, 0, !dbg !654
  br i1 %tobool206, label %if.then207, label %if.end209, !dbg !655

if.then207:                                       ; preds = %if.end201
  %73 = load ptr, ptr %c.addr, align 8, !dbg !656
  %74 = getelementptr inbounds %struct.cpuinfo_x86, ptr %73, i32 0, i32 10, !dbg !656
  %arraydecay208 = getelementptr inbounds [24 x i32], ptr %74, i64 0, i64 0, !dbg !656
  call void @set_bit(i64 noundef 257, ptr noundef %arraydecay208) #11, !dbg !656
  br label %if.end209, !dbg !656

if.end209:                                        ; preds = %if.then207, %if.end201
  %75 = load ptr, ptr %c.addr, align 8, !dbg !657
  %vmx_capability210 = getelementptr inbounds %struct.cpuinfo_x86, ptr %75, i32 0, i32 3, !dbg !659
  %arrayidx211 = getelementptr [5 x i32], ptr %vmx_capability210, i64 0, i64 0, !dbg !657
  %76 = load i32, ptr %arrayidx211, align 4, !dbg !657
  %conv212 = zext i32 %76 to i64, !dbg !657
  %and213 = and i64 %conv212, 32, !dbg !660
  %tobool214 = icmp ne i64 %and213, 0, !dbg !660
  br i1 %tobool214, label %if.then215, label %if.end217, !dbg !661

if.then215:                                       ; preds = %if.end209
  %77 = load ptr, ptr %c.addr, align 8, !dbg !662
  %78 = getelementptr inbounds %struct.cpuinfo_x86, ptr %77, i32 0, i32 10, !dbg !662
  %arraydecay216 = getelementptr inbounds [24 x i32], ptr %78, i64 0, i64 0, !dbg !662
  call void @set_bit(i64 noundef 505, ptr noundef %arraydecay216) #11, !dbg !662
  br label %if.end217, !dbg !662

if.end217:                                        ; preds = %if.then215, %if.end209
  %79 = load ptr, ptr %c.addr, align 8, !dbg !663
  %vmx_capability218 = getelementptr inbounds %struct.cpuinfo_x86, ptr %79, i32 0, i32 3, !dbg !665
  %arrayidx219 = getelementptr [5 x i32], ptr %vmx_capability218, i64 0, i64 2, !dbg !663
  %80 = load i32, ptr %arrayidx219, align 4, !dbg !663
  %conv220 = zext i32 %80 to i64, !dbg !663
  %and221 = and i64 %conv220, 2, !dbg !666
  %tobool222 = icmp ne i64 %and221, 0, !dbg !666
  br i1 %tobool222, label %if.then223, label %if.end225, !dbg !667

if.then223:                                       ; preds = %if.end217
  %81 = load ptr, ptr %c.addr, align 8, !dbg !668
  %82 = getelementptr inbounds %struct.cpuinfo_x86, ptr %81, i32 0, i32 10, !dbg !668
  %arraydecay224 = getelementptr inbounds [24 x i32], ptr %82, i64 0, i64 0, !dbg !668
  call void @set_bit(i64 noundef 258, ptr noundef %arraydecay224) #11, !dbg !668
  br label %if.end225, !dbg !668

if.end225:                                        ; preds = %if.then223, %if.end217
  %83 = load ptr, ptr %c.addr, align 8, !dbg !669
  %vmx_capability226 = getelementptr inbounds %struct.cpuinfo_x86, ptr %83, i32 0, i32 3, !dbg !671
  %arrayidx227 = getelementptr [5 x i32], ptr %vmx_capability226, i64 0, i64 0, !dbg !669
  %84 = load i32, ptr %arrayidx227, align 4, !dbg !669
  %conv228 = zext i32 %84 to i64, !dbg !669
  %and229 = and i64 %conv228, 262144, !dbg !672
  %tobool230 = icmp ne i64 %and229, 0, !dbg !672
  br i1 %tobool230, label %if.then231, label %if.end233, !dbg !673

if.then231:                                       ; preds = %if.end225
  %85 = load ptr, ptr %c.addr, align 8, !dbg !674
  %86 = getelementptr inbounds %struct.cpuinfo_x86, ptr %85, i32 0, i32 10, !dbg !674
  %arraydecay232 = getelementptr inbounds [24 x i32], ptr %86, i64 0, i64 0, !dbg !674
  call void @set_bit(i64 noundef 273, ptr noundef %arraydecay232) #11, !dbg !674
  br label %if.end233, !dbg !674

if.end233:                                        ; preds = %if.then231, %if.end225
  %87 = load ptr, ptr %c.addr, align 8, !dbg !675
  %vmx_capability234 = getelementptr inbounds %struct.cpuinfo_x86, ptr %87, i32 0, i32 3, !dbg !677
  %arrayidx235 = getelementptr [5 x i32], ptr %vmx_capability234, i64 0, i64 0, !dbg !675
  %88 = load i32, ptr %arrayidx235, align 4, !dbg !675
  %conv236 = zext i32 %88 to i64, !dbg !675
  %and237 = and i64 %conv236, 32, !dbg !678
  %tobool238 = icmp ne i64 %and237, 0, !dbg !678
  br i1 %tobool238, label %if.then239, label %if.end241, !dbg !679

if.then239:                                       ; preds = %if.end233
  %89 = load ptr, ptr %c.addr, align 8, !dbg !680
  %90 = getelementptr inbounds %struct.cpuinfo_x86, ptr %89, i32 0, i32 10, !dbg !680
  %arraydecay240 = getelementptr inbounds [24 x i32], ptr %90, i64 0, i64 0, !dbg !680
  call void @set_bit(i64 noundef 259, ptr noundef %arraydecay240) #11, !dbg !680
  br label %if.end241, !dbg !680

if.end241:                                        ; preds = %if.then239, %if.end233
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #12, !dbg !681
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #12, !dbg !681
  call void @llvm.lifetime.end.p0(i64 4, ptr %ign) #12, !dbg !681
  call void @llvm.lifetime.end.p0(i64 4, ptr %vpid) #12, !dbg !681
  call void @llvm.lifetime.end.p0(i64 4, ptr %ept) #12, !dbg !681
  call void @llvm.lifetime.end.p0(i64 4, ptr %funcs) #12, !dbg !681
  call void @llvm.lifetime.end.p0(i64 4, ptr %supported) #12, !dbg !681
  ret void, !dbg !681
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !682 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !686 dso_local void @setup_clear_cpu_cap(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #4 align 16 !dbg !689 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !694, metadata !DIExpression()), !dbg !698
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !695, metadata !DIExpression()), !dbg !699
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #12, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %low, metadata !696, metadata !DIExpression()), !dbg !700
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #12, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %high, metadata !697, metadata !DIExpression()), !dbg !700
  %0 = load ptr, ptr %err.addr, align 8, !dbg !701
  %1 = load i32, ptr %msr.addr, align 4, !dbg !702
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #12, !dbg !703, !srcloc !704
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !703
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !703
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !703
  store i32 %asmresult, ptr %0, align 4, !dbg !703
  store i64 %asmresult1, ptr %low, align 8, !dbg !703
  store i64 %asmresult2, ptr %high, align 8, !dbg !703
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #11, !dbg !705
  br i1 %call, label %if.then, label %if.end, !dbg !707

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !708
  %4 = load i64, ptr %low, align 8, !dbg !709
  %5 = load i64, ptr %high, align 8, !dbg !709
  %shl = shl i64 %5, 32, !dbg !709
  %or = or i64 %4, %shl, !dbg !709
  %6 = load ptr, ptr %err.addr, align 8, !dbg !710
  %7 = load i32, ptr %6, align 4, !dbg !711
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #11, !dbg !712
  br label %if.end, !dbg !712

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !713
  %9 = load i64, ptr %high, align 8, !dbg !713
  %shl3 = shl i64 %9, 32, !dbg !713
  %or4 = or i64 %8, %shl3, !dbg !713
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #12, !dbg !714
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #12, !dbg !714
  ret i64 %or4, !dbg !715
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !716 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !745, metadata !DIExpression()), !dbg !746
  %0 = load ptr, ptr %key.addr, align 8, !dbg !747
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #11, !dbg !748
  ret i1 %call, !dbg !749
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !750 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !753 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !758, metadata !DIExpression()), !dbg !761
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !759, metadata !DIExpression()), !dbg !762
  %0 = load ptr, ptr %key.addr, align 8, !dbg !763
  %1 = load i8, ptr %branch.addr, align 1, !dbg !764, !range !255, !noundef !256
  %tobool = trunc i8 %1 to i1, !dbg !764
  %conv = zext i1 %tobool to i32, !dbg !764
  %or = or i32 2, %conv, !dbg !765
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !766, !srcloc !767

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !768
  br label %return, !dbg !768

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !760), !dbg !769
  store i1 true, ptr %retval, align 1, !dbg !770
  br label %return, !dbg !770

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !771
  ret i1 %2, !dbg !771
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !772 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !776, metadata !DIExpression()), !dbg !778
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !777, metadata !DIExpression()), !dbg !779
  %0 = load i64, ptr %nr.addr, align 8, !dbg !780
  %and = and i64 %0, 63, !dbg !781
  %shl = shl i64 1, %and, !dbg !782
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !783
  %2 = load i64, ptr %nr.addr, align 8, !dbg !784
  %shr = ashr i64 %2, 6, !dbg !785
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !783
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !783
  %and1 = and i64 %shl, %3, !dbg !786
  %cmp = icmp ne i64 %and1, 0, !dbg !787
  ret i1 %cmp, !dbg !788
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !789 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !791, metadata !DIExpression()), !dbg !794
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !792, metadata !DIExpression()), !dbg !795
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !793, metadata !DIExpression()), !dbg !797
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !798
  %1 = load i64, ptr %nr.addr, align 8, !dbg !799
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !800, !srcloc !801
  %3 = icmp ult i8 %2, 2, !dbg !800
  call void @llvm.assume(i1 %3), !dbg !800
  store i8 %2, ptr %oldbit, align 1, !dbg !800
  %4 = load i8, ptr %oldbit, align 1, !dbg !802, !range !255, !noundef !256
  %tobool = trunc i8 %4 to i1, !dbg !802
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !803
  ret i1 %tobool, !dbg !804
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !805 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !809, metadata !DIExpression()), !dbg !812
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !810, metadata !DIExpression()), !dbg !813
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !811, metadata !DIExpression()), !dbg !814
  %0 = load i32, ptr %msr.addr, align 4, !dbg !815
  %1 = load i32, ptr %low.addr, align 4, !dbg !816
  %2 = load i32, ptr %high.addr, align 4, !dbg !817
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #11, !dbg !818
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #11, !dbg !819
  br i1 %call, label %if.then, label %if.end, !dbg !821

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !822
  %4 = load i32, ptr %high.addr, align 4, !dbg !823
  %conv = zext i32 %4 to i64, !dbg !824
  %shl = shl i64 %conv, 32, !dbg !825
  %5 = load i32, ptr %low.addr, align 4, !dbg !826
  %conv1 = zext i32 %5 to i64, !dbg !826
  %or = or i64 %shl, %conv1, !dbg !827
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #11, !dbg !828
  br label %if.end, !dbg !828

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !829
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !830 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !832, metadata !DIExpression()), !dbg !835
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !833, metadata !DIExpression()), !dbg !836
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !834, metadata !DIExpression()), !dbg !837
  %0 = load i32, ptr %msr.addr, align 4, !dbg !838
  %1 = load i32, ptr %low.addr, align 4, !dbg !839
  %2 = load i32, ptr %high.addr, align 4, !dbg !840
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #12, !dbg !841, !srcloc !842
  ret void, !dbg !843
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !844 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !845 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !857, metadata !DIExpression()), !dbg !859
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !858, metadata !DIExpression()), !dbg !860
  %0 = load ptr, ptr %v.addr, align 8, !dbg !861
  %1 = load i64, ptr %size.addr, align 8, !dbg !862
  %conv = trunc i64 %1 to i32, !dbg !862
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !863
  %2 = load ptr, ptr %v.addr, align 8, !dbg !864
  %3 = load i64, ptr %size.addr, align 8, !dbg !864
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !864
  ret void, !dbg !865
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !866 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !868, metadata !DIExpression()), !dbg !870
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !869, metadata !DIExpression()), !dbg !871
  %0 = load i64, ptr %nr.addr, align 8, !dbg !872
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !874
  br i1 %1, label %if.then, label %if.else, !dbg !875

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !876
  %3 = load i64, ptr %nr.addr, align 8, !dbg !876
  %shr = ashr i64 %3, 3, !dbg !876
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !876
  %4 = load i64, ptr %nr.addr, align 8, !dbg !878
  %and = and i64 %4, 7, !dbg !878
  %sh_prom = trunc i64 %and to i32, !dbg !878
  %shl = shl i32 1, %sh_prom, !dbg !878
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #12, !dbg !879, !srcloc !880
  br label %if.end, !dbg !881

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !882
  %6 = load i64, ptr %nr.addr, align 8, !dbg !884
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !885, !srcloc !886
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !887
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !888 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !893, metadata !DIExpression()), !dbg !895
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !894, metadata !DIExpression()), !dbg !896
  ret i1 true, !dbg !897
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !898 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !903, metadata !DIExpression()), !dbg !906
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !904, metadata !DIExpression()), !dbg !907
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !905, metadata !DIExpression()), !dbg !908
  ret void, !dbg !909
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #4 align 16 !dbg !910 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !914, metadata !DIExpression()), !dbg !916
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !917
  call void @llvm.dbg.declare(metadata ptr %val, metadata !915, metadata !DIExpression()), !dbg !918
  %0 = load i32, ptr %msr.addr, align 4, !dbg !919
  %call = call i64 @__rdmsr(i32 noundef %0) #11, !dbg !920
  store i64 %call, ptr %val, align 8, !dbg !921
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #11, !dbg !922
  br i1 %call1, label %if.then, label %if.end, !dbg !924

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !925
  %2 = load i64, ptr %val, align 8, !dbg !926
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #11, !dbg !927
  br label %if.end, !dbg !927

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !928
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !929
  ret i64 %3, !dbg !930
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #6 align 16 !dbg !931 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !933, metadata !DIExpression()), !dbg !936
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #12, !dbg !937
  call void @llvm.dbg.declare(metadata ptr %low, metadata !934, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #12, !dbg !937
  call void @llvm.dbg.declare(metadata ptr %high, metadata !935, metadata !DIExpression()), !dbg !937
  %0 = load i32, ptr %msr.addr, align 4, !dbg !938
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #12, !dbg !939, !srcloc !940
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !939
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !939
  store i64 %asmresult, ptr %low, align 8, !dbg !939
  store i64 %asmresult1, ptr %high, align 8, !dbg !939
  %2 = load i64, ptr %low, align 8, !dbg !941
  %3 = load i64, ptr %high, align 8, !dbg !941
  %shl = shl i64 %3, 32, !dbg !941
  %or = or i64 %2, %shl, !dbg !941
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #12, !dbg !942
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #12, !dbg !942
  ret i64 %or, !dbg !943
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_nosgx", scope: !2, file: !3, line: 110, type: !206, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.feat_ctl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/feat_ctl\22 -D KBUILD_BASENAME=\22feat_ctl\22 -D KBUILD_MODNAME=\22feat_ctl\22 -D __KBUILD_MODNAME=kmod_feat_ctl -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/feat_ctl.ll arch/x86/kernel/cpu/feat_ctl.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/feat_ctl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "daad4e7f82ad1a4fa95169c40719b420")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmx_feature_leafs", file: !3, line: 14, baseType: !7, size: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17, !18}
!13 = !DIEnumerator(name: "MISC_FEATURES", value: 0)
!14 = !DIEnumerator(name: "PRIMARY_CTLS", value: 1)
!15 = !DIEnumerator(name: "SECONDARY_CTLS", value: 2)
!16 = !DIEnumerator(name: "TERTIARY_CTLS_LOW", value: 3)
!17 = !DIEnumerator(name: "TERTIARY_CTLS_HIGH", value: 4)
!18 = !DIEnumerator(name: "NR_VMX_FEATURE_WORDS", value: 5)
!19 = !{!20, !21, !23, !27, !30, !33, !34}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !24, line: 21, baseType: !25)
!24 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !26, line: 27, baseType: !7)
!26 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !24, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !26, line: 31, baseType: !29)
!29 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!36 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!37 = !{!38, !52, !175, !180, !182, !187, !189, !194, !196, !0, !201}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__setup_nosgx", scope: !2, file: !3, line: 110, type: !40, isLocal: true, isDefinition: true, align: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !41, line: 324, size: 192, elements: !42)
!41 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!42 = !{!43, !46, !51}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !40, file: !41, line: 325, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !40, file: !41, line: 326, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!20, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !40, file: !41, line: 327, baseType: !20, size: 32, offset: 128)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__already_done", scope: !54, file: !3, line: 189, type: !125, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "init_ia32_feat_ctl", scope: !3, file: !3, line: 112, type: !55, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !132)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !59, line: 83, size: 2368, elements: !60)
!59 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!60 = !{!61, !74, !75, !76, !80, !81, !82, !83, !84, !85, !86, !94, !98, !102, !103, !104, !105, !106, !107, !108, !109, !110, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !128, !129, !131}
!61 = !DIDerivedType(tag: DW_TAG_member, scope: !58, file: !59, line: 84, baseType: !62, size: 32)
!62 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !59, line: 84, size: 32, elements: !63)
!63 = !{!64, !73}
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !59, line: 90, baseType: !65, size: 32)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !62, file: !59, line: 90, size: 32, elements: !66)
!66 = !{!67, !70, !71, !72}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !65, file: !59, line: 91, baseType: !68, size: 8)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !26, line: 21, baseType: !69)
!69 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !65, file: !59, line: 93, baseType: !68, size: 8, offset: 8)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !65, file: !59, line: 95, baseType: !68, size: 8, offset: 16)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !65, file: !59, line: 96, baseType: !68, size: 8, offset: 24)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !62, file: !59, line: 99, baseType: !25, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !58, file: !59, line: 101, baseType: !68, size: 8, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !58, file: !59, line: 104, baseType: !20, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !58, file: !59, line: 107, baseType: !77, size: 160, offset: 96)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 5)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !58, file: !59, line: 109, baseType: !68, size: 8, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !58, file: !59, line: 110, baseType: !68, size: 8, offset: 264)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !58, file: !59, line: 112, baseType: !68, size: 8, offset: 272)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !58, file: !59, line: 113, baseType: !68, size: 8, offset: 280)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !58, file: !59, line: 115, baseType: !25, size: 32, offset: 288)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !58, file: !59, line: 117, baseType: !20, size: 32, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !58, file: !59, line: 123, baseType: !87, size: 768, offset: 384)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !59, line: 123, size: 768, elements: !88)
!88 = !{!89, !93}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !87, file: !59, line: 124, baseType: !90, size: 768)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 768, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 24)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !87, file: !59, line: 125, baseType: !22, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !58, file: !59, line: 127, baseType: !95, size: 128, offset: 1152)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !58, file: !59, line: 128, baseType: !99, size: 512, offset: 1280)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 512, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !58, file: !59, line: 130, baseType: !7, size: 32, offset: 1792)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !58, file: !59, line: 131, baseType: !20, size: 32, offset: 1824)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !58, file: !59, line: 133, baseType: !20, size: 32, offset: 1856)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !58, file: !59, line: 134, baseType: !20, size: 32, offset: 1888)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !58, file: !59, line: 135, baseType: !20, size: 32, offset: 1920)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !58, file: !59, line: 136, baseType: !20, size: 32, offset: 1952)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !58, file: !59, line: 137, baseType: !22, size: 64, offset: 1984)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !58, file: !59, line: 139, baseType: !27, size: 64, offset: 2048)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !58, file: !59, line: 141, baseType: !111, size: 16, offset: 2112)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !24, line: 19, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !26, line: 24, baseType: !113)
!113 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !58, file: !59, line: 142, baseType: !111, size: 16, offset: 2128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !58, file: !59, line: 143, baseType: !111, size: 16, offset: 2144)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !58, file: !59, line: 144, baseType: !111, size: 16, offset: 2160)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !58, file: !59, line: 146, baseType: !111, size: 16, offset: 2176)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !58, file: !59, line: 148, baseType: !111, size: 16, offset: 2192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !58, file: !59, line: 150, baseType: !111, size: 16, offset: 2208)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !58, file: !59, line: 152, baseType: !111, size: 16, offset: 2224)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !58, file: !59, line: 153, baseType: !111, size: 16, offset: 2240)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !58, file: !59, line: 154, baseType: !111, size: 16, offset: 2256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !58, file: !59, line: 156, baseType: !111, size: 16, offset: 2272)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !58, file: !59, line: 158, baseType: !125, size: 8, offset: 2288)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !126, line: 35, baseType: !127)
!126 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!127 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !58, file: !59, line: 159, baseType: !23, size: 32, offset: 2304)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !58, file: !59, line: 161, baseType: !130, size: 8, offset: 2336)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !24, line: 17, baseType: !68)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !58, file: !59, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !146, !149, !150, !154, !157, !158, !164, !167, !168, !171, !174}
!133 = !DILocalVariable(name: "c", arg: 1, scope: !54, file: !3, line: 112, type: !57)
!134 = !DILocalVariable(name: "enable_sgx_kvm", scope: !54, file: !3, line: 114, type: !125)
!135 = !DILocalVariable(name: "enable_sgx_driver", scope: !54, file: !3, line: 114, type: !125)
!136 = !DILocalVariable(name: "tboot", scope: !54, file: !3, line: 115, type: !125)
!137 = !DILocalVariable(name: "enable_vmx", scope: !54, file: !3, line: 116, type: !125)
!138 = !DILocalVariable(name: "msr", scope: !54, file: !3, line: 117, type: !27)
!139 = !DILabel(scope: !54, name: "update_caps", file: !3, line: 168)
!140 = !DILabel(scope: !54, name: "update_sgx", file: !3, line: 186)
!141 = !DILocalVariable(name: "__ret_do_once", scope: !142, file: !3, line: 189, type: !125)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 189, column: 4)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 188, column: 7)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 187, column: 37)
!145 = distinct !DILexicalBlock(scope: !54, file: !3, line: 187, column: 6)
!146 = !DILocalVariable(name: "__ret_cond", scope: !147, file: !3, line: 189, type: !125)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 189, column: 4)
!148 = distinct !DILexicalBlock(scope: !142, file: !3, line: 189, column: 4)
!149 = !DILocalVariable(name: "__ret_once", scope: !147, file: !3, line: 189, type: !125)
!150 = !DILocalVariable(name: "__ret_do_once", scope: !151, file: !3, line: 199, type: !125)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 199, column: 3)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 198, column: 54)
!153 = distinct !DILexicalBlock(scope: !54, file: !3, line: 198, column: 6)
!154 = !DILocalVariable(name: "__ret_cond", scope: !155, file: !3, line: 199, type: !125)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 199, column: 3)
!156 = distinct !DILexicalBlock(scope: !151, file: !3, line: 199, column: 3)
!157 = !DILocalVariable(name: "__ret_once", scope: !155, file: !3, line: 199, type: !125)
!158 = !DILocalVariable(name: "__ret_do_once", scope: !159, file: !3, line: 205, type: !125)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 205, column: 4)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 204, column: 24)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 204, column: 7)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 203, column: 61)
!163 = distinct !DILexicalBlock(scope: !54, file: !3, line: 203, column: 6)
!164 = !DILocalVariable(name: "__ret_cond", scope: !165, file: !3, line: 205, type: !125)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 205, column: 4)
!166 = distinct !DILexicalBlock(scope: !159, file: !3, line: 205, column: 4)
!167 = !DILocalVariable(name: "__ret_once", scope: !165, file: !3, line: 205, type: !125)
!168 = !DILocalVariable(name: "__ret_do_once", scope: !169, file: !3, line: 208, type: !125)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 208, column: 4)
!170 = distinct !DILexicalBlock(scope: !161, file: !3, line: 207, column: 10)
!171 = !DILocalVariable(name: "__ret_cond", scope: !172, file: !3, line: 208, type: !125)
!172 = distinct !DILexicalBlock(scope: !173, file: !3, line: 208, column: 4)
!173 = distinct !DILexicalBlock(scope: !169, file: !3, line: 208, column: 4)
!174 = !DILocalVariable(name: "__ret_once", scope: !172, file: !3, line: 208, type: !125)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 272, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 34)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "__already_done", scope: !54, file: !3, line: 199, type: !125, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 480, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 60)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "__already_done", scope: !54, file: !3, line: 205, type: !125, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 205, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 440, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 55)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "__already_done", scope: !54, file: !3, line: 208, type: !125, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 600, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 75)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 248, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 31)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 6)
!209 = !{i32 7, !"Dwarf Version", i32 5}
!210 = !{i32 2, !"Debug Info Version", i32 3}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 8, !"cf-protection-branch", i32 1}
!213 = !{i32 4, !"function_return_thunk_extern", i32 1}
!214 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!215 = !{i32 1, !"Code Model", i32 2}
!216 = !{i32 1, !"override-stack-alignment", i32 8}
!217 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!218 = distinct !DISubprogram(name: "nosgx", scope: !3, file: !3, line: 103, type: !48, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!219 = !{!220}
!220 = !DILocalVariable(name: "str", arg: 1, scope: !218, file: !3, line: 103, type: !50)
!221 = !DILocation(line: 103, column: 31, scope: !218)
!222 = !DILocation(line: 105, column: 2, scope: !218)
!223 = !DILocation(line: 107, column: 2, scope: !218)
!224 = !DILocation(line: 112, column: 45, scope: !54)
!225 = !DILocation(line: 114, column: 2, scope: !54)
!226 = !DILocation(line: 114, column: 7, scope: !54)
!227 = !DILocation(line: 114, column: 31, scope: !54)
!228 = !DILocation(line: 115, column: 2, scope: !54)
!229 = !DILocation(line: 115, column: 7, scope: !54)
!230 = !DILocation(line: 116, column: 2, scope: !54)
!231 = !DILocation(line: 116, column: 7, scope: !54)
!232 = !DILocation(line: 117, column: 2, scope: !54)
!233 = !DILocation(line: 117, column: 6, scope: !54)
!234 = !DILocation(line: 119, column: 6, scope: !235)
!235 = distinct !DILexicalBlock(scope: !54, file: !3, line: 119, column: 6)
!236 = !DILocation(line: 119, column: 6, scope: !54)
!237 = !DILocation(line: 120, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !3, line: 119, column: 44)
!239 = !DILocation(line: 120, column: 3, scope: !238)
!240 = !DILocation(line: 121, column: 17, scope: !238)
!241 = !DILocation(line: 121, column: 3, scope: !238)
!242 = !DILocation(line: 122, column: 3, scope: !238)
!243 = !DILocation(line: 125, column: 43, scope: !54)
!244 = !DILocation(line: 125, column: 15, scope: !54)
!245 = !DILocation(line: 0, scope: !54)
!246 = !DILocation(line: 125, column: 13, scope: !54)
!247 = !DILocation(line: 128, column: 34, scope: !248)
!248 = distinct !DILexicalBlock(scope: !54, file: !3, line: 128, column: 6)
!249 = !DILocation(line: 128, column: 6, scope: !248)
!250 = !DILocation(line: 128, column: 6, scope: !54)
!251 = !DILocation(line: 135, column: 23, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 128, column: 65)
!253 = !DILocation(line: 135, column: 21, scope: !252)
!254 = !DILocation(line: 136, column: 20, scope: !252)
!255 = !{i8 0, i8 2}
!256 = !{}
!257 = !DILocation(line: 136, column: 31, scope: !252)
!258 = !DILocation(line: 0, scope: !252)
!259 = !DILocation(line: 136, column: 18, scope: !252)
!260 = !DILocation(line: 137, column: 2, scope: !252)
!261 = !DILocation(line: 139, column: 6, scope: !262)
!262 = distinct !DILexicalBlock(scope: !54, file: !3, line: 139, column: 6)
!263 = !DILocation(line: 139, column: 10, scope: !262)
!264 = !DILocation(line: 139, column: 6, scope: !54)
!265 = !DILocation(line: 140, column: 3, scope: !262)
!266 = !DILocation(line: 146, column: 6, scope: !54)
!267 = !DILocation(line: 153, column: 6, scope: !268)
!268 = distinct !DILexicalBlock(scope: !54, file: !3, line: 153, column: 6)
!269 = !DILocation(line: 153, column: 6, scope: !54)
!270 = !DILocation(line: 154, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !3, line: 153, column: 18)
!272 = !DILocation(line: 156, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !271, file: !3, line: 156, column: 7)
!274 = !DILocation(line: 156, column: 7, scope: !271)
!275 = !DILocation(line: 157, column: 8, scope: !273)
!276 = !DILocation(line: 157, column: 4, scope: !273)
!277 = !DILocation(line: 158, column: 2, scope: !271)
!278 = !DILocation(line: 160, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !54, file: !3, line: 160, column: 6)
!280 = !DILocation(line: 160, column: 21, scope: !279)
!281 = !DILocation(line: 160, column: 24, scope: !279)
!282 = !DILocation(line: 160, column: 6, scope: !54)
!283 = !DILocation(line: 161, column: 7, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !3, line: 160, column: 43)
!285 = !DILocation(line: 162, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !284, file: !3, line: 162, column: 7)
!287 = !DILocation(line: 162, column: 7, scope: !284)
!288 = !DILocation(line: 163, column: 8, scope: !286)
!289 = !DILocation(line: 163, column: 4, scope: !286)
!290 = !DILocation(line: 164, column: 2, scope: !284)
!291 = !DILocation(line: 166, column: 28, scope: !54)
!292 = !DILocation(line: 166, column: 2, scope: !54)
!293 = !DILocation(line: 168, column: 1, scope: !54)
!294 = !DILocation(line: 169, column: 2, scope: !54)
!295 = !DILocation(line: 171, column: 6, scope: !54)
!296 = !DILocation(line: 171, column: 7, scope: !297)
!297 = distinct !DILexicalBlock(scope: !54, file: !3, line: 171, column: 6)
!298 = !DILocation(line: 172, column: 3, scope: !297)
!299 = !DILocation(line: 174, column: 8, scope: !300)
!300 = distinct !DILexicalBlock(scope: !54, file: !3, line: 174, column: 7)
!301 = !DILocation(line: 174, column: 14, scope: !300)
!302 = !DILocation(line: 174, column: 19, scope: !300)
!303 = !DILocation(line: 174, column: 23, scope: !300)
!304 = !DILocation(line: 174, column: 59, scope: !300)
!305 = !DILocation(line: 175, column: 8, scope: !300)
!306 = !DILocation(line: 175, column: 14, scope: !300)
!307 = !DILocation(line: 175, column: 19, scope: !300)
!308 = !DILocation(line: 175, column: 23, scope: !300)
!309 = !DILocation(line: 174, column: 7, scope: !54)
!310 = !DILocation(line: 179, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !300, file: !3, line: 175, column: 61)
!312 = !DILocation(line: 179, column: 3, scope: !311)
!313 = !DILocation(line: 180, column: 2, scope: !311)
!314 = !DILocation(line: 182, column: 25, scope: !315)
!315 = distinct !DILexicalBlock(scope: !300, file: !3, line: 180, column: 9)
!316 = !DILocation(line: 182, column: 3, scope: !315)
!317 = !DILocation(line: 175, column: 58, scope: !300)
!318 = !DILocation(line: 186, column: 1, scope: !54)
!319 = !DILocation(line: 187, column: 8, scope: !145)
!320 = !DILocation(line: 187, column: 12, scope: !145)
!321 = !DILocation(line: 187, column: 6, scope: !54)
!322 = !DILocation(line: 188, column: 7, scope: !143)
!323 = !DILocation(line: 188, column: 22, scope: !143)
!324 = !DILocation(line: 188, column: 25, scope: !143)
!325 = !DILocation(line: 188, column: 7, scope: !144)
!326 = !DILocation(line: 189, column: 4, scope: !142)
!327 = !DILocation(line: 189, column: 4, scope: !147)
!328 = !DILocation(line: 189, column: 4, scope: !329)
!329 = distinct !DILexicalBlock(scope: !147, file: !3, line: 189, column: 4)
!330 = !DILocation(line: 0, scope: !329)
!331 = !DILocation(line: 189, column: 4, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !3, line: 189, column: 4)
!333 = !DILocation(line: 189, column: 4, scope: !148)
!334 = !DILocation(line: 189, column: 4, scope: !335)
!335 = distinct !DILexicalBlock(scope: !148, file: !3, line: 189, column: 4)
!336 = !DILocation(line: 189, column: 4, scope: !337)
!337 = distinct !DILexicalBlock(scope: !335, file: !3, line: 189, column: 4)
!338 = !DILocation(line: 189, column: 4, scope: !143)
!339 = !DILocation(line: 190, column: 17, scope: !144)
!340 = !DILocation(line: 190, column: 3, scope: !144)
!341 = !DILocation(line: 191, column: 3, scope: !144)
!342 = !DILocation(line: 198, column: 35, scope: !153)
!343 = !DILocation(line: 198, column: 7, scope: !153)
!344 = !DILocation(line: 198, column: 38, scope: !153)
!345 = !DILocation(line: 198, column: 6, scope: !54)
!346 = !DILocation(line: 199, column: 3, scope: !151)
!347 = !DILocation(line: 199, column: 3, scope: !155)
!348 = !DILocation(line: 199, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !155, file: !3, line: 199, column: 3)
!350 = !DILocation(line: 0, scope: !349)
!351 = !DILocation(line: 199, column: 3, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !3, line: 199, column: 3)
!353 = !DILocation(line: 199, column: 3, scope: !156)
!354 = !DILocation(line: 199, column: 3, scope: !355)
!355 = distinct !DILexicalBlock(scope: !156, file: !3, line: 199, column: 3)
!356 = !DILocation(line: 199, column: 3, scope: !357)
!357 = distinct !DILexicalBlock(scope: !355, file: !3, line: 199, column: 3)
!358 = !DILocation(line: 199, column: 3, scope: !152)
!359 = !DILocation(line: 200, column: 18, scope: !152)
!360 = !DILocation(line: 201, column: 2, scope: !152)
!361 = !DILocation(line: 203, column: 8, scope: !163)
!362 = !DILocation(line: 203, column: 12, scope: !163)
!363 = !DILocation(line: 203, column: 39, scope: !163)
!364 = !DILocation(line: 203, column: 42, scope: !163)
!365 = !DILocation(line: 203, column: 6, scope: !54)
!366 = !DILocation(line: 204, column: 8, scope: !161)
!367 = !DILocation(line: 204, column: 7, scope: !162)
!368 = !DILocation(line: 205, column: 4, scope: !159)
!369 = !DILocation(line: 205, column: 4, scope: !165)
!370 = !DILocation(line: 205, column: 4, scope: !371)
!371 = distinct !DILexicalBlock(scope: !165, file: !3, line: 205, column: 4)
!372 = !DILocation(line: 0, scope: !371)
!373 = !DILocation(line: 205, column: 4, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !3, line: 205, column: 4)
!375 = !DILocation(line: 205, column: 4, scope: !166)
!376 = !DILocation(line: 205, column: 4, scope: !377)
!377 = distinct !DILexicalBlock(scope: !166, file: !3, line: 205, column: 4)
!378 = !DILocation(line: 205, column: 4, scope: !379)
!379 = distinct !DILexicalBlock(scope: !377, file: !3, line: 205, column: 4)
!380 = !DILocation(line: 205, column: 4, scope: !160)
!381 = !DILocation(line: 206, column: 18, scope: !160)
!382 = !DILocation(line: 206, column: 4, scope: !160)
!383 = !DILocation(line: 207, column: 3, scope: !160)
!384 = !DILocation(line: 208, column: 4, scope: !169)
!385 = !DILocation(line: 208, column: 4, scope: !172)
!386 = !DILocation(line: 208, column: 4, scope: !387)
!387 = distinct !DILexicalBlock(scope: !172, file: !3, line: 208, column: 4)
!388 = !DILocation(line: 0, scope: !387)
!389 = !DILocation(line: 208, column: 4, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !3, line: 208, column: 4)
!391 = !DILocation(line: 208, column: 4, scope: !173)
!392 = !DILocation(line: 208, column: 4, scope: !393)
!393 = distinct !DILexicalBlock(scope: !173, file: !3, line: 208, column: 4)
!394 = !DILocation(line: 208, column: 4, scope: !395)
!395 = distinct !DILexicalBlock(scope: !393, file: !3, line: 208, column: 4)
!396 = !DILocation(line: 208, column: 4, scope: !170)
!397 = !DILocation(line: 209, column: 18, scope: !170)
!398 = !DILocation(line: 209, column: 4, scope: !170)
!399 = !DILocation(line: 211, column: 2, scope: !162)
!400 = !DILocation(line: 212, column: 1, scope: !54)
!401 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !402, file: !402, line: 281, type: !403, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !406)
!402 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!403 = !DISubroutineType(types: !404)
!404 = !{!20, !7, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!406 = !{!407, !408, !409}
!407 = !DILocalVariable(name: "msr", arg: 1, scope: !401, file: !402, line: 281, type: !7)
!408 = !DILocalVariable(name: "p", arg: 2, scope: !401, file: !402, line: 281, type: !405)
!409 = !DILocalVariable(name: "err", scope: !401, file: !402, line: 283, type: !20)
!410 = !DILocation(line: 281, column: 44, scope: !401)
!411 = !DILocation(line: 281, column: 69, scope: !401)
!412 = !DILocation(line: 283, column: 2, scope: !401)
!413 = !DILocation(line: 283, column: 6, scope: !401)
!414 = !DILocation(line: 285, column: 28, scope: !401)
!415 = !DILocation(line: 285, column: 7, scope: !401)
!416 = !DILocation(line: 285, column: 3, scope: !401)
!417 = !DILocation(line: 285, column: 5, scope: !401)
!418 = !DILocation(line: 286, column: 9, scope: !401)
!419 = !DILocation(line: 287, column: 1, scope: !401)
!420 = !DILocation(line: 286, column: 2, scope: !401)
!421 = !DISubprogram(name: "clear_cpu_cap", scope: !422, file: !422, line: 151, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!422 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!423 = !DISubroutineType(types: !424)
!424 = !{null, !57, !7}
!425 = distinct !DISubprogram(name: "arch_test_bit", scope: !426, file: !426, line: 237, type: !427, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!426 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!427 = !DISubroutineType(types: !428)
!428 = !{!125, !22, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!432 = !{!433, !434}
!433 = !DILocalVariable(name: "nr", arg: 1, scope: !425, file: !426, line: 237, type: !22)
!434 = !DILocalVariable(name: "addr", arg: 2, scope: !425, file: !426, line: 237, type: !429)
!435 = !DILocation(line: 237, column: 29, scope: !425)
!436 = !DILocation(line: 237, column: 63, scope: !425)
!437 = !DILocation(line: 239, column: 30, scope: !425)
!438 = !DILocation(line: 239, column: 9, scope: !425)
!439 = !DILocation(line: 239, column: 54, scope: !425)
!440 = !DILocation(line: 239, column: 58, scope: !425)
!441 = !DILocation(line: 239, column: 36, scope: !425)
!442 = !DILocation(line: 240, column: 26, scope: !425)
!443 = !DILocation(line: 240, column: 30, scope: !425)
!444 = !DILocation(line: 240, column: 8, scope: !425)
!445 = !DILocation(line: 239, column: 2, scope: !425)
!446 = distinct !DISubprogram(name: "wrmsrl", scope: !402, file: !402, line: 260, type: !447, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !7, !27}
!449 = !{!450, !451}
!450 = !DILocalVariable(name: "msr", arg: 1, scope: !446, file: !402, line: 260, type: !7)
!451 = !DILocalVariable(name: "val", arg: 2, scope: !446, file: !402, line: 260, type: !27)
!452 = !DILocation(line: 260, column: 40, scope: !446)
!453 = !DILocation(line: 260, column: 49, scope: !446)
!454 = !DILocation(line: 262, column: 19, scope: !446)
!455 = !DILocation(line: 262, column: 30, scope: !446)
!456 = !DILocation(line: 262, column: 34, scope: !446)
!457 = !DILocation(line: 262, column: 24, scope: !446)
!458 = !DILocation(line: 262, column: 58, scope: !446)
!459 = !DILocation(line: 262, column: 62, scope: !446)
!460 = !DILocation(line: 262, column: 52, scope: !446)
!461 = !DILocation(line: 262, column: 2, scope: !446)
!462 = !DILocation(line: 263, column: 1, scope: !446)
!463 = distinct !DISubprogram(name: "set_bit", scope: !464, file: !464, line: 26, type: !465, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!464 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!465 = !DISubroutineType(types: !466)
!466 = !{null, !36, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!468 = !{!469, !470}
!469 = !DILocalVariable(name: "nr", arg: 1, scope: !463, file: !464, line: 26, type: !36)
!470 = !DILocalVariable(name: "addr", arg: 2, scope: !463, file: !464, line: 26, type: !467)
!471 = !DILocation(line: 26, column: 42, scope: !463)
!472 = !DILocation(line: 26, column: 70, scope: !463)
!473 = !DILocation(line: 28, column: 26, scope: !463)
!474 = !DILocation(line: 28, column: 33, scope: !463)
!475 = !DILocation(line: 28, column: 31, scope: !463)
!476 = !DILocation(line: 28, column: 2, scope: !463)
!477 = !DILocation(line: 29, column: 15, scope: !463)
!478 = !DILocation(line: 29, column: 19, scope: !463)
!479 = !DILocation(line: 29, column: 2, scope: !463)
!480 = !DILocation(line: 30, column: 1, scope: !463)
!481 = distinct !DISubprogram(name: "init_vmx_capabilities", scope: !3, file: !3, line: 25, type: !55, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !493, !495, !496, !498, !499, !501, !503, !504, !506, !507, !509, !512, !514}
!483 = !DILocalVariable(name: "c", arg: 1, scope: !481, file: !3, line: 25, type: !57)
!484 = !DILocalVariable(name: "supported", scope: !481, file: !3, line: 27, type: !23)
!485 = !DILocalVariable(name: "funcs", scope: !481, file: !3, line: 27, type: !23)
!486 = !DILocalVariable(name: "ept", scope: !481, file: !3, line: 27, type: !23)
!487 = !DILocalVariable(name: "vpid", scope: !481, file: !3, line: 27, type: !23)
!488 = !DILocalVariable(name: "ign", scope: !481, file: !3, line: 27, type: !23)
!489 = !DILocalVariable(name: "low", scope: !481, file: !3, line: 27, type: !23)
!490 = !DILocalVariable(name: "high", scope: !481, file: !3, line: 27, type: !23)
!491 = !DILocalVariable(name: "__val", scope: !492, file: !3, line: 41, type: !27)
!492 = distinct !DILexicalBlock(scope: !481, file: !3, line: 41, column: 2)
!493 = !DILocalVariable(name: "__err", scope: !494, file: !3, line: 44, type: !20)
!494 = distinct !DILexicalBlock(scope: !481, file: !3, line: 44, column: 2)
!495 = !DILocalVariable(name: "__val", scope: !494, file: !3, line: 44, type: !27)
!496 = !DILocalVariable(name: "__err", scope: !497, file: !3, line: 48, type: !20)
!497 = distinct !DILexicalBlock(scope: !481, file: !3, line: 48, column: 2)
!498 = !DILocalVariable(name: "__val", scope: !497, file: !3, line: 48, type: !27)
!499 = !DILocalVariable(name: "__val", scope: !500, file: !3, line: 52, type: !27)
!500 = distinct !DILexicalBlock(scope: !481, file: !3, line: 52, column: 2)
!501 = !DILocalVariable(name: "__err", scope: !502, file: !3, line: 53, type: !20)
!502 = distinct !DILexicalBlock(scope: !481, file: !3, line: 53, column: 2)
!503 = !DILocalVariable(name: "__val", scope: !502, file: !3, line: 53, type: !27)
!504 = !DILocalVariable(name: "__err", scope: !505, file: !3, line: 59, type: !20)
!505 = distinct !DILexicalBlock(scope: !481, file: !3, line: 59, column: 2)
!506 = !DILocalVariable(name: "__val", scope: !505, file: !3, line: 59, type: !27)
!507 = !DILocalVariable(name: "__ret_warn_on", scope: !508, file: !3, line: 62, type: !20)
!508 = distinct !DILexicalBlock(scope: !481, file: !3, line: 62, column: 2)
!509 = !DILocalVariable(name: "__flags", scope: !510, file: !3, line: 62, type: !20)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 62, column: 2)
!511 = distinct !DILexicalBlock(scope: !508, file: !3, line: 62, column: 2)
!512 = !DILocalVariable(name: "__ret_warn_on", scope: !513, file: !3, line: 63, type: !20)
!513 = distinct !DILexicalBlock(scope: !481, file: !3, line: 63, column: 2)
!514 = !DILocalVariable(name: "__flags", scope: !515, file: !3, line: 63, type: !20)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 63, column: 2)
!516 = distinct !DILexicalBlock(scope: !513, file: !3, line: 63, column: 2)
!517 = !DILocation(line: 25, column: 55, scope: !481)
!518 = !DILocation(line: 27, column: 2, scope: !481)
!519 = !DILocation(line: 27, column: 6, scope: !481)
!520 = !DILocation(line: 27, column: 17, scope: !481)
!521 = !DILocation(line: 27, column: 24, scope: !481)
!522 = !DILocation(line: 27, column: 29, scope: !481)
!523 = !DILocation(line: 27, column: 35, scope: !481)
!524 = !DILocation(line: 27, column: 40, scope: !481)
!525 = !DILocation(line: 27, column: 45, scope: !481)
!526 = !DILocation(line: 29, column: 2, scope: !481)
!527 = !DILocation(line: 29, column: 2, scope: !528)
!528 = distinct !DILexicalBlock(scope: !481, file: !3, line: 29, column: 2)
!529 = !DILocation(line: 41, column: 2, scope: !481)
!530 = !DILocation(line: 41, column: 2, scope: !492)
!531 = !DILocation(line: 42, column: 36, scope: !481)
!532 = !DILocation(line: 42, column: 2, scope: !481)
!533 = !DILocation(line: 42, column: 5, scope: !481)
!534 = !DILocation(line: 42, column: 34, scope: !481)
!535 = !DILocation(line: 44, column: 2, scope: !494)
!536 = !DILocation(line: 44, column: 2, scope: !481)
!537 = !DILocation(line: 45, column: 38, scope: !481)
!538 = !DILocation(line: 45, column: 2, scope: !481)
!539 = !DILocation(line: 45, column: 5, scope: !481)
!540 = !DILocation(line: 45, column: 36, scope: !481)
!541 = !DILocation(line: 48, column: 2, scope: !497)
!542 = !DILocation(line: 48, column: 2, scope: !481)
!543 = !DILocation(line: 49, column: 41, scope: !481)
!544 = !DILocation(line: 49, column: 2, scope: !481)
!545 = !DILocation(line: 49, column: 5, scope: !481)
!546 = !DILocation(line: 49, column: 39, scope: !481)
!547 = !DILocation(line: 50, column: 42, scope: !481)
!548 = !DILocation(line: 50, column: 2, scope: !481)
!549 = !DILocation(line: 50, column: 5, scope: !481)
!550 = !DILocation(line: 50, column: 40, scope: !481)
!551 = !DILocation(line: 52, column: 2, scope: !481)
!552 = !DILocation(line: 52, column: 2, scope: !500)
!553 = !DILocation(line: 53, column: 2, scope: !502)
!554 = !DILocation(line: 53, column: 2, scope: !481)
!555 = !DILocation(line: 59, column: 2, scope: !505)
!556 = !DILocation(line: 59, column: 2, scope: !481)
!557 = !DILocation(line: 62, column: 2, scope: !508)
!558 = !DILocation(line: 62, column: 2, scope: !511)
!559 = !DILocation(line: 62, column: 2, scope: !510)
!560 = !DILocation(line: 62, column: 2, scope: !561)
!561 = distinct !DILexicalBlock(scope: !510, file: !3, line: 62, column: 2)
!562 = !DILocation(line: 62, column: 2, scope: !563)
!563 = distinct !DILexicalBlock(scope: !510, file: !3, line: 62, column: 2)
!564 = !{i64 2152619177, i64 2152619206, i64 2152619252, i64 2152619310, i64 2152619364, i64 2152619418, i64 2152619473, i64 2152619504, i64 2152619812, i64 2152619818, i64 2152619865, i64 2152619888, i64 2152619914}
!565 = !DILocation(line: 62, column: 2, scope: !566)
!566 = distinct !DILexicalBlock(scope: !510, file: !3, line: 62, column: 2)
!567 = !DILocation(line: 62, column: 2, scope: !481)
!568 = !DILocation(line: 63, column: 2, scope: !513)
!569 = !DILocation(line: 63, column: 2, scope: !516)
!570 = !DILocation(line: 63, column: 2, scope: !515)
!571 = !DILocation(line: 63, column: 2, scope: !572)
!572 = distinct !DILexicalBlock(scope: !515, file: !3, line: 63, column: 2)
!573 = !DILocation(line: 63, column: 2, scope: !574)
!574 = distinct !DILexicalBlock(scope: !515, file: !3, line: 63, column: 2)
!575 = !{i64 2152620708, i64 2152620737, i64 2152620783, i64 2152620841, i64 2152620895, i64 2152620949, i64 2152621004, i64 2152621035, i64 2152621343, i64 2152621349, i64 2152621396, i64 2152621419, i64 2152621445}
!576 = !DILocation(line: 63, column: 2, scope: !577)
!577 = distinct !DILexicalBlock(scope: !515, file: !3, line: 63, column: 2)
!578 = !DILocation(line: 63, column: 2, scope: !481)
!579 = !DILocation(line: 64, column: 38, scope: !481)
!580 = !DILocation(line: 64, column: 48, scope: !481)
!581 = !DILocation(line: 65, column: 11, scope: !481)
!582 = !DILocation(line: 65, column: 16, scope: !481)
!583 = !DILocation(line: 65, column: 23, scope: !481)
!584 = !DILocation(line: 64, column: 58, scope: !481)
!585 = !DILocation(line: 66, column: 11, scope: !481)
!586 = !DILocation(line: 66, column: 17, scope: !481)
!587 = !DILocation(line: 66, column: 24, scope: !481)
!588 = !DILocation(line: 65, column: 30, scope: !481)
!589 = !DILocation(line: 64, column: 2, scope: !481)
!590 = !DILocation(line: 64, column: 5, scope: !481)
!591 = !DILocation(line: 64, column: 35, scope: !481)
!592 = !DILocation(line: 69, column: 6, scope: !593)
!593 = distinct !DILexicalBlock(scope: !481, file: !3, line: 69, column: 6)
!594 = !DILocation(line: 69, column: 10, scope: !593)
!595 = !DILocation(line: 69, column: 6, scope: !481)
!596 = !DILocation(line: 70, column: 3, scope: !593)
!597 = !DILocation(line: 70, column: 6, scope: !593)
!598 = !DILocation(line: 70, column: 36, scope: !593)
!599 = !DILocation(line: 71, column: 6, scope: !600)
!600 = distinct !DILexicalBlock(scope: !481, file: !3, line: 71, column: 6)
!601 = !DILocation(line: 71, column: 10, scope: !600)
!602 = !DILocation(line: 71, column: 6, scope: !481)
!603 = !DILocation(line: 72, column: 3, scope: !600)
!604 = !DILocation(line: 72, column: 6, scope: !600)
!605 = !DILocation(line: 72, column: 36, scope: !600)
!606 = !DILocation(line: 73, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !481, file: !3, line: 73, column: 6)
!608 = !DILocation(line: 73, column: 10, scope: !607)
!609 = !DILocation(line: 73, column: 6, scope: !481)
!610 = !DILocation(line: 74, column: 3, scope: !607)
!611 = !DILocation(line: 74, column: 6, scope: !607)
!612 = !DILocation(line: 74, column: 36, scope: !607)
!613 = !DILocation(line: 77, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !481, file: !3, line: 77, column: 6)
!615 = !DILocation(line: 77, column: 10, scope: !614)
!616 = !DILocation(line: 77, column: 39, scope: !614)
!617 = !DILocation(line: 77, column: 61, scope: !614)
!618 = !DILocation(line: 78, column: 7, scope: !614)
!619 = !DILocation(line: 78, column: 10, scope: !614)
!620 = !DILocation(line: 78, column: 41, scope: !614)
!621 = !DILocation(line: 77, column: 6, scope: !481)
!622 = !DILocation(line: 79, column: 3, scope: !614)
!623 = !DILocation(line: 79, column: 6, scope: !614)
!624 = !DILocation(line: 79, column: 36, scope: !614)
!625 = !DILocation(line: 81, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !481, file: !3, line: 81, column: 6)
!627 = !DILocation(line: 81, column: 10, scope: !626)
!628 = !DILocation(line: 81, column: 39, scope: !626)
!629 = !DILocation(line: 81, column: 61, scope: !626)
!630 = !DILocation(line: 82, column: 7, scope: !626)
!631 = !DILocation(line: 82, column: 10, scope: !626)
!632 = !DILocation(line: 82, column: 41, scope: !626)
!633 = !DILocation(line: 82, column: 70, scope: !626)
!634 = !DILocation(line: 83, column: 7, scope: !626)
!635 = !DILocation(line: 83, column: 10, scope: !626)
!636 = !DILocation(line: 83, column: 41, scope: !626)
!637 = !DILocation(line: 83, column: 70, scope: !626)
!638 = !DILocation(line: 84, column: 7, scope: !626)
!639 = !DILocation(line: 84, column: 10, scope: !626)
!640 = !DILocation(line: 84, column: 40, scope: !626)
!641 = !DILocation(line: 81, column: 6, scope: !481)
!642 = !DILocation(line: 85, column: 3, scope: !626)
!643 = !DILocation(line: 85, column: 6, scope: !626)
!644 = !DILocation(line: 85, column: 36, scope: !626)
!645 = !DILocation(line: 88, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !481, file: !3, line: 88, column: 6)
!647 = !DILocation(line: 88, column: 9, scope: !646)
!648 = !DILocation(line: 88, column: 38, scope: !646)
!649 = !DILocation(line: 88, column: 6, scope: !481)
!650 = !DILocation(line: 89, column: 3, scope: !646)
!651 = !DILocation(line: 90, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !481, file: !3, line: 90, column: 6)
!653 = !DILocation(line: 90, column: 9, scope: !652)
!654 = !DILocation(line: 90, column: 39, scope: !652)
!655 = !DILocation(line: 90, column: 6, scope: !481)
!656 = !DILocation(line: 91, column: 3, scope: !652)
!657 = !DILocation(line: 92, column: 6, scope: !658)
!658 = distinct !DILexicalBlock(scope: !481, file: !3, line: 92, column: 6)
!659 = !DILocation(line: 92, column: 9, scope: !658)
!660 = !DILocation(line: 92, column: 39, scope: !658)
!661 = !DILocation(line: 92, column: 6, scope: !481)
!662 = !DILocation(line: 93, column: 3, scope: !658)
!663 = !DILocation(line: 94, column: 6, scope: !664)
!664 = distinct !DILexicalBlock(scope: !481, file: !3, line: 94, column: 6)
!665 = !DILocation(line: 94, column: 9, scope: !664)
!666 = !DILocation(line: 94, column: 40, scope: !664)
!667 = !DILocation(line: 94, column: 6, scope: !481)
!668 = !DILocation(line: 95, column: 3, scope: !664)
!669 = !DILocation(line: 96, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !481, file: !3, line: 96, column: 6)
!671 = !DILocation(line: 96, column: 9, scope: !670)
!672 = !DILocation(line: 96, column: 39, scope: !670)
!673 = !DILocation(line: 96, column: 6, scope: !481)
!674 = !DILocation(line: 97, column: 3, scope: !670)
!675 = !DILocation(line: 98, column: 6, scope: !676)
!676 = distinct !DILexicalBlock(scope: !481, file: !3, line: 98, column: 6)
!677 = !DILocation(line: 98, column: 9, scope: !676)
!678 = !DILocation(line: 98, column: 39, scope: !676)
!679 = !DILocation(line: 98, column: 6, scope: !481)
!680 = !DILocation(line: 99, column: 3, scope: !676)
!681 = !DILocation(line: 100, column: 1, scope: !481)
!682 = !DISubprogram(name: "_printk", scope: !683, file: !683, line: 153, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!683 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!684 = !DISubroutineType(types: !685)
!685 = !{!20, !44, null}
!686 = !DISubprogram(name: "setup_clear_cpu_cap", scope: !422, file: !422, line: 150, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !7}
!689 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !402, file: !402, line: 126, type: !690, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!690 = !DISubroutineType(types: !691)
!691 = !{!29, !7, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!693 = !{!694, !695, !696, !697}
!694 = !DILocalVariable(name: "msr", arg: 1, scope: !689, file: !402, line: 126, type: !7)
!695 = !DILocalVariable(name: "err", arg: 2, scope: !689, file: !402, line: 127, type: !692)
!696 = !DILocalVariable(name: "low", scope: !689, file: !402, line: 129, type: !22)
!697 = !DILocalVariable(name: "high", scope: !689, file: !402, line: 129, type: !22)
!698 = !DILocation(line: 126, column: 68, scope: !689)
!699 = !DILocation(line: 127, column: 18, scope: !689)
!700 = !DILocation(line: 129, column: 2, scope: !689)
!701 = !DILocation(line: 134, column: 23, scope: !689)
!702 = !DILocation(line: 135, column: 15, scope: !689)
!703 = !DILocation(line: 131, column: 2, scope: !689)
!704 = !{i64 1880733, i64 1880774, i64 1880778, i64 2149558477, i64 2149558502, i64 2149558537, i64 2149558754, i64 2149558807, i64 2149558838, i64 2149558869, i64 2149558947, i64 2149558981, i64 2149559019, i64 2149559062, i64 2149559085, i64 2149559123, i64 2149559145, i64 2149559176, i64 2149559261, i64 2149559295, i64 2149559333, i64 2149559376, i64 2149559399, i64 2149559437, i64 2149559459, i64 2149559493, i64 2149559555, i64 2149559578, i64 2149558603, i64 2149559652, i64 2149558714}
!705 = !DILocation(line: 136, column: 6, scope: !706)
!706 = distinct !DILexicalBlock(scope: !689, file: !402, line: 136, column: 6)
!707 = !DILocation(line: 136, column: 6, scope: !689)
!708 = !DILocation(line: 137, column: 21, scope: !706)
!709 = !DILocation(line: 137, column: 26, scope: !706)
!710 = !DILocation(line: 137, column: 56, scope: !706)
!711 = !DILocation(line: 137, column: 55, scope: !706)
!712 = !DILocation(line: 137, column: 3, scope: !706)
!713 = !DILocation(line: 138, column: 9, scope: !689)
!714 = !DILocation(line: 139, column: 1, scope: !689)
!715 = !DILocation(line: 138, column: 2, scope: !689)
!716 = distinct !DISubprogram(name: "static_key_false", scope: !717, file: !717, line: 205, type: !718, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!717 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!718 = !DISubroutineType(types: !719)
!719 = !{!125, !720}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !717, line: 85, size: 128, elements: !722)
!722 = !{!723, !728}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !721, file: !717, line: 86, baseType: !724, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !126, line: 174, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 172, size: 32, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !725, file: !126, line: 173, baseType: !20, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !717, line: 101, baseType: !729, size: 64, offset: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !717, line: 101, size: 64, elements: !730)
!730 = !{!731, !732, !741}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !729, file: !717, line: 102, baseType: !22, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !729, file: !717, line: 103, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !717, line: 117, size: 128, elements: !735)
!735 = !{!736, !739, !740}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !734, file: !717, line: 118, baseType: !737, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !24, line: 20, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !26, line: 26, baseType: !20)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !734, file: !717, line: 119, baseType: !737, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !734, file: !717, line: 120, baseType: !36, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !729, file: !717, line: 104, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !717, line: 104, flags: DIFlagFwdDecl)
!744 = !{!745}
!745 = !DILocalVariable(name: "key", arg: 1, scope: !716, file: !717, line: 205, type: !720)
!746 = !DILocation(line: 205, column: 65, scope: !716)
!747 = !DILocation(line: 207, column: 28, scope: !716)
!748 = !DILocation(line: 207, column: 9, scope: !716)
!749 = !DILocation(line: 207, column: 2, scope: !716)
!750 = !DISubprogram(name: "do_trace_read_msr", scope: !402, file: !402, line: 65, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !7, !27, !20}
!753 = distinct !DISubprogram(name: "arch_static_branch", scope: !754, file: !754, line: 25, type: !755, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !757)
!754 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!755 = !DISubroutineType(types: !756)
!756 = !{!125, !720, !125}
!757 = !{!758, !759, !760}
!758 = !DILocalVariable(name: "key", arg: 1, scope: !753, file: !754, line: 25, type: !720)
!759 = !DILocalVariable(name: "branch", arg: 2, scope: !753, file: !754, line: 25, type: !125)
!760 = !DILabel(scope: !753, name: "l_yes", file: !754, line: 33)
!761 = !DILocation(line: 25, column: 67, scope: !753)
!762 = !DILocation(line: 25, column: 77, scope: !753)
!763 = !DILocation(line: 30, column: 13, scope: !753)
!764 = !DILocation(line: 30, column: 28, scope: !753)
!765 = !DILocation(line: 30, column: 26, scope: !753)
!766 = !DILocation(line: 27, column: 2, scope: !753)
!767 = !{i64 1543967, i64 1544011, i64 2149028694, i64 2149028715, i64 2149028741, i64 2149028774, i64 2149028808, i64 2149028832}
!768 = !DILocation(line: 32, column: 2, scope: !753)
!769 = !DILocation(line: 33, column: 1, scope: !753)
!770 = !DILocation(line: 34, column: 2, scope: !753)
!771 = !DILocation(line: 35, column: 1, scope: !753)
!772 = distinct !DISubprogram(name: "constant_test_bit", scope: !426, file: !426, line: 204, type: !773, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!125, !36, !429}
!775 = !{!776, !777}
!776 = !DILocalVariable(name: "nr", arg: 1, scope: !772, file: !426, line: 204, type: !36)
!777 = !DILocalVariable(name: "addr", arg: 2, scope: !772, file: !426, line: 204, type: !429)
!778 = !DILocation(line: 204, column: 52, scope: !772)
!779 = !DILocation(line: 204, column: 86, scope: !772)
!780 = !DILocation(line: 206, column: 19, scope: !772)
!781 = !DILocation(line: 206, column: 22, scope: !772)
!782 = !DILocation(line: 206, column: 15, scope: !772)
!783 = !DILocation(line: 207, column: 4, scope: !772)
!784 = !DILocation(line: 207, column: 9, scope: !772)
!785 = !DILocation(line: 207, column: 12, scope: !772)
!786 = !DILocation(line: 206, column: 44, scope: !772)
!787 = !DILocation(line: 207, column: 37, scope: !772)
!788 = !DILocation(line: 206, column: 2, scope: !772)
!789 = distinct !DISubprogram(name: "variable_test_bit", scope: !426, file: !426, line: 224, type: !773, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !790)
!790 = !{!791, !792, !793}
!791 = !DILocalVariable(name: "nr", arg: 1, scope: !789, file: !426, line: 224, type: !36)
!792 = !DILocalVariable(name: "addr", arg: 2, scope: !789, file: !426, line: 224, type: !429)
!793 = !DILocalVariable(name: "oldbit", scope: !789, file: !426, line: 226, type: !125)
!794 = !DILocation(line: 224, column: 52, scope: !789)
!795 = !DILocation(line: 224, column: 86, scope: !789)
!796 = !DILocation(line: 226, column: 2, scope: !789)
!797 = !DILocation(line: 226, column: 7, scope: !789)
!798 = !DILocation(line: 231, column: 33, scope: !789)
!799 = !DILocation(line: 231, column: 46, scope: !789)
!800 = !DILocation(line: 228, column: 2, scope: !789)
!801 = !{i64 2148005938, i64 2148006012}
!802 = !DILocation(line: 233, column: 9, scope: !789)
!803 = !DILocation(line: 234, column: 1, scope: !789)
!804 = !DILocation(line: 233, column: 2, scope: !789)
!805 = distinct !DISubprogram(name: "native_write_msr", scope: !402, file: !402, line: 143, type: !806, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !7, !23, !23}
!808 = !{!809, !810, !811}
!809 = !DILocalVariable(name: "msr", arg: 1, scope: !805, file: !402, line: 143, type: !7)
!810 = !DILocalVariable(name: "low", arg: 2, scope: !805, file: !402, line: 143, type: !23)
!811 = !DILocalVariable(name: "high", arg: 3, scope: !805, file: !402, line: 143, type: !23)
!812 = !DILocation(line: 143, column: 31, scope: !805)
!813 = !DILocation(line: 143, column: 40, scope: !805)
!814 = !DILocation(line: 143, column: 49, scope: !805)
!815 = !DILocation(line: 145, column: 10, scope: !805)
!816 = !DILocation(line: 145, column: 15, scope: !805)
!817 = !DILocation(line: 145, column: 20, scope: !805)
!818 = !DILocation(line: 145, column: 2, scope: !805)
!819 = !DILocation(line: 147, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !805, file: !402, line: 147, column: 6)
!821 = !DILocation(line: 147, column: 6, scope: !805)
!822 = !DILocation(line: 148, column: 22, scope: !820)
!823 = !DILocation(line: 148, column: 33, scope: !820)
!824 = !DILocation(line: 148, column: 28, scope: !820)
!825 = !DILocation(line: 148, column: 38, scope: !820)
!826 = !DILocation(line: 148, column: 46, scope: !820)
!827 = !DILocation(line: 148, column: 44, scope: !820)
!828 = !DILocation(line: 148, column: 3, scope: !820)
!829 = !DILocation(line: 149, column: 1, scope: !805)
!830 = distinct !DISubprogram(name: "__wrmsr", scope: !402, file: !402, line: 92, type: !806, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !831)
!831 = !{!832, !833, !834}
!832 = !DILocalVariable(name: "msr", arg: 1, scope: !830, file: !402, line: 92, type: !7)
!833 = !DILocalVariable(name: "low", arg: 2, scope: !830, file: !402, line: 92, type: !23)
!834 = !DILocalVariable(name: "high", arg: 3, scope: !830, file: !402, line: 92, type: !23)
!835 = !DILocation(line: 92, column: 50, scope: !830)
!836 = !DILocation(line: 92, column: 59, scope: !830)
!837 = !DILocation(line: 92, column: 68, scope: !830)
!838 = !DILocation(line: 97, column: 17, scope: !830)
!839 = !DILocation(line: 97, column: 27, scope: !830)
!840 = !DILocation(line: 97, column: 38, scope: !830)
!841 = !DILocation(line: 94, column: 2, scope: !830)
!842 = !{i64 1879901, i64 1879922, i64 2149557767, i64 2149557811, i64 2149557834, i64 2149557867, i64 2149557898, i64 2149557937}
!843 = !DILocation(line: 98, column: 1, scope: !830)
!844 = !DISubprogram(name: "do_trace_write_msr", scope: !402, file: !402, line: 64, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!845 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !846, file: !846, line: 80, type: !847, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !856)
!846 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!847 = !DISubroutineType(types: !848)
!848 = !{null, !849, !852}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 61, baseType: !853)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !854, line: 72, baseType: !855)
!854 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !854, line: 16, baseType: !22)
!856 = !{!857, !858}
!857 = !DILocalVariable(name: "v", arg: 1, scope: !845, file: !846, line: 80, type: !849)
!858 = !DILocalVariable(name: "size", arg: 2, scope: !845, file: !846, line: 80, type: !852)
!859 = !DILocation(line: 80, column: 74, scope: !845)
!860 = !DILocation(line: 80, column: 84, scope: !845)
!861 = !DILocation(line: 82, column: 20, scope: !845)
!862 = !DILocation(line: 82, column: 23, scope: !845)
!863 = !DILocation(line: 82, column: 2, scope: !845)
!864 = !DILocation(line: 83, column: 2, scope: !845)
!865 = !DILocation(line: 84, column: 1, scope: !845)
!866 = distinct !DISubprogram(name: "arch_set_bit", scope: !426, file: !426, line: 52, type: !465, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !867)
!867 = !{!868, !869}
!868 = !DILocalVariable(name: "nr", arg: 1, scope: !866, file: !426, line: 52, type: !36)
!869 = !DILocalVariable(name: "addr", arg: 2, scope: !866, file: !426, line: 52, type: !467)
!870 = !DILocation(line: 52, column: 19, scope: !866)
!871 = !DILocation(line: 52, column: 47, scope: !866)
!872 = !DILocation(line: 54, column: 27, scope: !873)
!873 = distinct !DILexicalBlock(scope: !866, file: !426, line: 54, column: 6)
!874 = !DILocation(line: 54, column: 6, scope: !873)
!875 = !DILocation(line: 54, column: 6, scope: !866)
!876 = !DILocation(line: 56, column: 6, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !426, line: 54, column: 32)
!878 = !DILocation(line: 57, column: 12, scope: !877)
!879 = !DILocation(line: 55, column: 3, scope: !877)
!880 = !{i64 2147992326, i64 2147992365, i64 2147992386, i64 2147992423, i64 2147992446, i64 2147992316}
!881 = !DILocation(line: 59, column: 2, scope: !877)
!882 = !DILocation(line: 61, column: 8, scope: !883)
!883 = distinct !DILexicalBlock(scope: !873, file: !426, line: 59, column: 9)
!884 = !DILocation(line: 61, column: 32, scope: !883)
!885 = !DILocation(line: 60, column: 3, scope: !883)
!886 = !{i64 2147992611, i64 2147992650, i64 2147992671, i64 2147992708, i64 2147992731, i64 2147992601}
!887 = !DILocation(line: 63, column: 1, scope: !866)
!888 = distinct !DISubprogram(name: "kasan_check_write", scope: !889, file: !889, line: 44, type: !890, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !892)
!889 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!890 = !DISubroutineType(types: !891)
!891 = !{!125, !849, !7}
!892 = !{!893, !894}
!893 = !DILocalVariable(name: "p", arg: 1, scope: !888, file: !889, line: 44, type: !849)
!894 = !DILocalVariable(name: "size", arg: 2, scope: !888, file: !889, line: 44, type: !7)
!895 = !DILocation(line: 44, column: 59, scope: !888)
!896 = !DILocation(line: 44, column: 75, scope: !888)
!897 = !DILocation(line: 46, column: 2, scope: !888)
!898 = distinct !DISubprogram(name: "kcsan_check_access", scope: !899, file: !899, line: 229, type: !900, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !902)
!899 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!900 = !DISubroutineType(types: !901)
!901 = !{null, !849, !852, !20}
!902 = !{!903, !904, !905}
!903 = !DILocalVariable(name: "ptr", arg: 1, scope: !898, file: !899, line: 229, type: !849)
!904 = !DILocalVariable(name: "size", arg: 2, scope: !898, file: !899, line: 229, type: !852)
!905 = !DILocalVariable(name: "type", arg: 3, scope: !898, file: !899, line: 230, type: !20)
!906 = !DILocation(line: 229, column: 60, scope: !898)
!907 = !DILocation(line: 229, column: 72, scope: !898)
!908 = !DILocation(line: 230, column: 15, scope: !898)
!909 = !DILocation(line: 230, column: 23, scope: !898)
!910 = distinct !DISubprogram(name: "native_read_msr", scope: !402, file: !402, line: 114, type: !911, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{!29, !7}
!913 = !{!914, !915}
!914 = !DILocalVariable(name: "msr", arg: 1, scope: !910, file: !402, line: 114, type: !7)
!915 = !DILocalVariable(name: "val", scope: !910, file: !402, line: 116, type: !29)
!916 = !DILocation(line: 114, column: 63, scope: !910)
!917 = !DILocation(line: 116, column: 2, scope: !910)
!918 = !DILocation(line: 116, column: 21, scope: !910)
!919 = !DILocation(line: 118, column: 16, scope: !910)
!920 = !DILocation(line: 118, column: 8, scope: !910)
!921 = !DILocation(line: 118, column: 6, scope: !910)
!922 = !DILocation(line: 120, column: 6, scope: !923)
!923 = distinct !DILexicalBlock(scope: !910, file: !402, line: 120, column: 6)
!924 = !DILocation(line: 120, column: 6, scope: !910)
!925 = !DILocation(line: 121, column: 21, scope: !923)
!926 = !DILocation(line: 121, column: 26, scope: !923)
!927 = !DILocation(line: 121, column: 3, scope: !923)
!928 = !DILocation(line: 123, column: 9, scope: !910)
!929 = !DILocation(line: 124, column: 1, scope: !910)
!930 = !DILocation(line: 123, column: 2, scope: !910)
!931 = distinct !DISubprogram(name: "__rdmsr", scope: !402, file: !402, line: 80, type: !911, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !932)
!932 = !{!933, !934, !935}
!933 = !DILocalVariable(name: "msr", arg: 1, scope: !931, file: !402, line: 80, type: !7)
!934 = !DILocalVariable(name: "low", scope: !931, file: !402, line: 82, type: !22)
!935 = !DILocalVariable(name: "high", scope: !931, file: !402, line: 82, type: !22)
!936 = !DILocation(line: 80, column: 64, scope: !931)
!937 = !DILocation(line: 82, column: 2, scope: !931)
!938 = !DILocation(line: 87, column: 45, scope: !931)
!939 = !DILocation(line: 84, column: 2, scope: !931)
!940 = !{i64 1879645, i64 1879666, i64 2149557268, i64 2149557312, i64 2149557335, i64 2149557368, i64 2149557399, i64 2149557438}
!941 = !DILocation(line: 89, column: 9, scope: !931)
!942 = !DILocation(line: 90, column: 1, scope: !931)
!943 = !DILocation(line: 89, column: 2, scope: !931)
