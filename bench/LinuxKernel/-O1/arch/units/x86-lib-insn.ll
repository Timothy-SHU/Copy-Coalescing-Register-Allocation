; ModuleID = 'arch/x86/lib/insn.c'
source_filename = "arch/x86/lib/insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %union.anon.0, %union.anon.1, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.insn_field = type { %union.anon, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { %struct.insn_field }
%union.anon.1 = type { %struct.insn_field }
%struct.anon = type { i8 }
%struct.anon.2 = type { i8 }
%struct.anon.3 = type { i8 }
%struct.anon.4 = type { i8 }
%struct.anon.5 = type { i8 }
%struct.anon.6 = type { i8 }
%struct.anon.7 = type { i8 }
%struct.anon.8 = type { i8 }
%struct.anon.9 = type { i8 }
%struct.anon.10 = type { i8 }
%struct.anon.11 = type { i8 }
%struct.anon.12 = type { i8 }
%struct.anon.13 = type { i8 }
%struct.anon.14 = type { i16 }
%struct.anon.15 = type { i32 }
%struct.anon.16 = type { i8 }
%struct.anon.17 = type { i16 }
%struct.anon.18 = type { i32 }
%struct.anon.19 = type { i32 }
%struct.anon.20 = type { i32 }
%struct.anon.21 = type { i8 }
%struct.anon.23 = type { i16 }
%struct.anon.24 = type { i32 }
%struct.anon.25 = type { i32 }
%struct.anon.26 = type { i32 }
%struct.anon.27 = type { i16 }
%struct.anon.28 = type { i32 }
%struct.anon.29 = type { i16 }
%struct.anon.30 = type { i16 }
%struct.anon.31 = type { i32 }
%struct.anon.32 = type { i16 }
%struct.anon.33 = type { i32 }
%struct.anon.34 = type { i32 }
%struct.anon.35 = type { i32 }
%struct.anon.22 = type { i8 }

@xen_prefix = internal constant [5 x i8] c"\0F\0Bxen", align 1, !dbg !0
@kvm_prefix = internal constant [5 x i8] c"\0F\0Bkvm", align 1, !dbg !626

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @insn_init(ptr noundef %insn, ptr noundef %kaddr, i32 noundef %buf_len, i32 noundef %x86_64) #0 align 16 !dbg !640 {
entry:
  %insn.addr = alloca ptr, align 8
  %kaddr.addr = alloca ptr, align 8
  %buf_len.addr = alloca i32, align 4
  %x86_64.addr = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !646, metadata !DIExpression()), !dbg !650
  store ptr %kaddr, ptr %kaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kaddr.addr, metadata !647, metadata !DIExpression()), !dbg !651
  store i32 %buf_len, ptr %buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buf_len.addr, metadata !648, metadata !DIExpression()), !dbg !652
  store i32 %x86_64, ptr %x86_64.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x86_64.addr, metadata !649, metadata !DIExpression()), !dbg !653
  %0 = load i32, ptr %buf_len.addr, align 4, !dbg !654
  %cmp = icmp sgt i32 %0, 15, !dbg !656
  br i1 %cmp, label %if.then, label %if.end, !dbg !657

if.then:                                          ; preds = %entry
  store i32 15, ptr %buf_len.addr, align 4, !dbg !658
  br label %if.end, !dbg !659

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !660
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 112, i1 false), !dbg !661
  %2 = load ptr, ptr %kaddr.addr, align 8, !dbg !662
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !663
  %kaddr1 = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 15, !dbg !664
  store ptr %2, ptr %kaddr1, align 8, !dbg !665
  %4 = load ptr, ptr %kaddr.addr, align 8, !dbg !666
  %5 = load i32, ptr %buf_len.addr, align 4, !dbg !667
  %idx.ext = sext i32 %5 to i64, !dbg !668
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !668
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !669
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 16, !dbg !670
  store ptr %add.ptr, ptr %end_kaddr, align 8, !dbg !671
  %7 = load ptr, ptr %kaddr.addr, align 8, !dbg !672
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !673
  %next_byte = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 17, !dbg !674
  store ptr %7, ptr %next_byte, align 8, !dbg !675
  %9 = load i32, ptr %x86_64.addr, align 4, !dbg !676
  %tobool = icmp ne i32 %9, 0, !dbg !676
  %10 = zext i1 %tobool to i64, !dbg !676
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !676
  %conv = trunc i32 %cond to i8, !dbg !676
  %11 = load ptr, ptr %insn.addr, align 8, !dbg !677
  %x86_642 = getelementptr inbounds %struct.insn, ptr %11, i32 0, i32 14, !dbg !678
  store i8 %conv, ptr %x86_642, align 1, !dbg !679
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !680
  %opnd_bytes = getelementptr inbounds %struct.insn, ptr %12, i32 0, i32 11, !dbg !681
  store i8 4, ptr %opnd_bytes, align 8, !dbg !682
  %13 = load i32, ptr %x86_64.addr, align 4, !dbg !683
  %tobool3 = icmp ne i32 %13, 0, !dbg !683
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !685

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %insn.addr, align 8, !dbg !686
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %14, i32 0, i32 12, !dbg !687
  store i8 8, ptr %addr_bytes, align 1, !dbg !688
  br label %if.end6, !dbg !686

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %insn.addr, align 8, !dbg !689
  %addr_bytes5 = getelementptr inbounds %struct.insn, ptr %15, i32 0, i32 12, !dbg !690
  store i8 4, ptr %addr_bytes5, align 1, !dbg !691
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  ret void, !dbg !692
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_prefixes(ptr noundef %insn) #0 align 16 !dbg !17 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %prefixes = alloca ptr, align 8
  %attr = alloca i32, align 4
  %b = alloca i8, align 1
  %lb = alloca i8, align 1
  %i = alloca i32, align 4
  %nb = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i8, align 1
  %r = alloca i8, align 1
  %__pptr = alloca ptr, align 8
  %tmp10 = alloca i8, align 1
  %tmp11 = alloca i8, align 1
  %v = alloca i8, align 1
  %tmp12 = alloca i8, align 1
  %tmp70 = alloca i8, align 1
  %r71 = alloca i8, align 1
  %__pptr72 = alloca ptr, align 8
  %tmp75 = alloca i8, align 1
  %tmp77 = alloca i8, align 1
  %v78 = alloca i8, align 1
  %tmp79 = alloca i8, align 1
  %tmp142 = alloca i8, align 1
  %r143 = alloca i8, align 1
  %__pptr144 = alloca ptr, align 8
  %tmp147 = alloca i8, align 1
  %tmp149 = alloca i8, align 1
  %v150 = alloca i8, align 1
  %tmp151 = alloca i8, align 1
  %tmp185 = alloca i8, align 1
  %r186 = alloca i8, align 1
  %__pptr187 = alloca ptr, align 8
  %tmp190 = alloca i8, align 1
  %tmp192 = alloca i8, align 1
  %v193 = alloca i8, align 1
  %tmp194 = alloca i8, align 1
  %b2 = alloca i8, align 1
  %tmp216 = alloca i8, align 1
  %r217 = alloca i8, align 1
  %__pptr218 = alloca ptr, align 8
  %tmp221 = alloca i8, align 1
  %tmp223 = alloca i8, align 1
  %v224 = alloca i8, align 1
  %tmp225 = alloca i8, align 1
  %tmp257 = alloca i8, align 1
  %r258 = alloca i8, align 1
  %__pptr259 = alloca ptr, align 8
  %tmp262 = alloca i8, align 1
  %tmp264 = alloca i8, align 1
  %v265 = alloca i8, align 1
  %tmp266 = alloca i8, align 1
  %tmp285 = alloca i8, align 1
  %r286 = alloca i8, align 1
  %__pptr287 = alloca ptr, align 8
  %tmp290 = alloca i8, align 1
  %tmp292 = alloca i8, align 1
  %v293 = alloca i8, align 1
  %tmp294 = alloca i8, align 1
  %tmp331 = alloca i8, align 1
  %r332 = alloca i8, align 1
  %__pptr333 = alloca ptr, align 8
  %tmp336 = alloca i8, align 1
  %tmp338 = alloca i8, align 1
  %v339 = alloca i8, align 1
  %tmp340 = alloca i8, align 1
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !71, metadata !DIExpression()), !dbg !693
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefixes) #7, !dbg !694
  call void @llvm.dbg.declare(metadata ptr %prefixes, metadata !72, metadata !DIExpression()), !dbg !695
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !696
  %prefixes1 = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 0, !dbg !697
  store ptr %prefixes1, ptr %prefixes, align 8, !dbg !695
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr) #7, !dbg !698
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !74, metadata !DIExpression()), !dbg !699
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #7, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %b, metadata !75, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 1, ptr %lb) #7, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %lb, metadata !76, metadata !DIExpression()), !dbg !702
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !703
  call void @llvm.dbg.declare(metadata ptr %i, metadata !77, metadata !DIExpression()), !dbg !704
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #7, !dbg !703
  call void @llvm.dbg.declare(metadata ptr %nb, metadata !78, metadata !DIExpression()), !dbg !705
  %1 = load ptr, ptr %prefixes, align 8, !dbg !706
  %got = getelementptr inbounds %struct.insn_field, ptr %1, i32 0, i32 1, !dbg !708
  %2 = load i8, ptr %got, align 4, !dbg !708
  %tobool = icmp ne i8 %2, 0, !dbg !706
  br i1 %tobool, label %if.then, label %if.end, !dbg !709

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup371, !dbg !710

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !711
  call void @insn_get_emulate_prefix(ptr noundef %3) #8, !dbg !712
  store i32 0, ptr %nb, align 4, !dbg !713
  store i8 0, ptr %lb, align 1, !dbg !714
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !715
  %next_byte = getelementptr inbounds %struct.insn, ptr %4, i32 0, i32 17, !dbg !715
  %5 = load ptr, ptr %next_byte, align 8, !dbg !715
  %add.ptr = getelementptr i8, ptr %5, i64 1, !dbg !715
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i64 0, !dbg !715
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !715
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 16, !dbg !715
  %7 = load ptr, ptr %end_kaddr, align 8, !dbg !715
  %cmp = icmp ule ptr %add.ptr2, %7, !dbg !715
  %lnot = xor i1 %cmp, true, !dbg !715
  %lnot3 = xor i1 %lnot, true, !dbg !715
  %lnot4 = xor i1 %lnot3, true, !dbg !715
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !715
  %conv = sext i32 %lnot.ext to i64, !dbg !715
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !715
  %tobool5 = icmp ne i64 %expval, 0, !dbg !715
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !717

if.then6:                                         ; preds = %if.end
  br label %err_out, !dbg !715

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #7, !dbg !718
  call void @llvm.dbg.declare(metadata ptr %r, metadata !79, metadata !DIExpression()), !dbg !718
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !719
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !82, metadata !DIExpression()), !dbg !719
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !719
  %next_byte8 = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 17, !dbg !719
  %9 = load ptr, ptr %next_byte8, align 8, !dbg !719
  %add.ptr9 = getelementptr i8, ptr %9, i64 0, !dbg !719
  store ptr %add.ptr9, ptr %__pptr, align 8, !dbg !719
  %10 = load ptr, ptr %__pptr, align 8, !dbg !719
  %x = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 0, !dbg !719
  %11 = load i8, ptr %x, align 1, !dbg !719
  store i8 %11, ptr %tmp10, align 1, !dbg !719
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !718
  %12 = load i8, ptr %tmp10, align 1, !dbg !719
  store i8 %12, ptr %r, align 1, !dbg !718
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #7, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %v, metadata !84, metadata !DIExpression()), !dbg !720
  %13 = load i8, ptr %r, align 1, !dbg !720
  store i8 %13, ptr %v, align 1, !dbg !720
  %14 = load i8, ptr %v, align 1, !dbg !720
  store i8 %14, ptr %tmp12, align 1, !dbg !720
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #7, !dbg !718
  %15 = load i8, ptr %tmp12, align 1, !dbg !720
  store i8 %15, ptr %tmp11, align 1, !dbg !718
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #7, !dbg !717
  %16 = load i8, ptr %tmp11, align 1, !dbg !718
  store i8 %16, ptr %tmp, align 1, !dbg !715
  %17 = load i8, ptr %tmp, align 1, !dbg !717
  store i8 %17, ptr %b, align 1, !dbg !721
  %18 = load i8, ptr %b, align 1, !dbg !722
  %call = call i32 @inat_get_opcode_attribute(i8 noundef zeroext %18) #8, !dbg !723
  store i32 %call, ptr %attr, align 4, !dbg !724
  br label %while.cond, !dbg !725

while.cond:                                       ; preds = %if.end69, %if.end7
  %19 = load i32, ptr %attr, align 4, !dbg !726
  %call13 = call i32 @inat_is_legacy_prefix(i32 noundef %19) #8, !dbg !727
  %tobool14 = icmp ne i32 %call13, 0, !dbg !725
  br i1 %tobool14, label %while.body, label %while.end, !dbg !725

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !dbg !728
  br label %for.cond, !dbg !730

for.cond:                                         ; preds = %for.inc, %while.body
  %20 = load i32, ptr %i, align 4, !dbg !731
  %21 = load i32, ptr %nb, align 4, !dbg !733
  %cmp15 = icmp slt i32 %20, %21, !dbg !734
  br i1 %cmp15, label %for.body, label %for.end, !dbg !735

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %prefixes, align 8, !dbg !736
  %23 = getelementptr inbounds %struct.insn_field, ptr %22, i32 0, i32 0, !dbg !738
  %24 = load i32, ptr %i, align 4, !dbg !739
  %idxprom = sext i32 %24 to i64, !dbg !736
  %arrayidx = getelementptr [4 x i8], ptr %23, i64 0, i64 %idxprom, !dbg !736
  %25 = load i8, ptr %arrayidx, align 1, !dbg !736
  %conv17 = zext i8 %25 to i32, !dbg !736
  %26 = load i8, ptr %b, align 1, !dbg !740
  %conv18 = zext i8 %26 to i32, !dbg !740
  %cmp19 = icmp eq i32 %conv17, %conv18, !dbg !741
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !742

if.then21:                                        ; preds = %for.body
  br label %found, !dbg !743

if.end22:                                         ; preds = %for.body
  br label %for.inc, !dbg !740

for.inc:                                          ; preds = %if.end22
  %27 = load i32, ptr %i, align 4, !dbg !744
  %inc = add i32 %27, 1, !dbg !744
  store i32 %inc, ptr %i, align 4, !dbg !744
  br label %for.cond, !dbg !745, !llvm.loop !746

for.end:                                          ; preds = %for.cond
  %28 = load i32, ptr %nb, align 4, !dbg !750
  %cmp23 = icmp eq i32 %28, 4, !dbg !752
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !753

if.then25:                                        ; preds = %for.end
  br label %while.end, !dbg !754

if.end26:                                         ; preds = %for.end
  %29 = load i8, ptr %b, align 1, !dbg !755
  %30 = load ptr, ptr %prefixes, align 8, !dbg !756
  %31 = getelementptr inbounds %struct.insn_field, ptr %30, i32 0, i32 0, !dbg !757
  %32 = load i32, ptr %nb, align 4, !dbg !758
  %inc27 = add i32 %32, 1, !dbg !758
  store i32 %inc27, ptr %nb, align 4, !dbg !758
  %idxprom28 = sext i32 %32 to i64, !dbg !756
  %arrayidx29 = getelementptr [4 x i8], ptr %31, i64 0, i64 %idxprom28, !dbg !756
  store i8 %29, ptr %arrayidx29, align 1, !dbg !759
  %33 = load i32, ptr %attr, align 4, !dbg !760
  %call30 = call i32 @inat_is_address_size_prefix(i32 noundef %33) #8, !dbg !762
  %tobool31 = icmp ne i32 %call30, 0, !dbg !762
  br i1 %tobool31, label %if.then32, label %if.else42, !dbg !763

if.then32:                                        ; preds = %if.end26
  %34 = load ptr, ptr %insn.addr, align 8, !dbg !764
  %x86_64 = getelementptr inbounds %struct.insn, ptr %34, i32 0, i32 14, !dbg !767
  %35 = load i8, ptr %x86_64, align 1, !dbg !767
  %tobool33 = icmp ne i8 %35, 0, !dbg !764
  br i1 %tobool33, label %if.then34, label %if.else, !dbg !768

if.then34:                                        ; preds = %if.then32
  %36 = load ptr, ptr %insn.addr, align 8, !dbg !769
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %36, i32 0, i32 12, !dbg !770
  %37 = load i8, ptr %addr_bytes, align 1, !dbg !771
  %conv35 = zext i8 %37 to i32, !dbg !771
  %xor = xor i32 %conv35, 12, !dbg !771
  %conv36 = trunc i32 %xor to i8, !dbg !771
  store i8 %conv36, ptr %addr_bytes, align 1, !dbg !771
  br label %if.end41, !dbg !769

if.else:                                          ; preds = %if.then32
  %38 = load ptr, ptr %insn.addr, align 8, !dbg !772
  %addr_bytes37 = getelementptr inbounds %struct.insn, ptr %38, i32 0, i32 12, !dbg !773
  %39 = load i8, ptr %addr_bytes37, align 1, !dbg !774
  %conv38 = zext i8 %39 to i32, !dbg !774
  %xor39 = xor i32 %conv38, 6, !dbg !774
  %conv40 = trunc i32 %xor39 to i8, !dbg !774
  store i8 %conv40, ptr %addr_bytes37, align 1, !dbg !774
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then34
  br label %if.end50, !dbg !775

if.else42:                                        ; preds = %if.end26
  %40 = load i32, ptr %attr, align 4, !dbg !776
  %call43 = call i32 @inat_is_operand_size_prefix(i32 noundef %40) #8, !dbg !778
  %tobool44 = icmp ne i32 %call43, 0, !dbg !778
  br i1 %tobool44, label %if.then45, label %if.end49, !dbg !779

if.then45:                                        ; preds = %if.else42
  %41 = load ptr, ptr %insn.addr, align 8, !dbg !780
  %opnd_bytes = getelementptr inbounds %struct.insn, ptr %41, i32 0, i32 11, !dbg !782
  %42 = load i8, ptr %opnd_bytes, align 8, !dbg !783
  %conv46 = zext i8 %42 to i32, !dbg !783
  %xor47 = xor i32 %conv46, 6, !dbg !783
  %conv48 = trunc i32 %xor47 to i8, !dbg !783
  store i8 %conv48, ptr %opnd_bytes, align 8, !dbg !783
  br label %if.end49, !dbg !784

if.end49:                                         ; preds = %if.then45, %if.else42
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end41
  br label %found, !dbg !785

found:                                            ; preds = %if.end50, %if.then21
  call void @llvm.dbg.label(metadata !86), !dbg !786
  %43 = load ptr, ptr %prefixes, align 8, !dbg !787
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %43, i32 0, i32 2, !dbg !788
  %44 = load i8, ptr %nbytes, align 1, !dbg !789
  %inc51 = add i8 %44, 1, !dbg !789
  store i8 %inc51, ptr %nbytes, align 1, !dbg !789
  %45 = load ptr, ptr %insn.addr, align 8, !dbg !790
  %next_byte52 = getelementptr inbounds %struct.insn, ptr %45, i32 0, i32 17, !dbg !791
  %46 = load ptr, ptr %next_byte52, align 8, !dbg !792
  %incdec.ptr = getelementptr i8, ptr %46, i32 1, !dbg !792
  store ptr %incdec.ptr, ptr %next_byte52, align 8, !dbg !792
  %47 = load i8, ptr %b, align 1, !dbg !793
  store i8 %47, ptr %lb, align 1, !dbg !794
  %48 = load ptr, ptr %insn.addr, align 8, !dbg !795
  %next_byte53 = getelementptr inbounds %struct.insn, ptr %48, i32 0, i32 17, !dbg !795
  %49 = load ptr, ptr %next_byte53, align 8, !dbg !795
  %add.ptr54 = getelementptr i8, ptr %49, i64 1, !dbg !795
  %add.ptr55 = getelementptr i8, ptr %add.ptr54, i64 0, !dbg !795
  %50 = load ptr, ptr %insn.addr, align 8, !dbg !795
  %end_kaddr56 = getelementptr inbounds %struct.insn, ptr %50, i32 0, i32 16, !dbg !795
  %51 = load ptr, ptr %end_kaddr56, align 8, !dbg !795
  %cmp57 = icmp ule ptr %add.ptr55, %51, !dbg !795
  %lnot59 = xor i1 %cmp57, true, !dbg !795
  %lnot61 = xor i1 %lnot59, true, !dbg !795
  %lnot63 = xor i1 %lnot61, true, !dbg !795
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !795
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !795
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !795
  %tobool67 = icmp ne i64 %expval66, 0, !dbg !795
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !797

if.then68:                                        ; preds = %found
  br label %err_out, !dbg !795

if.end69:                                         ; preds = %found
  call void @llvm.lifetime.start.p0(i64 1, ptr %r71) #7, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %r71, metadata !88, metadata !DIExpression()), !dbg !798
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr72) #7, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %__pptr72, metadata !91, metadata !DIExpression()), !dbg !799
  %52 = load ptr, ptr %insn.addr, align 8, !dbg !799
  %next_byte73 = getelementptr inbounds %struct.insn, ptr %52, i32 0, i32 17, !dbg !799
  %53 = load ptr, ptr %next_byte73, align 8, !dbg !799
  %add.ptr74 = getelementptr i8, ptr %53, i64 0, !dbg !799
  store ptr %add.ptr74, ptr %__pptr72, align 8, !dbg !799
  %54 = load ptr, ptr %__pptr72, align 8, !dbg !799
  %x76 = getelementptr inbounds %struct.anon.2, ptr %54, i32 0, i32 0, !dbg !799
  %55 = load i8, ptr %x76, align 1, !dbg !799
  store i8 %55, ptr %tmp75, align 1, !dbg !799
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr72) #7, !dbg !798
  %56 = load i8, ptr %tmp75, align 1, !dbg !799
  store i8 %56, ptr %r71, align 1, !dbg !798
  call void @llvm.lifetime.start.p0(i64 1, ptr %v78) #7, !dbg !800
  call void @llvm.dbg.declare(metadata ptr %v78, metadata !98, metadata !DIExpression()), !dbg !800
  %57 = load i8, ptr %r71, align 1, !dbg !800
  store i8 %57, ptr %v78, align 1, !dbg !800
  %58 = load i8, ptr %v78, align 1, !dbg !800
  store i8 %58, ptr %tmp79, align 1, !dbg !800
  call void @llvm.lifetime.end.p0(i64 1, ptr %v78) #7, !dbg !798
  %59 = load i8, ptr %tmp79, align 1, !dbg !800
  store i8 %59, ptr %tmp77, align 1, !dbg !798
  call void @llvm.lifetime.end.p0(i64 1, ptr %r71) #7, !dbg !797
  %60 = load i8, ptr %tmp77, align 1, !dbg !798
  store i8 %60, ptr %tmp70, align 1, !dbg !795
  %61 = load i8, ptr %tmp70, align 1, !dbg !797
  store i8 %61, ptr %b, align 1, !dbg !801
  %62 = load i8, ptr %b, align 1, !dbg !802
  %call80 = call i32 @inat_get_opcode_attribute(i8 noundef zeroext %62) #8, !dbg !803
  store i32 %call80, ptr %attr, align 4, !dbg !804
  br label %while.cond, !dbg !725, !llvm.loop !805

while.end:                                        ; preds = %if.then25, %while.cond
  %63 = load i8, ptr %lb, align 1, !dbg !807
  %conv81 = zext i8 %63 to i32, !dbg !807
  %tobool82 = icmp ne i32 %conv81, 0, !dbg !807
  br i1 %tobool82, label %land.lhs.true, label %if.end121, !dbg !809

land.lhs.true:                                    ; preds = %while.end
  %64 = load i8, ptr %lb, align 1, !dbg !810
  %conv83 = zext i8 %64 to i32, !dbg !810
  %65 = load ptr, ptr %insn.addr, align 8, !dbg !811
  %prefixes84 = getelementptr inbounds %struct.insn, ptr %65, i32 0, i32 0, !dbg !812
  %66 = getelementptr inbounds %struct.insn_field, ptr %prefixes84, i32 0, i32 0, !dbg !813
  %arrayidx85 = getelementptr [4 x i8], ptr %66, i64 0, i64 3, !dbg !811
  %67 = load i8, ptr %arrayidx85, align 1, !dbg !811
  %conv86 = zext i8 %67 to i32, !dbg !811
  %cmp87 = icmp ne i32 %conv83, %conv86, !dbg !814
  br i1 %cmp87, label %if.then89, label %if.end121, !dbg !815

if.then89:                                        ; preds = %land.lhs.true
  %68 = load ptr, ptr %insn.addr, align 8, !dbg !816
  %prefixes90 = getelementptr inbounds %struct.insn, ptr %68, i32 0, i32 0, !dbg !816
  %69 = getelementptr inbounds %struct.insn_field, ptr %prefixes90, i32 0, i32 0, !dbg !816
  %arrayidx91 = getelementptr [4 x i8], ptr %69, i64 0, i64 3, !dbg !816
  %70 = load i8, ptr %arrayidx91, align 1, !dbg !816
  %tobool92 = icmp ne i8 %70, 0, !dbg !816
  %lnot93 = xor i1 %tobool92, true, !dbg !816
  %lnot95 = xor i1 %lnot93, true, !dbg !816
  %lnot.ext96 = zext i1 %lnot95 to i32, !dbg !816
  %conv97 = sext i32 %lnot.ext96 to i64, !dbg !816
  %expval98 = call i64 @llvm.expect.i64(i64 %conv97, i64 0), !dbg !816
  %tobool99 = icmp ne i64 %expval98, 0, !dbg !816
  br i1 %tobool99, label %if.then100, label %if.end119, !dbg !819

if.then100:                                       ; preds = %if.then89
  %71 = load ptr, ptr %insn.addr, align 8, !dbg !820
  %prefixes101 = getelementptr inbounds %struct.insn, ptr %71, i32 0, i32 0, !dbg !822
  %72 = getelementptr inbounds %struct.insn_field, ptr %prefixes101, i32 0, i32 0, !dbg !823
  %arrayidx102 = getelementptr [4 x i8], ptr %72, i64 0, i64 3, !dbg !820
  %73 = load i8, ptr %arrayidx102, align 1, !dbg !820
  store i8 %73, ptr %b, align 1, !dbg !824
  store i32 0, ptr %i, align 4, !dbg !825
  br label %for.cond103, !dbg !827

for.cond103:                                      ; preds = %for.inc116, %if.then100
  %74 = load i32, ptr %i, align 4, !dbg !828
  %75 = load i32, ptr %nb, align 4, !dbg !830
  %cmp104 = icmp slt i32 %74, %75, !dbg !831
  br i1 %cmp104, label %for.body106, label %for.end118, !dbg !832

for.body106:                                      ; preds = %for.cond103
  %76 = load ptr, ptr %prefixes, align 8, !dbg !833
  %77 = getelementptr inbounds %struct.insn_field, ptr %76, i32 0, i32 0, !dbg !835
  %78 = load i32, ptr %i, align 4, !dbg !836
  %idxprom107 = sext i32 %78 to i64, !dbg !833
  %arrayidx108 = getelementptr [4 x i8], ptr %77, i64 0, i64 %idxprom107, !dbg !833
  %79 = load i8, ptr %arrayidx108, align 1, !dbg !833
  %conv109 = zext i8 %79 to i32, !dbg !833
  %80 = load i8, ptr %lb, align 1, !dbg !837
  %conv110 = zext i8 %80 to i32, !dbg !837
  %cmp111 = icmp eq i32 %conv109, %conv110, !dbg !838
  br i1 %cmp111, label %if.then113, label %if.end115, !dbg !839

if.then113:                                       ; preds = %for.body106
  %81 = load ptr, ptr %prefixes, align 8, !dbg !840
  %82 = load i32, ptr %i, align 4, !dbg !841
  %conv114 = trunc i32 %82 to i8, !dbg !841
  %83 = load i8, ptr %b, align 1, !dbg !842
  call void @insn_set_byte(ptr noundef %81, i8 noundef zeroext %conv114, i8 noundef zeroext %83) #8, !dbg !843
  br label %if.end115, !dbg !843

if.end115:                                        ; preds = %if.then113, %for.body106
  br label %for.inc116, !dbg !837

for.inc116:                                       ; preds = %if.end115
  %84 = load i32, ptr %i, align 4, !dbg !844
  %inc117 = add i32 %84, 1, !dbg !844
  store i32 %inc117, ptr %i, align 4, !dbg !844
  br label %for.cond103, !dbg !845, !llvm.loop !846

for.end118:                                       ; preds = %for.cond103
  br label %if.end119, !dbg !848

if.end119:                                        ; preds = %for.end118, %if.then89
  %85 = load ptr, ptr %insn.addr, align 8, !dbg !849
  %prefixes120 = getelementptr inbounds %struct.insn, ptr %85, i32 0, i32 0, !dbg !850
  %86 = load i8, ptr %lb, align 1, !dbg !851
  call void @insn_set_byte(ptr noundef %prefixes120, i8 noundef zeroext 3, i8 noundef zeroext %86) #8, !dbg !852
  br label %if.end121, !dbg !853

if.end121:                                        ; preds = %if.end119, %land.lhs.true, %while.end
  %87 = load ptr, ptr %insn.addr, align 8, !dbg !854
  %x86_64122 = getelementptr inbounds %struct.insn, ptr %87, i32 0, i32 14, !dbg !855
  %88 = load i8, ptr %x86_64122, align 1, !dbg !855
  %tobool123 = icmp ne i8 %88, 0, !dbg !854
  br i1 %tobool123, label %if.then124, label %if.end165, !dbg !856

if.then124:                                       ; preds = %if.end121
  %89 = load ptr, ptr %insn.addr, align 8, !dbg !857
  %next_byte125 = getelementptr inbounds %struct.insn, ptr %89, i32 0, i32 17, !dbg !857
  %90 = load ptr, ptr %next_byte125, align 8, !dbg !857
  %add.ptr126 = getelementptr i8, ptr %90, i64 1, !dbg !857
  %add.ptr127 = getelementptr i8, ptr %add.ptr126, i64 0, !dbg !857
  %91 = load ptr, ptr %insn.addr, align 8, !dbg !857
  %end_kaddr128 = getelementptr inbounds %struct.insn, ptr %91, i32 0, i32 16, !dbg !857
  %92 = load ptr, ptr %end_kaddr128, align 8, !dbg !857
  %cmp129 = icmp ule ptr %add.ptr127, %92, !dbg !857
  %lnot131 = xor i1 %cmp129, true, !dbg !857
  %lnot133 = xor i1 %lnot131, true, !dbg !857
  %lnot135 = xor i1 %lnot133, true, !dbg !857
  %lnot.ext136 = zext i1 %lnot135 to i32, !dbg !857
  %conv137 = sext i32 %lnot.ext136 to i64, !dbg !857
  %expval138 = call i64 @llvm.expect.i64(i64 %conv137, i64 0), !dbg !857
  %tobool139 = icmp ne i64 %expval138, 0, !dbg !857
  br i1 %tobool139, label %if.then140, label %if.end141, !dbg !859

if.then140:                                       ; preds = %if.then124
  br label %err_out, !dbg !857

if.end141:                                        ; preds = %if.then124
  call void @llvm.lifetime.start.p0(i64 1, ptr %r143) #7, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %r143, metadata !100, metadata !DIExpression()), !dbg !860
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr144) #7, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %__pptr144, metadata !105, metadata !DIExpression()), !dbg !861
  %93 = load ptr, ptr %insn.addr, align 8, !dbg !861
  %next_byte145 = getelementptr inbounds %struct.insn, ptr %93, i32 0, i32 17, !dbg !861
  %94 = load ptr, ptr %next_byte145, align 8, !dbg !861
  %add.ptr146 = getelementptr i8, ptr %94, i64 0, !dbg !861
  store ptr %add.ptr146, ptr %__pptr144, align 8, !dbg !861
  %95 = load ptr, ptr %__pptr144, align 8, !dbg !861
  %x148 = getelementptr inbounds %struct.anon.3, ptr %95, i32 0, i32 0, !dbg !861
  %96 = load i8, ptr %x148, align 1, !dbg !861
  store i8 %96, ptr %tmp147, align 1, !dbg !861
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr144) #7, !dbg !860
  %97 = load i8, ptr %tmp147, align 1, !dbg !861
  store i8 %97, ptr %r143, align 1, !dbg !860
  call void @llvm.lifetime.start.p0(i64 1, ptr %v150) #7, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %v150, metadata !112, metadata !DIExpression()), !dbg !862
  %98 = load i8, ptr %r143, align 1, !dbg !862
  store i8 %98, ptr %v150, align 1, !dbg !862
  %99 = load i8, ptr %v150, align 1, !dbg !862
  store i8 %99, ptr %tmp151, align 1, !dbg !862
  call void @llvm.lifetime.end.p0(i64 1, ptr %v150) #7, !dbg !860
  %100 = load i8, ptr %tmp151, align 1, !dbg !862
  store i8 %100, ptr %tmp149, align 1, !dbg !860
  call void @llvm.lifetime.end.p0(i64 1, ptr %r143) #7, !dbg !859
  %101 = load i8, ptr %tmp149, align 1, !dbg !860
  store i8 %101, ptr %tmp142, align 1, !dbg !857
  %102 = load i8, ptr %tmp142, align 1, !dbg !859
  store i8 %102, ptr %b, align 1, !dbg !863
  %103 = load i8, ptr %b, align 1, !dbg !864
  %call152 = call i32 @inat_get_opcode_attribute(i8 noundef zeroext %103) #8, !dbg !865
  store i32 %call152, ptr %attr, align 4, !dbg !866
  %104 = load i32, ptr %attr, align 4, !dbg !867
  %call153 = call i32 @inat_is_rex_prefix(i32 noundef %104) #8, !dbg !869
  %tobool154 = icmp ne i32 %call153, 0, !dbg !869
  br i1 %tobool154, label %if.then155, label %if.end164, !dbg !870

if.then155:                                       ; preds = %if.end141
  %105 = load ptr, ptr %insn.addr, align 8, !dbg !871
  %rex_prefix = getelementptr inbounds %struct.insn, ptr %105, i32 0, i32 1, !dbg !873
  %106 = load i8, ptr %b, align 1, !dbg !874
  %conv156 = zext i8 %106 to i32, !dbg !874
  call void @insn_field_set(ptr noundef %rex_prefix, i32 noundef %conv156, i8 noundef zeroext 1) #8, !dbg !875
  %107 = load ptr, ptr %insn.addr, align 8, !dbg !876
  %next_byte157 = getelementptr inbounds %struct.insn, ptr %107, i32 0, i32 17, !dbg !877
  %108 = load ptr, ptr %next_byte157, align 8, !dbg !878
  %incdec.ptr158 = getelementptr i8, ptr %108, i32 1, !dbg !878
  store ptr %incdec.ptr158, ptr %next_byte157, align 8, !dbg !878
  %109 = load i8, ptr %b, align 1, !dbg !879
  %conv159 = zext i8 %109 to i32, !dbg !879
  %and = and i32 %conv159, 8, !dbg !879
  %tobool160 = icmp ne i32 %and, 0, !dbg !879
  br i1 %tobool160, label %if.then161, label %if.end163, !dbg !881

if.then161:                                       ; preds = %if.then155
  %110 = load ptr, ptr %insn.addr, align 8, !dbg !882
  %opnd_bytes162 = getelementptr inbounds %struct.insn, ptr %110, i32 0, i32 11, !dbg !883
  store i8 8, ptr %opnd_bytes162, align 8, !dbg !884
  br label %if.end163, !dbg !882

if.end163:                                        ; preds = %if.then161, %if.then155
  br label %if.end164, !dbg !885

if.end164:                                        ; preds = %if.end163, %if.end141
  br label %if.end165, !dbg !886

if.end165:                                        ; preds = %if.end164, %if.end121
  %111 = load ptr, ptr %insn.addr, align 8, !dbg !887
  %rex_prefix166 = getelementptr inbounds %struct.insn, ptr %111, i32 0, i32 1, !dbg !888
  %got167 = getelementptr inbounds %struct.insn_field, ptr %rex_prefix166, i32 0, i32 1, !dbg !889
  store i8 1, ptr %got167, align 4, !dbg !890
  %112 = load ptr, ptr %insn.addr, align 8, !dbg !891
  %next_byte168 = getelementptr inbounds %struct.insn, ptr %112, i32 0, i32 17, !dbg !891
  %113 = load ptr, ptr %next_byte168, align 8, !dbg !891
  %add.ptr169 = getelementptr i8, ptr %113, i64 1, !dbg !891
  %add.ptr170 = getelementptr i8, ptr %add.ptr169, i64 0, !dbg !891
  %114 = load ptr, ptr %insn.addr, align 8, !dbg !891
  %end_kaddr171 = getelementptr inbounds %struct.insn, ptr %114, i32 0, i32 16, !dbg !891
  %115 = load ptr, ptr %end_kaddr171, align 8, !dbg !891
  %cmp172 = icmp ule ptr %add.ptr170, %115, !dbg !891
  %lnot174 = xor i1 %cmp172, true, !dbg !891
  %lnot176 = xor i1 %lnot174, true, !dbg !891
  %lnot178 = xor i1 %lnot176, true, !dbg !891
  %lnot.ext179 = zext i1 %lnot178 to i32, !dbg !891
  %conv180 = sext i32 %lnot.ext179 to i64, !dbg !891
  %expval181 = call i64 @llvm.expect.i64(i64 %conv180, i64 0), !dbg !891
  %tobool182 = icmp ne i64 %expval181, 0, !dbg !891
  br i1 %tobool182, label %if.then183, label %if.end184, !dbg !893

if.then183:                                       ; preds = %if.end165
  br label %err_out, !dbg !891

if.end184:                                        ; preds = %if.end165
  call void @llvm.lifetime.start.p0(i64 1, ptr %r186) #7, !dbg !894
  call void @llvm.dbg.declare(metadata ptr %r186, metadata !114, metadata !DIExpression()), !dbg !894
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr187) #7, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %__pptr187, metadata !117, metadata !DIExpression()), !dbg !895
  %116 = load ptr, ptr %insn.addr, align 8, !dbg !895
  %next_byte188 = getelementptr inbounds %struct.insn, ptr %116, i32 0, i32 17, !dbg !895
  %117 = load ptr, ptr %next_byte188, align 8, !dbg !895
  %add.ptr189 = getelementptr i8, ptr %117, i64 0, !dbg !895
  store ptr %add.ptr189, ptr %__pptr187, align 8, !dbg !895
  %118 = load ptr, ptr %__pptr187, align 8, !dbg !895
  %x191 = getelementptr inbounds %struct.anon.4, ptr %118, i32 0, i32 0, !dbg !895
  %119 = load i8, ptr %x191, align 1, !dbg !895
  store i8 %119, ptr %tmp190, align 1, !dbg !895
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr187) #7, !dbg !894
  %120 = load i8, ptr %tmp190, align 1, !dbg !895
  store i8 %120, ptr %r186, align 1, !dbg !894
  call void @llvm.lifetime.start.p0(i64 1, ptr %v193) #7, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %v193, metadata !124, metadata !DIExpression()), !dbg !896
  %121 = load i8, ptr %r186, align 1, !dbg !896
  store i8 %121, ptr %v193, align 1, !dbg !896
  %122 = load i8, ptr %v193, align 1, !dbg !896
  store i8 %122, ptr %tmp194, align 1, !dbg !896
  call void @llvm.lifetime.end.p0(i64 1, ptr %v193) #7, !dbg !894
  %123 = load i8, ptr %tmp194, align 1, !dbg !896
  store i8 %123, ptr %tmp192, align 1, !dbg !894
  call void @llvm.lifetime.end.p0(i64 1, ptr %r186) #7, !dbg !893
  %124 = load i8, ptr %tmp192, align 1, !dbg !894
  store i8 %124, ptr %tmp185, align 1, !dbg !891
  %125 = load i8, ptr %tmp185, align 1, !dbg !893
  store i8 %125, ptr %b, align 1, !dbg !897
  %126 = load i8, ptr %b, align 1, !dbg !898
  %call195 = call i32 @inat_get_opcode_attribute(i8 noundef zeroext %126) #8, !dbg !899
  store i32 %call195, ptr %attr, align 4, !dbg !900
  %127 = load i32, ptr %attr, align 4, !dbg !901
  %call196 = call i32 @inat_is_vex_prefix(i32 noundef %127) #8, !dbg !902
  %tobool197 = icmp ne i32 %call196, 0, !dbg !902
  br i1 %tobool197, label %if.then198, label %if.end367, !dbg !903

if.then198:                                       ; preds = %if.end184
  call void @llvm.lifetime.start.p0(i64 1, ptr %b2) #7, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %b2, metadata !126, metadata !DIExpression()), !dbg !905
  %128 = load ptr, ptr %insn.addr, align 8, !dbg !906
  %next_byte199 = getelementptr inbounds %struct.insn, ptr %128, i32 0, i32 17, !dbg !906
  %129 = load ptr, ptr %next_byte199, align 8, !dbg !906
  %add.ptr200 = getelementptr i8, ptr %129, i64 1, !dbg !906
  %add.ptr201 = getelementptr i8, ptr %add.ptr200, i64 1, !dbg !906
  %130 = load ptr, ptr %insn.addr, align 8, !dbg !906
  %end_kaddr202 = getelementptr inbounds %struct.insn, ptr %130, i32 0, i32 16, !dbg !906
  %131 = load ptr, ptr %end_kaddr202, align 8, !dbg !906
  %cmp203 = icmp ule ptr %add.ptr201, %131, !dbg !906
  %lnot205 = xor i1 %cmp203, true, !dbg !906
  %lnot207 = xor i1 %lnot205, true, !dbg !906
  %lnot209 = xor i1 %lnot207, true, !dbg !906
  %lnot.ext210 = zext i1 %lnot209 to i32, !dbg !906
  %conv211 = sext i32 %lnot.ext210 to i64, !dbg !906
  %expval212 = call i64 @llvm.expect.i64(i64 %conv211, i64 0), !dbg !906
  %tobool213 = icmp ne i64 %expval212, 0, !dbg !906
  br i1 %tobool213, label %if.then214, label %if.end215, !dbg !908

if.then214:                                       ; preds = %if.then198
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !906

if.end215:                                        ; preds = %if.then198
  call void @llvm.lifetime.start.p0(i64 1, ptr %r217) #7, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %r217, metadata !129, metadata !DIExpression()), !dbg !909
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr218) #7, !dbg !910
  call void @llvm.dbg.declare(metadata ptr %__pptr218, metadata !132, metadata !DIExpression()), !dbg !910
  %132 = load ptr, ptr %insn.addr, align 8, !dbg !910
  %next_byte219 = getelementptr inbounds %struct.insn, ptr %132, i32 0, i32 17, !dbg !910
  %133 = load ptr, ptr %next_byte219, align 8, !dbg !910
  %add.ptr220 = getelementptr i8, ptr %133, i64 1, !dbg !910
  store ptr %add.ptr220, ptr %__pptr218, align 8, !dbg !910
  %134 = load ptr, ptr %__pptr218, align 8, !dbg !910
  %x222 = getelementptr inbounds %struct.anon.5, ptr %134, i32 0, i32 0, !dbg !910
  %135 = load i8, ptr %x222, align 1, !dbg !910
  store i8 %135, ptr %tmp221, align 1, !dbg !910
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr218) #7, !dbg !909
  %136 = load i8, ptr %tmp221, align 1, !dbg !910
  store i8 %136, ptr %r217, align 1, !dbg !909
  call void @llvm.lifetime.start.p0(i64 1, ptr %v224) #7, !dbg !911
  call void @llvm.dbg.declare(metadata ptr %v224, metadata !139, metadata !DIExpression()), !dbg !911
  %137 = load i8, ptr %r217, align 1, !dbg !911
  store i8 %137, ptr %v224, align 1, !dbg !911
  %138 = load i8, ptr %v224, align 1, !dbg !911
  store i8 %138, ptr %tmp225, align 1, !dbg !911
  call void @llvm.lifetime.end.p0(i64 1, ptr %v224) #7, !dbg !909
  %139 = load i8, ptr %tmp225, align 1, !dbg !911
  store i8 %139, ptr %tmp223, align 1, !dbg !909
  call void @llvm.lifetime.end.p0(i64 1, ptr %r217) #7, !dbg !908
  %140 = load i8, ptr %tmp223, align 1, !dbg !909
  store i8 %140, ptr %tmp216, align 1, !dbg !906
  %141 = load i8, ptr %tmp216, align 1, !dbg !908
  store i8 %141, ptr %b2, align 1, !dbg !905
  %142 = load ptr, ptr %insn.addr, align 8, !dbg !912
  %x86_64226 = getelementptr inbounds %struct.insn, ptr %142, i32 0, i32 14, !dbg !914
  %143 = load i8, ptr %x86_64226, align 1, !dbg !914
  %tobool227 = icmp ne i8 %143, 0, !dbg !912
  br i1 %tobool227, label %if.end235, label %if.then228, !dbg !915

if.then228:                                       ; preds = %if.end215
  %144 = load i8, ptr %b2, align 1, !dbg !916
  %conv229 = zext i8 %144 to i32, !dbg !916
  %and230 = and i32 %conv229, 192, !dbg !916
  %shr = ashr i32 %and230, 6, !dbg !916
  %cmp231 = icmp ne i32 %shr, 3, !dbg !919
  br i1 %cmp231, label %if.then233, label %if.end234, !dbg !920

if.then233:                                       ; preds = %if.then228
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !921

if.end234:                                        ; preds = %if.then228
  br label %if.end235, !dbg !922

if.end235:                                        ; preds = %if.end234, %if.end215
  %145 = load ptr, ptr %insn.addr, align 8, !dbg !923
  %vex_prefix = getelementptr inbounds %struct.insn, ptr %145, i32 0, i32 2, !dbg !924
  %146 = load i8, ptr %b, align 1, !dbg !925
  call void @insn_set_byte(ptr noundef %vex_prefix, i8 noundef zeroext 0, i8 noundef zeroext %146) #8, !dbg !926
  %147 = load ptr, ptr %insn.addr, align 8, !dbg !927
  %vex_prefix236 = getelementptr inbounds %struct.insn, ptr %147, i32 0, i32 2, !dbg !928
  %148 = load i8, ptr %b2, align 1, !dbg !929
  call void @insn_set_byte(ptr noundef %vex_prefix236, i8 noundef zeroext 1, i8 noundef zeroext %148) #8, !dbg !930
  %149 = load i32, ptr %attr, align 4, !dbg !931
  %call237 = call i32 @inat_is_evex_prefix(i32 noundef %149) #8, !dbg !932
  %tobool238 = icmp ne i32 %call237, 0, !dbg !932
  br i1 %tobool238, label %if.then239, label %if.else310, !dbg !933

if.then239:                                       ; preds = %if.end235
  %150 = load ptr, ptr %insn.addr, align 8, !dbg !934
  %next_byte240 = getelementptr inbounds %struct.insn, ptr %150, i32 0, i32 17, !dbg !934
  %151 = load ptr, ptr %next_byte240, align 8, !dbg !934
  %add.ptr241 = getelementptr i8, ptr %151, i64 1, !dbg !934
  %add.ptr242 = getelementptr i8, ptr %add.ptr241, i64 2, !dbg !934
  %152 = load ptr, ptr %insn.addr, align 8, !dbg !934
  %end_kaddr243 = getelementptr inbounds %struct.insn, ptr %152, i32 0, i32 16, !dbg !934
  %153 = load ptr, ptr %end_kaddr243, align 8, !dbg !934
  %cmp244 = icmp ule ptr %add.ptr242, %153, !dbg !934
  %lnot246 = xor i1 %cmp244, true, !dbg !934
  %lnot248 = xor i1 %lnot246, true, !dbg !934
  %lnot250 = xor i1 %lnot248, true, !dbg !934
  %lnot.ext251 = zext i1 %lnot250 to i32, !dbg !934
  %conv252 = sext i32 %lnot.ext251 to i64, !dbg !934
  %expval253 = call i64 @llvm.expect.i64(i64 %conv252, i64 0), !dbg !934
  %tobool254 = icmp ne i64 %expval253, 0, !dbg !934
  br i1 %tobool254, label %if.then255, label %if.end256, !dbg !936

if.then255:                                       ; preds = %if.then239
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !934

if.end256:                                        ; preds = %if.then239
  call void @llvm.lifetime.start.p0(i64 1, ptr %r258) #7, !dbg !937
  call void @llvm.dbg.declare(metadata ptr %r258, metadata !141, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr259) #7, !dbg !938
  call void @llvm.dbg.declare(metadata ptr %__pptr259, metadata !146, metadata !DIExpression()), !dbg !938
  %154 = load ptr, ptr %insn.addr, align 8, !dbg !938
  %next_byte260 = getelementptr inbounds %struct.insn, ptr %154, i32 0, i32 17, !dbg !938
  %155 = load ptr, ptr %next_byte260, align 8, !dbg !938
  %add.ptr261 = getelementptr i8, ptr %155, i64 2, !dbg !938
  store ptr %add.ptr261, ptr %__pptr259, align 8, !dbg !938
  %156 = load ptr, ptr %__pptr259, align 8, !dbg !938
  %x263 = getelementptr inbounds %struct.anon.6, ptr %156, i32 0, i32 0, !dbg !938
  %157 = load i8, ptr %x263, align 1, !dbg !938
  store i8 %157, ptr %tmp262, align 1, !dbg !938
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr259) #7, !dbg !937
  %158 = load i8, ptr %tmp262, align 1, !dbg !938
  store i8 %158, ptr %r258, align 1, !dbg !937
  call void @llvm.lifetime.start.p0(i64 1, ptr %v265) #7, !dbg !939
  call void @llvm.dbg.declare(metadata ptr %v265, metadata !153, metadata !DIExpression()), !dbg !939
  %159 = load i8, ptr %r258, align 1, !dbg !939
  store i8 %159, ptr %v265, align 1, !dbg !939
  %160 = load i8, ptr %v265, align 1, !dbg !939
  store i8 %160, ptr %tmp266, align 1, !dbg !939
  call void @llvm.lifetime.end.p0(i64 1, ptr %v265) #7, !dbg !937
  %161 = load i8, ptr %tmp266, align 1, !dbg !939
  store i8 %161, ptr %tmp264, align 1, !dbg !937
  call void @llvm.lifetime.end.p0(i64 1, ptr %r258) #7, !dbg !936
  %162 = load i8, ptr %tmp264, align 1, !dbg !937
  store i8 %162, ptr %tmp257, align 1, !dbg !934
  %163 = load i8, ptr %tmp257, align 1, !dbg !936
  store i8 %163, ptr %b2, align 1, !dbg !940
  %164 = load ptr, ptr %insn.addr, align 8, !dbg !941
  %vex_prefix267 = getelementptr inbounds %struct.insn, ptr %164, i32 0, i32 2, !dbg !942
  %165 = load i8, ptr %b2, align 1, !dbg !943
  call void @insn_set_byte(ptr noundef %vex_prefix267, i8 noundef zeroext 2, i8 noundef zeroext %165) #8, !dbg !944
  %166 = load ptr, ptr %insn.addr, align 8, !dbg !945
  %next_byte268 = getelementptr inbounds %struct.insn, ptr %166, i32 0, i32 17, !dbg !945
  %167 = load ptr, ptr %next_byte268, align 8, !dbg !945
  %add.ptr269 = getelementptr i8, ptr %167, i64 1, !dbg !945
  %add.ptr270 = getelementptr i8, ptr %add.ptr269, i64 3, !dbg !945
  %168 = load ptr, ptr %insn.addr, align 8, !dbg !945
  %end_kaddr271 = getelementptr inbounds %struct.insn, ptr %168, i32 0, i32 16, !dbg !945
  %169 = load ptr, ptr %end_kaddr271, align 8, !dbg !945
  %cmp272 = icmp ule ptr %add.ptr270, %169, !dbg !945
  %lnot274 = xor i1 %cmp272, true, !dbg !945
  %lnot276 = xor i1 %lnot274, true, !dbg !945
  %lnot278 = xor i1 %lnot276, true, !dbg !945
  %lnot.ext279 = zext i1 %lnot278 to i32, !dbg !945
  %conv280 = sext i32 %lnot.ext279 to i64, !dbg !945
  %expval281 = call i64 @llvm.expect.i64(i64 %conv280, i64 0), !dbg !945
  %tobool282 = icmp ne i64 %expval281, 0, !dbg !945
  br i1 %tobool282, label %if.then283, label %if.end284, !dbg !947

if.then283:                                       ; preds = %if.end256
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !945

if.end284:                                        ; preds = %if.end256
  call void @llvm.lifetime.start.p0(i64 1, ptr %r286) #7, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %r286, metadata !155, metadata !DIExpression()), !dbg !948
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr287) #7, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %__pptr287, metadata !158, metadata !DIExpression()), !dbg !949
  %170 = load ptr, ptr %insn.addr, align 8, !dbg !949
  %next_byte288 = getelementptr inbounds %struct.insn, ptr %170, i32 0, i32 17, !dbg !949
  %171 = load ptr, ptr %next_byte288, align 8, !dbg !949
  %add.ptr289 = getelementptr i8, ptr %171, i64 3, !dbg !949
  store ptr %add.ptr289, ptr %__pptr287, align 8, !dbg !949
  %172 = load ptr, ptr %__pptr287, align 8, !dbg !949
  %x291 = getelementptr inbounds %struct.anon.7, ptr %172, i32 0, i32 0, !dbg !949
  %173 = load i8, ptr %x291, align 1, !dbg !949
  store i8 %173, ptr %tmp290, align 1, !dbg !949
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr287) #7, !dbg !948
  %174 = load i8, ptr %tmp290, align 1, !dbg !949
  store i8 %174, ptr %r286, align 1, !dbg !948
  call void @llvm.lifetime.start.p0(i64 1, ptr %v293) #7, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %v293, metadata !165, metadata !DIExpression()), !dbg !950
  %175 = load i8, ptr %r286, align 1, !dbg !950
  store i8 %175, ptr %v293, align 1, !dbg !950
  %176 = load i8, ptr %v293, align 1, !dbg !950
  store i8 %176, ptr %tmp294, align 1, !dbg !950
  call void @llvm.lifetime.end.p0(i64 1, ptr %v293) #7, !dbg !948
  %177 = load i8, ptr %tmp294, align 1, !dbg !950
  store i8 %177, ptr %tmp292, align 1, !dbg !948
  call void @llvm.lifetime.end.p0(i64 1, ptr %r286) #7, !dbg !947
  %178 = load i8, ptr %tmp292, align 1, !dbg !948
  store i8 %178, ptr %tmp285, align 1, !dbg !945
  %179 = load i8, ptr %tmp285, align 1, !dbg !947
  store i8 %179, ptr %b2, align 1, !dbg !951
  %180 = load ptr, ptr %insn.addr, align 8, !dbg !952
  %vex_prefix295 = getelementptr inbounds %struct.insn, ptr %180, i32 0, i32 2, !dbg !953
  %181 = load i8, ptr %b2, align 1, !dbg !954
  call void @insn_set_byte(ptr noundef %vex_prefix295, i8 noundef zeroext 3, i8 noundef zeroext %181) #8, !dbg !955
  %182 = load ptr, ptr %insn.addr, align 8, !dbg !956
  %vex_prefix296 = getelementptr inbounds %struct.insn, ptr %182, i32 0, i32 2, !dbg !957
  %nbytes297 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix296, i32 0, i32 2, !dbg !958
  store i8 4, ptr %nbytes297, align 1, !dbg !959
  %183 = load ptr, ptr %insn.addr, align 8, !dbg !960
  %next_byte298 = getelementptr inbounds %struct.insn, ptr %183, i32 0, i32 17, !dbg !961
  %184 = load ptr, ptr %next_byte298, align 8, !dbg !962
  %add.ptr299 = getelementptr i8, ptr %184, i64 4, !dbg !962
  store ptr %add.ptr299, ptr %next_byte298, align 8, !dbg !962
  %185 = load ptr, ptr %insn.addr, align 8, !dbg !963
  %x86_64300 = getelementptr inbounds %struct.insn, ptr %185, i32 0, i32 14, !dbg !965
  %186 = load i8, ptr %x86_64300, align 1, !dbg !965
  %conv301 = zext i8 %186 to i32, !dbg !963
  %tobool302 = icmp ne i32 %conv301, 0, !dbg !963
  br i1 %tobool302, label %land.lhs.true303, label %if.end309, !dbg !966

land.lhs.true303:                                 ; preds = %if.end284
  %187 = load i8, ptr %b2, align 1, !dbg !967
  %conv304 = zext i8 %187 to i32, !dbg !967
  %and305 = and i32 %conv304, 128, !dbg !967
  %tobool306 = icmp ne i32 %and305, 0, !dbg !967
  br i1 %tobool306, label %if.then307, label %if.end309, !dbg !968

if.then307:                                       ; preds = %land.lhs.true303
  %188 = load ptr, ptr %insn.addr, align 8, !dbg !969
  %opnd_bytes308 = getelementptr inbounds %struct.insn, ptr %188, i32 0, i32 11, !dbg !970
  store i8 8, ptr %opnd_bytes308, align 8, !dbg !971
  br label %if.end309, !dbg !969

if.end309:                                        ; preds = %if.then307, %land.lhs.true303, %if.end284
  br label %if.end366, !dbg !972

if.else310:                                       ; preds = %if.end235
  %189 = load i32, ptr %attr, align 4, !dbg !973
  %call311 = call i32 @inat_is_vex3_prefix(i32 noundef %189) #8, !dbg !974
  %tobool312 = icmp ne i32 %call311, 0, !dbg !974
  br i1 %tobool312, label %if.then313, label %if.else356, !dbg !975

if.then313:                                       ; preds = %if.else310
  %190 = load ptr, ptr %insn.addr, align 8, !dbg !976
  %next_byte314 = getelementptr inbounds %struct.insn, ptr %190, i32 0, i32 17, !dbg !976
  %191 = load ptr, ptr %next_byte314, align 8, !dbg !976
  %add.ptr315 = getelementptr i8, ptr %191, i64 1, !dbg !976
  %add.ptr316 = getelementptr i8, ptr %add.ptr315, i64 2, !dbg !976
  %192 = load ptr, ptr %insn.addr, align 8, !dbg !976
  %end_kaddr317 = getelementptr inbounds %struct.insn, ptr %192, i32 0, i32 16, !dbg !976
  %193 = load ptr, ptr %end_kaddr317, align 8, !dbg !976
  %cmp318 = icmp ule ptr %add.ptr316, %193, !dbg !976
  %lnot320 = xor i1 %cmp318, true, !dbg !976
  %lnot322 = xor i1 %lnot320, true, !dbg !976
  %lnot324 = xor i1 %lnot322, true, !dbg !976
  %lnot.ext325 = zext i1 %lnot324 to i32, !dbg !976
  %conv326 = sext i32 %lnot.ext325 to i64, !dbg !976
  %expval327 = call i64 @llvm.expect.i64(i64 %conv326, i64 0), !dbg !976
  %tobool328 = icmp ne i64 %expval327, 0, !dbg !976
  br i1 %tobool328, label %if.then329, label %if.end330, !dbg !978

if.then329:                                       ; preds = %if.then313
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !976

if.end330:                                        ; preds = %if.then313
  call void @llvm.lifetime.start.p0(i64 1, ptr %r332) #7, !dbg !979
  call void @llvm.dbg.declare(metadata ptr %r332, metadata !167, metadata !DIExpression()), !dbg !979
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr333) #7, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %__pptr333, metadata !172, metadata !DIExpression()), !dbg !980
  %194 = load ptr, ptr %insn.addr, align 8, !dbg !980
  %next_byte334 = getelementptr inbounds %struct.insn, ptr %194, i32 0, i32 17, !dbg !980
  %195 = load ptr, ptr %next_byte334, align 8, !dbg !980
  %add.ptr335 = getelementptr i8, ptr %195, i64 2, !dbg !980
  store ptr %add.ptr335, ptr %__pptr333, align 8, !dbg !980
  %196 = load ptr, ptr %__pptr333, align 8, !dbg !980
  %x337 = getelementptr inbounds %struct.anon.8, ptr %196, i32 0, i32 0, !dbg !980
  %197 = load i8, ptr %x337, align 1, !dbg !980
  store i8 %197, ptr %tmp336, align 1, !dbg !980
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr333) #7, !dbg !979
  %198 = load i8, ptr %tmp336, align 1, !dbg !980
  store i8 %198, ptr %r332, align 1, !dbg !979
  call void @llvm.lifetime.start.p0(i64 1, ptr %v339) #7, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %v339, metadata !179, metadata !DIExpression()), !dbg !981
  %199 = load i8, ptr %r332, align 1, !dbg !981
  store i8 %199, ptr %v339, align 1, !dbg !981
  %200 = load i8, ptr %v339, align 1, !dbg !981
  store i8 %200, ptr %tmp340, align 1, !dbg !981
  call void @llvm.lifetime.end.p0(i64 1, ptr %v339) #7, !dbg !979
  %201 = load i8, ptr %tmp340, align 1, !dbg !981
  store i8 %201, ptr %tmp338, align 1, !dbg !979
  call void @llvm.lifetime.end.p0(i64 1, ptr %r332) #7, !dbg !978
  %202 = load i8, ptr %tmp338, align 1, !dbg !979
  store i8 %202, ptr %tmp331, align 1, !dbg !976
  %203 = load i8, ptr %tmp331, align 1, !dbg !978
  store i8 %203, ptr %b2, align 1, !dbg !982
  %204 = load ptr, ptr %insn.addr, align 8, !dbg !983
  %vex_prefix341 = getelementptr inbounds %struct.insn, ptr %204, i32 0, i32 2, !dbg !984
  %205 = load i8, ptr %b2, align 1, !dbg !985
  call void @insn_set_byte(ptr noundef %vex_prefix341, i8 noundef zeroext 2, i8 noundef zeroext %205) #8, !dbg !986
  %206 = load ptr, ptr %insn.addr, align 8, !dbg !987
  %vex_prefix342 = getelementptr inbounds %struct.insn, ptr %206, i32 0, i32 2, !dbg !988
  %nbytes343 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix342, i32 0, i32 2, !dbg !989
  store i8 3, ptr %nbytes343, align 1, !dbg !990
  %207 = load ptr, ptr %insn.addr, align 8, !dbg !991
  %next_byte344 = getelementptr inbounds %struct.insn, ptr %207, i32 0, i32 17, !dbg !992
  %208 = load ptr, ptr %next_byte344, align 8, !dbg !993
  %add.ptr345 = getelementptr i8, ptr %208, i64 3, !dbg !993
  store ptr %add.ptr345, ptr %next_byte344, align 8, !dbg !993
  %209 = load ptr, ptr %insn.addr, align 8, !dbg !994
  %x86_64346 = getelementptr inbounds %struct.insn, ptr %209, i32 0, i32 14, !dbg !996
  %210 = load i8, ptr %x86_64346, align 1, !dbg !996
  %conv347 = zext i8 %210 to i32, !dbg !994
  %tobool348 = icmp ne i32 %conv347, 0, !dbg !994
  br i1 %tobool348, label %land.lhs.true349, label %if.end355, !dbg !997

land.lhs.true349:                                 ; preds = %if.end330
  %211 = load i8, ptr %b2, align 1, !dbg !998
  %conv350 = zext i8 %211 to i32, !dbg !998
  %and351 = and i32 %conv350, 128, !dbg !998
  %tobool352 = icmp ne i32 %and351, 0, !dbg !998
  br i1 %tobool352, label %if.then353, label %if.end355, !dbg !999

if.then353:                                       ; preds = %land.lhs.true349
  %212 = load ptr, ptr %insn.addr, align 8, !dbg !1000
  %opnd_bytes354 = getelementptr inbounds %struct.insn, ptr %212, i32 0, i32 11, !dbg !1001
  store i8 8, ptr %opnd_bytes354, align 8, !dbg !1002
  br label %if.end355, !dbg !1000

if.end355:                                        ; preds = %if.then353, %land.lhs.true349, %if.end330
  br label %if.end365, !dbg !1003

if.else356:                                       ; preds = %if.else310
  %213 = load ptr, ptr %insn.addr, align 8, !dbg !1004
  %vex_prefix357 = getelementptr inbounds %struct.insn, ptr %213, i32 0, i32 2, !dbg !1006
  %214 = load i8, ptr %b2, align 1, !dbg !1007
  %conv358 = zext i8 %214 to i32, !dbg !1007
  %and359 = and i32 %conv358, 127, !dbg !1008
  %conv360 = trunc i32 %and359 to i8, !dbg !1007
  call void @insn_set_byte(ptr noundef %vex_prefix357, i8 noundef zeroext 2, i8 noundef zeroext %conv360) #8, !dbg !1009
  %215 = load ptr, ptr %insn.addr, align 8, !dbg !1010
  %vex_prefix361 = getelementptr inbounds %struct.insn, ptr %215, i32 0, i32 2, !dbg !1011
  %nbytes362 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix361, i32 0, i32 2, !dbg !1012
  store i8 2, ptr %nbytes362, align 1, !dbg !1013
  %216 = load ptr, ptr %insn.addr, align 8, !dbg !1014
  %next_byte363 = getelementptr inbounds %struct.insn, ptr %216, i32 0, i32 17, !dbg !1015
  %217 = load ptr, ptr %next_byte363, align 8, !dbg !1016
  %add.ptr364 = getelementptr i8, ptr %217, i64 2, !dbg !1016
  store ptr %add.ptr364, ptr %next_byte363, align 8, !dbg !1016
  br label %if.end365

if.end365:                                        ; preds = %if.else356, %if.end355
  br label %if.end366

if.end366:                                        ; preds = %if.end365, %if.end309
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1017
  br label %cleanup, !dbg !1017

cleanup:                                          ; preds = %if.then329, %if.then283, %if.then255, %if.then233, %if.then214, %if.end366
  call void @llvm.lifetime.end.p0(i64 1, ptr %b2) #7, !dbg !1017
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup371 [
    i32 0, label %cleanup.cont
    i32 12, label %vex_end
    i32 2, label %err_out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end367, !dbg !1018

if.end367:                                        ; preds = %cleanup.cont, %if.end184
  br label %vex_end, !dbg !1019

vex_end:                                          ; preds = %if.end367, %cleanup
  call void @llvm.dbg.label(metadata !181), !dbg !1020
  %218 = load ptr, ptr %insn.addr, align 8, !dbg !1021
  %vex_prefix368 = getelementptr inbounds %struct.insn, ptr %218, i32 0, i32 2, !dbg !1022
  %got369 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix368, i32 0, i32 1, !dbg !1023
  store i8 1, ptr %got369, align 4, !dbg !1024
  %219 = load ptr, ptr %prefixes, align 8, !dbg !1025
  %got370 = getelementptr inbounds %struct.insn_field, ptr %219, i32 0, i32 1, !dbg !1026
  store i8 1, ptr %got370, align 4, !dbg !1027
  store i32 0, ptr %retval, align 4, !dbg !1028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup371, !dbg !1028

err_out:                                          ; preds = %cleanup, %if.then183, %if.then140, %if.then68, %if.then6
  call void @llvm.dbg.label(metadata !182), !dbg !1029
  store i32 -61, ptr %retval, align 4, !dbg !1030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup371, !dbg !1030

cleanup371:                                       ; preds = %err_out, %vex_end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #7, !dbg !1031
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !1031
  call void @llvm.lifetime.end.p0(i64 1, ptr %lb) #7, !dbg !1031
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #7, !dbg !1031
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr) #7, !dbg !1031
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefixes) #7, !dbg !1031
  %220 = load i32, ptr %retval, align 4, !dbg !1031
  ret i32 %220, !dbg !1031
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @insn_get_emulate_prefix(ptr noundef %insn) #0 align 16 !dbg !1032 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !1036, metadata !DIExpression()), !dbg !1037
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1038
  %call = call i32 @__insn_get_emulate_prefix(ptr noundef %0, ptr noundef @xen_prefix, i64 noundef 5) #8, !dbg !1040
  %tobool = icmp ne i32 %call, 0, !dbg !1040
  br i1 %tobool, label %if.then, label %if.end, !dbg !1041

if.then:                                          ; preds = %entry
  br label %return, !dbg !1042

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !1043
  %call1 = call i32 @__insn_get_emulate_prefix(ptr noundef %1, ptr noundef @kvm_prefix, i64 noundef 5) #8, !dbg !1044
  br label %return, !dbg !1045

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1045
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1046 dso_local i32 @inat_get_opcode_attribute(i8 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_legacy_prefix(i32 noundef %attr) #6 align 16 !dbg !1050 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1054, metadata !DIExpression()), !dbg !1055
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1056
  %and = and i32 %0, 15, !dbg !1056
  store i32 %and, ptr %attr.addr, align 4, !dbg !1056
  %1 = load i32, ptr %attr.addr, align 4, !dbg !1057
  %tobool = icmp ne i32 %1, 0, !dbg !1057
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1058

land.rhs:                                         ; preds = %entry
  %2 = load i32, ptr %attr.addr, align 4, !dbg !1059
  %cmp = icmp ule i32 %2, 11, !dbg !1060
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !1061
  %land.ext = zext i1 %3 to i32, !dbg !1058
  ret i32 %land.ext, !dbg !1062
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_address_size_prefix(i32 noundef %attr) #6 align 16 !dbg !1063 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1065, metadata !DIExpression()), !dbg !1066
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1067
  %and = and i32 %0, 15, !dbg !1068
  %cmp = icmp eq i32 %and, 11, !dbg !1069
  %conv = zext i1 %cmp to i32, !dbg !1069
  ret i32 %conv, !dbg !1070
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_operand_size_prefix(i32 noundef %attr) #6 align 16 !dbg !1071 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1075
  %and = and i32 %0, 15, !dbg !1076
  %cmp = icmp eq i32 %and, 1, !dbg !1077
  %conv = zext i1 %cmp to i32, !dbg !1077
  ret i32 %conv, !dbg !1078
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @insn_set_byte(ptr noundef %p, i8 noundef zeroext %n, i8 noundef zeroext %v) #6 align 16 !dbg !1079 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i8, align 1
  %v.addr = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1083, metadata !DIExpression()), !dbg !1086
  store i8 %n, ptr %n.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1084, metadata !DIExpression()), !dbg !1087
  store i8 %v, ptr %v.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1085, metadata !DIExpression()), !dbg !1088
  %0 = load i8, ptr %v.addr, align 1, !dbg !1089
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1090
  %2 = getelementptr inbounds %struct.insn_field, ptr %1, i32 0, i32 0, !dbg !1091
  %3 = load i8, ptr %n.addr, align 1, !dbg !1092
  %idxprom = zext i8 %3 to i64, !dbg !1090
  %arrayidx = getelementptr [4 x i8], ptr %2, i64 0, i64 %idxprom, !dbg !1090
  store i8 %0, ptr %arrayidx, align 1, !dbg !1093
  ret void, !dbg !1094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_rex_prefix(i32 noundef %attr) #6 align 16 !dbg !1095 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1097, metadata !DIExpression()), !dbg !1098
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1099
  %and = and i32 %0, 15, !dbg !1100
  %cmp = icmp eq i32 %and, 12, !dbg !1101
  %conv = zext i1 %cmp to i32, !dbg !1101
  ret i32 %conv, !dbg !1102
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @insn_field_set(ptr noundef %p, i32 noundef %v, i8 noundef zeroext %n) #6 align 16 !dbg !1103 {
entry:
  %p.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  %n.addr = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1107, metadata !DIExpression()), !dbg !1110
  store i32 %v, ptr %v.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1108, metadata !DIExpression()), !dbg !1111
  store i8 %n, ptr %n.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1109, metadata !DIExpression()), !dbg !1112
  %0 = load i32, ptr %v.addr, align 4, !dbg !1113
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1114
  %2 = getelementptr inbounds %struct.insn_field, ptr %1, i32 0, i32 0, !dbg !1115
  store i32 %0, ptr %2, align 4, !dbg !1116
  %3 = load i8, ptr %n.addr, align 1, !dbg !1117
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1118
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %4, i32 0, i32 2, !dbg !1119
  store i8 %3, ptr %nbytes, align 1, !dbg !1120
  ret void, !dbg !1121
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_vex_prefix(i32 noundef %attr) #6 align 16 !dbg !1122 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1124, metadata !DIExpression()), !dbg !1125
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1126
  %and = and i32 %0, 15, !dbg !1126
  store i32 %and, ptr %attr.addr, align 4, !dbg !1126
  %1 = load i32, ptr %attr.addr, align 4, !dbg !1127
  %cmp = icmp eq i32 %1, 13, !dbg !1128
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !1129

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %attr.addr, align 4, !dbg !1130
  %cmp1 = icmp eq i32 %2, 14, !dbg !1131
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !1132

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i32, ptr %attr.addr, align 4, !dbg !1133
  %cmp2 = icmp eq i32 %3, 15, !dbg !1134
  br label %lor.end, !dbg !1132

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !1132
  ret i32 %lor.ext, !dbg !1135
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_evex_prefix(i32 noundef %attr) #6 align 16 !dbg !1136 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1138, metadata !DIExpression()), !dbg !1139
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1140
  %and = and i32 %0, 15, !dbg !1141
  %cmp = icmp eq i32 %and, 15, !dbg !1142
  %conv = zext i1 %cmp to i32, !dbg !1142
  ret i32 %conv, !dbg !1143
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_vex3_prefix(i32 noundef %attr) #6 align 16 !dbg !1144 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1146, metadata !DIExpression()), !dbg !1147
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1148
  %and = and i32 %0, 15, !dbg !1149
  %cmp = icmp eq i32 %and, 14, !dbg !1150
  %conv = zext i1 %cmp to i32, !dbg !1150
  ret i32 %conv, !dbg !1151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_opcode(ptr noundef %insn) #0 align 16 !dbg !189 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %opcode = alloca ptr, align 8
  %pfx_id = alloca i32, align 4
  %ret = alloca i32, align 4
  %op = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i8, align 1
  %r = alloca i8, align 1
  %__pptr = alloca ptr, align 8
  %tmp16 = alloca i8, align 1
  %tmp19 = alloca i8, align 1
  %v = alloca i8, align 1
  %tmp20 = alloca i8, align 1
  %m = alloca i8, align 1
  %p = alloca i8, align 1
  %tmp66 = alloca i8, align 1
  %r67 = alloca i8, align 1
  %__pptr68 = alloca ptr, align 8
  %tmp70 = alloca i8, align 1
  %tmp74 = alloca i8, align 1
  %v75 = alloca i8, align 1
  %tmp76 = alloca i8, align 1
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !191, metadata !DIExpression()), !dbg !1152
  call void @llvm.lifetime.start.p0(i64 8, ptr %opcode) #7, !dbg !1153
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !192, metadata !DIExpression()), !dbg !1154
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1155
  %opcode1 = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 3, !dbg !1156
  store ptr %opcode1, ptr %opcode, align 8, !dbg !1154
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfx_id) #7, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %pfx_id, metadata !193, metadata !DIExpression()), !dbg !1158
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !194, metadata !DIExpression()), !dbg !1159
  call void @llvm.lifetime.start.p0(i64 1, ptr %op) #7, !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %op, metadata !195, metadata !DIExpression()), !dbg !1161
  %1 = load ptr, ptr %opcode, align 8, !dbg !1162
  %got = getelementptr inbounds %struct.insn_field, ptr %1, i32 0, i32 1, !dbg !1164
  %2 = load i8, ptr %got, align 4, !dbg !1164
  %tobool = icmp ne i8 %2, 0, !dbg !1162
  br i1 %tobool, label %if.then, label %if.end, !dbg !1165

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89, !dbg !1166

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !1167
  %prefixes = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 0, !dbg !1169
  %got2 = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 1, !dbg !1170
  %4 = load i8, ptr %got2, align 4, !dbg !1170
  %tobool3 = icmp ne i8 %4, 0, !dbg !1167
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !1171

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !1172
  %call = call i32 @insn_get_prefixes(ptr noundef %5) #8, !dbg !1174
  store i32 %call, ptr %ret, align 4, !dbg !1175
  %6 = load i32, ptr %ret, align 4, !dbg !1176
  %tobool5 = icmp ne i32 %6, 0, !dbg !1176
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1178

if.then6:                                         ; preds = %if.then4
  %7 = load i32, ptr %ret, align 4, !dbg !1179
  store i32 %7, ptr %retval, align 4, !dbg !1180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89, !dbg !1180

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !1181

if.end8:                                          ; preds = %if.end7, %if.end
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !1182
  %next_byte = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 17, !dbg !1182
  %9 = load ptr, ptr %next_byte, align 8, !dbg !1182
  %add.ptr = getelementptr i8, ptr %9, i64 1, !dbg !1182
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i64 0, !dbg !1182
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !1182
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %10, i32 0, i32 16, !dbg !1182
  %11 = load ptr, ptr %end_kaddr, align 8, !dbg !1182
  %cmp = icmp ule ptr %add.ptr9, %11, !dbg !1182
  %lnot = xor i1 %cmp, true, !dbg !1182
  %lnot10 = xor i1 %lnot, true, !dbg !1182
  %lnot11 = xor i1 %lnot10, true, !dbg !1182
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !1182
  %conv = sext i32 %lnot.ext to i64, !dbg !1182
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1182
  %tobool12 = icmp ne i64 %expval, 0, !dbg !1182
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1184

if.then13:                                        ; preds = %if.end8
  br label %err_out, !dbg !1182

if.end14:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #7, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %r, metadata !196, metadata !DIExpression()), !dbg !1185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !1186
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !199, metadata !DIExpression()), !dbg !1186
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !1186
  %next_byte15 = getelementptr inbounds %struct.insn, ptr %12, i32 0, i32 17, !dbg !1186
  %13 = load ptr, ptr %next_byte15, align 8, !dbg !1186
  store ptr %13, ptr %__pptr, align 8, !dbg !1186
  %14 = load ptr, ptr %__pptr, align 8, !dbg !1186
  %x = getelementptr inbounds %struct.anon.9, ptr %14, i32 0, i32 0, !dbg !1186
  %15 = load i8, ptr %x, align 1, !dbg !1186
  store i8 %15, ptr %tmp16, align 1, !dbg !1186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !1185
  %16 = load i8, ptr %tmp16, align 1, !dbg !1186
  store i8 %16, ptr %r, align 1, !dbg !1185
  %17 = load ptr, ptr %insn.addr, align 8, !dbg !1185
  %next_byte17 = getelementptr inbounds %struct.insn, ptr %17, i32 0, i32 17, !dbg !1185
  %18 = load ptr, ptr %next_byte17, align 8, !dbg !1185
  %add.ptr18 = getelementptr i8, ptr %18, i64 1, !dbg !1185
  store ptr %add.ptr18, ptr %next_byte17, align 8, !dbg !1185
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #7, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %v, metadata !201, metadata !DIExpression()), !dbg !1187
  %19 = load i8, ptr %r, align 1, !dbg !1187
  store i8 %19, ptr %v, align 1, !dbg !1187
  %20 = load i8, ptr %v, align 1, !dbg !1187
  store i8 %20, ptr %tmp20, align 1, !dbg !1187
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #7, !dbg !1185
  %21 = load i8, ptr %tmp20, align 1, !dbg !1187
  store i8 %21, ptr %tmp19, align 1, !dbg !1185
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #7, !dbg !1184
  %22 = load i8, ptr %tmp19, align 1, !dbg !1185
  store i8 %22, ptr %tmp, align 1, !dbg !1182
  %23 = load i8, ptr %tmp, align 1, !dbg !1184
  store i8 %23, ptr %op, align 1, !dbg !1188
  %24 = load ptr, ptr %opcode, align 8, !dbg !1189
  %25 = load i8, ptr %op, align 1, !dbg !1190
  call void @insn_set_byte(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext %25) #8, !dbg !1191
  %26 = load ptr, ptr %opcode, align 8, !dbg !1192
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %26, i32 0, i32 2, !dbg !1193
  store i8 1, ptr %nbytes, align 1, !dbg !1194
  %27 = load ptr, ptr %insn.addr, align 8, !dbg !1195
  %call21 = call i32 @insn_is_avx(ptr noundef %27) #8, !dbg !1196
  %tobool22 = icmp ne i32 %call21, 0, !dbg !1196
  br i1 %tobool22, label %if.then23, label %if.end43, !dbg !1197

if.then23:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 1, ptr %m) #7, !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %m, metadata !203, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.start.p0(i64 1, ptr %p) #7, !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %p, metadata !206, metadata !DIExpression()), !dbg !1200
  %28 = load ptr, ptr %insn.addr, align 8, !dbg !1201
  %call24 = call zeroext i8 @insn_vex_m_bits(ptr noundef %28) #8, !dbg !1202
  store i8 %call24, ptr %m, align 1, !dbg !1203
  %29 = load ptr, ptr %insn.addr, align 8, !dbg !1204
  %call25 = call zeroext i8 @insn_vex_p_bits(ptr noundef %29) #8, !dbg !1205
  store i8 %call25, ptr %p, align 1, !dbg !1206
  %30 = load i8, ptr %op, align 1, !dbg !1207
  %31 = load i8, ptr %m, align 1, !dbg !1208
  %32 = load i8, ptr %p, align 1, !dbg !1209
  %call26 = call i32 @inat_get_avx_attribute(i8 noundef zeroext %30, i8 noundef zeroext %31, i8 noundef zeroext %32) #8, !dbg !1210
  %33 = load ptr, ptr %insn.addr, align 8, !dbg !1211
  %attr = getelementptr inbounds %struct.insn, ptr %33, i32 0, i32 10, !dbg !1212
  store i32 %call26, ptr %attr, align 4, !dbg !1213
  %34 = load ptr, ptr %insn.addr, align 8, !dbg !1214
  %attr27 = getelementptr inbounds %struct.insn, ptr %34, i32 0, i32 10, !dbg !1216
  %35 = load i32, ptr %attr27, align 4, !dbg !1216
  %call28 = call i32 @inat_must_evex(i32 noundef %35) #8, !dbg !1217
  %tobool29 = icmp ne i32 %call28, 0, !dbg !1217
  br i1 %tobool29, label %land.lhs.true, label %lor.lhs.false, !dbg !1218

land.lhs.true:                                    ; preds = %if.then23
  %36 = load ptr, ptr %insn.addr, align 8, !dbg !1219
  %call30 = call i32 @insn_is_evex(ptr noundef %36) #8, !dbg !1220
  %tobool31 = icmp ne i32 %call30, 0, !dbg !1220
  br i1 %tobool31, label %lor.lhs.false, label %if.then39, !dbg !1221

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then23
  %37 = load ptr, ptr %insn.addr, align 8, !dbg !1222
  %attr32 = getelementptr inbounds %struct.insn, ptr %37, i32 0, i32 10, !dbg !1223
  %38 = load i32, ptr %attr32, align 4, !dbg !1223
  %call33 = call i32 @inat_accept_vex(i32 noundef %38) #8, !dbg !1224
  %tobool34 = icmp ne i32 %call33, 0, !dbg !1224
  br i1 %tobool34, label %if.end41, label %land.lhs.true35, !dbg !1225

land.lhs.true35:                                  ; preds = %lor.lhs.false
  %39 = load ptr, ptr %insn.addr, align 8, !dbg !1226
  %attr36 = getelementptr inbounds %struct.insn, ptr %39, i32 0, i32 10, !dbg !1227
  %40 = load i32, ptr %attr36, align 4, !dbg !1227
  %call37 = call i32 @inat_is_group(i32 noundef %40) #8, !dbg !1228
  %tobool38 = icmp ne i32 %call37, 0, !dbg !1228
  br i1 %tobool38, label %if.end41, label %if.then39, !dbg !1229

if.then39:                                        ; preds = %land.lhs.true35, %land.lhs.true
  %41 = load ptr, ptr %insn.addr, align 8, !dbg !1230
  %attr40 = getelementptr inbounds %struct.insn, ptr %41, i32 0, i32 10, !dbg !1232
  store i32 0, ptr %attr40, align 4, !dbg !1233
  store i32 -22, ptr %retval, align 4, !dbg !1234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1234

if.end41:                                         ; preds = %land.lhs.true35, %lor.lhs.false
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1235

cleanup:                                          ; preds = %if.end41, %if.then39
  call void @llvm.lifetime.end.p0(i64 1, ptr %p) #7, !dbg !1236
  call void @llvm.lifetime.end.p0(i64 1, ptr %m) #7, !dbg !1236
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup89 [
    i32 3, label %end
  ]

if.end43:                                         ; preds = %if.end14
  %42 = load i8, ptr %op, align 1, !dbg !1237
  %call44 = call i32 @inat_get_opcode_attribute(i8 noundef zeroext %42) #8, !dbg !1238
  %43 = load ptr, ptr %insn.addr, align 8, !dbg !1239
  %attr45 = getelementptr inbounds %struct.insn, ptr %43, i32 0, i32 10, !dbg !1240
  store i32 %call44, ptr %attr45, align 4, !dbg !1241
  br label %while.cond, !dbg !1242

while.cond:                                       ; preds = %if.end65, %if.end43
  %44 = load ptr, ptr %insn.addr, align 8, !dbg !1243
  %attr46 = getelementptr inbounds %struct.insn, ptr %44, i32 0, i32 10, !dbg !1244
  %45 = load i32, ptr %attr46, align 4, !dbg !1244
  %call47 = call i32 @inat_is_escape(i32 noundef %45) #8, !dbg !1245
  %tobool48 = icmp ne i32 %call47, 0, !dbg !1242
  br i1 %tobool48, label %while.body, label %while.end, !dbg !1242

while.body:                                       ; preds = %while.cond
  %46 = load ptr, ptr %insn.addr, align 8, !dbg !1246
  %next_byte49 = getelementptr inbounds %struct.insn, ptr %46, i32 0, i32 17, !dbg !1246
  %47 = load ptr, ptr %next_byte49, align 8, !dbg !1246
  %add.ptr50 = getelementptr i8, ptr %47, i64 1, !dbg !1246
  %add.ptr51 = getelementptr i8, ptr %add.ptr50, i64 0, !dbg !1246
  %48 = load ptr, ptr %insn.addr, align 8, !dbg !1246
  %end_kaddr52 = getelementptr inbounds %struct.insn, ptr %48, i32 0, i32 16, !dbg !1246
  %49 = load ptr, ptr %end_kaddr52, align 8, !dbg !1246
  %cmp53 = icmp ule ptr %add.ptr51, %49, !dbg !1246
  %lnot55 = xor i1 %cmp53, true, !dbg !1246
  %lnot57 = xor i1 %lnot55, true, !dbg !1246
  %lnot59 = xor i1 %lnot57, true, !dbg !1246
  %lnot.ext60 = zext i1 %lnot59 to i32, !dbg !1246
  %conv61 = sext i32 %lnot.ext60 to i64, !dbg !1246
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 0), !dbg !1246
  %tobool63 = icmp ne i64 %expval62, 0, !dbg !1246
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !1248

if.then64:                                        ; preds = %while.body
  br label %err_out, !dbg !1246

if.end65:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 1, ptr %r67) #7, !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %r67, metadata !207, metadata !DIExpression()), !dbg !1249
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr68) #7, !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %__pptr68, metadata !211, metadata !DIExpression()), !dbg !1250
  %50 = load ptr, ptr %insn.addr, align 8, !dbg !1250
  %next_byte69 = getelementptr inbounds %struct.insn, ptr %50, i32 0, i32 17, !dbg !1250
  %51 = load ptr, ptr %next_byte69, align 8, !dbg !1250
  store ptr %51, ptr %__pptr68, align 8, !dbg !1250
  %52 = load ptr, ptr %__pptr68, align 8, !dbg !1250
  %x71 = getelementptr inbounds %struct.anon.10, ptr %52, i32 0, i32 0, !dbg !1250
  %53 = load i8, ptr %x71, align 1, !dbg !1250
  store i8 %53, ptr %tmp70, align 1, !dbg !1250
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr68) #7, !dbg !1249
  %54 = load i8, ptr %tmp70, align 1, !dbg !1250
  store i8 %54, ptr %r67, align 1, !dbg !1249
  %55 = load ptr, ptr %insn.addr, align 8, !dbg !1249
  %next_byte72 = getelementptr inbounds %struct.insn, ptr %55, i32 0, i32 17, !dbg !1249
  %56 = load ptr, ptr %next_byte72, align 8, !dbg !1249
  %add.ptr73 = getelementptr i8, ptr %56, i64 1, !dbg !1249
  store ptr %add.ptr73, ptr %next_byte72, align 8, !dbg !1249
  call void @llvm.lifetime.start.p0(i64 1, ptr %v75) #7, !dbg !1251
  call void @llvm.dbg.declare(metadata ptr %v75, metadata !218, metadata !DIExpression()), !dbg !1251
  %57 = load i8, ptr %r67, align 1, !dbg !1251
  store i8 %57, ptr %v75, align 1, !dbg !1251
  %58 = load i8, ptr %v75, align 1, !dbg !1251
  store i8 %58, ptr %tmp76, align 1, !dbg !1251
  call void @llvm.lifetime.end.p0(i64 1, ptr %v75) #7, !dbg !1249
  %59 = load i8, ptr %tmp76, align 1, !dbg !1251
  store i8 %59, ptr %tmp74, align 1, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 1, ptr %r67) #7, !dbg !1248
  %60 = load i8, ptr %tmp74, align 1, !dbg !1249
  store i8 %60, ptr %tmp66, align 1, !dbg !1246
  %61 = load i8, ptr %tmp66, align 1, !dbg !1248
  store i8 %61, ptr %op, align 1, !dbg !1252
  %62 = load i8, ptr %op, align 1, !dbg !1253
  %63 = load ptr, ptr %opcode, align 8, !dbg !1254
  %64 = getelementptr inbounds %struct.insn_field, ptr %63, i32 0, i32 0, !dbg !1255
  %65 = load ptr, ptr %opcode, align 8, !dbg !1256
  %nbytes77 = getelementptr inbounds %struct.insn_field, ptr %65, i32 0, i32 2, !dbg !1257
  %66 = load i8, ptr %nbytes77, align 1, !dbg !1258
  %inc = add i8 %66, 1, !dbg !1258
  store i8 %inc, ptr %nbytes77, align 1, !dbg !1258
  %idxprom = zext i8 %66 to i64, !dbg !1254
  %arrayidx = getelementptr [4 x i8], ptr %64, i64 0, i64 %idxprom, !dbg !1254
  store i8 %62, ptr %arrayidx, align 1, !dbg !1259
  %67 = load ptr, ptr %insn.addr, align 8, !dbg !1260
  %call78 = call i32 @insn_last_prefix_id(ptr noundef %67) #8, !dbg !1261
  store i32 %call78, ptr %pfx_id, align 4, !dbg !1262
  %68 = load i8, ptr %op, align 1, !dbg !1263
  %69 = load i32, ptr %pfx_id, align 4, !dbg !1264
  %70 = load ptr, ptr %insn.addr, align 8, !dbg !1265
  %attr79 = getelementptr inbounds %struct.insn, ptr %70, i32 0, i32 10, !dbg !1266
  %71 = load i32, ptr %attr79, align 4, !dbg !1266
  %call80 = call i32 @inat_get_escape_attribute(i8 noundef zeroext %68, i32 noundef %69, i32 noundef %71) #8, !dbg !1267
  %72 = load ptr, ptr %insn.addr, align 8, !dbg !1268
  %attr81 = getelementptr inbounds %struct.insn, ptr %72, i32 0, i32 10, !dbg !1269
  store i32 %call80, ptr %attr81, align 4, !dbg !1270
  br label %while.cond, !dbg !1242, !llvm.loop !1271

while.end:                                        ; preds = %while.cond
  %73 = load ptr, ptr %insn.addr, align 8, !dbg !1273
  %attr82 = getelementptr inbounds %struct.insn, ptr %73, i32 0, i32 10, !dbg !1275
  %74 = load i32, ptr %attr82, align 4, !dbg !1275
  %call83 = call i32 @inat_must_vex(i32 noundef %74) #8, !dbg !1276
  %tobool84 = icmp ne i32 %call83, 0, !dbg !1276
  br i1 %tobool84, label %if.then85, label %if.end87, !dbg !1277

if.then85:                                        ; preds = %while.end
  %75 = load ptr, ptr %insn.addr, align 8, !dbg !1278
  %attr86 = getelementptr inbounds %struct.insn, ptr %75, i32 0, i32 10, !dbg !1280
  store i32 0, ptr %attr86, align 4, !dbg !1281
  store i32 -22, ptr %retval, align 4, !dbg !1282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89, !dbg !1282

if.end87:                                         ; preds = %while.end
  br label %end, !dbg !1283

end:                                              ; preds = %if.end87, %cleanup
  call void @llvm.dbg.label(metadata !220), !dbg !1284
  %76 = load ptr, ptr %opcode, align 8, !dbg !1285
  %got88 = getelementptr inbounds %struct.insn_field, ptr %76, i32 0, i32 1, !dbg !1286
  store i8 1, ptr %got88, align 4, !dbg !1287
  store i32 0, ptr %retval, align 4, !dbg !1288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89, !dbg !1288

err_out:                                          ; preds = %if.then64, %if.then13
  call void @llvm.dbg.label(metadata !221), !dbg !1289
  store i32 -61, ptr %retval, align 4, !dbg !1290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89, !dbg !1290

cleanup89:                                        ; preds = %err_out, %end, %cleanup, %if.then85, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %op) #7, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfx_id) #7, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 8, ptr %opcode) #7, !dbg !1291
  %77 = load i32, ptr %retval, align 4, !dbg !1291
  ret i32 %77, !dbg !1291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_is_avx(ptr noundef %insn) #6 align 16 !dbg !1292 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !1294, metadata !DIExpression()), !dbg !1295
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1296
  %prefixes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 0, !dbg !1298
  %got = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 1, !dbg !1299
  %1 = load i8, ptr %got, align 4, !dbg !1299
  %tobool = icmp ne i8 %1, 0, !dbg !1296
  br i1 %tobool, label %if.end, label %if.then, !dbg !1300

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !1301
  %call = call i32 @insn_get_prefixes(ptr noundef %2) #8, !dbg !1302
  br label %if.end, !dbg !1302

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !1303
  %vex_prefix = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 2, !dbg !1304
  %4 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix, i32 0, i32 0, !dbg !1305
  %5 = load i32, ptr %4, align 8, !dbg !1305
  %cmp = icmp ne i32 %5, 0, !dbg !1306
  %conv = zext i1 %cmp to i32, !dbg !1306
  ret i32 %conv, !dbg !1307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @insn_vex_m_bits(ptr noundef %insn) #6 align 16 !dbg !1308 {
entry:
  %retval = alloca i8, align 1
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !1312, metadata !DIExpression()), !dbg !1313
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1314
  %vex_prefix = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 2, !dbg !1316
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %vex_prefix, i32 0, i32 2, !dbg !1317
  %1 = load i8, ptr %nbytes, align 1, !dbg !1317
  %conv = zext i8 %1 to i32, !dbg !1314
  %cmp = icmp eq i32 %conv, 2, !dbg !1318
  br i1 %cmp, label %if.then, label %if.else, !dbg !1319

if.then:                                          ; preds = %entry
  store i8 1, ptr %retval, align 1, !dbg !1320
  br label %return, !dbg !1320

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !1321
  %vex_prefix2 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 2, !dbg !1323
  %nbytes3 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix2, i32 0, i32 2, !dbg !1324
  %3 = load i8, ptr %nbytes3, align 1, !dbg !1324
  %conv4 = zext i8 %3 to i32, !dbg !1321
  %cmp5 = icmp eq i32 %conv4, 3, !dbg !1325
  br i1 %cmp5, label %if.then7, label %if.else11, !dbg !1326

if.then7:                                         ; preds = %if.else
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !1327
  %vex_prefix8 = getelementptr inbounds %struct.insn, ptr %4, i32 0, i32 2, !dbg !1327
  %5 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix8, i32 0, i32 0, !dbg !1327
  %arrayidx = getelementptr [4 x i8], ptr %5, i64 0, i64 1, !dbg !1327
  %6 = load i8, ptr %arrayidx, align 1, !dbg !1327
  %conv9 = zext i8 %6 to i32, !dbg !1327
  %and = and i32 %conv9, 31, !dbg !1327
  %conv10 = trunc i32 %and to i8, !dbg !1327
  store i8 %conv10, ptr %retval, align 1, !dbg !1328
  br label %return, !dbg !1328

if.else11:                                        ; preds = %if.else
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !1329
  %vex_prefix12 = getelementptr inbounds %struct.insn, ptr %7, i32 0, i32 2, !dbg !1329
  %8 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix12, i32 0, i32 0, !dbg !1329
  %arrayidx13 = getelementptr [4 x i8], ptr %8, i64 0, i64 1, !dbg !1329
  %9 = load i8, ptr %arrayidx13, align 1, !dbg !1329
  %conv14 = zext i8 %9 to i32, !dbg !1329
  %and15 = and i32 %conv14, 7, !dbg !1329
  %conv16 = trunc i32 %and15 to i8, !dbg !1329
  store i8 %conv16, ptr %retval, align 1, !dbg !1330
  br label %return, !dbg !1330

return:                                           ; preds = %if.else11, %if.then7, %if.then
  %10 = load i8, ptr %retval, align 1, !dbg !1331
  ret i8 %10, !dbg !1331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @insn_vex_p_bits(ptr noundef %insn) #6 align 16 !dbg !1332 {
entry:
  %retval = alloca i8, align 1
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !1334, metadata !DIExpression()), !dbg !1335
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1336
  %vex_prefix = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 2, !dbg !1338
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %vex_prefix, i32 0, i32 2, !dbg !1339
  %1 = load i8, ptr %nbytes, align 1, !dbg !1339
  %conv = zext i8 %1 to i32, !dbg !1336
  %cmp = icmp eq i32 %conv, 2, !dbg !1340
  br i1 %cmp, label %if.then, label %if.else, !dbg !1341

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !1342
  %vex_prefix2 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 2, !dbg !1342
  %3 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix2, i32 0, i32 0, !dbg !1342
  %arrayidx = getelementptr [4 x i8], ptr %3, i64 0, i64 1, !dbg !1342
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1342
  %conv3 = zext i8 %4 to i32, !dbg !1342
  %and = and i32 %conv3, 3, !dbg !1342
  %conv4 = trunc i32 %and to i8, !dbg !1342
  store i8 %conv4, ptr %retval, align 1, !dbg !1343
  br label %return, !dbg !1343

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !1344
  %vex_prefix5 = getelementptr inbounds %struct.insn, ptr %5, i32 0, i32 2, !dbg !1344
  %6 = getelementptr inbounds %struct.insn_field, ptr %vex_prefix5, i32 0, i32 0, !dbg !1344
  %arrayidx6 = getelementptr [4 x i8], ptr %6, i64 0, i64 2, !dbg !1344
  %7 = load i8, ptr %arrayidx6, align 2, !dbg !1344
  %conv7 = zext i8 %7 to i32, !dbg !1344
  %and8 = and i32 %conv7, 3, !dbg !1344
  %conv9 = trunc i32 %and8 to i8, !dbg !1344
  store i8 %conv9, ptr %retval, align 1, !dbg !1345
  br label %return, !dbg !1345

return:                                           ; preds = %if.else, %if.then
  %8 = load i8, ptr %retval, align 1, !dbg !1346
  ret i8 %8, !dbg !1346
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1347 dso_local i32 @inat_get_avx_attribute(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_must_evex(i32 noundef %attr) #6 align 16 !dbg !1350 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1352, metadata !DIExpression()), !dbg !1353
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1354
  %and = and i32 %0, 2097152, !dbg !1355
  ret i32 %and, !dbg !1356
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_is_evex(ptr noundef %insn) #6 align 16 !dbg !1357 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !1359, metadata !DIExpression()), !dbg !1360
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1361
  %prefixes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 0, !dbg !1363
  %got = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 1, !dbg !1364
  %1 = load i8, ptr %got, align 4, !dbg !1364
  %tobool = icmp ne i8 %1, 0, !dbg !1361
  br i1 %tobool, label %if.end, label %if.then, !dbg !1365

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !1366
  %call = call i32 @insn_get_prefixes(ptr noundef %2) #8, !dbg !1367
  br label %if.end, !dbg !1367

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !1368
  %vex_prefix = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 2, !dbg !1369
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %vex_prefix, i32 0, i32 2, !dbg !1370
  %4 = load i8, ptr %nbytes, align 1, !dbg !1370
  %conv = zext i8 %4 to i32, !dbg !1368
  %cmp = icmp eq i32 %conv, 4, !dbg !1371
  %conv1 = zext i1 %cmp to i32, !dbg !1371
  ret i32 %conv1, !dbg !1372
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_accept_vex(i32 noundef %attr) #6 align 16 !dbg !1373 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1375, metadata !DIExpression()), !dbg !1376
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1377
  %and = and i32 %0, 524288, !dbg !1378
  ret i32 %and, !dbg !1379
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_group(i32 noundef %attr) #6 align 16 !dbg !1380 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1382, metadata !DIExpression()), !dbg !1383
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1384
  %and = and i32 %0, 1984, !dbg !1385
  ret i32 %and, !dbg !1386
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_escape(i32 noundef %attr) #6 align 16 !dbg !1387 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1389, metadata !DIExpression()), !dbg !1390
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1391
  %and = and i32 %0, 48, !dbg !1392
  ret i32 %and, !dbg !1393
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_last_prefix_id(ptr noundef %insn) #6 align 16 !dbg !1394 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !1396, metadata !DIExpression()), !dbg !1397
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1398
  %call = call i32 @insn_is_avx(ptr noundef %0) #8, !dbg !1400
  %tobool = icmp ne i32 %call, 0, !dbg !1400
  br i1 %tobool, label %if.then, label %if.end, !dbg !1401

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !1402
  %call1 = call zeroext i8 @insn_vex_p_bits(ptr noundef %1) #8, !dbg !1403
  %conv = zext i8 %call1 to i32, !dbg !1403
  store i32 %conv, ptr %retval, align 4, !dbg !1404
  br label %return, !dbg !1404

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !1405
  %prefixes = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 0, !dbg !1407
  %3 = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 0, !dbg !1408
  %arrayidx = getelementptr [4 x i8], ptr %3, i64 0, i64 3, !dbg !1405
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1405
  %tobool2 = icmp ne i8 %4, 0, !dbg !1405
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !1409

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !1410
  %prefixes4 = getelementptr inbounds %struct.insn, ptr %5, i32 0, i32 0, !dbg !1411
  %6 = getelementptr inbounds %struct.insn_field, ptr %prefixes4, i32 0, i32 0, !dbg !1412
  %arrayidx5 = getelementptr [4 x i8], ptr %6, i64 0, i64 3, !dbg !1410
  %7 = load i8, ptr %arrayidx5, align 1, !dbg !1410
  %call6 = call i32 @inat_get_last_prefix_id(i8 noundef zeroext %7) #8, !dbg !1413
  store i32 %call6, ptr %retval, align 4, !dbg !1414
  br label %return, !dbg !1414

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1415
  br label %return, !dbg !1415

return:                                           ; preds = %if.end7, %if.then3, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !1416
  ret i32 %8, !dbg !1416
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1417 dso_local i32 @inat_get_escape_attribute(i8 noundef zeroext, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_must_vex(i32 noundef %attr) #6 align 16 !dbg !1420 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1422, metadata !DIExpression()), !dbg !1423
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1424
  %and = and i32 %0, 3145728, !dbg !1425
  ret i32 %and, !dbg !1426
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_modrm(ptr noundef %insn) #0 align 16 !dbg !227 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %modrm = alloca ptr, align 8
  %pfx_id = alloca i8, align 1
  %mod = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i8, align 1
  %r = alloca i8, align 1
  %__pptr = alloca ptr, align 8
  %tmp19 = alloca i8, align 1
  %tmp22 = alloca i8, align 1
  %v = alloca i8, align 1
  %tmp23 = alloca i8, align 1
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !229, metadata !DIExpression()), !dbg !1427
  call void @llvm.lifetime.start.p0(i64 8, ptr %modrm) #7, !dbg !1428
  call void @llvm.dbg.declare(metadata ptr %modrm, metadata !230, metadata !DIExpression()), !dbg !1429
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1430
  %modrm1 = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 4, !dbg !1431
  store ptr %modrm1, ptr %modrm, align 8, !dbg !1429
  call void @llvm.lifetime.start.p0(i64 1, ptr %pfx_id) #7, !dbg !1432
  call void @llvm.dbg.declare(metadata ptr %pfx_id, metadata !231, metadata !DIExpression()), !dbg !1433
  call void @llvm.lifetime.start.p0(i64 1, ptr %mod) #7, !dbg !1432
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !232, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1435
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !233, metadata !DIExpression()), !dbg !1436
  %1 = load ptr, ptr %modrm, align 8, !dbg !1437
  %got = getelementptr inbounds %struct.insn_field, ptr %1, i32 0, i32 1, !dbg !1439
  %2 = load i8, ptr %got, align 4, !dbg !1439
  %tobool = icmp ne i8 %2, 0, !dbg !1437
  br i1 %tobool, label %if.then, label %if.end, !dbg !1440

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1441

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !1442
  %opcode = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 3, !dbg !1444
  %got2 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 1, !dbg !1445
  %4 = load i8, ptr %got2, align 4, !dbg !1445
  %tobool3 = icmp ne i8 %4, 0, !dbg !1442
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !1446

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !1447
  %call = call i32 @insn_get_opcode(ptr noundef %5) #8, !dbg !1449
  store i32 %call, ptr %ret, align 4, !dbg !1450
  %6 = load i32, ptr %ret, align 4, !dbg !1451
  %tobool5 = icmp ne i32 %6, 0, !dbg !1451
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1453

if.then6:                                         ; preds = %if.then4
  %7 = load i32, ptr %ret, align 4, !dbg !1454
  store i32 %7, ptr %retval, align 4, !dbg !1455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1455

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !1456

if.end8:                                          ; preds = %if.end7, %if.end
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !1457
  %attr = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 10, !dbg !1458
  %9 = load i32, ptr %attr, align 4, !dbg !1458
  %call9 = call i32 @inat_has_modrm(i32 noundef %9) #8, !dbg !1459
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1459
  br i1 %tobool10, label %if.then11, label %if.end44, !dbg !1460

if.then11:                                        ; preds = %if.end8
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !1461
  %next_byte = getelementptr inbounds %struct.insn, ptr %10, i32 0, i32 17, !dbg !1461
  %11 = load ptr, ptr %next_byte, align 8, !dbg !1461
  %add.ptr = getelementptr i8, ptr %11, i64 1, !dbg !1461
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i64 0, !dbg !1461
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !1461
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %12, i32 0, i32 16, !dbg !1461
  %13 = load ptr, ptr %end_kaddr, align 8, !dbg !1461
  %cmp = icmp ule ptr %add.ptr12, %13, !dbg !1461
  %lnot = xor i1 %cmp, true, !dbg !1461
  %lnot13 = xor i1 %lnot, true, !dbg !1461
  %lnot14 = xor i1 %lnot13, true, !dbg !1461
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !1461
  %conv = sext i32 %lnot.ext to i64, !dbg !1461
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1461
  %tobool15 = icmp ne i64 %expval, 0, !dbg !1461
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1463

if.then16:                                        ; preds = %if.then11
  br label %err_out, !dbg !1461

if.end17:                                         ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #7, !dbg !1464
  call void @llvm.dbg.declare(metadata ptr %r, metadata !234, metadata !DIExpression()), !dbg !1464
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !1465
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !239, metadata !DIExpression()), !dbg !1465
  %14 = load ptr, ptr %insn.addr, align 8, !dbg !1465
  %next_byte18 = getelementptr inbounds %struct.insn, ptr %14, i32 0, i32 17, !dbg !1465
  %15 = load ptr, ptr %next_byte18, align 8, !dbg !1465
  store ptr %15, ptr %__pptr, align 8, !dbg !1465
  %16 = load ptr, ptr %__pptr, align 8, !dbg !1465
  %x = getelementptr inbounds %struct.anon.11, ptr %16, i32 0, i32 0, !dbg !1465
  %17 = load i8, ptr %x, align 1, !dbg !1465
  store i8 %17, ptr %tmp19, align 1, !dbg !1465
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !1464
  %18 = load i8, ptr %tmp19, align 1, !dbg !1465
  store i8 %18, ptr %r, align 1, !dbg !1464
  %19 = load ptr, ptr %insn.addr, align 8, !dbg !1464
  %next_byte20 = getelementptr inbounds %struct.insn, ptr %19, i32 0, i32 17, !dbg !1464
  %20 = load ptr, ptr %next_byte20, align 8, !dbg !1464
  %add.ptr21 = getelementptr i8, ptr %20, i64 1, !dbg !1464
  store ptr %add.ptr21, ptr %next_byte20, align 8, !dbg !1464
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #7, !dbg !1466
  call void @llvm.dbg.declare(metadata ptr %v, metadata !241, metadata !DIExpression()), !dbg !1466
  %21 = load i8, ptr %r, align 1, !dbg !1466
  store i8 %21, ptr %v, align 1, !dbg !1466
  %22 = load i8, ptr %v, align 1, !dbg !1466
  store i8 %22, ptr %tmp23, align 1, !dbg !1466
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #7, !dbg !1464
  %23 = load i8, ptr %tmp23, align 1, !dbg !1466
  store i8 %23, ptr %tmp22, align 1, !dbg !1464
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #7, !dbg !1463
  %24 = load i8, ptr %tmp22, align 1, !dbg !1464
  store i8 %24, ptr %tmp, align 1, !dbg !1461
  %25 = load i8, ptr %tmp, align 1, !dbg !1463
  store i8 %25, ptr %mod, align 1, !dbg !1467
  %26 = load ptr, ptr %modrm, align 8, !dbg !1468
  %27 = load i8, ptr %mod, align 1, !dbg !1469
  %conv24 = zext i8 %27 to i32, !dbg !1469
  call void @insn_field_set(ptr noundef %26, i32 noundef %conv24, i8 noundef zeroext 1) #8, !dbg !1470
  %28 = load ptr, ptr %insn.addr, align 8, !dbg !1471
  %attr25 = getelementptr inbounds %struct.insn, ptr %28, i32 0, i32 10, !dbg !1473
  %29 = load i32, ptr %attr25, align 4, !dbg !1473
  %call26 = call i32 @inat_is_group(i32 noundef %29) #8, !dbg !1474
  %tobool27 = icmp ne i32 %call26, 0, !dbg !1474
  br i1 %tobool27, label %if.then28, label %if.end43, !dbg !1475

if.then28:                                        ; preds = %if.end17
  %30 = load ptr, ptr %insn.addr, align 8, !dbg !1476
  %call29 = call i32 @insn_last_prefix_id(ptr noundef %30) #8, !dbg !1478
  %conv30 = trunc i32 %call29 to i8, !dbg !1478
  store i8 %conv30, ptr %pfx_id, align 1, !dbg !1479
  %31 = load i8, ptr %mod, align 1, !dbg !1480
  %32 = load i8, ptr %pfx_id, align 1, !dbg !1481
  %conv31 = zext i8 %32 to i32, !dbg !1481
  %33 = load ptr, ptr %insn.addr, align 8, !dbg !1482
  %attr32 = getelementptr inbounds %struct.insn, ptr %33, i32 0, i32 10, !dbg !1483
  %34 = load i32, ptr %attr32, align 4, !dbg !1483
  %call33 = call i32 @inat_get_group_attribute(i8 noundef zeroext %31, i32 noundef %conv31, i32 noundef %34) #8, !dbg !1484
  %35 = load ptr, ptr %insn.addr, align 8, !dbg !1485
  %attr34 = getelementptr inbounds %struct.insn, ptr %35, i32 0, i32 10, !dbg !1486
  store i32 %call33, ptr %attr34, align 4, !dbg !1487
  %36 = load ptr, ptr %insn.addr, align 8, !dbg !1488
  %call35 = call i32 @insn_is_avx(ptr noundef %36) #8, !dbg !1490
  %tobool36 = icmp ne i32 %call35, 0, !dbg !1490
  br i1 %tobool36, label %land.lhs.true, label %if.end42, !dbg !1491

land.lhs.true:                                    ; preds = %if.then28
  %37 = load ptr, ptr %insn.addr, align 8, !dbg !1492
  %attr37 = getelementptr inbounds %struct.insn, ptr %37, i32 0, i32 10, !dbg !1493
  %38 = load i32, ptr %attr37, align 4, !dbg !1493
  %call38 = call i32 @inat_accept_vex(i32 noundef %38) #8, !dbg !1494
  %tobool39 = icmp ne i32 %call38, 0, !dbg !1494
  br i1 %tobool39, label %if.end42, label %if.then40, !dbg !1495

if.then40:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %insn.addr, align 8, !dbg !1496
  %attr41 = getelementptr inbounds %struct.insn, ptr %39, i32 0, i32 10, !dbg !1498
  store i32 0, ptr %attr41, align 4, !dbg !1499
  store i32 -22, ptr %retval, align 4, !dbg !1500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1500

if.end42:                                         ; preds = %land.lhs.true, %if.then28
  br label %if.end43, !dbg !1501

if.end43:                                         ; preds = %if.end42, %if.end17
  br label %if.end44, !dbg !1502

if.end44:                                         ; preds = %if.end43, %if.end8
  %40 = load ptr, ptr %insn.addr, align 8, !dbg !1503
  %x86_64 = getelementptr inbounds %struct.insn, ptr %40, i32 0, i32 14, !dbg !1505
  %41 = load i8, ptr %x86_64, align 1, !dbg !1505
  %conv45 = zext i8 %41 to i32, !dbg !1503
  %tobool46 = icmp ne i32 %conv45, 0, !dbg !1503
  br i1 %tobool46, label %land.lhs.true47, label %if.end52, !dbg !1506

land.lhs.true47:                                  ; preds = %if.end44
  %42 = load ptr, ptr %insn.addr, align 8, !dbg !1507
  %attr48 = getelementptr inbounds %struct.insn, ptr %42, i32 0, i32 10, !dbg !1508
  %43 = load i32, ptr %attr48, align 4, !dbg !1508
  %call49 = call i32 @inat_is_force64(i32 noundef %43) #8, !dbg !1509
  %tobool50 = icmp ne i32 %call49, 0, !dbg !1509
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !1510

if.then51:                                        ; preds = %land.lhs.true47
  %44 = load ptr, ptr %insn.addr, align 8, !dbg !1511
  %opnd_bytes = getelementptr inbounds %struct.insn, ptr %44, i32 0, i32 11, !dbg !1512
  store i8 8, ptr %opnd_bytes, align 8, !dbg !1513
  br label %if.end52, !dbg !1511

if.end52:                                         ; preds = %if.then51, %land.lhs.true47, %if.end44
  %45 = load ptr, ptr %modrm, align 8, !dbg !1514
  %got53 = getelementptr inbounds %struct.insn_field, ptr %45, i32 0, i32 1, !dbg !1515
  store i8 1, ptr %got53, align 4, !dbg !1516
  store i32 0, ptr %retval, align 4, !dbg !1517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1517

err_out:                                          ; preds = %if.then16
  call void @llvm.dbg.label(metadata !243), !dbg !1518
  store i32 -61, ptr %retval, align 4, !dbg !1519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1519

cleanup:                                          ; preds = %err_out, %if.end52, %if.then40, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1520
  call void @llvm.lifetime.end.p0(i64 1, ptr %mod) #7, !dbg !1520
  call void @llvm.lifetime.end.p0(i64 1, ptr %pfx_id) #7, !dbg !1520
  call void @llvm.lifetime.end.p0(i64 8, ptr %modrm) #7, !dbg !1520
  %46 = load i32, ptr %retval, align 4, !dbg !1520
  ret i32 %46, !dbg !1520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_has_modrm(i32 noundef %attr) #6 align 16 !dbg !1521 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1523, metadata !DIExpression()), !dbg !1524
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1525
  %and = and i32 %0, 16384, !dbg !1526
  ret i32 %and, !dbg !1527
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1528 dso_local i32 @inat_get_group_attribute(i8 noundef zeroext, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_force64(i32 noundef %attr) #6 align 16 !dbg !1529 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1531, metadata !DIExpression()), !dbg !1532
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1533
  %and = and i32 %0, 32768, !dbg !1534
  ret i32 %and, !dbg !1535
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_rip_relative(ptr noundef %insn) #0 align 16 !dbg !1536 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %modrm = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !1538, metadata !DIExpression()), !dbg !1541
  call void @llvm.lifetime.start.p0(i64 8, ptr %modrm) #7, !dbg !1542
  call void @llvm.dbg.declare(metadata ptr %modrm, metadata !1539, metadata !DIExpression()), !dbg !1543
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1544
  %modrm1 = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 4, !dbg !1545
  store ptr %modrm1, ptr %modrm, align 8, !dbg !1543
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1546
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1540, metadata !DIExpression()), !dbg !1547
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !1548
  %x86_64 = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 14, !dbg !1550
  %2 = load i8, ptr %x86_64, align 1, !dbg !1550
  %tobool = icmp ne i8 %2, 0, !dbg !1548
  br i1 %tobool, label %if.end, label %if.then, !dbg !1551

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1552

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %modrm, align 8, !dbg !1553
  %got = getelementptr inbounds %struct.insn_field, ptr %3, i32 0, i32 1, !dbg !1555
  %4 = load i8, ptr %got, align 4, !dbg !1555
  %tobool2 = icmp ne i8 %4, 0, !dbg !1553
  br i1 %tobool2, label %if.end7, label %if.then3, !dbg !1556

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !1557
  %call = call i32 @insn_get_modrm(ptr noundef %5) #8, !dbg !1559
  store i32 %call, ptr %ret, align 4, !dbg !1560
  %6 = load i32, ptr %ret, align 4, !dbg !1561
  %tobool4 = icmp ne i32 %6, 0, !dbg !1561
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1563

if.then5:                                         ; preds = %if.then3
  store i32 0, ptr %retval, align 4, !dbg !1564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1564

if.end6:                                          ; preds = %if.then3
  br label %if.end7, !dbg !1565

if.end7:                                          ; preds = %if.end6, %if.end
  %7 = load ptr, ptr %modrm, align 8, !dbg !1566
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %7, i32 0, i32 2, !dbg !1567
  %8 = load i8, ptr %nbytes, align 1, !dbg !1567
  %conv = zext i8 %8 to i32, !dbg !1566
  %tobool8 = icmp ne i32 %conv, 0, !dbg !1566
  br i1 %tobool8, label %land.rhs, label %land.end, !dbg !1568

land.rhs:                                         ; preds = %if.end7
  %9 = load ptr, ptr %modrm, align 8, !dbg !1569
  %10 = getelementptr inbounds %struct.insn_field, ptr %9, i32 0, i32 0, !dbg !1570
  %arrayidx = getelementptr [4 x i8], ptr %10, i64 0, i64 0, !dbg !1569
  %11 = load i8, ptr %arrayidx, align 4, !dbg !1569
  %conv9 = zext i8 %11 to i32, !dbg !1569
  %and = and i32 %conv9, 199, !dbg !1571
  %cmp = icmp eq i32 %and, 5, !dbg !1572
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end7
  %12 = phi i1 [ false, %if.end7 ], [ %cmp, %land.rhs ], !dbg !1573
  %land.ext = zext i1 %12 to i32, !dbg !1568
  store i32 %land.ext, ptr %retval, align 4, !dbg !1574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1574

cleanup:                                          ; preds = %land.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 8, ptr %modrm) #7, !dbg !1575
  %13 = load i32, ptr %retval, align 4, !dbg !1575
  ret i32 %13, !dbg !1575
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_sib(ptr noundef %insn) #0 align 16 !dbg !249 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %modrm = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i8, align 1
  %r = alloca i8, align 1
  %__pptr = alloca ptr, align 8
  %tmp34 = alloca i8, align 1
  %tmp37 = alloca i8, align 1
  %v = alloca i8, align 1
  %tmp38 = alloca i8, align 1
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !251, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.start.p0(i64 1, ptr %modrm) #7, !dbg !1577
  call void @llvm.dbg.declare(metadata ptr %modrm, metadata !252, metadata !DIExpression()), !dbg !1578
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !253, metadata !DIExpression()), !dbg !1580
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1581
  %sib = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 5, !dbg !1583
  %got = getelementptr inbounds %struct.insn_field, ptr %sib, i32 0, i32 1, !dbg !1584
  %1 = load i8, ptr %got, align 4, !dbg !1584
  %tobool = icmp ne i8 %1, 0, !dbg !1581
  br i1 %tobool, label %if.then, label %if.end, !dbg !1585

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1586

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !1587
  %modrm1 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 4, !dbg !1589
  %got2 = getelementptr inbounds %struct.insn_field, ptr %modrm1, i32 0, i32 1, !dbg !1590
  %3 = load i8, ptr %got2, align 4, !dbg !1590
  %tobool3 = icmp ne i8 %3, 0, !dbg !1587
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !1591

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !1592
  %call = call i32 @insn_get_modrm(ptr noundef %4) #8, !dbg !1594
  store i32 %call, ptr %ret, align 4, !dbg !1595
  %5 = load i32, ptr %ret, align 4, !dbg !1596
  %tobool5 = icmp ne i32 %5, 0, !dbg !1596
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1598

if.then6:                                         ; preds = %if.then4
  %6 = load i32, ptr %ret, align 4, !dbg !1599
  store i32 %6, ptr %retval, align 4, !dbg !1600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1600

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !1601

if.end8:                                          ; preds = %if.end7, %if.end
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !1602
  %modrm9 = getelementptr inbounds %struct.insn, ptr %7, i32 0, i32 4, !dbg !1603
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %modrm9, i32 0, i32 2, !dbg !1604
  %8 = load i8, ptr %nbytes, align 1, !dbg !1604
  %tobool10 = icmp ne i8 %8, 0, !dbg !1602
  br i1 %tobool10, label %if.then11, label %if.end41, !dbg !1605

if.then11:                                        ; preds = %if.end8
  %9 = load ptr, ptr %insn.addr, align 8, !dbg !1606
  %modrm12 = getelementptr inbounds %struct.insn, ptr %9, i32 0, i32 4, !dbg !1607
  %10 = getelementptr inbounds %struct.insn_field, ptr %modrm12, i32 0, i32 0, !dbg !1608
  %arrayidx = getelementptr [4 x i8], ptr %10, i64 0, i64 0, !dbg !1606
  %11 = load i8, ptr %arrayidx, align 8, !dbg !1606
  store i8 %11, ptr %modrm, align 1, !dbg !1609
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !1610
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %12, i32 0, i32 12, !dbg !1611
  %13 = load i8, ptr %addr_bytes, align 1, !dbg !1611
  %conv = zext i8 %13 to i32, !dbg !1610
  %cmp = icmp ne i32 %conv, 2, !dbg !1612
  br i1 %cmp, label %land.lhs.true, label %if.end40, !dbg !1613

land.lhs.true:                                    ; preds = %if.then11
  %14 = load i8, ptr %modrm, align 1, !dbg !1614
  %conv14 = zext i8 %14 to i32, !dbg !1614
  %and = and i32 %conv14, 192, !dbg !1614
  %shr = ashr i32 %and, 6, !dbg !1614
  %cmp15 = icmp ne i32 %shr, 3, !dbg !1615
  br i1 %cmp15, label %land.lhs.true17, label %if.end40, !dbg !1616

land.lhs.true17:                                  ; preds = %land.lhs.true
  %15 = load i8, ptr %modrm, align 1, !dbg !1617
  %conv18 = zext i8 %15 to i32, !dbg !1617
  %and19 = and i32 %conv18, 7, !dbg !1617
  %cmp20 = icmp eq i32 %and19, 4, !dbg !1618
  br i1 %cmp20, label %if.then22, label %if.end40, !dbg !1619

if.then22:                                        ; preds = %land.lhs.true17
  %16 = load ptr, ptr %insn.addr, align 8, !dbg !1620
  %sib23 = getelementptr inbounds %struct.insn, ptr %16, i32 0, i32 5, !dbg !1621
  %17 = load ptr, ptr %insn.addr, align 8, !dbg !1622
  %next_byte = getelementptr inbounds %struct.insn, ptr %17, i32 0, i32 17, !dbg !1622
  %18 = load ptr, ptr %next_byte, align 8, !dbg !1622
  %add.ptr = getelementptr i8, ptr %18, i64 1, !dbg !1622
  %add.ptr24 = getelementptr i8, ptr %add.ptr, i64 0, !dbg !1622
  %19 = load ptr, ptr %insn.addr, align 8, !dbg !1622
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %19, i32 0, i32 16, !dbg !1622
  %20 = load ptr, ptr %end_kaddr, align 8, !dbg !1622
  %cmp25 = icmp ule ptr %add.ptr24, %20, !dbg !1622
  %lnot = xor i1 %cmp25, true, !dbg !1622
  %lnot27 = xor i1 %lnot, true, !dbg !1622
  %lnot28 = xor i1 %lnot27, true, !dbg !1622
  %lnot.ext = zext i1 %lnot28 to i32, !dbg !1622
  %conv29 = sext i32 %lnot.ext to i64, !dbg !1622
  %expval = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !1622
  %tobool30 = icmp ne i64 %expval, 0, !dbg !1622
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !1624

if.then31:                                        ; preds = %if.then22
  br label %err_out, !dbg !1622

if.end32:                                         ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #7, !dbg !1625
  call void @llvm.dbg.declare(metadata ptr %r, metadata !254, metadata !DIExpression()), !dbg !1625
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !1626
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !261, metadata !DIExpression()), !dbg !1626
  %21 = load ptr, ptr %insn.addr, align 8, !dbg !1626
  %next_byte33 = getelementptr inbounds %struct.insn, ptr %21, i32 0, i32 17, !dbg !1626
  %22 = load ptr, ptr %next_byte33, align 8, !dbg !1626
  store ptr %22, ptr %__pptr, align 8, !dbg !1626
  %23 = load ptr, ptr %__pptr, align 8, !dbg !1626
  %x = getelementptr inbounds %struct.anon.12, ptr %23, i32 0, i32 0, !dbg !1626
  %24 = load i8, ptr %x, align 1, !dbg !1626
  store i8 %24, ptr %tmp34, align 1, !dbg !1626
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !1625
  %25 = load i8, ptr %tmp34, align 1, !dbg !1626
  store i8 %25, ptr %r, align 1, !dbg !1625
  %26 = load ptr, ptr %insn.addr, align 8, !dbg !1625
  %next_byte35 = getelementptr inbounds %struct.insn, ptr %26, i32 0, i32 17, !dbg !1625
  %27 = load ptr, ptr %next_byte35, align 8, !dbg !1625
  %add.ptr36 = getelementptr i8, ptr %27, i64 1, !dbg !1625
  store ptr %add.ptr36, ptr %next_byte35, align 8, !dbg !1625
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #7, !dbg !1627
  call void @llvm.dbg.declare(metadata ptr %v, metadata !263, metadata !DIExpression()), !dbg !1627
  %28 = load i8, ptr %r, align 1, !dbg !1627
  store i8 %28, ptr %v, align 1, !dbg !1627
  %29 = load i8, ptr %v, align 1, !dbg !1627
  store i8 %29, ptr %tmp38, align 1, !dbg !1627
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #7, !dbg !1625
  %30 = load i8, ptr %tmp38, align 1, !dbg !1627
  store i8 %30, ptr %tmp37, align 1, !dbg !1625
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #7, !dbg !1624
  %31 = load i8, ptr %tmp37, align 1, !dbg !1625
  store i8 %31, ptr %tmp, align 1, !dbg !1622
  %32 = load i8, ptr %tmp, align 1, !dbg !1624
  %conv39 = zext i8 %32 to i32, !dbg !1628
  call void @insn_field_set(ptr noundef %sib23, i32 noundef %conv39, i8 noundef zeroext 1) #8, !dbg !1629
  br label %if.end40, !dbg !1630

if.end40:                                         ; preds = %if.end32, %land.lhs.true17, %land.lhs.true, %if.then11
  br label %if.end41, !dbg !1631

if.end41:                                         ; preds = %if.end40, %if.end8
  %33 = load ptr, ptr %insn.addr, align 8, !dbg !1632
  %sib42 = getelementptr inbounds %struct.insn, ptr %33, i32 0, i32 5, !dbg !1633
  %got43 = getelementptr inbounds %struct.insn_field, ptr %sib42, i32 0, i32 1, !dbg !1634
  store i8 1, ptr %got43, align 4, !dbg !1635
  store i32 0, ptr %retval, align 4, !dbg !1636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1636

err_out:                                          ; preds = %if.then31
  call void @llvm.dbg.label(metadata !265), !dbg !1637
  store i32 -61, ptr %retval, align 4, !dbg !1638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1638

cleanup:                                          ; preds = %err_out, %if.end41, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1639
  call void @llvm.lifetime.end.p0(i64 1, ptr %modrm) #7, !dbg !1639
  %34 = load i32, ptr %retval, align 4, !dbg !1639
  ret i32 %34, !dbg !1639
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_displacement(ptr noundef %insn) #0 align 16 !dbg !271 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %mod = alloca i8, align 1
  %rm = alloca i8, align 1
  %base = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i8, align 1
  %r = alloca i8, align 1
  %__pptr = alloca ptr, align 8
  %tmp36 = alloca i8, align 1
  %tmp39 = alloca i8, align 1
  %v = alloca i8, align 1
  %tmp40 = alloca i8, align 1
  %tmp74 = alloca i16, align 2
  %r75 = alloca i16, align 2
  %__pptr76 = alloca ptr, align 8
  %tmp78 = alloca i16, align 2
  %tmp82 = alloca i16, align 2
  %v83 = alloca i16, align 2
  %tmp84 = alloca i16, align 2
  %tmp126 = alloca i32, align 4
  %r127 = alloca i32, align 4
  %__pptr128 = alloca ptr, align 8
  %tmp130 = alloca i32, align 4
  %tmp134 = alloca i32, align 4
  %v135 = alloca i32, align 4
  %tmp136 = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !273, metadata !DIExpression()), !dbg !1640
  call void @llvm.lifetime.start.p0(i64 1, ptr %mod) #7, !dbg !1641
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !274, metadata !DIExpression()), !dbg !1642
  call void @llvm.lifetime.start.p0(i64 1, ptr %rm) #7, !dbg !1641
  call void @llvm.dbg.declare(metadata ptr %rm, metadata !275, metadata !DIExpression()), !dbg !1643
  call void @llvm.lifetime.start.p0(i64 1, ptr %base) #7, !dbg !1641
  call void @llvm.dbg.declare(metadata ptr %base, metadata !276, metadata !DIExpression()), !dbg !1644
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1645
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !277, metadata !DIExpression()), !dbg !1646
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1647
  %displacement = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 6, !dbg !1649
  %got = getelementptr inbounds %struct.insn_field, ptr %displacement, i32 0, i32 1, !dbg !1650
  %1 = load i8, ptr %got, align 4, !dbg !1650
  %tobool = icmp ne i8 %1, 0, !dbg !1647
  br i1 %tobool, label %if.then, label %if.end, !dbg !1651

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1652

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !1653
  %sib = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 5, !dbg !1655
  %got1 = getelementptr inbounds %struct.insn_field, ptr %sib, i32 0, i32 1, !dbg !1656
  %3 = load i8, ptr %got1, align 4, !dbg !1656
  %tobool2 = icmp ne i8 %3, 0, !dbg !1653
  br i1 %tobool2, label %if.end7, label %if.then3, !dbg !1657

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !1658
  %call = call i32 @insn_get_sib(ptr noundef %4) #8, !dbg !1660
  store i32 %call, ptr %ret, align 4, !dbg !1661
  %5 = load i32, ptr %ret, align 4, !dbg !1662
  %tobool4 = icmp ne i32 %5, 0, !dbg !1662
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1664

if.then5:                                         ; preds = %if.then3
  %6 = load i32, ptr %ret, align 4, !dbg !1665
  store i32 %6, ptr %retval, align 4, !dbg !1666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1666

if.end6:                                          ; preds = %if.then3
  br label %if.end7, !dbg !1667

if.end7:                                          ; preds = %if.end6, %if.end
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !1668
  %modrm = getelementptr inbounds %struct.insn, ptr %7, i32 0, i32 4, !dbg !1669
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 2, !dbg !1670
  %8 = load i8, ptr %nbytes, align 1, !dbg !1670
  %tobool8 = icmp ne i8 %8, 0, !dbg !1668
  br i1 %tobool8, label %if.then9, label %if.end140, !dbg !1671

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %insn.addr, align 8, !dbg !1672
  %modrm10 = getelementptr inbounds %struct.insn, ptr %9, i32 0, i32 4, !dbg !1672
  %10 = getelementptr inbounds %struct.insn_field, ptr %modrm10, i32 0, i32 0, !dbg !1672
  %11 = load i32, ptr %10, align 8, !dbg !1672
  %and = and i32 %11, 192, !dbg !1672
  %shr = ashr i32 %and, 6, !dbg !1672
  %conv = trunc i32 %shr to i8, !dbg !1672
  store i8 %conv, ptr %mod, align 1, !dbg !1673
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !1674
  %modrm11 = getelementptr inbounds %struct.insn, ptr %12, i32 0, i32 4, !dbg !1674
  %13 = getelementptr inbounds %struct.insn_field, ptr %modrm11, i32 0, i32 0, !dbg !1674
  %14 = load i32, ptr %13, align 8, !dbg !1674
  %and12 = and i32 %14, 7, !dbg !1674
  %conv13 = trunc i32 %and12 to i8, !dbg !1674
  store i8 %conv13, ptr %rm, align 1, !dbg !1675
  %15 = load ptr, ptr %insn.addr, align 8, !dbg !1676
  %sib14 = getelementptr inbounds %struct.insn, ptr %15, i32 0, i32 5, !dbg !1676
  %16 = getelementptr inbounds %struct.insn_field, ptr %sib14, i32 0, i32 0, !dbg !1676
  %17 = load i32, ptr %16, align 8, !dbg !1676
  %and15 = and i32 %17, 7, !dbg !1676
  %conv16 = trunc i32 %and15 to i8, !dbg !1676
  store i8 %conv16, ptr %base, align 1, !dbg !1677
  %18 = load i8, ptr %mod, align 1, !dbg !1678
  %conv17 = zext i8 %18 to i32, !dbg !1678
  %cmp = icmp eq i32 %conv17, 3, !dbg !1680
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !1681

if.then19:                                        ; preds = %if.then9
  br label %out, !dbg !1682

if.end20:                                         ; preds = %if.then9
  %19 = load i8, ptr %mod, align 1, !dbg !1683
  %conv21 = zext i8 %19 to i32, !dbg !1683
  %cmp22 = icmp eq i32 %conv21, 1, !dbg !1684
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !1685

if.then24:                                        ; preds = %if.end20
  %20 = load ptr, ptr %insn.addr, align 8, !dbg !1686
  %displacement25 = getelementptr inbounds %struct.insn, ptr %20, i32 0, i32 6, !dbg !1687
  %21 = load ptr, ptr %insn.addr, align 8, !dbg !1688
  %next_byte = getelementptr inbounds %struct.insn, ptr %21, i32 0, i32 17, !dbg !1688
  %22 = load ptr, ptr %next_byte, align 8, !dbg !1688
  %add.ptr = getelementptr i8, ptr %22, i64 1, !dbg !1688
  %add.ptr26 = getelementptr i8, ptr %add.ptr, i64 0, !dbg !1688
  %23 = load ptr, ptr %insn.addr, align 8, !dbg !1688
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %23, i32 0, i32 16, !dbg !1688
  %24 = load ptr, ptr %end_kaddr, align 8, !dbg !1688
  %cmp27 = icmp ule ptr %add.ptr26, %24, !dbg !1688
  %lnot = xor i1 %cmp27, true, !dbg !1688
  %lnot29 = xor i1 %lnot, true, !dbg !1688
  %lnot30 = xor i1 %lnot29, true, !dbg !1688
  %lnot.ext = zext i1 %lnot30 to i32, !dbg !1688
  %conv31 = sext i32 %lnot.ext to i64, !dbg !1688
  %expval = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !1688
  %tobool32 = icmp ne i64 %expval, 0, !dbg !1688
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1690

if.then33:                                        ; preds = %if.then24
  br label %err_out, !dbg !1688

if.end34:                                         ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #7, !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %r, metadata !278, metadata !DIExpression()), !dbg !1691
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !1692
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !286, metadata !DIExpression()), !dbg !1692
  %25 = load ptr, ptr %insn.addr, align 8, !dbg !1692
  %next_byte35 = getelementptr inbounds %struct.insn, ptr %25, i32 0, i32 17, !dbg !1692
  %26 = load ptr, ptr %next_byte35, align 8, !dbg !1692
  store ptr %26, ptr %__pptr, align 8, !dbg !1692
  %27 = load ptr, ptr %__pptr, align 8, !dbg !1692
  %x = getelementptr inbounds %struct.anon.13, ptr %27, i32 0, i32 0, !dbg !1692
  %28 = load i8, ptr %x, align 1, !dbg !1692
  store i8 %28, ptr %tmp36, align 1, !dbg !1692
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !1691
  %29 = load i8, ptr %tmp36, align 1, !dbg !1692
  store i8 %29, ptr %r, align 1, !dbg !1691
  %30 = load ptr, ptr %insn.addr, align 8, !dbg !1691
  %next_byte37 = getelementptr inbounds %struct.insn, ptr %30, i32 0, i32 17, !dbg !1691
  %31 = load ptr, ptr %next_byte37, align 8, !dbg !1691
  %add.ptr38 = getelementptr i8, ptr %31, i64 1, !dbg !1691
  store ptr %add.ptr38, ptr %next_byte37, align 8, !dbg !1691
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #7, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %v, metadata !288, metadata !DIExpression()), !dbg !1693
  %32 = load i8, ptr %r, align 1, !dbg !1693
  store i8 %32, ptr %v, align 1, !dbg !1693
  %33 = load i8, ptr %v, align 1, !dbg !1693
  store i8 %33, ptr %tmp40, align 1, !dbg !1693
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #7, !dbg !1691
  %34 = load i8, ptr %tmp40, align 1, !dbg !1693
  store i8 %34, ptr %tmp39, align 1, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #7, !dbg !1690
  %35 = load i8, ptr %tmp39, align 1, !dbg !1691
  store i8 %35, ptr %tmp, align 1, !dbg !1688
  %36 = load i8, ptr %tmp, align 1, !dbg !1690
  %conv41 = sext i8 %36 to i32, !dbg !1694
  call void @insn_field_set(ptr noundef %displacement25, i32 noundef %conv41, i8 noundef zeroext 1) #8, !dbg !1695
  br label %if.end139, !dbg !1696

if.else:                                          ; preds = %if.end20
  %37 = load ptr, ptr %insn.addr, align 8, !dbg !1697
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %37, i32 0, i32 12, !dbg !1698
  %38 = load i8, ptr %addr_bytes, align 1, !dbg !1698
  %conv42 = zext i8 %38 to i32, !dbg !1697
  %cmp43 = icmp eq i32 %conv42, 2, !dbg !1699
  br i1 %cmp43, label %if.then45, label %if.else87, !dbg !1700

if.then45:                                        ; preds = %if.else
  %39 = load i8, ptr %mod, align 1, !dbg !1701
  %conv46 = zext i8 %39 to i32, !dbg !1701
  %cmp47 = icmp eq i32 %conv46, 0, !dbg !1702
  br i1 %cmp47, label %land.lhs.true, label %lor.lhs.false, !dbg !1703

land.lhs.true:                                    ; preds = %if.then45
  %40 = load i8, ptr %rm, align 1, !dbg !1704
  %conv49 = zext i8 %40 to i32, !dbg !1704
  %cmp50 = icmp eq i32 %conv49, 6, !dbg !1705
  br i1 %cmp50, label %if.then55, label %lor.lhs.false, !dbg !1706

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then45
  %41 = load i8, ptr %mod, align 1, !dbg !1707
  %conv52 = zext i8 %41 to i32, !dbg !1707
  %cmp53 = icmp eq i32 %conv52, 2, !dbg !1708
  br i1 %cmp53, label %if.then55, label %if.end86, !dbg !1709

if.then55:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %42 = load ptr, ptr %insn.addr, align 8, !dbg !1710
  %displacement56 = getelementptr inbounds %struct.insn, ptr %42, i32 0, i32 6, !dbg !1711
  %43 = load ptr, ptr %insn.addr, align 8, !dbg !1712
  %next_byte57 = getelementptr inbounds %struct.insn, ptr %43, i32 0, i32 17, !dbg !1712
  %44 = load ptr, ptr %next_byte57, align 8, !dbg !1712
  %add.ptr58 = getelementptr i8, ptr %44, i64 2, !dbg !1712
  %add.ptr59 = getelementptr i8, ptr %add.ptr58, i64 0, !dbg !1712
  %45 = load ptr, ptr %insn.addr, align 8, !dbg !1712
  %end_kaddr60 = getelementptr inbounds %struct.insn, ptr %45, i32 0, i32 16, !dbg !1712
  %46 = load ptr, ptr %end_kaddr60, align 8, !dbg !1712
  %cmp61 = icmp ule ptr %add.ptr59, %46, !dbg !1712
  %lnot63 = xor i1 %cmp61, true, !dbg !1712
  %lnot65 = xor i1 %lnot63, true, !dbg !1712
  %lnot67 = xor i1 %lnot65, true, !dbg !1712
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !1712
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !1712
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !1712
  %tobool71 = icmp ne i64 %expval70, 0, !dbg !1712
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !1714

if.then72:                                        ; preds = %if.then55
  br label %err_out, !dbg !1712

if.end73:                                         ; preds = %if.then55
  call void @llvm.lifetime.start.p0(i64 2, ptr %r75) #7, !dbg !1715
  call void @llvm.dbg.declare(metadata ptr %r75, metadata !290, metadata !DIExpression()), !dbg !1715
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr76) #7, !dbg !1716
  call void @llvm.dbg.declare(metadata ptr %__pptr76, metadata !298, metadata !DIExpression()), !dbg !1716
  %47 = load ptr, ptr %insn.addr, align 8, !dbg !1716
  %next_byte77 = getelementptr inbounds %struct.insn, ptr %47, i32 0, i32 17, !dbg !1716
  %48 = load ptr, ptr %next_byte77, align 8, !dbg !1716
  store ptr %48, ptr %__pptr76, align 8, !dbg !1716
  %49 = load ptr, ptr %__pptr76, align 8, !dbg !1716
  %x79 = getelementptr inbounds %struct.anon.14, ptr %49, i32 0, i32 0, !dbg !1716
  %50 = load i16, ptr %x79, align 1, !dbg !1716
  store i16 %50, ptr %tmp78, align 2, !dbg !1716
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr76) #7, !dbg !1715
  %51 = load i16, ptr %tmp78, align 2, !dbg !1716
  store i16 %51, ptr %r75, align 2, !dbg !1715
  %52 = load ptr, ptr %insn.addr, align 8, !dbg !1715
  %next_byte80 = getelementptr inbounds %struct.insn, ptr %52, i32 0, i32 17, !dbg !1715
  %53 = load ptr, ptr %next_byte80, align 8, !dbg !1715
  %add.ptr81 = getelementptr i8, ptr %53, i64 2, !dbg !1715
  store ptr %add.ptr81, ptr %next_byte80, align 8, !dbg !1715
  call void @llvm.lifetime.start.p0(i64 2, ptr %v83) #7, !dbg !1717
  call void @llvm.dbg.declare(metadata ptr %v83, metadata !305, metadata !DIExpression()), !dbg !1717
  %54 = load i16, ptr %r75, align 2, !dbg !1717
  store i16 %54, ptr %v83, align 2, !dbg !1717
  %55 = load i16, ptr %v83, align 2, !dbg !1717
  store i16 %55, ptr %tmp84, align 2, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 2, ptr %v83) #7, !dbg !1715
  %56 = load i16, ptr %tmp84, align 2, !dbg !1717
  store i16 %56, ptr %tmp82, align 2, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 2, ptr %r75) #7, !dbg !1714
  %57 = load i16, ptr %tmp82, align 2, !dbg !1715
  store i16 %57, ptr %tmp74, align 2, !dbg !1712
  %58 = load i16, ptr %tmp74, align 2, !dbg !1714
  %conv85 = sext i16 %58 to i32, !dbg !1718
  call void @insn_field_set(ptr noundef %displacement56, i32 noundef %conv85, i8 noundef zeroext 2) #8, !dbg !1719
  br label %if.end86, !dbg !1720

if.end86:                                         ; preds = %if.end73, %lor.lhs.false
  br label %if.end138, !dbg !1721

if.else87:                                        ; preds = %if.else
  %59 = load i8, ptr %mod, align 1, !dbg !1722
  %conv88 = zext i8 %59 to i32, !dbg !1722
  %cmp89 = icmp eq i32 %conv88, 0, !dbg !1723
  br i1 %cmp89, label %land.lhs.true91, label %lor.lhs.false95, !dbg !1724

land.lhs.true91:                                  ; preds = %if.else87
  %60 = load i8, ptr %rm, align 1, !dbg !1725
  %conv92 = zext i8 %60 to i32, !dbg !1725
  %cmp93 = icmp eq i32 %conv92, 5, !dbg !1726
  br i1 %cmp93, label %if.then107, label %lor.lhs.false95, !dbg !1727

lor.lhs.false95:                                  ; preds = %land.lhs.true91, %if.else87
  %61 = load i8, ptr %mod, align 1, !dbg !1728
  %conv96 = zext i8 %61 to i32, !dbg !1728
  %cmp97 = icmp eq i32 %conv96, 2, !dbg !1729
  br i1 %cmp97, label %if.then107, label %lor.lhs.false99, !dbg !1730

lor.lhs.false99:                                  ; preds = %lor.lhs.false95
  %62 = load i8, ptr %mod, align 1, !dbg !1731
  %conv100 = zext i8 %62 to i32, !dbg !1731
  %cmp101 = icmp eq i32 %conv100, 0, !dbg !1732
  br i1 %cmp101, label %land.lhs.true103, label %if.end137, !dbg !1733

land.lhs.true103:                                 ; preds = %lor.lhs.false99
  %63 = load i8, ptr %base, align 1, !dbg !1734
  %conv104 = zext i8 %63 to i32, !dbg !1734
  %cmp105 = icmp eq i32 %conv104, 5, !dbg !1735
  br i1 %cmp105, label %if.then107, label %if.end137, !dbg !1736

if.then107:                                       ; preds = %land.lhs.true103, %lor.lhs.false95, %land.lhs.true91
  %64 = load ptr, ptr %insn.addr, align 8, !dbg !1737
  %displacement108 = getelementptr inbounds %struct.insn, ptr %64, i32 0, i32 6, !dbg !1738
  %65 = load ptr, ptr %insn.addr, align 8, !dbg !1739
  %next_byte109 = getelementptr inbounds %struct.insn, ptr %65, i32 0, i32 17, !dbg !1739
  %66 = load ptr, ptr %next_byte109, align 8, !dbg !1739
  %add.ptr110 = getelementptr i8, ptr %66, i64 4, !dbg !1739
  %add.ptr111 = getelementptr i8, ptr %add.ptr110, i64 0, !dbg !1739
  %67 = load ptr, ptr %insn.addr, align 8, !dbg !1739
  %end_kaddr112 = getelementptr inbounds %struct.insn, ptr %67, i32 0, i32 16, !dbg !1739
  %68 = load ptr, ptr %end_kaddr112, align 8, !dbg !1739
  %cmp113 = icmp ule ptr %add.ptr111, %68, !dbg !1739
  %lnot115 = xor i1 %cmp113, true, !dbg !1739
  %lnot117 = xor i1 %lnot115, true, !dbg !1739
  %lnot119 = xor i1 %lnot117, true, !dbg !1739
  %lnot.ext120 = zext i1 %lnot119 to i32, !dbg !1739
  %conv121 = sext i32 %lnot.ext120 to i64, !dbg !1739
  %expval122 = call i64 @llvm.expect.i64(i64 %conv121, i64 0), !dbg !1739
  %tobool123 = icmp ne i64 %expval122, 0, !dbg !1739
  br i1 %tobool123, label %if.then124, label %if.end125, !dbg !1741

if.then124:                                       ; preds = %if.then107
  br label %err_out, !dbg !1739

if.end125:                                        ; preds = %if.then107
  call void @llvm.lifetime.start.p0(i64 4, ptr %r127) #7, !dbg !1742
  call void @llvm.dbg.declare(metadata ptr %r127, metadata !307, metadata !DIExpression()), !dbg !1742
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr128) #7, !dbg !1743
  call void @llvm.dbg.declare(metadata ptr %__pptr128, metadata !313, metadata !DIExpression()), !dbg !1743
  %69 = load ptr, ptr %insn.addr, align 8, !dbg !1743
  %next_byte129 = getelementptr inbounds %struct.insn, ptr %69, i32 0, i32 17, !dbg !1743
  %70 = load ptr, ptr %next_byte129, align 8, !dbg !1743
  store ptr %70, ptr %__pptr128, align 8, !dbg !1743
  %71 = load ptr, ptr %__pptr128, align 8, !dbg !1743
  %x131 = getelementptr inbounds %struct.anon.15, ptr %71, i32 0, i32 0, !dbg !1743
  %72 = load i32, ptr %x131, align 1, !dbg !1743
  store i32 %72, ptr %tmp130, align 4, !dbg !1743
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr128) #7, !dbg !1742
  %73 = load i32, ptr %tmp130, align 4, !dbg !1743
  store i32 %73, ptr %r127, align 4, !dbg !1742
  %74 = load ptr, ptr %insn.addr, align 8, !dbg !1742
  %next_byte132 = getelementptr inbounds %struct.insn, ptr %74, i32 0, i32 17, !dbg !1742
  %75 = load ptr, ptr %next_byte132, align 8, !dbg !1742
  %add.ptr133 = getelementptr i8, ptr %75, i64 4, !dbg !1742
  store ptr %add.ptr133, ptr %next_byte132, align 8, !dbg !1742
  call void @llvm.lifetime.start.p0(i64 4, ptr %v135) #7, !dbg !1744
  call void @llvm.dbg.declare(metadata ptr %v135, metadata !320, metadata !DIExpression()), !dbg !1744
  %76 = load i32, ptr %r127, align 4, !dbg !1744
  store i32 %76, ptr %v135, align 4, !dbg !1744
  %77 = load i32, ptr %v135, align 4, !dbg !1744
  store i32 %77, ptr %tmp136, align 4, !dbg !1744
  call void @llvm.lifetime.end.p0(i64 4, ptr %v135) #7, !dbg !1742
  %78 = load i32, ptr %tmp136, align 4, !dbg !1744
  store i32 %78, ptr %tmp134, align 4, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %r127) #7, !dbg !1741
  %79 = load i32, ptr %tmp134, align 4, !dbg !1742
  store i32 %79, ptr %tmp126, align 4, !dbg !1739
  %80 = load i32, ptr %tmp126, align 4, !dbg !1741
  call void @insn_field_set(ptr noundef %displacement108, i32 noundef %80, i8 noundef zeroext 4) #8, !dbg !1745
  br label %if.end137, !dbg !1746

if.end137:                                        ; preds = %if.end125, %land.lhs.true103, %lor.lhs.false99
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end86
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end34
  br label %if.end140, !dbg !1747

if.end140:                                        ; preds = %if.end139, %if.end7
  br label %out, !dbg !1670

out:                                              ; preds = %if.end140, %if.then19
  call void @llvm.dbg.label(metadata !322), !dbg !1748
  %81 = load ptr, ptr %insn.addr, align 8, !dbg !1749
  %displacement141 = getelementptr inbounds %struct.insn, ptr %81, i32 0, i32 6, !dbg !1750
  %got142 = getelementptr inbounds %struct.insn_field, ptr %displacement141, i32 0, i32 1, !dbg !1751
  store i8 1, ptr %got142, align 4, !dbg !1752
  store i32 0, ptr %retval, align 4, !dbg !1753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1753

err_out:                                          ; preds = %if.then124, %if.then72, %if.then33
  call void @llvm.dbg.label(metadata !323), !dbg !1754
  store i32 -61, ptr %retval, align 4, !dbg !1755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1755

cleanup:                                          ; preds = %err_out, %out, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1756
  call void @llvm.lifetime.end.p0(i64 1, ptr %base) #7, !dbg !1756
  call void @llvm.lifetime.end.p0(i64 1, ptr %rm) #7, !dbg !1756
  call void @llvm.lifetime.end.p0(i64 1, ptr %mod) #7, !dbg !1756
  %82 = load i32, ptr %retval, align 4, !dbg !1756
  ret i32 %82, !dbg !1756
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_immediate(ptr noundef %insn) #0 align 16 !dbg !339 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i8, align 1
  %r = alloca i8, align 1
  %__pptr = alloca ptr, align 8
  %tmp30 = alloca i8, align 1
  %tmp33 = alloca i8, align 1
  %v = alloca i8, align 1
  %tmp34 = alloca i8, align 1
  %tmp54 = alloca i16, align 2
  %r55 = alloca i16, align 2
  %__pptr56 = alloca ptr, align 8
  %tmp58 = alloca i16, align 2
  %tmp62 = alloca i16, align 2
  %v63 = alloca i16, align 2
  %tmp64 = alloca i16, align 2
  %tmp84 = alloca i32, align 4
  %r85 = alloca i32, align 4
  %__pptr86 = alloca ptr, align 8
  %tmp88 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %v93 = alloca i32, align 4
  %tmp94 = alloca i32, align 4
  %tmp113 = alloca i32, align 4
  %r114 = alloca i32, align 4
  %__pptr115 = alloca ptr, align 8
  %tmp117 = alloca i32, align 4
  %tmp121 = alloca i32, align 4
  %v122 = alloca i32, align 4
  %tmp123 = alloca i32, align 4
  %tmp141 = alloca i32, align 4
  %r142 = alloca i32, align 4
  %__pptr143 = alloca ptr, align 8
  %tmp145 = alloca i32, align 4
  %tmp149 = alloca i32, align 4
  %v150 = alloca i32, align 4
  %tmp151 = alloca i32, align 4
  %tmp188 = alloca i8, align 1
  %r189 = alloca i8, align 1
  %__pptr190 = alloca ptr, align 8
  %tmp192 = alloca i8, align 1
  %tmp196 = alloca i8, align 1
  %v197 = alloca i8, align 1
  %tmp198 = alloca i8, align 1
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !341, metadata !DIExpression()), !dbg !1757
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1758
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !342, metadata !DIExpression()), !dbg !1759
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1760
  %1 = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 7, !dbg !1762
  %got = getelementptr inbounds %struct.insn_field, ptr %1, i32 0, i32 1, !dbg !1763
  %2 = load i8, ptr %got, align 4, !dbg !1763
  %tobool = icmp ne i8 %2, 0, !dbg !1760
  br i1 %tobool, label %if.then, label %if.end, !dbg !1764

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1765

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !1766
  %displacement = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 6, !dbg !1768
  %got1 = getelementptr inbounds %struct.insn_field, ptr %displacement, i32 0, i32 1, !dbg !1769
  %4 = load i8, ptr %got1, align 4, !dbg !1769
  %tobool2 = icmp ne i8 %4, 0, !dbg !1766
  br i1 %tobool2, label %if.end7, label %if.then3, !dbg !1770

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !1771
  %call = call i32 @insn_get_displacement(ptr noundef %5) #8, !dbg !1773
  store i32 %call, ptr %ret, align 4, !dbg !1774
  %6 = load i32, ptr %ret, align 4, !dbg !1775
  %tobool4 = icmp ne i32 %6, 0, !dbg !1775
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1777

if.then5:                                         ; preds = %if.then3
  %7 = load i32, ptr %ret, align 4, !dbg !1778
  store i32 %7, ptr %retval, align 4, !dbg !1779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1779

if.end6:                                          ; preds = %if.then3
  br label %if.end7, !dbg !1780

if.end7:                                          ; preds = %if.end6, %if.end
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !1781
  %attr = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 10, !dbg !1783
  %9 = load i32, ptr %attr, align 4, !dbg !1783
  %call8 = call i32 @inat_has_moffset(i32 noundef %9) #8, !dbg !1784
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1784
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !1785

if.then10:                                        ; preds = %if.end7
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !1786
  %call11 = call i32 @__get_moffset(ptr noundef %10) #8, !dbg !1789
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1789
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1790

if.then13:                                        ; preds = %if.then10
  br label %err_out, !dbg !1791

if.end14:                                         ; preds = %if.then10
  br label %done, !dbg !1792

if.end15:                                         ; preds = %if.end7
  %11 = load ptr, ptr %insn.addr, align 8, !dbg !1793
  %attr16 = getelementptr inbounds %struct.insn, ptr %11, i32 0, i32 10, !dbg !1795
  %12 = load i32, ptr %attr16, align 4, !dbg !1795
  %call17 = call i32 @inat_has_immediate(i32 noundef %12) #8, !dbg !1796
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1796
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1797

if.then19:                                        ; preds = %if.end15
  br label %done, !dbg !1798

if.end20:                                         ; preds = %if.end15
  %13 = load ptr, ptr %insn.addr, align 8, !dbg !1799
  %attr21 = getelementptr inbounds %struct.insn, ptr %13, i32 0, i32 10, !dbg !1800
  %14 = load i32, ptr %attr21, align 4, !dbg !1800
  %call22 = call i32 @inat_immediate_size(i32 noundef %14) #8, !dbg !1801
  switch i32 %call22, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb36
    i32 3, label %sw.bb66
    i32 4, label %sw.bb95
    i32 5, label %sw.bb152
    i32 6, label %sw.bb157
    i32 7, label %sw.bb162
  ], !dbg !1802

sw.bb:                                            ; preds = %if.end20
  %15 = load ptr, ptr %insn.addr, align 8, !dbg !1803
  %16 = getelementptr inbounds %struct.insn, ptr %15, i32 0, i32 7, !dbg !1804
  %17 = load ptr, ptr %insn.addr, align 8, !dbg !1805
  %next_byte = getelementptr inbounds %struct.insn, ptr %17, i32 0, i32 17, !dbg !1805
  %18 = load ptr, ptr %next_byte, align 8, !dbg !1805
  %add.ptr = getelementptr i8, ptr %18, i64 1, !dbg !1805
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i64 0, !dbg !1805
  %19 = load ptr, ptr %insn.addr, align 8, !dbg !1805
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %19, i32 0, i32 16, !dbg !1805
  %20 = load ptr, ptr %end_kaddr, align 8, !dbg !1805
  %cmp = icmp ule ptr %add.ptr23, %20, !dbg !1805
  %lnot = xor i1 %cmp, true, !dbg !1805
  %lnot24 = xor i1 %lnot, true, !dbg !1805
  %lnot25 = xor i1 %lnot24, true, !dbg !1805
  %lnot.ext = zext i1 %lnot25 to i32, !dbg !1805
  %conv = sext i32 %lnot.ext to i64, !dbg !1805
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1805
  %tobool26 = icmp ne i64 %expval, 0, !dbg !1805
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1807

if.then27:                                        ; preds = %sw.bb
  br label %err_out, !dbg !1805

if.end28:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #7, !dbg !1808
  call void @llvm.dbg.declare(metadata ptr %r, metadata !343, metadata !DIExpression()), !dbg !1808
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !1809
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !347, metadata !DIExpression()), !dbg !1809
  %21 = load ptr, ptr %insn.addr, align 8, !dbg !1809
  %next_byte29 = getelementptr inbounds %struct.insn, ptr %21, i32 0, i32 17, !dbg !1809
  %22 = load ptr, ptr %next_byte29, align 8, !dbg !1809
  store ptr %22, ptr %__pptr, align 8, !dbg !1809
  %23 = load ptr, ptr %__pptr, align 8, !dbg !1809
  %x = getelementptr inbounds %struct.anon.16, ptr %23, i32 0, i32 0, !dbg !1809
  %24 = load i8, ptr %x, align 1, !dbg !1809
  store i8 %24, ptr %tmp30, align 1, !dbg !1809
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !1808
  %25 = load i8, ptr %tmp30, align 1, !dbg !1809
  store i8 %25, ptr %r, align 1, !dbg !1808
  %26 = load ptr, ptr %insn.addr, align 8, !dbg !1808
  %next_byte31 = getelementptr inbounds %struct.insn, ptr %26, i32 0, i32 17, !dbg !1808
  %27 = load ptr, ptr %next_byte31, align 8, !dbg !1808
  %add.ptr32 = getelementptr i8, ptr %27, i64 1, !dbg !1808
  store ptr %add.ptr32, ptr %next_byte31, align 8, !dbg !1808
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #7, !dbg !1810
  call void @llvm.dbg.declare(metadata ptr %v, metadata !349, metadata !DIExpression()), !dbg !1810
  %28 = load i8, ptr %r, align 1, !dbg !1810
  store i8 %28, ptr %v, align 1, !dbg !1810
  %29 = load i8, ptr %v, align 1, !dbg !1810
  store i8 %29, ptr %tmp34, align 1, !dbg !1810
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #7, !dbg !1808
  %30 = load i8, ptr %tmp34, align 1, !dbg !1810
  store i8 %30, ptr %tmp33, align 1, !dbg !1808
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #7, !dbg !1807
  %31 = load i8, ptr %tmp33, align 1, !dbg !1808
  store i8 %31, ptr %tmp, align 1, !dbg !1805
  %32 = load i8, ptr %tmp, align 1, !dbg !1807
  %conv35 = sext i8 %32 to i32, !dbg !1811
  call void @insn_field_set(ptr noundef %16, i32 noundef %conv35, i8 noundef zeroext 1) #8, !dbg !1812
  br label %sw.epilog, !dbg !1813

sw.bb36:                                          ; preds = %if.end20
  %33 = load ptr, ptr %insn.addr, align 8, !dbg !1814
  %34 = getelementptr inbounds %struct.insn, ptr %33, i32 0, i32 7, !dbg !1815
  %35 = load ptr, ptr %insn.addr, align 8, !dbg !1816
  %next_byte37 = getelementptr inbounds %struct.insn, ptr %35, i32 0, i32 17, !dbg !1816
  %36 = load ptr, ptr %next_byte37, align 8, !dbg !1816
  %add.ptr38 = getelementptr i8, ptr %36, i64 2, !dbg !1816
  %add.ptr39 = getelementptr i8, ptr %add.ptr38, i64 0, !dbg !1816
  %37 = load ptr, ptr %insn.addr, align 8, !dbg !1816
  %end_kaddr40 = getelementptr inbounds %struct.insn, ptr %37, i32 0, i32 16, !dbg !1816
  %38 = load ptr, ptr %end_kaddr40, align 8, !dbg !1816
  %cmp41 = icmp ule ptr %add.ptr39, %38, !dbg !1816
  %lnot43 = xor i1 %cmp41, true, !dbg !1816
  %lnot45 = xor i1 %lnot43, true, !dbg !1816
  %lnot47 = xor i1 %lnot45, true, !dbg !1816
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !1816
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !1816
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !1816
  %tobool51 = icmp ne i64 %expval50, 0, !dbg !1816
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !1818

if.then52:                                        ; preds = %sw.bb36
  br label %err_out, !dbg !1816

if.end53:                                         ; preds = %sw.bb36
  call void @llvm.lifetime.start.p0(i64 2, ptr %r55) #7, !dbg !1819
  call void @llvm.dbg.declare(metadata ptr %r55, metadata !351, metadata !DIExpression()), !dbg !1819
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr56) #7, !dbg !1820
  call void @llvm.dbg.declare(metadata ptr %__pptr56, metadata !354, metadata !DIExpression()), !dbg !1820
  %39 = load ptr, ptr %insn.addr, align 8, !dbg !1820
  %next_byte57 = getelementptr inbounds %struct.insn, ptr %39, i32 0, i32 17, !dbg !1820
  %40 = load ptr, ptr %next_byte57, align 8, !dbg !1820
  store ptr %40, ptr %__pptr56, align 8, !dbg !1820
  %41 = load ptr, ptr %__pptr56, align 8, !dbg !1820
  %x59 = getelementptr inbounds %struct.anon.17, ptr %41, i32 0, i32 0, !dbg !1820
  %42 = load i16, ptr %x59, align 1, !dbg !1820
  store i16 %42, ptr %tmp58, align 2, !dbg !1820
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr56) #7, !dbg !1819
  %43 = load i16, ptr %tmp58, align 2, !dbg !1820
  store i16 %43, ptr %r55, align 2, !dbg !1819
  %44 = load ptr, ptr %insn.addr, align 8, !dbg !1819
  %next_byte60 = getelementptr inbounds %struct.insn, ptr %44, i32 0, i32 17, !dbg !1819
  %45 = load ptr, ptr %next_byte60, align 8, !dbg !1819
  %add.ptr61 = getelementptr i8, ptr %45, i64 2, !dbg !1819
  store ptr %add.ptr61, ptr %next_byte60, align 8, !dbg !1819
  call void @llvm.lifetime.start.p0(i64 2, ptr %v63) #7, !dbg !1821
  call void @llvm.dbg.declare(metadata ptr %v63, metadata !361, metadata !DIExpression()), !dbg !1821
  %46 = load i16, ptr %r55, align 2, !dbg !1821
  store i16 %46, ptr %v63, align 2, !dbg !1821
  %47 = load i16, ptr %v63, align 2, !dbg !1821
  store i16 %47, ptr %tmp64, align 2, !dbg !1821
  call void @llvm.lifetime.end.p0(i64 2, ptr %v63) #7, !dbg !1819
  %48 = load i16, ptr %tmp64, align 2, !dbg !1821
  store i16 %48, ptr %tmp62, align 2, !dbg !1819
  call void @llvm.lifetime.end.p0(i64 2, ptr %r55) #7, !dbg !1818
  %49 = load i16, ptr %tmp62, align 2, !dbg !1819
  store i16 %49, ptr %tmp54, align 2, !dbg !1816
  %50 = load i16, ptr %tmp54, align 2, !dbg !1818
  %conv65 = sext i16 %50 to i32, !dbg !1822
  call void @insn_field_set(ptr noundef %34, i32 noundef %conv65, i8 noundef zeroext 2) #8, !dbg !1823
  br label %sw.epilog, !dbg !1824

sw.bb66:                                          ; preds = %if.end20
  %51 = load ptr, ptr %insn.addr, align 8, !dbg !1825
  %52 = getelementptr inbounds %struct.insn, ptr %51, i32 0, i32 7, !dbg !1826
  %53 = load ptr, ptr %insn.addr, align 8, !dbg !1827
  %next_byte67 = getelementptr inbounds %struct.insn, ptr %53, i32 0, i32 17, !dbg !1827
  %54 = load ptr, ptr %next_byte67, align 8, !dbg !1827
  %add.ptr68 = getelementptr i8, ptr %54, i64 4, !dbg !1827
  %add.ptr69 = getelementptr i8, ptr %add.ptr68, i64 0, !dbg !1827
  %55 = load ptr, ptr %insn.addr, align 8, !dbg !1827
  %end_kaddr70 = getelementptr inbounds %struct.insn, ptr %55, i32 0, i32 16, !dbg !1827
  %56 = load ptr, ptr %end_kaddr70, align 8, !dbg !1827
  %cmp71 = icmp ule ptr %add.ptr69, %56, !dbg !1827
  %lnot73 = xor i1 %cmp71, true, !dbg !1827
  %lnot75 = xor i1 %lnot73, true, !dbg !1827
  %lnot77 = xor i1 %lnot75, true, !dbg !1827
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !1827
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !1827
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 0), !dbg !1827
  %tobool81 = icmp ne i64 %expval80, 0, !dbg !1827
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !1829

if.then82:                                        ; preds = %sw.bb66
  br label %err_out, !dbg !1827

if.end83:                                         ; preds = %sw.bb66
  call void @llvm.lifetime.start.p0(i64 4, ptr %r85) #7, !dbg !1830
  call void @llvm.dbg.declare(metadata ptr %r85, metadata !363, metadata !DIExpression()), !dbg !1830
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr86) #7, !dbg !1831
  call void @llvm.dbg.declare(metadata ptr %__pptr86, metadata !366, metadata !DIExpression()), !dbg !1831
  %57 = load ptr, ptr %insn.addr, align 8, !dbg !1831
  %next_byte87 = getelementptr inbounds %struct.insn, ptr %57, i32 0, i32 17, !dbg !1831
  %58 = load ptr, ptr %next_byte87, align 8, !dbg !1831
  store ptr %58, ptr %__pptr86, align 8, !dbg !1831
  %59 = load ptr, ptr %__pptr86, align 8, !dbg !1831
  %x89 = getelementptr inbounds %struct.anon.18, ptr %59, i32 0, i32 0, !dbg !1831
  %60 = load i32, ptr %x89, align 1, !dbg !1831
  store i32 %60, ptr %tmp88, align 4, !dbg !1831
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr86) #7, !dbg !1830
  %61 = load i32, ptr %tmp88, align 4, !dbg !1831
  store i32 %61, ptr %r85, align 4, !dbg !1830
  %62 = load ptr, ptr %insn.addr, align 8, !dbg !1830
  %next_byte90 = getelementptr inbounds %struct.insn, ptr %62, i32 0, i32 17, !dbg !1830
  %63 = load ptr, ptr %next_byte90, align 8, !dbg !1830
  %add.ptr91 = getelementptr i8, ptr %63, i64 4, !dbg !1830
  store ptr %add.ptr91, ptr %next_byte90, align 8, !dbg !1830
  call void @llvm.lifetime.start.p0(i64 4, ptr %v93) #7, !dbg !1832
  call void @llvm.dbg.declare(metadata ptr %v93, metadata !373, metadata !DIExpression()), !dbg !1832
  %64 = load i32, ptr %r85, align 4, !dbg !1832
  store i32 %64, ptr %v93, align 4, !dbg !1832
  %65 = load i32, ptr %v93, align 4, !dbg !1832
  store i32 %65, ptr %tmp94, align 4, !dbg !1832
  call void @llvm.lifetime.end.p0(i64 4, ptr %v93) #7, !dbg !1830
  %66 = load i32, ptr %tmp94, align 4, !dbg !1832
  store i32 %66, ptr %tmp92, align 4, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 4, ptr %r85) #7, !dbg !1829
  %67 = load i32, ptr %tmp92, align 4, !dbg !1830
  store i32 %67, ptr %tmp84, align 4, !dbg !1827
  %68 = load i32, ptr %tmp84, align 4, !dbg !1829
  call void @insn_field_set(ptr noundef %52, i32 noundef %68, i8 noundef zeroext 4) #8, !dbg !1833
  br label %sw.epilog, !dbg !1834

sw.bb95:                                          ; preds = %if.end20
  %69 = load ptr, ptr %insn.addr, align 8, !dbg !1835
  %70 = getelementptr inbounds %struct.insn, ptr %69, i32 0, i32 7, !dbg !1836
  %71 = load ptr, ptr %insn.addr, align 8, !dbg !1837
  %next_byte96 = getelementptr inbounds %struct.insn, ptr %71, i32 0, i32 17, !dbg !1837
  %72 = load ptr, ptr %next_byte96, align 8, !dbg !1837
  %add.ptr97 = getelementptr i8, ptr %72, i64 4, !dbg !1837
  %add.ptr98 = getelementptr i8, ptr %add.ptr97, i64 0, !dbg !1837
  %73 = load ptr, ptr %insn.addr, align 8, !dbg !1837
  %end_kaddr99 = getelementptr inbounds %struct.insn, ptr %73, i32 0, i32 16, !dbg !1837
  %74 = load ptr, ptr %end_kaddr99, align 8, !dbg !1837
  %cmp100 = icmp ule ptr %add.ptr98, %74, !dbg !1837
  %lnot102 = xor i1 %cmp100, true, !dbg !1837
  %lnot104 = xor i1 %lnot102, true, !dbg !1837
  %lnot106 = xor i1 %lnot104, true, !dbg !1837
  %lnot.ext107 = zext i1 %lnot106 to i32, !dbg !1837
  %conv108 = sext i32 %lnot.ext107 to i64, !dbg !1837
  %expval109 = call i64 @llvm.expect.i64(i64 %conv108, i64 0), !dbg !1837
  %tobool110 = icmp ne i64 %expval109, 0, !dbg !1837
  br i1 %tobool110, label %if.then111, label %if.end112, !dbg !1839

if.then111:                                       ; preds = %sw.bb95
  br label %err_out, !dbg !1837

if.end112:                                        ; preds = %sw.bb95
  call void @llvm.lifetime.start.p0(i64 4, ptr %r114) #7, !dbg !1840
  call void @llvm.dbg.declare(metadata ptr %r114, metadata !375, metadata !DIExpression()), !dbg !1840
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr115) #7, !dbg !1841
  call void @llvm.dbg.declare(metadata ptr %__pptr115, metadata !378, metadata !DIExpression()), !dbg !1841
  %75 = load ptr, ptr %insn.addr, align 8, !dbg !1841
  %next_byte116 = getelementptr inbounds %struct.insn, ptr %75, i32 0, i32 17, !dbg !1841
  %76 = load ptr, ptr %next_byte116, align 8, !dbg !1841
  store ptr %76, ptr %__pptr115, align 8, !dbg !1841
  %77 = load ptr, ptr %__pptr115, align 8, !dbg !1841
  %x118 = getelementptr inbounds %struct.anon.19, ptr %77, i32 0, i32 0, !dbg !1841
  %78 = load i32, ptr %x118, align 1, !dbg !1841
  store i32 %78, ptr %tmp117, align 4, !dbg !1841
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr115) #7, !dbg !1840
  %79 = load i32, ptr %tmp117, align 4, !dbg !1841
  store i32 %79, ptr %r114, align 4, !dbg !1840
  %80 = load ptr, ptr %insn.addr, align 8, !dbg !1840
  %next_byte119 = getelementptr inbounds %struct.insn, ptr %80, i32 0, i32 17, !dbg !1840
  %81 = load ptr, ptr %next_byte119, align 8, !dbg !1840
  %add.ptr120 = getelementptr i8, ptr %81, i64 4, !dbg !1840
  store ptr %add.ptr120, ptr %next_byte119, align 8, !dbg !1840
  call void @llvm.lifetime.start.p0(i64 4, ptr %v122) #7, !dbg !1842
  call void @llvm.dbg.declare(metadata ptr %v122, metadata !385, metadata !DIExpression()), !dbg !1842
  %82 = load i32, ptr %r114, align 4, !dbg !1842
  store i32 %82, ptr %v122, align 4, !dbg !1842
  %83 = load i32, ptr %v122, align 4, !dbg !1842
  store i32 %83, ptr %tmp123, align 4, !dbg !1842
  call void @llvm.lifetime.end.p0(i64 4, ptr %v122) #7, !dbg !1840
  %84 = load i32, ptr %tmp123, align 4, !dbg !1842
  store i32 %84, ptr %tmp121, align 4, !dbg !1840
  call void @llvm.lifetime.end.p0(i64 4, ptr %r114) #7, !dbg !1839
  %85 = load i32, ptr %tmp121, align 4, !dbg !1840
  store i32 %85, ptr %tmp113, align 4, !dbg !1837
  %86 = load i32, ptr %tmp113, align 4, !dbg !1839
  call void @insn_field_set(ptr noundef %70, i32 noundef %86, i8 noundef zeroext 4) #8, !dbg !1843
  %87 = load ptr, ptr %insn.addr, align 8, !dbg !1844
  %88 = getelementptr inbounds %struct.insn, ptr %87, i32 0, i32 8, !dbg !1845
  %89 = load ptr, ptr %insn.addr, align 8, !dbg !1846
  %next_byte124 = getelementptr inbounds %struct.insn, ptr %89, i32 0, i32 17, !dbg !1846
  %90 = load ptr, ptr %next_byte124, align 8, !dbg !1846
  %add.ptr125 = getelementptr i8, ptr %90, i64 4, !dbg !1846
  %add.ptr126 = getelementptr i8, ptr %add.ptr125, i64 0, !dbg !1846
  %91 = load ptr, ptr %insn.addr, align 8, !dbg !1846
  %end_kaddr127 = getelementptr inbounds %struct.insn, ptr %91, i32 0, i32 16, !dbg !1846
  %92 = load ptr, ptr %end_kaddr127, align 8, !dbg !1846
  %cmp128 = icmp ule ptr %add.ptr126, %92, !dbg !1846
  %lnot130 = xor i1 %cmp128, true, !dbg !1846
  %lnot132 = xor i1 %lnot130, true, !dbg !1846
  %lnot134 = xor i1 %lnot132, true, !dbg !1846
  %lnot.ext135 = zext i1 %lnot134 to i32, !dbg !1846
  %conv136 = sext i32 %lnot.ext135 to i64, !dbg !1846
  %expval137 = call i64 @llvm.expect.i64(i64 %conv136, i64 0), !dbg !1846
  %tobool138 = icmp ne i64 %expval137, 0, !dbg !1846
  br i1 %tobool138, label %if.then139, label %if.end140, !dbg !1848

if.then139:                                       ; preds = %if.end112
  br label %err_out, !dbg !1846

if.end140:                                        ; preds = %if.end112
  call void @llvm.lifetime.start.p0(i64 4, ptr %r142) #7, !dbg !1849
  call void @llvm.dbg.declare(metadata ptr %r142, metadata !387, metadata !DIExpression()), !dbg !1849
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr143) #7, !dbg !1850
  call void @llvm.dbg.declare(metadata ptr %__pptr143, metadata !390, metadata !DIExpression()), !dbg !1850
  %93 = load ptr, ptr %insn.addr, align 8, !dbg !1850
  %next_byte144 = getelementptr inbounds %struct.insn, ptr %93, i32 0, i32 17, !dbg !1850
  %94 = load ptr, ptr %next_byte144, align 8, !dbg !1850
  store ptr %94, ptr %__pptr143, align 8, !dbg !1850
  %95 = load ptr, ptr %__pptr143, align 8, !dbg !1850
  %x146 = getelementptr inbounds %struct.anon.20, ptr %95, i32 0, i32 0, !dbg !1850
  %96 = load i32, ptr %x146, align 1, !dbg !1850
  store i32 %96, ptr %tmp145, align 4, !dbg !1850
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr143) #7, !dbg !1849
  %97 = load i32, ptr %tmp145, align 4, !dbg !1850
  store i32 %97, ptr %r142, align 4, !dbg !1849
  %98 = load ptr, ptr %insn.addr, align 8, !dbg !1849
  %next_byte147 = getelementptr inbounds %struct.insn, ptr %98, i32 0, i32 17, !dbg !1849
  %99 = load ptr, ptr %next_byte147, align 8, !dbg !1849
  %add.ptr148 = getelementptr i8, ptr %99, i64 4, !dbg !1849
  store ptr %add.ptr148, ptr %next_byte147, align 8, !dbg !1849
  call void @llvm.lifetime.start.p0(i64 4, ptr %v150) #7, !dbg !1851
  call void @llvm.dbg.declare(metadata ptr %v150, metadata !397, metadata !DIExpression()), !dbg !1851
  %100 = load i32, ptr %r142, align 4, !dbg !1851
  store i32 %100, ptr %v150, align 4, !dbg !1851
  %101 = load i32, ptr %v150, align 4, !dbg !1851
  store i32 %101, ptr %tmp151, align 4, !dbg !1851
  call void @llvm.lifetime.end.p0(i64 4, ptr %v150) #7, !dbg !1849
  %102 = load i32, ptr %tmp151, align 4, !dbg !1851
  store i32 %102, ptr %tmp149, align 4, !dbg !1849
  call void @llvm.lifetime.end.p0(i64 4, ptr %r142) #7, !dbg !1848
  %103 = load i32, ptr %tmp149, align 4, !dbg !1849
  store i32 %103, ptr %tmp141, align 4, !dbg !1846
  %104 = load i32, ptr %tmp141, align 4, !dbg !1848
  call void @insn_field_set(ptr noundef %88, i32 noundef %104, i8 noundef zeroext 4) #8, !dbg !1852
  br label %sw.epilog, !dbg !1853

sw.bb152:                                         ; preds = %if.end20
  %105 = load ptr, ptr %insn.addr, align 8, !dbg !1854
  %call153 = call i32 @__get_immptr(ptr noundef %105) #8, !dbg !1856
  %tobool154 = icmp ne i32 %call153, 0, !dbg !1856
  br i1 %tobool154, label %if.end156, label %if.then155, !dbg !1857

if.then155:                                       ; preds = %sw.bb152
  br label %err_out, !dbg !1858

if.end156:                                        ; preds = %sw.bb152
  br label %sw.epilog, !dbg !1859

sw.bb157:                                         ; preds = %if.end20
  %106 = load ptr, ptr %insn.addr, align 8, !dbg !1860
  %call158 = call i32 @__get_immv32(ptr noundef %106) #8, !dbg !1862
  %tobool159 = icmp ne i32 %call158, 0, !dbg !1862
  br i1 %tobool159, label %if.end161, label %if.then160, !dbg !1863

if.then160:                                       ; preds = %sw.bb157
  br label %err_out, !dbg !1864

if.end161:                                        ; preds = %sw.bb157
  br label %sw.epilog, !dbg !1865

sw.bb162:                                         ; preds = %if.end20
  %107 = load ptr, ptr %insn.addr, align 8, !dbg !1866
  %call163 = call i32 @__get_immv(ptr noundef %107) #8, !dbg !1868
  %tobool164 = icmp ne i32 %call163, 0, !dbg !1868
  br i1 %tobool164, label %if.end166, label %if.then165, !dbg !1869

if.then165:                                       ; preds = %sw.bb162
  br label %err_out, !dbg !1870

if.end166:                                        ; preds = %sw.bb162
  br label %sw.epilog, !dbg !1871

sw.default:                                       ; preds = %if.end20
  br label %err_out, !dbg !1872

sw.epilog:                                        ; preds = %if.end166, %if.end161, %if.end156, %if.end140, %if.end83, %if.end53, %if.end28
  %108 = load ptr, ptr %insn.addr, align 8, !dbg !1873
  %attr167 = getelementptr inbounds %struct.insn, ptr %108, i32 0, i32 10, !dbg !1874
  %109 = load i32, ptr %attr167, align 4, !dbg !1874
  %call168 = call i32 @inat_has_second_immediate(i32 noundef %109) #8, !dbg !1875
  %tobool169 = icmp ne i32 %call168, 0, !dbg !1875
  br i1 %tobool169, label %if.then170, label %if.end200, !dbg !1876

if.then170:                                       ; preds = %sw.epilog
  %110 = load ptr, ptr %insn.addr, align 8, !dbg !1877
  %111 = getelementptr inbounds %struct.insn, ptr %110, i32 0, i32 8, !dbg !1878
  %112 = load ptr, ptr %insn.addr, align 8, !dbg !1879
  %next_byte171 = getelementptr inbounds %struct.insn, ptr %112, i32 0, i32 17, !dbg !1879
  %113 = load ptr, ptr %next_byte171, align 8, !dbg !1879
  %add.ptr172 = getelementptr i8, ptr %113, i64 1, !dbg !1879
  %add.ptr173 = getelementptr i8, ptr %add.ptr172, i64 0, !dbg !1879
  %114 = load ptr, ptr %insn.addr, align 8, !dbg !1879
  %end_kaddr174 = getelementptr inbounds %struct.insn, ptr %114, i32 0, i32 16, !dbg !1879
  %115 = load ptr, ptr %end_kaddr174, align 8, !dbg !1879
  %cmp175 = icmp ule ptr %add.ptr173, %115, !dbg !1879
  %lnot177 = xor i1 %cmp175, true, !dbg !1879
  %lnot179 = xor i1 %lnot177, true, !dbg !1879
  %lnot181 = xor i1 %lnot179, true, !dbg !1879
  %lnot.ext182 = zext i1 %lnot181 to i32, !dbg !1879
  %conv183 = sext i32 %lnot.ext182 to i64, !dbg !1879
  %expval184 = call i64 @llvm.expect.i64(i64 %conv183, i64 0), !dbg !1879
  %tobool185 = icmp ne i64 %expval184, 0, !dbg !1879
  br i1 %tobool185, label %if.then186, label %if.end187, !dbg !1881

if.then186:                                       ; preds = %if.then170
  br label %err_out, !dbg !1879

if.end187:                                        ; preds = %if.then170
  call void @llvm.lifetime.start.p0(i64 1, ptr %r189) #7, !dbg !1882
  call void @llvm.dbg.declare(metadata ptr %r189, metadata !399, metadata !DIExpression()), !dbg !1882
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr190) #7, !dbg !1883
  call void @llvm.dbg.declare(metadata ptr %__pptr190, metadata !404, metadata !DIExpression()), !dbg !1883
  %116 = load ptr, ptr %insn.addr, align 8, !dbg !1883
  %next_byte191 = getelementptr inbounds %struct.insn, ptr %116, i32 0, i32 17, !dbg !1883
  %117 = load ptr, ptr %next_byte191, align 8, !dbg !1883
  store ptr %117, ptr %__pptr190, align 8, !dbg !1883
  %118 = load ptr, ptr %__pptr190, align 8, !dbg !1883
  %x193 = getelementptr inbounds %struct.anon.21, ptr %118, i32 0, i32 0, !dbg !1883
  %119 = load i8, ptr %x193, align 1, !dbg !1883
  store i8 %119, ptr %tmp192, align 1, !dbg !1883
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr190) #7, !dbg !1882
  %120 = load i8, ptr %tmp192, align 1, !dbg !1883
  store i8 %120, ptr %r189, align 1, !dbg !1882
  %121 = load ptr, ptr %insn.addr, align 8, !dbg !1882
  %next_byte194 = getelementptr inbounds %struct.insn, ptr %121, i32 0, i32 17, !dbg !1882
  %122 = load ptr, ptr %next_byte194, align 8, !dbg !1882
  %add.ptr195 = getelementptr i8, ptr %122, i64 1, !dbg !1882
  store ptr %add.ptr195, ptr %next_byte194, align 8, !dbg !1882
  call void @llvm.lifetime.start.p0(i64 1, ptr %v197) #7, !dbg !1884
  call void @llvm.dbg.declare(metadata ptr %v197, metadata !411, metadata !DIExpression()), !dbg !1884
  %123 = load i8, ptr %r189, align 1, !dbg !1884
  store i8 %123, ptr %v197, align 1, !dbg !1884
  %124 = load i8, ptr %v197, align 1, !dbg !1884
  store i8 %124, ptr %tmp198, align 1, !dbg !1884
  call void @llvm.lifetime.end.p0(i64 1, ptr %v197) #7, !dbg !1882
  %125 = load i8, ptr %tmp198, align 1, !dbg !1884
  store i8 %125, ptr %tmp196, align 1, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 1, ptr %r189) #7, !dbg !1881
  %126 = load i8, ptr %tmp196, align 1, !dbg !1882
  store i8 %126, ptr %tmp188, align 1, !dbg !1879
  %127 = load i8, ptr %tmp188, align 1, !dbg !1881
  %conv199 = sext i8 %127 to i32, !dbg !1885
  call void @insn_field_set(ptr noundef %111, i32 noundef %conv199, i8 noundef zeroext 1) #8, !dbg !1886
  br label %if.end200, !dbg !1887

if.end200:                                        ; preds = %if.end187, %sw.epilog
  br label %done, !dbg !1888

done:                                             ; preds = %if.end200, %if.then19, %if.end14
  call void @llvm.dbg.label(metadata !413), !dbg !1889
  %128 = load ptr, ptr %insn.addr, align 8, !dbg !1890
  %129 = getelementptr inbounds %struct.insn, ptr %128, i32 0, i32 7, !dbg !1891
  %got201 = getelementptr inbounds %struct.insn_field, ptr %129, i32 0, i32 1, !dbg !1892
  store i8 1, ptr %got201, align 4, !dbg !1893
  store i32 0, ptr %retval, align 4, !dbg !1894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1894

err_out:                                          ; preds = %if.then186, %sw.default, %if.then165, %if.then160, %if.then155, %if.then139, %if.then111, %if.then82, %if.then52, %if.then27, %if.then13
  call void @llvm.dbg.label(metadata !414), !dbg !1895
  store i32 -61, ptr %retval, align 4, !dbg !1896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1896

cleanup:                                          ; preds = %err_out, %done, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1897
  %130 = load i32, ptr %retval, align 4, !dbg !1897
  ret i32 %130, !dbg !1897
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_has_moffset(i32 noundef %attr) #6 align 16 !dbg !1898 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1900, metadata !DIExpression()), !dbg !1901
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1902
  %and = and i32 %0, 131072, !dbg !1903
  ret i32 %and, !dbg !1904
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__get_moffset(ptr noundef %insn) #0 align 16 !dbg !451 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  %r = alloca i16, align 2
  %__pptr = alloca ptr, align 8
  %tmp7 = alloca i16, align 2
  %tmp10 = alloca i16, align 2
  %v = alloca i16, align 2
  %tmp11 = alloca i16, align 2
  %tmp31 = alloca i32, align 4
  %r32 = alloca i32, align 4
  %__pptr33 = alloca ptr, align 8
  %tmp35 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %v40 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  %r61 = alloca i32, align 4
  %__pptr62 = alloca ptr, align 8
  %tmp64 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %v69 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %tmp88 = alloca i32, align 4
  %r89 = alloca i32, align 4
  %__pptr90 = alloca ptr, align 8
  %tmp92 = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  %v97 = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !453, metadata !DIExpression()), !dbg !1905
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1906
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 12, !dbg !1907
  %1 = load i8, ptr %addr_bytes, align 1, !dbg !1907
  %conv = zext i8 %1 to i32, !dbg !1906
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb13
    i32 8, label %sw.bb42
  ], !dbg !1908

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !1909
  %3 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 7, !dbg !1910
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !1911
  %next_byte = getelementptr inbounds %struct.insn, ptr %4, i32 0, i32 17, !dbg !1911
  %5 = load ptr, ptr %next_byte, align 8, !dbg !1911
  %add.ptr = getelementptr i8, ptr %5, i64 2, !dbg !1911
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i64 0, !dbg !1911
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !1911
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 16, !dbg !1911
  %7 = load ptr, ptr %end_kaddr, align 8, !dbg !1911
  %cmp = icmp ule ptr %add.ptr1, %7, !dbg !1911
  %lnot = xor i1 %cmp, true, !dbg !1911
  %lnot3 = xor i1 %lnot, true, !dbg !1911
  %lnot4 = xor i1 %lnot3, true, !dbg !1911
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1911
  %conv5 = sext i32 %lnot.ext to i64, !dbg !1911
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !1911
  %tobool = icmp ne i64 %expval, 0, !dbg !1911
  br i1 %tobool, label %if.then, label %if.end, !dbg !1913

if.then:                                          ; preds = %sw.bb
  br label %err_out, !dbg !1911

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #7, !dbg !1914
  call void @llvm.dbg.declare(metadata ptr %r, metadata !454, metadata !DIExpression()), !dbg !1914
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !1915
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !458, metadata !DIExpression()), !dbg !1915
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !1915
  %next_byte6 = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 17, !dbg !1915
  %9 = load ptr, ptr %next_byte6, align 8, !dbg !1915
  store ptr %9, ptr %__pptr, align 8, !dbg !1915
  %10 = load ptr, ptr %__pptr, align 8, !dbg !1915
  %x = getelementptr inbounds %struct.anon.23, ptr %10, i32 0, i32 0, !dbg !1915
  %11 = load i16, ptr %x, align 1, !dbg !1915
  store i16 %11, ptr %tmp7, align 2, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !1914
  %12 = load i16, ptr %tmp7, align 2, !dbg !1915
  store i16 %12, ptr %r, align 2, !dbg !1914
  %13 = load ptr, ptr %insn.addr, align 8, !dbg !1914
  %next_byte8 = getelementptr inbounds %struct.insn, ptr %13, i32 0, i32 17, !dbg !1914
  %14 = load ptr, ptr %next_byte8, align 8, !dbg !1914
  %add.ptr9 = getelementptr i8, ptr %14, i64 2, !dbg !1914
  store ptr %add.ptr9, ptr %next_byte8, align 8, !dbg !1914
  call void @llvm.lifetime.start.p0(i64 2, ptr %v) #7, !dbg !1916
  call void @llvm.dbg.declare(metadata ptr %v, metadata !460, metadata !DIExpression()), !dbg !1916
  %15 = load i16, ptr %r, align 2, !dbg !1916
  store i16 %15, ptr %v, align 2, !dbg !1916
  %16 = load i16, ptr %v, align 2, !dbg !1916
  store i16 %16, ptr %tmp11, align 2, !dbg !1916
  call void @llvm.lifetime.end.p0(i64 2, ptr %v) #7, !dbg !1914
  %17 = load i16, ptr %tmp11, align 2, !dbg !1916
  store i16 %17, ptr %tmp10, align 2, !dbg !1914
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #7, !dbg !1913
  %18 = load i16, ptr %tmp10, align 2, !dbg !1914
  store i16 %18, ptr %tmp, align 2, !dbg !1911
  %19 = load i16, ptr %tmp, align 2, !dbg !1913
  %conv12 = sext i16 %19 to i32, !dbg !1917
  call void @insn_field_set(ptr noundef %3, i32 noundef %conv12, i8 noundef zeroext 2) #8, !dbg !1918
  br label %sw.epilog, !dbg !1919

sw.bb13:                                          ; preds = %entry
  %20 = load ptr, ptr %insn.addr, align 8, !dbg !1920
  %21 = getelementptr inbounds %struct.insn, ptr %20, i32 0, i32 7, !dbg !1921
  %22 = load ptr, ptr %insn.addr, align 8, !dbg !1922
  %next_byte14 = getelementptr inbounds %struct.insn, ptr %22, i32 0, i32 17, !dbg !1922
  %23 = load ptr, ptr %next_byte14, align 8, !dbg !1922
  %add.ptr15 = getelementptr i8, ptr %23, i64 4, !dbg !1922
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i64 0, !dbg !1922
  %24 = load ptr, ptr %insn.addr, align 8, !dbg !1922
  %end_kaddr17 = getelementptr inbounds %struct.insn, ptr %24, i32 0, i32 16, !dbg !1922
  %25 = load ptr, ptr %end_kaddr17, align 8, !dbg !1922
  %cmp18 = icmp ule ptr %add.ptr16, %25, !dbg !1922
  %lnot20 = xor i1 %cmp18, true, !dbg !1922
  %lnot22 = xor i1 %lnot20, true, !dbg !1922
  %lnot24 = xor i1 %lnot22, true, !dbg !1922
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !1922
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !1922
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !1922
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !1922
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1924

if.then29:                                        ; preds = %sw.bb13
  br label %err_out, !dbg !1922

if.end30:                                         ; preds = %sw.bb13
  call void @llvm.lifetime.start.p0(i64 4, ptr %r32) #7, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %r32, metadata !462, metadata !DIExpression()), !dbg !1925
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr33) #7, !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %__pptr33, metadata !465, metadata !DIExpression()), !dbg !1926
  %26 = load ptr, ptr %insn.addr, align 8, !dbg !1926
  %next_byte34 = getelementptr inbounds %struct.insn, ptr %26, i32 0, i32 17, !dbg !1926
  %27 = load ptr, ptr %next_byte34, align 8, !dbg !1926
  store ptr %27, ptr %__pptr33, align 8, !dbg !1926
  %28 = load ptr, ptr %__pptr33, align 8, !dbg !1926
  %x36 = getelementptr inbounds %struct.anon.24, ptr %28, i32 0, i32 0, !dbg !1926
  %29 = load i32, ptr %x36, align 1, !dbg !1926
  store i32 %29, ptr %tmp35, align 4, !dbg !1926
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr33) #7, !dbg !1925
  %30 = load i32, ptr %tmp35, align 4, !dbg !1926
  store i32 %30, ptr %r32, align 4, !dbg !1925
  %31 = load ptr, ptr %insn.addr, align 8, !dbg !1925
  %next_byte37 = getelementptr inbounds %struct.insn, ptr %31, i32 0, i32 17, !dbg !1925
  %32 = load ptr, ptr %next_byte37, align 8, !dbg !1925
  %add.ptr38 = getelementptr i8, ptr %32, i64 4, !dbg !1925
  store ptr %add.ptr38, ptr %next_byte37, align 8, !dbg !1925
  call void @llvm.lifetime.start.p0(i64 4, ptr %v40) #7, !dbg !1927
  call void @llvm.dbg.declare(metadata ptr %v40, metadata !472, metadata !DIExpression()), !dbg !1927
  %33 = load i32, ptr %r32, align 4, !dbg !1927
  store i32 %33, ptr %v40, align 4, !dbg !1927
  %34 = load i32, ptr %v40, align 4, !dbg !1927
  store i32 %34, ptr %tmp41, align 4, !dbg !1927
  call void @llvm.lifetime.end.p0(i64 4, ptr %v40) #7, !dbg !1925
  %35 = load i32, ptr %tmp41, align 4, !dbg !1927
  store i32 %35, ptr %tmp39, align 4, !dbg !1925
  call void @llvm.lifetime.end.p0(i64 4, ptr %r32) #7, !dbg !1924
  %36 = load i32, ptr %tmp39, align 4, !dbg !1925
  store i32 %36, ptr %tmp31, align 4, !dbg !1922
  %37 = load i32, ptr %tmp31, align 4, !dbg !1924
  call void @insn_field_set(ptr noundef %21, i32 noundef %37, i8 noundef zeroext 4) #8, !dbg !1928
  br label %sw.epilog, !dbg !1929

sw.bb42:                                          ; preds = %entry
  %38 = load ptr, ptr %insn.addr, align 8, !dbg !1930
  %39 = getelementptr inbounds %struct.insn, ptr %38, i32 0, i32 7, !dbg !1931
  %40 = load ptr, ptr %insn.addr, align 8, !dbg !1932
  %next_byte43 = getelementptr inbounds %struct.insn, ptr %40, i32 0, i32 17, !dbg !1932
  %41 = load ptr, ptr %next_byte43, align 8, !dbg !1932
  %add.ptr44 = getelementptr i8, ptr %41, i64 4, !dbg !1932
  %add.ptr45 = getelementptr i8, ptr %add.ptr44, i64 0, !dbg !1932
  %42 = load ptr, ptr %insn.addr, align 8, !dbg !1932
  %end_kaddr46 = getelementptr inbounds %struct.insn, ptr %42, i32 0, i32 16, !dbg !1932
  %43 = load ptr, ptr %end_kaddr46, align 8, !dbg !1932
  %cmp47 = icmp ule ptr %add.ptr45, %43, !dbg !1932
  %lnot49 = xor i1 %cmp47, true, !dbg !1932
  %lnot51 = xor i1 %lnot49, true, !dbg !1932
  %lnot53 = xor i1 %lnot51, true, !dbg !1932
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !1932
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !1932
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0), !dbg !1932
  %tobool57 = icmp ne i64 %expval56, 0, !dbg !1932
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !1934

if.then58:                                        ; preds = %sw.bb42
  br label %err_out, !dbg !1932

if.end59:                                         ; preds = %sw.bb42
  call void @llvm.lifetime.start.p0(i64 4, ptr %r61) #7, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %r61, metadata !474, metadata !DIExpression()), !dbg !1935
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr62) #7, !dbg !1936
  call void @llvm.dbg.declare(metadata ptr %__pptr62, metadata !477, metadata !DIExpression()), !dbg !1936
  %44 = load ptr, ptr %insn.addr, align 8, !dbg !1936
  %next_byte63 = getelementptr inbounds %struct.insn, ptr %44, i32 0, i32 17, !dbg !1936
  %45 = load ptr, ptr %next_byte63, align 8, !dbg !1936
  store ptr %45, ptr %__pptr62, align 8, !dbg !1936
  %46 = load ptr, ptr %__pptr62, align 8, !dbg !1936
  %x65 = getelementptr inbounds %struct.anon.25, ptr %46, i32 0, i32 0, !dbg !1936
  %47 = load i32, ptr %x65, align 1, !dbg !1936
  store i32 %47, ptr %tmp64, align 4, !dbg !1936
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr62) #7, !dbg !1935
  %48 = load i32, ptr %tmp64, align 4, !dbg !1936
  store i32 %48, ptr %r61, align 4, !dbg !1935
  %49 = load ptr, ptr %insn.addr, align 8, !dbg !1935
  %next_byte66 = getelementptr inbounds %struct.insn, ptr %49, i32 0, i32 17, !dbg !1935
  %50 = load ptr, ptr %next_byte66, align 8, !dbg !1935
  %add.ptr67 = getelementptr i8, ptr %50, i64 4, !dbg !1935
  store ptr %add.ptr67, ptr %next_byte66, align 8, !dbg !1935
  call void @llvm.lifetime.start.p0(i64 4, ptr %v69) #7, !dbg !1937
  call void @llvm.dbg.declare(metadata ptr %v69, metadata !484, metadata !DIExpression()), !dbg !1937
  %51 = load i32, ptr %r61, align 4, !dbg !1937
  store i32 %51, ptr %v69, align 4, !dbg !1937
  %52 = load i32, ptr %v69, align 4, !dbg !1937
  store i32 %52, ptr %tmp70, align 4, !dbg !1937
  call void @llvm.lifetime.end.p0(i64 4, ptr %v69) #7, !dbg !1935
  %53 = load i32, ptr %tmp70, align 4, !dbg !1937
  store i32 %53, ptr %tmp68, align 4, !dbg !1935
  call void @llvm.lifetime.end.p0(i64 4, ptr %r61) #7, !dbg !1934
  %54 = load i32, ptr %tmp68, align 4, !dbg !1935
  store i32 %54, ptr %tmp60, align 4, !dbg !1932
  %55 = load i32, ptr %tmp60, align 4, !dbg !1934
  call void @insn_field_set(ptr noundef %39, i32 noundef %55, i8 noundef zeroext 4) #8, !dbg !1938
  %56 = load ptr, ptr %insn.addr, align 8, !dbg !1939
  %57 = getelementptr inbounds %struct.insn, ptr %56, i32 0, i32 8, !dbg !1940
  %58 = load ptr, ptr %insn.addr, align 8, !dbg !1941
  %next_byte71 = getelementptr inbounds %struct.insn, ptr %58, i32 0, i32 17, !dbg !1941
  %59 = load ptr, ptr %next_byte71, align 8, !dbg !1941
  %add.ptr72 = getelementptr i8, ptr %59, i64 4, !dbg !1941
  %add.ptr73 = getelementptr i8, ptr %add.ptr72, i64 0, !dbg !1941
  %60 = load ptr, ptr %insn.addr, align 8, !dbg !1941
  %end_kaddr74 = getelementptr inbounds %struct.insn, ptr %60, i32 0, i32 16, !dbg !1941
  %61 = load ptr, ptr %end_kaddr74, align 8, !dbg !1941
  %cmp75 = icmp ule ptr %add.ptr73, %61, !dbg !1941
  %lnot77 = xor i1 %cmp75, true, !dbg !1941
  %lnot79 = xor i1 %lnot77, true, !dbg !1941
  %lnot81 = xor i1 %lnot79, true, !dbg !1941
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !1941
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !1941
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 0), !dbg !1941
  %tobool85 = icmp ne i64 %expval84, 0, !dbg !1941
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !1943

if.then86:                                        ; preds = %if.end59
  br label %err_out, !dbg !1941

if.end87:                                         ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 4, ptr %r89) #7, !dbg !1944
  call void @llvm.dbg.declare(metadata ptr %r89, metadata !486, metadata !DIExpression()), !dbg !1944
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr90) #7, !dbg !1945
  call void @llvm.dbg.declare(metadata ptr %__pptr90, metadata !489, metadata !DIExpression()), !dbg !1945
  %62 = load ptr, ptr %insn.addr, align 8, !dbg !1945
  %next_byte91 = getelementptr inbounds %struct.insn, ptr %62, i32 0, i32 17, !dbg !1945
  %63 = load ptr, ptr %next_byte91, align 8, !dbg !1945
  store ptr %63, ptr %__pptr90, align 8, !dbg !1945
  %64 = load ptr, ptr %__pptr90, align 8, !dbg !1945
  %x93 = getelementptr inbounds %struct.anon.26, ptr %64, i32 0, i32 0, !dbg !1945
  %65 = load i32, ptr %x93, align 1, !dbg !1945
  store i32 %65, ptr %tmp92, align 4, !dbg !1945
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr90) #7, !dbg !1944
  %66 = load i32, ptr %tmp92, align 4, !dbg !1945
  store i32 %66, ptr %r89, align 4, !dbg !1944
  %67 = load ptr, ptr %insn.addr, align 8, !dbg !1944
  %next_byte94 = getelementptr inbounds %struct.insn, ptr %67, i32 0, i32 17, !dbg !1944
  %68 = load ptr, ptr %next_byte94, align 8, !dbg !1944
  %add.ptr95 = getelementptr i8, ptr %68, i64 4, !dbg !1944
  store ptr %add.ptr95, ptr %next_byte94, align 8, !dbg !1944
  call void @llvm.lifetime.start.p0(i64 4, ptr %v97) #7, !dbg !1946
  call void @llvm.dbg.declare(metadata ptr %v97, metadata !496, metadata !DIExpression()), !dbg !1946
  %69 = load i32, ptr %r89, align 4, !dbg !1946
  store i32 %69, ptr %v97, align 4, !dbg !1946
  %70 = load i32, ptr %v97, align 4, !dbg !1946
  store i32 %70, ptr %tmp98, align 4, !dbg !1946
  call void @llvm.lifetime.end.p0(i64 4, ptr %v97) #7, !dbg !1944
  %71 = load i32, ptr %tmp98, align 4, !dbg !1946
  store i32 %71, ptr %tmp96, align 4, !dbg !1944
  call void @llvm.lifetime.end.p0(i64 4, ptr %r89) #7, !dbg !1943
  %72 = load i32, ptr %tmp96, align 4, !dbg !1944
  store i32 %72, ptr %tmp88, align 4, !dbg !1941
  %73 = load i32, ptr %tmp88, align 4, !dbg !1943
  call void @insn_field_set(ptr noundef %57, i32 noundef %73, i8 noundef zeroext 4) #8, !dbg !1947
  br label %sw.epilog, !dbg !1948

sw.default:                                       ; preds = %entry
  br label %err_out, !dbg !1949

sw.epilog:                                        ; preds = %if.end87, %if.end30, %if.end
  %74 = load ptr, ptr %insn.addr, align 8, !dbg !1950
  %75 = getelementptr inbounds %struct.insn, ptr %74, i32 0, i32 8, !dbg !1951
  %got = getelementptr inbounds %struct.insn_field, ptr %75, i32 0, i32 1, !dbg !1952
  store i8 1, ptr %got, align 4, !dbg !1953
  %76 = load ptr, ptr %insn.addr, align 8, !dbg !1954
  %77 = getelementptr inbounds %struct.insn, ptr %76, i32 0, i32 7, !dbg !1955
  %got99 = getelementptr inbounds %struct.insn_field, ptr %77, i32 0, i32 1, !dbg !1956
  store i8 1, ptr %got99, align 4, !dbg !1957
  store i32 1, ptr %retval, align 4, !dbg !1958
  br label %return, !dbg !1958

err_out:                                          ; preds = %sw.default, %if.then86, %if.then58, %if.then29, %if.then
  call void @llvm.dbg.label(metadata !498), !dbg !1959
  store i32 0, ptr %retval, align 4, !dbg !1960
  br label %return, !dbg !1960

return:                                           ; preds = %err_out, %sw.epilog
  %78 = load i32, ptr %retval, align 4, !dbg !1961
  ret i32 %78, !dbg !1961
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_has_immediate(i32 noundef %attr) #6 align 16 !dbg !1962 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1964, metadata !DIExpression()), !dbg !1965
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1966
  %and = and i32 %0, 14336, !dbg !1967
  ret i32 %and, !dbg !1968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_immediate_size(i32 noundef %attr) #6 align 16 !dbg !1969 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1971, metadata !DIExpression()), !dbg !1972
  %0 = load i32, ptr %attr.addr, align 4, !dbg !1973
  %and = and i32 %0, 14336, !dbg !1974
  %shr = lshr i32 %and, 11, !dbg !1975
  ret i32 %shr, !dbg !1976
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__get_immptr(ptr noundef %insn) #0 align 16 !dbg !504 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  %r = alloca i16, align 2
  %__pptr = alloca ptr, align 8
  %tmp7 = alloca i16, align 2
  %tmp10 = alloca i16, align 2
  %v = alloca i16, align 2
  %tmp11 = alloca i16, align 2
  %tmp31 = alloca i32, align 4
  %r32 = alloca i32, align 4
  %__pptr33 = alloca ptr, align 8
  %tmp35 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %v40 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %tmp60 = alloca i16, align 2
  %r61 = alloca i16, align 2
  %__pptr62 = alloca ptr, align 8
  %tmp64 = alloca i16, align 2
  %tmp68 = alloca i16, align 2
  %v69 = alloca i16, align 2
  %tmp70 = alloca i16, align 2
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !506, metadata !DIExpression()), !dbg !1977
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1978
  %opnd_bytes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 11, !dbg !1979
  %1 = load i8, ptr %opnd_bytes, align 8, !dbg !1979
  %conv = zext i8 %1 to i32, !dbg !1978
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb13
    i32 8, label %sw.bb42
  ], !dbg !1980

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !1981
  %3 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 7, !dbg !1982
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !1983
  %next_byte = getelementptr inbounds %struct.insn, ptr %4, i32 0, i32 17, !dbg !1983
  %5 = load ptr, ptr %next_byte, align 8, !dbg !1983
  %add.ptr = getelementptr i8, ptr %5, i64 2, !dbg !1983
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i64 0, !dbg !1983
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !1983
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 16, !dbg !1983
  %7 = load ptr, ptr %end_kaddr, align 8, !dbg !1983
  %cmp = icmp ule ptr %add.ptr1, %7, !dbg !1983
  %lnot = xor i1 %cmp, true, !dbg !1983
  %lnot3 = xor i1 %lnot, true, !dbg !1983
  %lnot4 = xor i1 %lnot3, true, !dbg !1983
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1983
  %conv5 = sext i32 %lnot.ext to i64, !dbg !1983
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !1983
  %tobool = icmp ne i64 %expval, 0, !dbg !1983
  br i1 %tobool, label %if.then, label %if.end, !dbg !1985

if.then:                                          ; preds = %sw.bb
  br label %err_out, !dbg !1983

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #7, !dbg !1986
  call void @llvm.dbg.declare(metadata ptr %r, metadata !507, metadata !DIExpression()), !dbg !1986
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !1987
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !511, metadata !DIExpression()), !dbg !1987
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !1987
  %next_byte6 = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 17, !dbg !1987
  %9 = load ptr, ptr %next_byte6, align 8, !dbg !1987
  store ptr %9, ptr %__pptr, align 8, !dbg !1987
  %10 = load ptr, ptr %__pptr, align 8, !dbg !1987
  %x = getelementptr inbounds %struct.anon.27, ptr %10, i32 0, i32 0, !dbg !1987
  %11 = load i16, ptr %x, align 1, !dbg !1987
  store i16 %11, ptr %tmp7, align 2, !dbg !1987
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !1986
  %12 = load i16, ptr %tmp7, align 2, !dbg !1987
  store i16 %12, ptr %r, align 2, !dbg !1986
  %13 = load ptr, ptr %insn.addr, align 8, !dbg !1986
  %next_byte8 = getelementptr inbounds %struct.insn, ptr %13, i32 0, i32 17, !dbg !1986
  %14 = load ptr, ptr %next_byte8, align 8, !dbg !1986
  %add.ptr9 = getelementptr i8, ptr %14, i64 2, !dbg !1986
  store ptr %add.ptr9, ptr %next_byte8, align 8, !dbg !1986
  call void @llvm.lifetime.start.p0(i64 2, ptr %v) #7, !dbg !1988
  call void @llvm.dbg.declare(metadata ptr %v, metadata !513, metadata !DIExpression()), !dbg !1988
  %15 = load i16, ptr %r, align 2, !dbg !1988
  store i16 %15, ptr %v, align 2, !dbg !1988
  %16 = load i16, ptr %v, align 2, !dbg !1988
  store i16 %16, ptr %tmp11, align 2, !dbg !1988
  call void @llvm.lifetime.end.p0(i64 2, ptr %v) #7, !dbg !1986
  %17 = load i16, ptr %tmp11, align 2, !dbg !1988
  store i16 %17, ptr %tmp10, align 2, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #7, !dbg !1985
  %18 = load i16, ptr %tmp10, align 2, !dbg !1986
  store i16 %18, ptr %tmp, align 2, !dbg !1983
  %19 = load i16, ptr %tmp, align 2, !dbg !1985
  %conv12 = sext i16 %19 to i32, !dbg !1989
  call void @insn_field_set(ptr noundef %3, i32 noundef %conv12, i8 noundef zeroext 2) #8, !dbg !1990
  br label %sw.epilog, !dbg !1991

sw.bb13:                                          ; preds = %entry
  %20 = load ptr, ptr %insn.addr, align 8, !dbg !1992
  %21 = getelementptr inbounds %struct.insn, ptr %20, i32 0, i32 7, !dbg !1993
  %22 = load ptr, ptr %insn.addr, align 8, !dbg !1994
  %next_byte14 = getelementptr inbounds %struct.insn, ptr %22, i32 0, i32 17, !dbg !1994
  %23 = load ptr, ptr %next_byte14, align 8, !dbg !1994
  %add.ptr15 = getelementptr i8, ptr %23, i64 4, !dbg !1994
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i64 0, !dbg !1994
  %24 = load ptr, ptr %insn.addr, align 8, !dbg !1994
  %end_kaddr17 = getelementptr inbounds %struct.insn, ptr %24, i32 0, i32 16, !dbg !1994
  %25 = load ptr, ptr %end_kaddr17, align 8, !dbg !1994
  %cmp18 = icmp ule ptr %add.ptr16, %25, !dbg !1994
  %lnot20 = xor i1 %cmp18, true, !dbg !1994
  %lnot22 = xor i1 %lnot20, true, !dbg !1994
  %lnot24 = xor i1 %lnot22, true, !dbg !1994
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !1994
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !1994
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !1994
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !1994
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1996

if.then29:                                        ; preds = %sw.bb13
  br label %err_out, !dbg !1994

if.end30:                                         ; preds = %sw.bb13
  call void @llvm.lifetime.start.p0(i64 4, ptr %r32) #7, !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %r32, metadata !515, metadata !DIExpression()), !dbg !1997
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr33) #7, !dbg !1998
  call void @llvm.dbg.declare(metadata ptr %__pptr33, metadata !518, metadata !DIExpression()), !dbg !1998
  %26 = load ptr, ptr %insn.addr, align 8, !dbg !1998
  %next_byte34 = getelementptr inbounds %struct.insn, ptr %26, i32 0, i32 17, !dbg !1998
  %27 = load ptr, ptr %next_byte34, align 8, !dbg !1998
  store ptr %27, ptr %__pptr33, align 8, !dbg !1998
  %28 = load ptr, ptr %__pptr33, align 8, !dbg !1998
  %x36 = getelementptr inbounds %struct.anon.28, ptr %28, i32 0, i32 0, !dbg !1998
  %29 = load i32, ptr %x36, align 1, !dbg !1998
  store i32 %29, ptr %tmp35, align 4, !dbg !1998
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr33) #7, !dbg !1997
  %30 = load i32, ptr %tmp35, align 4, !dbg !1998
  store i32 %30, ptr %r32, align 4, !dbg !1997
  %31 = load ptr, ptr %insn.addr, align 8, !dbg !1997
  %next_byte37 = getelementptr inbounds %struct.insn, ptr %31, i32 0, i32 17, !dbg !1997
  %32 = load ptr, ptr %next_byte37, align 8, !dbg !1997
  %add.ptr38 = getelementptr i8, ptr %32, i64 4, !dbg !1997
  store ptr %add.ptr38, ptr %next_byte37, align 8, !dbg !1997
  call void @llvm.lifetime.start.p0(i64 4, ptr %v40) #7, !dbg !1999
  call void @llvm.dbg.declare(metadata ptr %v40, metadata !525, metadata !DIExpression()), !dbg !1999
  %33 = load i32, ptr %r32, align 4, !dbg !1999
  store i32 %33, ptr %v40, align 4, !dbg !1999
  %34 = load i32, ptr %v40, align 4, !dbg !1999
  store i32 %34, ptr %tmp41, align 4, !dbg !1999
  call void @llvm.lifetime.end.p0(i64 4, ptr %v40) #7, !dbg !1997
  %35 = load i32, ptr %tmp41, align 4, !dbg !1999
  store i32 %35, ptr %tmp39, align 4, !dbg !1997
  call void @llvm.lifetime.end.p0(i64 4, ptr %r32) #7, !dbg !1996
  %36 = load i32, ptr %tmp39, align 4, !dbg !1997
  store i32 %36, ptr %tmp31, align 4, !dbg !1994
  %37 = load i32, ptr %tmp31, align 4, !dbg !1996
  call void @insn_field_set(ptr noundef %21, i32 noundef %37, i8 noundef zeroext 4) #8, !dbg !2000
  br label %sw.epilog, !dbg !2001

sw.bb42:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2002
  br label %return, !dbg !2002

sw.default:                                       ; preds = %entry
  br label %err_out, !dbg !2003

sw.epilog:                                        ; preds = %if.end30, %if.end
  %38 = load ptr, ptr %insn.addr, align 8, !dbg !2004
  %39 = getelementptr inbounds %struct.insn, ptr %38, i32 0, i32 8, !dbg !2005
  %40 = load ptr, ptr %insn.addr, align 8, !dbg !2006
  %next_byte43 = getelementptr inbounds %struct.insn, ptr %40, i32 0, i32 17, !dbg !2006
  %41 = load ptr, ptr %next_byte43, align 8, !dbg !2006
  %add.ptr44 = getelementptr i8, ptr %41, i64 2, !dbg !2006
  %add.ptr45 = getelementptr i8, ptr %add.ptr44, i64 0, !dbg !2006
  %42 = load ptr, ptr %insn.addr, align 8, !dbg !2006
  %end_kaddr46 = getelementptr inbounds %struct.insn, ptr %42, i32 0, i32 16, !dbg !2006
  %43 = load ptr, ptr %end_kaddr46, align 8, !dbg !2006
  %cmp47 = icmp ule ptr %add.ptr45, %43, !dbg !2006
  %lnot49 = xor i1 %cmp47, true, !dbg !2006
  %lnot51 = xor i1 %lnot49, true, !dbg !2006
  %lnot53 = xor i1 %lnot51, true, !dbg !2006
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !2006
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !2006
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0), !dbg !2006
  %tobool57 = icmp ne i64 %expval56, 0, !dbg !2006
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !2008

if.then58:                                        ; preds = %sw.epilog
  br label %err_out, !dbg !2006

if.end59:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 2, ptr %r61) #7, !dbg !2009
  call void @llvm.dbg.declare(metadata ptr %r61, metadata !527, metadata !DIExpression()), !dbg !2009
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr62) #7, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %__pptr62, metadata !530, metadata !DIExpression()), !dbg !2010
  %44 = load ptr, ptr %insn.addr, align 8, !dbg !2010
  %next_byte63 = getelementptr inbounds %struct.insn, ptr %44, i32 0, i32 17, !dbg !2010
  %45 = load ptr, ptr %next_byte63, align 8, !dbg !2010
  store ptr %45, ptr %__pptr62, align 8, !dbg !2010
  %46 = load ptr, ptr %__pptr62, align 8, !dbg !2010
  %x65 = getelementptr inbounds %struct.anon.29, ptr %46, i32 0, i32 0, !dbg !2010
  %47 = load i16, ptr %x65, align 1, !dbg !2010
  store i16 %47, ptr %tmp64, align 2, !dbg !2010
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr62) #7, !dbg !2009
  %48 = load i16, ptr %tmp64, align 2, !dbg !2010
  store i16 %48, ptr %r61, align 2, !dbg !2009
  %49 = load ptr, ptr %insn.addr, align 8, !dbg !2009
  %next_byte66 = getelementptr inbounds %struct.insn, ptr %49, i32 0, i32 17, !dbg !2009
  %50 = load ptr, ptr %next_byte66, align 8, !dbg !2009
  %add.ptr67 = getelementptr i8, ptr %50, i64 2, !dbg !2009
  store ptr %add.ptr67, ptr %next_byte66, align 8, !dbg !2009
  call void @llvm.lifetime.start.p0(i64 2, ptr %v69) #7, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %v69, metadata !537, metadata !DIExpression()), !dbg !2011
  %51 = load i16, ptr %r61, align 2, !dbg !2011
  store i16 %51, ptr %v69, align 2, !dbg !2011
  %52 = load i16, ptr %v69, align 2, !dbg !2011
  store i16 %52, ptr %tmp70, align 2, !dbg !2011
  call void @llvm.lifetime.end.p0(i64 2, ptr %v69) #7, !dbg !2009
  %53 = load i16, ptr %tmp70, align 2, !dbg !2011
  store i16 %53, ptr %tmp68, align 2, !dbg !2009
  call void @llvm.lifetime.end.p0(i64 2, ptr %r61) #7, !dbg !2008
  %54 = load i16, ptr %tmp68, align 2, !dbg !2009
  store i16 %54, ptr %tmp60, align 2, !dbg !2006
  %55 = load i16, ptr %tmp60, align 2, !dbg !2008
  %conv71 = zext i16 %55 to i32, !dbg !2012
  call void @insn_field_set(ptr noundef %39, i32 noundef %conv71, i8 noundef zeroext 2) #8, !dbg !2013
  %56 = load ptr, ptr %insn.addr, align 8, !dbg !2014
  %57 = getelementptr inbounds %struct.insn, ptr %56, i32 0, i32 8, !dbg !2015
  %got = getelementptr inbounds %struct.insn_field, ptr %57, i32 0, i32 1, !dbg !2016
  store i8 1, ptr %got, align 4, !dbg !2017
  %58 = load ptr, ptr %insn.addr, align 8, !dbg !2018
  %59 = getelementptr inbounds %struct.insn, ptr %58, i32 0, i32 7, !dbg !2019
  %got72 = getelementptr inbounds %struct.insn_field, ptr %59, i32 0, i32 1, !dbg !2020
  store i8 1, ptr %got72, align 4, !dbg !2021
  store i32 1, ptr %retval, align 4, !dbg !2022
  br label %return, !dbg !2022

err_out:                                          ; preds = %if.then58, %sw.default, %if.then29, %if.then
  call void @llvm.dbg.label(metadata !539), !dbg !2023
  store i32 0, ptr %retval, align 4, !dbg !2024
  br label %return, !dbg !2024

return:                                           ; preds = %err_out, %if.end59, %sw.bb42
  %60 = load i32, ptr %retval, align 4, !dbg !2025
  ret i32 %60, !dbg !2025
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__get_immv32(ptr noundef %insn) #0 align 16 !dbg !546 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  %r = alloca i16, align 2
  %__pptr = alloca ptr, align 8
  %tmp7 = alloca i16, align 2
  %tmp10 = alloca i16, align 2
  %v = alloca i16, align 2
  %tmp11 = alloca i16, align 2
  %tmp31 = alloca i32, align 4
  %r32 = alloca i32, align 4
  %__pptr33 = alloca ptr, align 8
  %tmp35 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %v40 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !548, metadata !DIExpression()), !dbg !2026
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2027
  %opnd_bytes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 11, !dbg !2028
  %1 = load i8, ptr %opnd_bytes, align 8, !dbg !2028
  %conv = zext i8 %1 to i32, !dbg !2027
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb13
    i32 8, label %sw.bb13
  ], !dbg !2029

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !2030
  %3 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 7, !dbg !2031
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !2032
  %next_byte = getelementptr inbounds %struct.insn, ptr %4, i32 0, i32 17, !dbg !2032
  %5 = load ptr, ptr %next_byte, align 8, !dbg !2032
  %add.ptr = getelementptr i8, ptr %5, i64 2, !dbg !2032
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i64 0, !dbg !2032
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !2032
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 16, !dbg !2032
  %7 = load ptr, ptr %end_kaddr, align 8, !dbg !2032
  %cmp = icmp ule ptr %add.ptr1, %7, !dbg !2032
  %lnot = xor i1 %cmp, true, !dbg !2032
  %lnot3 = xor i1 %lnot, true, !dbg !2032
  %lnot4 = xor i1 %lnot3, true, !dbg !2032
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2032
  %conv5 = sext i32 %lnot.ext to i64, !dbg !2032
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !2032
  %tobool = icmp ne i64 %expval, 0, !dbg !2032
  br i1 %tobool, label %if.then, label %if.end, !dbg !2034

if.then:                                          ; preds = %sw.bb
  br label %err_out, !dbg !2032

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #7, !dbg !2035
  call void @llvm.dbg.declare(metadata ptr %r, metadata !549, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !553, metadata !DIExpression()), !dbg !2036
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !2036
  %next_byte6 = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 17, !dbg !2036
  %9 = load ptr, ptr %next_byte6, align 8, !dbg !2036
  store ptr %9, ptr %__pptr, align 8, !dbg !2036
  %10 = load ptr, ptr %__pptr, align 8, !dbg !2036
  %x = getelementptr inbounds %struct.anon.30, ptr %10, i32 0, i32 0, !dbg !2036
  %11 = load i16, ptr %x, align 1, !dbg !2036
  store i16 %11, ptr %tmp7, align 2, !dbg !2036
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !2035
  %12 = load i16, ptr %tmp7, align 2, !dbg !2036
  store i16 %12, ptr %r, align 2, !dbg !2035
  %13 = load ptr, ptr %insn.addr, align 8, !dbg !2035
  %next_byte8 = getelementptr inbounds %struct.insn, ptr %13, i32 0, i32 17, !dbg !2035
  %14 = load ptr, ptr %next_byte8, align 8, !dbg !2035
  %add.ptr9 = getelementptr i8, ptr %14, i64 2, !dbg !2035
  store ptr %add.ptr9, ptr %next_byte8, align 8, !dbg !2035
  call void @llvm.lifetime.start.p0(i64 2, ptr %v) #7, !dbg !2037
  call void @llvm.dbg.declare(metadata ptr %v, metadata !555, metadata !DIExpression()), !dbg !2037
  %15 = load i16, ptr %r, align 2, !dbg !2037
  store i16 %15, ptr %v, align 2, !dbg !2037
  %16 = load i16, ptr %v, align 2, !dbg !2037
  store i16 %16, ptr %tmp11, align 2, !dbg !2037
  call void @llvm.lifetime.end.p0(i64 2, ptr %v) #7, !dbg !2035
  %17 = load i16, ptr %tmp11, align 2, !dbg !2037
  store i16 %17, ptr %tmp10, align 2, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #7, !dbg !2034
  %18 = load i16, ptr %tmp10, align 2, !dbg !2035
  store i16 %18, ptr %tmp, align 2, !dbg !2032
  %19 = load i16, ptr %tmp, align 2, !dbg !2034
  %conv12 = sext i16 %19 to i32, !dbg !2038
  call void @insn_field_set(ptr noundef %3, i32 noundef %conv12, i8 noundef zeroext 2) #8, !dbg !2039
  br label %sw.epilog, !dbg !2040

sw.bb13:                                          ; preds = %entry, %entry
  %20 = load ptr, ptr %insn.addr, align 8, !dbg !2041
  %21 = getelementptr inbounds %struct.insn, ptr %20, i32 0, i32 7, !dbg !2042
  %22 = load ptr, ptr %insn.addr, align 8, !dbg !2043
  %next_byte14 = getelementptr inbounds %struct.insn, ptr %22, i32 0, i32 17, !dbg !2043
  %23 = load ptr, ptr %next_byte14, align 8, !dbg !2043
  %add.ptr15 = getelementptr i8, ptr %23, i64 4, !dbg !2043
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i64 0, !dbg !2043
  %24 = load ptr, ptr %insn.addr, align 8, !dbg !2043
  %end_kaddr17 = getelementptr inbounds %struct.insn, ptr %24, i32 0, i32 16, !dbg !2043
  %25 = load ptr, ptr %end_kaddr17, align 8, !dbg !2043
  %cmp18 = icmp ule ptr %add.ptr16, %25, !dbg !2043
  %lnot20 = xor i1 %cmp18, true, !dbg !2043
  %lnot22 = xor i1 %lnot20, true, !dbg !2043
  %lnot24 = xor i1 %lnot22, true, !dbg !2043
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !2043
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !2043
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !2043
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !2043
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !2045

if.then29:                                        ; preds = %sw.bb13
  br label %err_out, !dbg !2043

if.end30:                                         ; preds = %sw.bb13
  call void @llvm.lifetime.start.p0(i64 4, ptr %r32) #7, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %r32, metadata !557, metadata !DIExpression()), !dbg !2046
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr33) #7, !dbg !2047
  call void @llvm.dbg.declare(metadata ptr %__pptr33, metadata !560, metadata !DIExpression()), !dbg !2047
  %26 = load ptr, ptr %insn.addr, align 8, !dbg !2047
  %next_byte34 = getelementptr inbounds %struct.insn, ptr %26, i32 0, i32 17, !dbg !2047
  %27 = load ptr, ptr %next_byte34, align 8, !dbg !2047
  store ptr %27, ptr %__pptr33, align 8, !dbg !2047
  %28 = load ptr, ptr %__pptr33, align 8, !dbg !2047
  %x36 = getelementptr inbounds %struct.anon.31, ptr %28, i32 0, i32 0, !dbg !2047
  %29 = load i32, ptr %x36, align 1, !dbg !2047
  store i32 %29, ptr %tmp35, align 4, !dbg !2047
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr33) #7, !dbg !2046
  %30 = load i32, ptr %tmp35, align 4, !dbg !2047
  store i32 %30, ptr %r32, align 4, !dbg !2046
  %31 = load ptr, ptr %insn.addr, align 8, !dbg !2046
  %next_byte37 = getelementptr inbounds %struct.insn, ptr %31, i32 0, i32 17, !dbg !2046
  %32 = load ptr, ptr %next_byte37, align 8, !dbg !2046
  %add.ptr38 = getelementptr i8, ptr %32, i64 4, !dbg !2046
  store ptr %add.ptr38, ptr %next_byte37, align 8, !dbg !2046
  call void @llvm.lifetime.start.p0(i64 4, ptr %v40) #7, !dbg !2048
  call void @llvm.dbg.declare(metadata ptr %v40, metadata !567, metadata !DIExpression()), !dbg !2048
  %33 = load i32, ptr %r32, align 4, !dbg !2048
  store i32 %33, ptr %v40, align 4, !dbg !2048
  %34 = load i32, ptr %v40, align 4, !dbg !2048
  store i32 %34, ptr %tmp41, align 4, !dbg !2048
  call void @llvm.lifetime.end.p0(i64 4, ptr %v40) #7, !dbg !2046
  %35 = load i32, ptr %tmp41, align 4, !dbg !2048
  store i32 %35, ptr %tmp39, align 4, !dbg !2046
  call void @llvm.lifetime.end.p0(i64 4, ptr %r32) #7, !dbg !2045
  %36 = load i32, ptr %tmp39, align 4, !dbg !2046
  store i32 %36, ptr %tmp31, align 4, !dbg !2043
  %37 = load i32, ptr %tmp31, align 4, !dbg !2045
  call void @insn_field_set(ptr noundef %21, i32 noundef %37, i8 noundef zeroext 4) #8, !dbg !2049
  br label %sw.epilog, !dbg !2050

sw.default:                                       ; preds = %entry
  br label %err_out, !dbg !2051

sw.epilog:                                        ; preds = %if.end30, %if.end
  store i32 1, ptr %retval, align 4, !dbg !2052
  br label %return, !dbg !2052

err_out:                                          ; preds = %sw.default, %if.then29, %if.then
  call void @llvm.dbg.label(metadata !569), !dbg !2053
  store i32 0, ptr %retval, align 4, !dbg !2054
  br label %return, !dbg !2054

return:                                           ; preds = %err_out, %sw.epilog
  %38 = load i32, ptr %retval, align 4, !dbg !2055
  ret i32 %38, !dbg !2055
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__get_immv(ptr noundef %insn) #0 align 16 !dbg !575 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  %r = alloca i16, align 2
  %__pptr = alloca ptr, align 8
  %tmp7 = alloca i16, align 2
  %tmp10 = alloca i16, align 2
  %v = alloca i16, align 2
  %tmp11 = alloca i16, align 2
  %tmp31 = alloca i32, align 4
  %r32 = alloca i32, align 4
  %__pptr33 = alloca ptr, align 8
  %tmp35 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %v40 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  %r61 = alloca i32, align 4
  %__pptr62 = alloca ptr, align 8
  %tmp64 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %v69 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %tmp88 = alloca i32, align 4
  %r89 = alloca i32, align 4
  %__pptr90 = alloca ptr, align 8
  %tmp92 = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  %v97 = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !577, metadata !DIExpression()), !dbg !2056
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2057
  %opnd_bytes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 11, !dbg !2058
  %1 = load i8, ptr %opnd_bytes, align 8, !dbg !2058
  %conv = zext i8 %1 to i32, !dbg !2057
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb13
    i32 8, label %sw.bb42
  ], !dbg !2059

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !2060
  %3 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 7, !dbg !2061
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !2062
  %next_byte = getelementptr inbounds %struct.insn, ptr %4, i32 0, i32 17, !dbg !2062
  %5 = load ptr, ptr %next_byte, align 8, !dbg !2062
  %add.ptr = getelementptr i8, ptr %5, i64 2, !dbg !2062
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i64 0, !dbg !2062
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !2062
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 16, !dbg !2062
  %7 = load ptr, ptr %end_kaddr, align 8, !dbg !2062
  %cmp = icmp ule ptr %add.ptr1, %7, !dbg !2062
  %lnot = xor i1 %cmp, true, !dbg !2062
  %lnot3 = xor i1 %lnot, true, !dbg !2062
  %lnot4 = xor i1 %lnot3, true, !dbg !2062
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2062
  %conv5 = sext i32 %lnot.ext to i64, !dbg !2062
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !2062
  %tobool = icmp ne i64 %expval, 0, !dbg !2062
  br i1 %tobool, label %if.then, label %if.end, !dbg !2064

if.then:                                          ; preds = %sw.bb
  br label %err_out, !dbg !2062

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #7, !dbg !2065
  call void @llvm.dbg.declare(metadata ptr %r, metadata !578, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !2066
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !582, metadata !DIExpression()), !dbg !2066
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !2066
  %next_byte6 = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 17, !dbg !2066
  %9 = load ptr, ptr %next_byte6, align 8, !dbg !2066
  store ptr %9, ptr %__pptr, align 8, !dbg !2066
  %10 = load ptr, ptr %__pptr, align 8, !dbg !2066
  %x = getelementptr inbounds %struct.anon.32, ptr %10, i32 0, i32 0, !dbg !2066
  %11 = load i16, ptr %x, align 1, !dbg !2066
  store i16 %11, ptr %tmp7, align 2, !dbg !2066
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !2065
  %12 = load i16, ptr %tmp7, align 2, !dbg !2066
  store i16 %12, ptr %r, align 2, !dbg !2065
  %13 = load ptr, ptr %insn.addr, align 8, !dbg !2065
  %next_byte8 = getelementptr inbounds %struct.insn, ptr %13, i32 0, i32 17, !dbg !2065
  %14 = load ptr, ptr %next_byte8, align 8, !dbg !2065
  %add.ptr9 = getelementptr i8, ptr %14, i64 2, !dbg !2065
  store ptr %add.ptr9, ptr %next_byte8, align 8, !dbg !2065
  call void @llvm.lifetime.start.p0(i64 2, ptr %v) #7, !dbg !2067
  call void @llvm.dbg.declare(metadata ptr %v, metadata !584, metadata !DIExpression()), !dbg !2067
  %15 = load i16, ptr %r, align 2, !dbg !2067
  store i16 %15, ptr %v, align 2, !dbg !2067
  %16 = load i16, ptr %v, align 2, !dbg !2067
  store i16 %16, ptr %tmp11, align 2, !dbg !2067
  call void @llvm.lifetime.end.p0(i64 2, ptr %v) #7, !dbg !2065
  %17 = load i16, ptr %tmp11, align 2, !dbg !2067
  store i16 %17, ptr %tmp10, align 2, !dbg !2065
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #7, !dbg !2064
  %18 = load i16, ptr %tmp10, align 2, !dbg !2065
  store i16 %18, ptr %tmp, align 2, !dbg !2062
  %19 = load i16, ptr %tmp, align 2, !dbg !2064
  %conv12 = sext i16 %19 to i32, !dbg !2068
  call void @insn_field_set(ptr noundef %3, i32 noundef %conv12, i8 noundef zeroext 2) #8, !dbg !2069
  br label %sw.epilog, !dbg !2070

sw.bb13:                                          ; preds = %entry
  %20 = load ptr, ptr %insn.addr, align 8, !dbg !2071
  %21 = getelementptr inbounds %struct.insn, ptr %20, i32 0, i32 7, !dbg !2072
  %22 = load ptr, ptr %insn.addr, align 8, !dbg !2073
  %next_byte14 = getelementptr inbounds %struct.insn, ptr %22, i32 0, i32 17, !dbg !2073
  %23 = load ptr, ptr %next_byte14, align 8, !dbg !2073
  %add.ptr15 = getelementptr i8, ptr %23, i64 4, !dbg !2073
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i64 0, !dbg !2073
  %24 = load ptr, ptr %insn.addr, align 8, !dbg !2073
  %end_kaddr17 = getelementptr inbounds %struct.insn, ptr %24, i32 0, i32 16, !dbg !2073
  %25 = load ptr, ptr %end_kaddr17, align 8, !dbg !2073
  %cmp18 = icmp ule ptr %add.ptr16, %25, !dbg !2073
  %lnot20 = xor i1 %cmp18, true, !dbg !2073
  %lnot22 = xor i1 %lnot20, true, !dbg !2073
  %lnot24 = xor i1 %lnot22, true, !dbg !2073
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !2073
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !2073
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !2073
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !2073
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !2075

if.then29:                                        ; preds = %sw.bb13
  br label %err_out, !dbg !2073

if.end30:                                         ; preds = %sw.bb13
  call void @llvm.lifetime.start.p0(i64 4, ptr %r32) #7, !dbg !2076
  call void @llvm.dbg.declare(metadata ptr %r32, metadata !586, metadata !DIExpression()), !dbg !2076
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr33) #7, !dbg !2077
  call void @llvm.dbg.declare(metadata ptr %__pptr33, metadata !589, metadata !DIExpression()), !dbg !2077
  %26 = load ptr, ptr %insn.addr, align 8, !dbg !2077
  %next_byte34 = getelementptr inbounds %struct.insn, ptr %26, i32 0, i32 17, !dbg !2077
  %27 = load ptr, ptr %next_byte34, align 8, !dbg !2077
  store ptr %27, ptr %__pptr33, align 8, !dbg !2077
  %28 = load ptr, ptr %__pptr33, align 8, !dbg !2077
  %x36 = getelementptr inbounds %struct.anon.33, ptr %28, i32 0, i32 0, !dbg !2077
  %29 = load i32, ptr %x36, align 1, !dbg !2077
  store i32 %29, ptr %tmp35, align 4, !dbg !2077
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr33) #7, !dbg !2076
  %30 = load i32, ptr %tmp35, align 4, !dbg !2077
  store i32 %30, ptr %r32, align 4, !dbg !2076
  %31 = load ptr, ptr %insn.addr, align 8, !dbg !2076
  %next_byte37 = getelementptr inbounds %struct.insn, ptr %31, i32 0, i32 17, !dbg !2076
  %32 = load ptr, ptr %next_byte37, align 8, !dbg !2076
  %add.ptr38 = getelementptr i8, ptr %32, i64 4, !dbg !2076
  store ptr %add.ptr38, ptr %next_byte37, align 8, !dbg !2076
  call void @llvm.lifetime.start.p0(i64 4, ptr %v40) #7, !dbg !2078
  call void @llvm.dbg.declare(metadata ptr %v40, metadata !596, metadata !DIExpression()), !dbg !2078
  %33 = load i32, ptr %r32, align 4, !dbg !2078
  store i32 %33, ptr %v40, align 4, !dbg !2078
  %34 = load i32, ptr %v40, align 4, !dbg !2078
  store i32 %34, ptr %tmp41, align 4, !dbg !2078
  call void @llvm.lifetime.end.p0(i64 4, ptr %v40) #7, !dbg !2076
  %35 = load i32, ptr %tmp41, align 4, !dbg !2078
  store i32 %35, ptr %tmp39, align 4, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 4, ptr %r32) #7, !dbg !2075
  %36 = load i32, ptr %tmp39, align 4, !dbg !2076
  store i32 %36, ptr %tmp31, align 4, !dbg !2073
  %37 = load i32, ptr %tmp31, align 4, !dbg !2075
  call void @insn_field_set(ptr noundef %21, i32 noundef %37, i8 noundef zeroext 4) #8, !dbg !2079
  %38 = load ptr, ptr %insn.addr, align 8, !dbg !2080
  %39 = getelementptr inbounds %struct.insn, ptr %38, i32 0, i32 7, !dbg !2081
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %39, i32 0, i32 2, !dbg !2082
  store i8 4, ptr %nbytes, align 1, !dbg !2083
  br label %sw.epilog, !dbg !2084

sw.bb42:                                          ; preds = %entry
  %40 = load ptr, ptr %insn.addr, align 8, !dbg !2085
  %41 = getelementptr inbounds %struct.insn, ptr %40, i32 0, i32 7, !dbg !2086
  %42 = load ptr, ptr %insn.addr, align 8, !dbg !2087
  %next_byte43 = getelementptr inbounds %struct.insn, ptr %42, i32 0, i32 17, !dbg !2087
  %43 = load ptr, ptr %next_byte43, align 8, !dbg !2087
  %add.ptr44 = getelementptr i8, ptr %43, i64 4, !dbg !2087
  %add.ptr45 = getelementptr i8, ptr %add.ptr44, i64 0, !dbg !2087
  %44 = load ptr, ptr %insn.addr, align 8, !dbg !2087
  %end_kaddr46 = getelementptr inbounds %struct.insn, ptr %44, i32 0, i32 16, !dbg !2087
  %45 = load ptr, ptr %end_kaddr46, align 8, !dbg !2087
  %cmp47 = icmp ule ptr %add.ptr45, %45, !dbg !2087
  %lnot49 = xor i1 %cmp47, true, !dbg !2087
  %lnot51 = xor i1 %lnot49, true, !dbg !2087
  %lnot53 = xor i1 %lnot51, true, !dbg !2087
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !2087
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !2087
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0), !dbg !2087
  %tobool57 = icmp ne i64 %expval56, 0, !dbg !2087
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !2089

if.then58:                                        ; preds = %sw.bb42
  br label %err_out, !dbg !2087

if.end59:                                         ; preds = %sw.bb42
  call void @llvm.lifetime.start.p0(i64 4, ptr %r61) #7, !dbg !2090
  call void @llvm.dbg.declare(metadata ptr %r61, metadata !598, metadata !DIExpression()), !dbg !2090
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr62) #7, !dbg !2091
  call void @llvm.dbg.declare(metadata ptr %__pptr62, metadata !601, metadata !DIExpression()), !dbg !2091
  %46 = load ptr, ptr %insn.addr, align 8, !dbg !2091
  %next_byte63 = getelementptr inbounds %struct.insn, ptr %46, i32 0, i32 17, !dbg !2091
  %47 = load ptr, ptr %next_byte63, align 8, !dbg !2091
  store ptr %47, ptr %__pptr62, align 8, !dbg !2091
  %48 = load ptr, ptr %__pptr62, align 8, !dbg !2091
  %x65 = getelementptr inbounds %struct.anon.34, ptr %48, i32 0, i32 0, !dbg !2091
  %49 = load i32, ptr %x65, align 1, !dbg !2091
  store i32 %49, ptr %tmp64, align 4, !dbg !2091
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr62) #7, !dbg !2090
  %50 = load i32, ptr %tmp64, align 4, !dbg !2091
  store i32 %50, ptr %r61, align 4, !dbg !2090
  %51 = load ptr, ptr %insn.addr, align 8, !dbg !2090
  %next_byte66 = getelementptr inbounds %struct.insn, ptr %51, i32 0, i32 17, !dbg !2090
  %52 = load ptr, ptr %next_byte66, align 8, !dbg !2090
  %add.ptr67 = getelementptr i8, ptr %52, i64 4, !dbg !2090
  store ptr %add.ptr67, ptr %next_byte66, align 8, !dbg !2090
  call void @llvm.lifetime.start.p0(i64 4, ptr %v69) #7, !dbg !2092
  call void @llvm.dbg.declare(metadata ptr %v69, metadata !608, metadata !DIExpression()), !dbg !2092
  %53 = load i32, ptr %r61, align 4, !dbg !2092
  store i32 %53, ptr %v69, align 4, !dbg !2092
  %54 = load i32, ptr %v69, align 4, !dbg !2092
  store i32 %54, ptr %tmp70, align 4, !dbg !2092
  call void @llvm.lifetime.end.p0(i64 4, ptr %v69) #7, !dbg !2090
  %55 = load i32, ptr %tmp70, align 4, !dbg !2092
  store i32 %55, ptr %tmp68, align 4, !dbg !2090
  call void @llvm.lifetime.end.p0(i64 4, ptr %r61) #7, !dbg !2089
  %56 = load i32, ptr %tmp68, align 4, !dbg !2090
  store i32 %56, ptr %tmp60, align 4, !dbg !2087
  %57 = load i32, ptr %tmp60, align 4, !dbg !2089
  call void @insn_field_set(ptr noundef %41, i32 noundef %57, i8 noundef zeroext 4) #8, !dbg !2093
  %58 = load ptr, ptr %insn.addr, align 8, !dbg !2094
  %59 = getelementptr inbounds %struct.insn, ptr %58, i32 0, i32 8, !dbg !2095
  %60 = load ptr, ptr %insn.addr, align 8, !dbg !2096
  %next_byte71 = getelementptr inbounds %struct.insn, ptr %60, i32 0, i32 17, !dbg !2096
  %61 = load ptr, ptr %next_byte71, align 8, !dbg !2096
  %add.ptr72 = getelementptr i8, ptr %61, i64 4, !dbg !2096
  %add.ptr73 = getelementptr i8, ptr %add.ptr72, i64 0, !dbg !2096
  %62 = load ptr, ptr %insn.addr, align 8, !dbg !2096
  %end_kaddr74 = getelementptr inbounds %struct.insn, ptr %62, i32 0, i32 16, !dbg !2096
  %63 = load ptr, ptr %end_kaddr74, align 8, !dbg !2096
  %cmp75 = icmp ule ptr %add.ptr73, %63, !dbg !2096
  %lnot77 = xor i1 %cmp75, true, !dbg !2096
  %lnot79 = xor i1 %lnot77, true, !dbg !2096
  %lnot81 = xor i1 %lnot79, true, !dbg !2096
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !2096
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !2096
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 0), !dbg !2096
  %tobool85 = icmp ne i64 %expval84, 0, !dbg !2096
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !2098

if.then86:                                        ; preds = %if.end59
  br label %err_out, !dbg !2096

if.end87:                                         ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 4, ptr %r89) #7, !dbg !2099
  call void @llvm.dbg.declare(metadata ptr %r89, metadata !610, metadata !DIExpression()), !dbg !2099
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr90) #7, !dbg !2100
  call void @llvm.dbg.declare(metadata ptr %__pptr90, metadata !613, metadata !DIExpression()), !dbg !2100
  %64 = load ptr, ptr %insn.addr, align 8, !dbg !2100
  %next_byte91 = getelementptr inbounds %struct.insn, ptr %64, i32 0, i32 17, !dbg !2100
  %65 = load ptr, ptr %next_byte91, align 8, !dbg !2100
  store ptr %65, ptr %__pptr90, align 8, !dbg !2100
  %66 = load ptr, ptr %__pptr90, align 8, !dbg !2100
  %x93 = getelementptr inbounds %struct.anon.35, ptr %66, i32 0, i32 0, !dbg !2100
  %67 = load i32, ptr %x93, align 1, !dbg !2100
  store i32 %67, ptr %tmp92, align 4, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr90) #7, !dbg !2099
  %68 = load i32, ptr %tmp92, align 4, !dbg !2100
  store i32 %68, ptr %r89, align 4, !dbg !2099
  %69 = load ptr, ptr %insn.addr, align 8, !dbg !2099
  %next_byte94 = getelementptr inbounds %struct.insn, ptr %69, i32 0, i32 17, !dbg !2099
  %70 = load ptr, ptr %next_byte94, align 8, !dbg !2099
  %add.ptr95 = getelementptr i8, ptr %70, i64 4, !dbg !2099
  store ptr %add.ptr95, ptr %next_byte94, align 8, !dbg !2099
  call void @llvm.lifetime.start.p0(i64 4, ptr %v97) #7, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %v97, metadata !620, metadata !DIExpression()), !dbg !2101
  %71 = load i32, ptr %r89, align 4, !dbg !2101
  store i32 %71, ptr %v97, align 4, !dbg !2101
  %72 = load i32, ptr %v97, align 4, !dbg !2101
  store i32 %72, ptr %tmp98, align 4, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 4, ptr %v97) #7, !dbg !2099
  %73 = load i32, ptr %tmp98, align 4, !dbg !2101
  store i32 %73, ptr %tmp96, align 4, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 4, ptr %r89) #7, !dbg !2098
  %74 = load i32, ptr %tmp96, align 4, !dbg !2099
  store i32 %74, ptr %tmp88, align 4, !dbg !2096
  %75 = load i32, ptr %tmp88, align 4, !dbg !2098
  call void @insn_field_set(ptr noundef %59, i32 noundef %75, i8 noundef zeroext 4) #8, !dbg !2102
  br label %sw.epilog, !dbg !2103

sw.default:                                       ; preds = %entry
  br label %err_out, !dbg !2104

sw.epilog:                                        ; preds = %if.end87, %if.end30, %if.end
  %76 = load ptr, ptr %insn.addr, align 8, !dbg !2105
  %77 = getelementptr inbounds %struct.insn, ptr %76, i32 0, i32 8, !dbg !2106
  %got = getelementptr inbounds %struct.insn_field, ptr %77, i32 0, i32 1, !dbg !2107
  store i8 1, ptr %got, align 4, !dbg !2108
  %78 = load ptr, ptr %insn.addr, align 8, !dbg !2109
  %79 = getelementptr inbounds %struct.insn, ptr %78, i32 0, i32 7, !dbg !2110
  %got99 = getelementptr inbounds %struct.insn_field, ptr %79, i32 0, i32 1, !dbg !2111
  store i8 1, ptr %got99, align 4, !dbg !2112
  store i32 1, ptr %retval, align 4, !dbg !2113
  br label %return, !dbg !2113

err_out:                                          ; preds = %sw.default, %if.then86, %if.then58, %if.then29, %if.then
  call void @llvm.dbg.label(metadata !622), !dbg !2114
  store i32 0, ptr %retval, align 4, !dbg !2115
  br label %return, !dbg !2115

return:                                           ; preds = %err_out, %sw.epilog
  %80 = load i32, ptr %retval, align 4, !dbg !2116
  ret i32 %80, !dbg !2116
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_has_second_immediate(i32 noundef %attr) #6 align 16 !dbg !2117 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2119, metadata !DIExpression()), !dbg !2120
  %0 = load i32, ptr %attr.addr, align 4, !dbg !2121
  %and = and i32 %0, 65536, !dbg !2122
  ret i32 %and, !dbg !2123
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_length(ptr noundef %insn) #0 align 16 !dbg !2124 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !2129
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2127, metadata !DIExpression()), !dbg !2130
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2131
  %length = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 13, !dbg !2133
  %1 = load i8, ptr %length, align 2, !dbg !2133
  %tobool = icmp ne i8 %1, 0, !dbg !2131
  br i1 %tobool, label %if.then, label %if.end, !dbg !2134

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2135

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !2136
  %3 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 7, !dbg !2138
  %got = getelementptr inbounds %struct.insn_field, ptr %3, i32 0, i32 1, !dbg !2139
  %4 = load i8, ptr %got, align 4, !dbg !2139
  %tobool1 = icmp ne i8 %4, 0, !dbg !2136
  br i1 %tobool1, label %if.end6, label %if.then2, !dbg !2140

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !2141
  %call = call i32 @insn_get_immediate(ptr noundef %5) #8, !dbg !2143
  store i32 %call, ptr %ret, align 4, !dbg !2144
  %6 = load i32, ptr %ret, align 4, !dbg !2145
  %tobool3 = icmp ne i32 %6, 0, !dbg !2145
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2147

if.then4:                                         ; preds = %if.then2
  %7 = load i32, ptr %ret, align 4, !dbg !2148
  store i32 %7, ptr %retval, align 4, !dbg !2149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2149

if.end5:                                          ; preds = %if.then2
  br label %if.end6, !dbg !2150

if.end6:                                          ; preds = %if.end5, %if.end
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !2151
  %next_byte = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 17, !dbg !2152
  %9 = load ptr, ptr %next_byte, align 8, !dbg !2152
  %10 = ptrtoint ptr %9 to i64, !dbg !2153
  %11 = load ptr, ptr %insn.addr, align 8, !dbg !2154
  %kaddr = getelementptr inbounds %struct.insn, ptr %11, i32 0, i32 15, !dbg !2155
  %12 = load ptr, ptr %kaddr, align 8, !dbg !2155
  %13 = ptrtoint ptr %12 to i64, !dbg !2156
  %sub = sub i64 %10, %13, !dbg !2157
  %conv = trunc i64 %sub to i8, !dbg !2158
  %14 = load ptr, ptr %insn.addr, align 8, !dbg !2159
  %length7 = getelementptr inbounds %struct.insn, ptr %14, i32 0, i32 13, !dbg !2160
  store i8 %conv, ptr %length7, align 2, !dbg !2161
  store i32 0, ptr %retval, align 4, !dbg !2162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2162

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !2163
  %15 = load i32, ptr %retval, align 4, !dbg !2163
  ret i32 %15, !dbg !2163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_decode(ptr noundef %insn, ptr noundef %kaddr, i32 noundef %buf_len, i32 noundef %m) #0 align 16 !dbg !2164 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %kaddr.addr = alloca ptr, align 8
  %buf_len.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !2168, metadata !DIExpression()), !dbg !2173
  store ptr %kaddr, ptr %kaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kaddr.addr, metadata !2169, metadata !DIExpression()), !dbg !2174
  store i32 %buf_len, ptr %buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buf_len.addr, metadata !2170, metadata !DIExpression()), !dbg !2175
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !2171, metadata !DIExpression()), !dbg !2176
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !2177
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2172, metadata !DIExpression()), !dbg !2178
  %0 = load i32, ptr %m.addr, align 4, !dbg !2179
  %cmp = icmp eq i32 %0, 2, !dbg !2181
  br i1 %cmp, label %if.then, label %if.else, !dbg !2182

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !2183
  %2 = load ptr, ptr %kaddr.addr, align 8, !dbg !2184
  %3 = load i32, ptr %buf_len.addr, align 4, !dbg !2185
  call void @insn_init(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1) #8, !dbg !2186
  br label %if.end, !dbg !2186

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !2187
  %5 = load ptr, ptr %kaddr.addr, align 8, !dbg !2188
  %6 = load i32, ptr %buf_len.addr, align 4, !dbg !2189
  %7 = load i32, ptr %m.addr, align 4, !dbg !2190
  %cmp1 = icmp eq i32 %7, 1, !dbg !2191
  %conv = zext i1 %cmp1 to i32, !dbg !2191
  call void @insn_init(ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %conv) #8, !dbg !2192
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !2193
  %call = call i32 @insn_get_length(ptr noundef %8) #8, !dbg !2194
  store i32 %call, ptr %ret, align 4, !dbg !2195
  %9 = load i32, ptr %ret, align 4, !dbg !2196
  %tobool = icmp ne i32 %9, 0, !dbg !2196
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !2198

if.then2:                                         ; preds = %if.end
  %10 = load i32, ptr %ret, align 4, !dbg !2199
  store i32 %10, ptr %retval, align 4, !dbg !2200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2200

if.end3:                                          ; preds = %if.end
  %11 = load ptr, ptr %insn.addr, align 8, !dbg !2201
  %call4 = call i32 @insn_complete(ptr noundef %11) #8, !dbg !2203
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2203
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2204

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !2205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2205

if.end7:                                          ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !2206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2206

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !2207
  %12 = load i32, ptr %retval, align 4, !dbg !2207
  ret i32 %12, !dbg !2207
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_complete(ptr noundef %insn) #6 align 16 !dbg !2208 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !2210, metadata !DIExpression()), !dbg !2211
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2212
  %opcode = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 3, !dbg !2213
  %got = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 1, !dbg !2214
  %1 = load i8, ptr %got, align 4, !dbg !2214
  %conv = zext i8 %1 to i32, !dbg !2212
  %tobool = icmp ne i32 %conv, 0, !dbg !2212
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !2215

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !2216
  %modrm = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 4, !dbg !2217
  %got1 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 1, !dbg !2218
  %3 = load i8, ptr %got1, align 4, !dbg !2218
  %conv2 = zext i8 %3 to i32, !dbg !2216
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !2216
  br i1 %tobool3, label %land.lhs.true4, label %land.end, !dbg !2219

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !2220
  %sib = getelementptr inbounds %struct.insn, ptr %4, i32 0, i32 5, !dbg !2221
  %got5 = getelementptr inbounds %struct.insn_field, ptr %sib, i32 0, i32 1, !dbg !2222
  %5 = load i8, ptr %got5, align 4, !dbg !2222
  %conv6 = zext i8 %5 to i32, !dbg !2220
  %tobool7 = icmp ne i32 %conv6, 0, !dbg !2220
  br i1 %tobool7, label %land.lhs.true8, label %land.end, !dbg !2223

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !2224
  %displacement = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 6, !dbg !2225
  %got9 = getelementptr inbounds %struct.insn_field, ptr %displacement, i32 0, i32 1, !dbg !2226
  %7 = load i8, ptr %got9, align 4, !dbg !2226
  %conv10 = zext i8 %7 to i32, !dbg !2224
  %tobool11 = icmp ne i32 %conv10, 0, !dbg !2224
  br i1 %tobool11, label %land.rhs, label %land.end, !dbg !2227

land.rhs:                                         ; preds = %land.lhs.true8
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !2228
  %9 = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 7, !dbg !2229
  %got12 = getelementptr inbounds %struct.insn_field, ptr %9, i32 0, i32 1, !dbg !2230
  %10 = load i8, ptr %got12, align 4, !dbg !2230
  %conv13 = zext i8 %10 to i32, !dbg !2228
  %tobool14 = icmp ne i32 %conv13, 0, !dbg !2227
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true8, %land.lhs.true4, %land.lhs.true, %entry
  %11 = phi i1 [ false, %land.lhs.true8 ], [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool14, %land.rhs ], !dbg !2231
  %land.ext = zext i1 %11 to i32, !dbg !2227
  ret i32 %land.ext, !dbg !2232
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__insn_get_emulate_prefix(ptr noundef %insn, ptr noundef %prefix, i64 noundef %len) #0 align 16 !dbg !421 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %tmp = alloca i8, align 1
  %r = alloca i8, align 1
  %__pptr = alloca ptr, align 8
  %tmp7 = alloca i8, align 1
  %tmp8 = alloca i8, align 1
  %v = alloca i8, align 1
  %tmp9 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !430, metadata !DIExpression()), !dbg !2233
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !431, metadata !DIExpression()), !dbg !2234
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !432, metadata !DIExpression()), !dbg !2235
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !2236
  call void @llvm.dbg.declare(metadata ptr %i, metadata !433, metadata !DIExpression()), !dbg !2237
  store i64 0, ptr %i, align 8, !dbg !2238
  br label %for.cond, !dbg !2239

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !2240
  %1 = load i64, ptr %len.addr, align 8, !dbg !2241
  %cmp = icmp ult i64 %0, %1, !dbg !2242
  br i1 %cmp, label %for.body, label %for.end, !dbg !2243

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !2244
  %next_byte = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 17, !dbg !2244
  %3 = load ptr, ptr %next_byte, align 8, !dbg !2244
  %add.ptr = getelementptr i8, ptr %3, i64 1, !dbg !2244
  %4 = load i64, ptr %i, align 8, !dbg !2244
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i64 %4, !dbg !2244
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !2244
  %end_kaddr = getelementptr inbounds %struct.insn, ptr %5, i32 0, i32 16, !dbg !2244
  %6 = load ptr, ptr %end_kaddr, align 8, !dbg !2244
  %cmp2 = icmp ule ptr %add.ptr1, %6, !dbg !2244
  %lnot = xor i1 %cmp2, true, !dbg !2244
  %lnot3 = xor i1 %lnot, true, !dbg !2244
  %lnot4 = xor i1 %lnot3, true, !dbg !2244
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2244
  %conv = sext i32 %lnot.ext to i64, !dbg !2244
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2244
  %tobool = icmp ne i64 %expval, 0, !dbg !2244
  br i1 %tobool, label %if.then, label %if.end, !dbg !2246

if.then:                                          ; preds = %for.body
  br label %err_out, !dbg !2244

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #7, !dbg !2247
  call void @llvm.dbg.declare(metadata ptr %r, metadata !434, metadata !DIExpression()), !dbg !2247
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !2248
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !441, metadata !DIExpression()), !dbg !2248
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !2248
  %next_byte5 = getelementptr inbounds %struct.insn, ptr %7, i32 0, i32 17, !dbg !2248
  %8 = load ptr, ptr %next_byte5, align 8, !dbg !2248
  %9 = load i64, ptr %i, align 8, !dbg !2248
  %add.ptr6 = getelementptr i8, ptr %8, i64 %9, !dbg !2248
  store ptr %add.ptr6, ptr %__pptr, align 8, !dbg !2248
  %10 = load ptr, ptr %__pptr, align 8, !dbg !2248
  %x = getelementptr inbounds %struct.anon.22, ptr %10, i32 0, i32 0, !dbg !2248
  %11 = load i8, ptr %x, align 1, !dbg !2248
  store i8 %11, ptr %tmp7, align 1, !dbg !2248
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !2247
  %12 = load i8, ptr %tmp7, align 1, !dbg !2248
  store i8 %12, ptr %r, align 1, !dbg !2247
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #7, !dbg !2249
  call void @llvm.dbg.declare(metadata ptr %v, metadata !443, metadata !DIExpression()), !dbg !2249
  %13 = load i8, ptr %r, align 1, !dbg !2249
  store i8 %13, ptr %v, align 1, !dbg !2249
  %14 = load i8, ptr %v, align 1, !dbg !2249
  store i8 %14, ptr %tmp9, align 1, !dbg !2249
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #7, !dbg !2247
  %15 = load i8, ptr %tmp9, align 1, !dbg !2249
  store i8 %15, ptr %tmp8, align 1, !dbg !2247
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #7, !dbg !2246
  %16 = load i8, ptr %tmp8, align 1, !dbg !2247
  store i8 %16, ptr %tmp, align 1, !dbg !2244
  %17 = load i8, ptr %tmp, align 1, !dbg !2246
  %conv10 = zext i8 %17 to i32, !dbg !2250
  %18 = load ptr, ptr %prefix.addr, align 8, !dbg !2251
  %19 = load i64, ptr %i, align 8, !dbg !2252
  %arrayidx = getelementptr i8, ptr %18, i64 %19, !dbg !2251
  %20 = load i8, ptr %arrayidx, align 1, !dbg !2251
  %conv11 = zext i8 %20 to i32, !dbg !2251
  %cmp12 = icmp ne i32 %conv10, %conv11, !dbg !2253
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2254

if.then14:                                        ; preds = %if.end
  br label %err_out, !dbg !2255

if.end15:                                         ; preds = %if.end
  br label %for.inc, !dbg !2256

for.inc:                                          ; preds = %if.end15
  %21 = load i64, ptr %i, align 8, !dbg !2257
  %inc = add i64 %21, 1, !dbg !2257
  store i64 %inc, ptr %i, align 8, !dbg !2257
  br label %for.cond, !dbg !2258, !llvm.loop !2259

for.end:                                          ; preds = %for.cond
  %22 = load i64, ptr %len.addr, align 8, !dbg !2261
  %conv16 = trunc i64 %22 to i32, !dbg !2261
  %23 = load ptr, ptr %insn.addr, align 8, !dbg !2262
  %emulate_prefix_size = getelementptr inbounds %struct.insn, ptr %23, i32 0, i32 9, !dbg !2263
  store i32 %conv16, ptr %emulate_prefix_size, align 8, !dbg !2264
  %24 = load i64, ptr %len.addr, align 8, !dbg !2265
  %25 = load ptr, ptr %insn.addr, align 8, !dbg !2266
  %next_byte17 = getelementptr inbounds %struct.insn, ptr %25, i32 0, i32 17, !dbg !2267
  %26 = load ptr, ptr %next_byte17, align 8, !dbg !2268
  %add.ptr18 = getelementptr i8, ptr %26, i64 %24, !dbg !2268
  store ptr %add.ptr18, ptr %next_byte17, align 8, !dbg !2268
  store i32 1, ptr %retval, align 4, !dbg !2269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2269

err_out:                                          ; preds = %if.then14, %if.then
  call void @llvm.dbg.label(metadata !445), !dbg !2270
  store i32 0, ptr %retval, align 4, !dbg !2271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2271

cleanup:                                          ; preds = %err_out, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !2272
  %27 = load i32, ptr %retval, align 4, !dbg !2272
  ret i32 %27, !dbg !2272
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2273 dso_local i32 @inat_get_last_prefix_id(i8 noundef zeroext) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!631, !632, !633, !634, !635, !636, !637, !638}
!llvm.ident = !{!639}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xen_prefix", scope: !2, file: !3, line: 82, type: !628, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.insn.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/insn\22 -D KBUILD_BASENAME=\22insn\22 -D KBUILD_MODNAME=\22insn\22 -D __KBUILD_MODNAME=kmod_insn -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/insn.ll arch/x86/lib/insn.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !625, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/insn.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b3b704404df0d8af6fa1118b39a49111")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insn_mode", file: !6, line: 143, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/insn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca1df7461e09b68408eb75c2e122471d")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "INSN_MODE_32", value: 0)
!10 = !DIEnumerator(name: "INSN_MODE_64", value: 1)
!11 = !DIEnumerator(name: "INSN_MODE_KERN", value: 2)
!12 = !DIEnumerator(name: "INSN_NUM_MODES", value: 3)
!13 = !{!14, !185, !93, !107, !119, !134, !148, !160, !174, !186, !213, !224, !246, !268, !326, !300, !327, !328, !331, !315, !333, !334, !335, !336, !356, !368, !380, !392, !406, !36, !417, !418, !448, !467, !479, !491, !501, !520, !532, !542, !543, !562, !572, !591, !603, !615}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 138, size: 8, elements: !183)
!17 = distinct !DISubprogram(name: "insn_get_prefixes", scope: !3, file: !3, line: 124, type: !18, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn", file: !6, line: 68, size: 896, elements: !23)
!23 = !{!24, !41, !42, !43, !44, !45, !46, !47, !53, !58, !59, !61, !62, !63, !64, !65, !68, !69}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !22, file: !6, line: 69, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn_field", file: !6, line: 16, size: 64, elements: !26)
!26 = !{!27, !39, !40}
!27 = !DIDerivedType(tag: DW_TAG_member, scope: !25, file: !6, line: 17, baseType: !28, size: 32)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !6, line: 17, size: 32, elements: !29)
!29 = !{!30, !33}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !28, file: !6, line: 18, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_value_t", file: !32, line: 13, baseType: !20)
!32 = !DIFile(filename: "./arch/x86/include/asm/inat_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cebd64027eadc0d452590e3ac4fca7d6")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !28, file: !6, line: 19, baseType: !34, size: 32)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !37)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_byte_t", file: !32, line: 12, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !{!38}
!38 = !DISubrange(count: 4)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "got", scope: !25, file: !6, line: 22, baseType: !36, size: 8, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !25, file: !6, line: 23, baseType: !36, size: 8, offset: 40)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "rex_prefix", scope: !22, file: !6, line: 73, baseType: !25, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "vex_prefix", scope: !22, file: !6, line: 74, baseType: !25, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !22, file: !6, line: 75, baseType: !25, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "modrm", scope: !22, file: !6, line: 80, baseType: !25, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !22, file: !6, line: 81, baseType: !25, size: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "displacement", scope: !22, file: !6, line: 82, baseType: !25, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, scope: !22, file: !6, line: 83, baseType: !48, size: 64, offset: 448)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !6, line: 83, size: 64, elements: !49)
!49 = !{!50, !51, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "immediate", scope: !48, file: !6, line: 84, baseType: !25, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "moffset1", scope: !48, file: !6, line: 85, baseType: !25, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "immediate1", scope: !48, file: !6, line: 86, baseType: !25, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, scope: !22, file: !6, line: 88, baseType: !54, size: 64, offset: 512)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !6, line: 88, size: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "moffset2", scope: !54, file: !6, line: 89, baseType: !25, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "immediate2", scope: !54, file: !6, line: 90, baseType: !25, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_prefix_size", scope: !22, file: !6, line: 93, baseType: !20, size: 32, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !22, file: !6, line: 94, baseType: !60, size: 32, offset: 608)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_attr_t", file: !32, line: 11, baseType: !7)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "opnd_bytes", scope: !22, file: !6, line: 95, baseType: !36, size: 8, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "addr_bytes", scope: !22, file: !6, line: 96, baseType: !36, size: 8, offset: 648)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !22, file: !6, line: 97, baseType: !36, size: 8, offset: 656)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "x86_64", scope: !22, file: !6, line: 98, baseType: !36, size: 8, offset: 664)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "kaddr", scope: !22, file: !6, line: 100, baseType: !66, size: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "end_kaddr", scope: !22, file: !6, line: 101, baseType: !66, size: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next_byte", scope: !22, file: !6, line: 102, baseType: !66, size: 64, offset: 832)
!70 = !{!71, !72, !74, !75, !76, !77, !78, !79, !82, !84, !86, !88, !91, !98, !100, !105, !112, !114, !117, !124, !126, !129, !132, !139, !141, !146, !153, !155, !158, !165, !167, !172, !179, !181, !182}
!71 = !DILocalVariable(name: "insn", arg: 1, scope: !17, file: !3, line: 124, type: !21)
!72 = !DILocalVariable(name: "prefixes", scope: !17, file: !3, line: 126, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!74 = !DILocalVariable(name: "attr", scope: !17, file: !3, line: 127, type: !60)
!75 = !DILocalVariable(name: "b", scope: !17, file: !3, line: 128, type: !35)
!76 = !DILocalVariable(name: "lb", scope: !17, file: !3, line: 128, type: !35)
!77 = !DILocalVariable(name: "i", scope: !17, file: !3, line: 129, type: !20)
!78 = !DILocalVariable(name: "nb", scope: !17, file: !3, line: 129, type: !20)
!79 = !DILocalVariable(name: "r", scope: !80, file: !3, line: 138, type: !35)
!80 = distinct !DILexicalBlock(scope: !81, file: !3, line: 138, column: 6)
!81 = distinct !DILexicalBlock(scope: !17, file: !3, line: 138, column: 6)
!82 = !DILocalVariable(name: "__pptr", scope: !83, file: !3, line: 138, type: !14)
!83 = distinct !DILexicalBlock(scope: !80, file: !3, line: 138, column: 6)
!84 = !DILocalVariable(name: "v", scope: !85, file: !3, line: 138, type: !35)
!85 = distinct !DILexicalBlock(scope: !80, file: !3, line: 138, column: 6)
!86 = !DILabel(scope: !87, name: "found", file: !3, line: 159)
!87 = distinct !DILexicalBlock(scope: !17, file: !3, line: 140, column: 38)
!88 = !DILocalVariable(name: "r", scope: !89, file: !3, line: 163, type: !35)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 163, column: 7)
!90 = distinct !DILexicalBlock(scope: !87, file: !3, line: 163, column: 7)
!91 = !DILocalVariable(name: "__pptr", scope: !92, file: !3, line: 163, type: !93)
!92 = distinct !DILexicalBlock(scope: !89, file: !3, line: 163, column: 7)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 163, size: 8, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !95, file: !3, line: 163, baseType: !35, size: 8)
!98 = !DILocalVariable(name: "v", scope: !99, file: !3, line: 163, type: !35)
!99 = distinct !DILexicalBlock(scope: !89, file: !3, line: 163, column: 7)
!100 = !DILocalVariable(name: "r", scope: !101, file: !3, line: 180, type: !35)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 180, column: 7)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 180, column: 7)
!103 = distinct !DILexicalBlock(scope: !104, file: !3, line: 179, column: 20)
!104 = distinct !DILexicalBlock(scope: !17, file: !3, line: 179, column: 6)
!105 = !DILocalVariable(name: "__pptr", scope: !106, file: !3, line: 180, type: !107)
!106 = distinct !DILexicalBlock(scope: !101, file: !3, line: 180, column: 7)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 180, size: 8, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !109, file: !3, line: 180, baseType: !35, size: 8)
!112 = !DILocalVariable(name: "v", scope: !113, file: !3, line: 180, type: !35)
!113 = distinct !DILexicalBlock(scope: !101, file: !3, line: 180, column: 7)
!114 = !DILocalVariable(name: "r", scope: !115, file: !3, line: 193, type: !35)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 193, column: 6)
!116 = distinct !DILexicalBlock(scope: !17, file: !3, line: 193, column: 6)
!117 = !DILocalVariable(name: "__pptr", scope: !118, file: !3, line: 193, type: !119)
!118 = distinct !DILexicalBlock(scope: !115, file: !3, line: 193, column: 6)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 193, size: 8, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !121, file: !3, line: 193, baseType: !35, size: 8)
!124 = !DILocalVariable(name: "v", scope: !125, file: !3, line: 193, type: !35)
!125 = distinct !DILexicalBlock(scope: !115, file: !3, line: 193, column: 6)
!126 = !DILocalVariable(name: "b2", scope: !127, file: !3, line: 196, type: !35)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 195, column: 32)
!128 = distinct !DILexicalBlock(scope: !17, file: !3, line: 195, column: 6)
!129 = !DILocalVariable(name: "r", scope: !130, file: !3, line: 196, type: !35)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 196, column: 20)
!131 = distinct !DILexicalBlock(scope: !127, file: !3, line: 196, column: 20)
!132 = !DILocalVariable(name: "__pptr", scope: !133, file: !3, line: 196, type: !134)
!133 = distinct !DILexicalBlock(scope: !130, file: !3, line: 196, column: 20)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 196, size: 8, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !136, file: !3, line: 196, baseType: !35, size: 8)
!139 = !DILocalVariable(name: "v", scope: !140, file: !3, line: 196, type: !35)
!140 = distinct !DILexicalBlock(scope: !130, file: !3, line: 196, column: 20)
!141 = !DILocalVariable(name: "r", scope: !142, file: !3, line: 209, type: !35)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 209, column: 9)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 209, column: 9)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 208, column: 34)
!145 = distinct !DILexicalBlock(scope: !127, file: !3, line: 208, column: 7)
!146 = !DILocalVariable(name: "__pptr", scope: !147, file: !3, line: 209, type: !148)
!147 = distinct !DILexicalBlock(scope: !142, file: !3, line: 209, column: 9)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 209, size: 8, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !150, file: !3, line: 209, baseType: !35, size: 8)
!153 = !DILocalVariable(name: "v", scope: !154, file: !3, line: 209, type: !35)
!154 = distinct !DILexicalBlock(scope: !142, file: !3, line: 209, column: 9)
!155 = !DILocalVariable(name: "r", scope: !156, file: !3, line: 211, type: !35)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 211, column: 9)
!157 = distinct !DILexicalBlock(scope: !144, file: !3, line: 211, column: 9)
!158 = !DILocalVariable(name: "__pptr", scope: !159, file: !3, line: 211, type: !160)
!159 = distinct !DILexicalBlock(scope: !156, file: !3, line: 211, column: 9)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 211, size: 8, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !162, file: !3, line: 211, baseType: !35, size: 8)
!165 = !DILocalVariable(name: "v", scope: !166, file: !3, line: 211, type: !35)
!166 = distinct !DILexicalBlock(scope: !156, file: !3, line: 211, column: 9)
!167 = !DILocalVariable(name: "r", scope: !168, file: !3, line: 219, type: !35)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 219, column: 9)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 219, column: 9)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 218, column: 41)
!171 = distinct !DILexicalBlock(scope: !145, file: !3, line: 218, column: 14)
!172 = !DILocalVariable(name: "__pptr", scope: !173, file: !3, line: 219, type: !174)
!173 = distinct !DILexicalBlock(scope: !168, file: !3, line: 219, column: 9)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !3, line: 219, size: 8, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !176, file: !3, line: 219, baseType: !35, size: 8)
!179 = !DILocalVariable(name: "v", scope: !180, file: !3, line: 219, type: !35)
!180 = distinct !DILexicalBlock(scope: !168, file: !3, line: 219, column: 9)
!181 = !DILabel(scope: !17, name: "vex_end", file: !3, line: 237)
!182 = !DILabel(scope: !17, name: "err_out", file: !3, line: 244)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !16, file: !3, line: 138, baseType: !35, size: 8)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !189, file: !3, line: 278, size: 8, elements: !222)
!189 = distinct !DISubprogram(name: "insn_get_opcode", scope: !3, file: !3, line: 262, type: !18, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !199, !201, !203, !206, !207, !211, !218, !220, !221}
!191 = !DILocalVariable(name: "insn", arg: 1, scope: !189, file: !3, line: 262, type: !21)
!192 = !DILocalVariable(name: "opcode", scope: !189, file: !3, line: 264, type: !73)
!193 = !DILocalVariable(name: "pfx_id", scope: !189, file: !3, line: 265, type: !20)
!194 = !DILocalVariable(name: "ret", scope: !189, file: !3, line: 265, type: !20)
!195 = !DILocalVariable(name: "op", scope: !189, file: !3, line: 266, type: !35)
!196 = !DILocalVariable(name: "r", scope: !197, file: !3, line: 278, type: !35)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 278, column: 7)
!198 = distinct !DILexicalBlock(scope: !189, file: !3, line: 278, column: 7)
!199 = !DILocalVariable(name: "__pptr", scope: !200, file: !3, line: 278, type: !186)
!200 = distinct !DILexicalBlock(scope: !197, file: !3, line: 278, column: 7)
!201 = !DILocalVariable(name: "v", scope: !202, file: !3, line: 278, type: !35)
!202 = distinct !DILexicalBlock(scope: !197, file: !3, line: 278, column: 7)
!203 = !DILocalVariable(name: "m", scope: !204, file: !3, line: 284, type: !35)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 283, column: 25)
!205 = distinct !DILexicalBlock(scope: !189, file: !3, line: 283, column: 6)
!206 = !DILocalVariable(name: "p", scope: !204, file: !3, line: 284, type: !35)
!207 = !DILocalVariable(name: "r", scope: !208, file: !3, line: 302, type: !35)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 302, column: 8)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 302, column: 8)
!210 = distinct !DILexicalBlock(scope: !189, file: !3, line: 300, column: 37)
!211 = !DILocalVariable(name: "__pptr", scope: !212, file: !3, line: 302, type: !213)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 302, column: 8)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !189, file: !3, line: 302, size: 8, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !215, file: !3, line: 302, baseType: !35, size: 8)
!218 = !DILocalVariable(name: "v", scope: !219, file: !3, line: 302, type: !35)
!219 = distinct !DILexicalBlock(scope: !208, file: !3, line: 302, column: 8)
!220 = !DILabel(scope: !189, name: "end", file: !3, line: 313)
!221 = !DILabel(scope: !189, name: "err_out", file: !3, line: 317)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !188, file: !3, line: 278, baseType: !35, size: 8)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !3, line: 349, size: 8, elements: !244)
!227 = distinct !DISubprogram(name: "insn_get_modrm", scope: !3, file: !3, line: 333, type: !18, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !239, !241, !243}
!229 = !DILocalVariable(name: "insn", arg: 1, scope: !227, file: !3, line: 333, type: !21)
!230 = !DILocalVariable(name: "modrm", scope: !227, file: !3, line: 335, type: !73)
!231 = !DILocalVariable(name: "pfx_id", scope: !227, file: !3, line: 336, type: !35)
!232 = !DILocalVariable(name: "mod", scope: !227, file: !3, line: 336, type: !35)
!233 = !DILocalVariable(name: "ret", scope: !227, file: !3, line: 337, type: !20)
!234 = !DILocalVariable(name: "r", scope: !235, file: !3, line: 349, type: !35)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 349, column: 9)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 349, column: 9)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 348, column: 34)
!238 = distinct !DILexicalBlock(scope: !227, file: !3, line: 348, column: 6)
!239 = !DILocalVariable(name: "__pptr", scope: !240, file: !3, line: 349, type: !224)
!240 = distinct !DILexicalBlock(scope: !235, file: !3, line: 349, column: 9)
!241 = !DILocalVariable(name: "v", scope: !242, file: !3, line: 349, type: !35)
!242 = distinct !DILexicalBlock(scope: !235, file: !3, line: 349, column: 9)
!243 = !DILabel(scope: !227, name: "err_out", file: !3, line: 369)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !226, file: !3, line: 349, baseType: !35, size: 8)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !3, line: 431, size: 8, elements: !266)
!249 = distinct !DISubprogram(name: "insn_get_sib", scope: !3, file: !3, line: 412, type: !18, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !250)
!250 = !{!251, !252, !253, !254, !261, !263, !265}
!251 = !DILocalVariable(name: "insn", arg: 1, scope: !249, file: !3, line: 412, type: !21)
!252 = !DILocalVariable(name: "modrm", scope: !249, file: !3, line: 414, type: !35)
!253 = !DILocalVariable(name: "ret", scope: !249, file: !3, line: 415, type: !20)
!254 = !DILocalVariable(name: "r", scope: !255, file: !3, line: 431, type: !35)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 431, column: 12)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 431, column: 12)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 429, column: 62)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 428, column: 7)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 426, column: 26)
!260 = distinct !DILexicalBlock(scope: !249, file: !3, line: 426, column: 6)
!261 = !DILocalVariable(name: "__pptr", scope: !262, file: !3, line: 431, type: !246)
!262 = distinct !DILexicalBlock(scope: !255, file: !3, line: 431, column: 12)
!263 = !DILocalVariable(name: "v", scope: !264, file: !3, line: 431, type: !35)
!264 = distinct !DILexicalBlock(scope: !255, file: !3, line: 431, column: 12)
!265 = !DILabel(scope: !249, name: "err_out", file: !3, line: 438)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !248, file: !3, line: 431, baseType: !35, size: 8)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !3, line: 494, size: 8, elements: !324)
!271 = distinct !DISubprogram(name: "insn_get_displacement", scope: !3, file: !3, line: 455, type: !18, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !286, !288, !290, !298, !305, !307, !313, !320, !322, !323}
!273 = !DILocalVariable(name: "insn", arg: 1, scope: !271, file: !3, line: 455, type: !21)
!274 = !DILocalVariable(name: "mod", scope: !271, file: !3, line: 457, type: !35)
!275 = !DILocalVariable(name: "rm", scope: !271, file: !3, line: 457, type: !35)
!276 = !DILocalVariable(name: "base", scope: !271, file: !3, line: 457, type: !35)
!277 = !DILocalVariable(name: "ret", scope: !271, file: !3, line: 458, type: !20)
!278 = !DILocalVariable(name: "r", scope: !279, file: !3, line: 494, type: !285)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 494, column: 12)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 494, column: 12)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 492, column: 17)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 492, column: 7)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 469, column: 26)
!284 = distinct !DILexicalBlock(scope: !271, file: !3, line: 469, column: 6)
!285 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!286 = !DILocalVariable(name: "__pptr", scope: !287, file: !3, line: 494, type: !268)
!287 = distinct !DILexicalBlock(scope: !279, file: !3, line: 494, column: 12)
!288 = !DILocalVariable(name: "v", scope: !289, file: !3, line: 494, type: !285)
!289 = distinct !DILexicalBlock(scope: !279, file: !3, line: 494, column: 12)
!290 = !DILocalVariable(name: "r", scope: !291, file: !3, line: 498, type: !297)
!291 = distinct !DILexicalBlock(scope: !292, file: !3, line: 498, column: 13)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 498, column: 13)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 496, column: 43)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 496, column: 8)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 495, column: 37)
!296 = distinct !DILexicalBlock(scope: !282, file: !3, line: 495, column: 14)
!297 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!298 = !DILocalVariable(name: "__pptr", scope: !299, file: !3, line: 498, type: !300)
!299 = distinct !DILexicalBlock(scope: !291, file: !3, line: 498, column: 13)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !3, line: 498, size: 16, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !302, file: !3, line: 498, baseType: !297, size: 16)
!305 = !DILocalVariable(name: "v", scope: !306, file: !3, line: 498, type: !297)
!306 = distinct !DILexicalBlock(scope: !291, file: !3, line: 498, column: 13)
!307 = !DILocalVariable(name: "r", scope: !308, file: !3, line: 504, type: !20)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 504, column: 13)
!309 = distinct !DILexicalBlock(scope: !310, file: !3, line: 504, column: 13)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 502, column: 33)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 501, column: 8)
!312 = distinct !DILexicalBlock(scope: !296, file: !3, line: 500, column: 10)
!313 = !DILocalVariable(name: "__pptr", scope: !314, file: !3, line: 504, type: !315)
!314 = distinct !DILexicalBlock(scope: !308, file: !3, line: 504, column: 13)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !3, line: 504, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !317, file: !3, line: 504, baseType: !20, size: 32)
!320 = !DILocalVariable(name: "v", scope: !321, file: !3, line: 504, type: !20)
!321 = distinct !DILexicalBlock(scope: !308, file: !3, line: 504, column: 13)
!322 = !DILabel(scope: !271, name: "out", file: !3, line: 508)
!323 = !DILabel(scope: !271, name: "err_out", file: !3, line: 512)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !270, file: !3, line: 494, baseType: !285, size: 8)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !329, line: 24, baseType: !330)
!329 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!330 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !332, line: 36, baseType: !328)
!332 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !329, line: 27, baseType: !7)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !332, line: 38, baseType: !334)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !3, line: 649, size: 8, elements: !415)
!339 = distinct !DISubprogram(name: "insn_get_immediate", scope: !3, file: !3, line: 624, type: !18, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!340 = !{!341, !342, !343, !347, !349, !351, !354, !361, !363, !366, !373, !375, !378, !385, !387, !390, !397, !399, !404, !411, !413, !414}
!341 = !DILocalVariable(name: "insn", arg: 1, scope: !339, file: !3, line: 624, type: !21)
!342 = !DILocalVariable(name: "ret", scope: !339, file: !3, line: 626, type: !20)
!343 = !DILocalVariable(name: "r", scope: !344, file: !3, line: 649, type: !285)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 649, column: 36)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 649, column: 36)
!346 = distinct !DILexicalBlock(scope: !339, file: !3, line: 647, column: 43)
!347 = !DILocalVariable(name: "__pptr", scope: !348, file: !3, line: 649, type: !336)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 649, column: 36)
!349 = !DILocalVariable(name: "v", scope: !350, file: !3, line: 649, type: !285)
!350 = distinct !DILexicalBlock(scope: !344, file: !3, line: 649, column: 36)
!351 = !DILocalVariable(name: "r", scope: !352, file: !3, line: 652, type: !297)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 652, column: 36)
!353 = distinct !DILexicalBlock(scope: !346, file: !3, line: 652, column: 36)
!354 = !DILocalVariable(name: "__pptr", scope: !355, file: !3, line: 652, type: !356)
!355 = distinct !DILexicalBlock(scope: !352, file: !3, line: 652, column: 36)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !3, line: 652, size: 16, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !358, file: !3, line: 652, baseType: !297, size: 16)
!361 = !DILocalVariable(name: "v", scope: !362, file: !3, line: 652, type: !297)
!362 = distinct !DILexicalBlock(scope: !352, file: !3, line: 652, column: 36)
!363 = !DILocalVariable(name: "r", scope: !364, file: !3, line: 655, type: !20)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 655, column: 36)
!365 = distinct !DILexicalBlock(scope: !346, file: !3, line: 655, column: 36)
!366 = !DILocalVariable(name: "__pptr", scope: !367, file: !3, line: 655, type: !368)
!367 = distinct !DILexicalBlock(scope: !364, file: !3, line: 655, column: 36)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !3, line: 655, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !370, file: !3, line: 655, baseType: !20, size: 32)
!373 = !DILocalVariable(name: "v", scope: !374, file: !3, line: 655, type: !20)
!374 = distinct !DILexicalBlock(scope: !364, file: !3, line: 655, column: 36)
!375 = !DILocalVariable(name: "r", scope: !376, file: !3, line: 658, type: !20)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 658, column: 37)
!377 = distinct !DILexicalBlock(scope: !346, file: !3, line: 658, column: 37)
!378 = !DILocalVariable(name: "__pptr", scope: !379, file: !3, line: 658, type: !380)
!379 = distinct !DILexicalBlock(scope: !376, file: !3, line: 658, column: 37)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !3, line: 658, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !382, file: !3, line: 658, baseType: !20, size: 32)
!385 = !DILocalVariable(name: "v", scope: !386, file: !3, line: 658, type: !20)
!386 = distinct !DILexicalBlock(scope: !376, file: !3, line: 658, column: 37)
!387 = !DILocalVariable(name: "r", scope: !388, file: !3, line: 659, type: !20)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 659, column: 37)
!389 = distinct !DILexicalBlock(scope: !346, file: !3, line: 659, column: 37)
!390 = !DILocalVariable(name: "__pptr", scope: !391, file: !3, line: 659, type: !392)
!391 = distinct !DILexicalBlock(scope: !388, file: !3, line: 659, column: 37)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !3, line: 659, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !394, file: !3, line: 659, baseType: !20, size: 32)
!397 = !DILocalVariable(name: "v", scope: !398, file: !3, line: 659, type: !20)
!398 = distinct !DILexicalBlock(scope: !388, file: !3, line: 659, column: 37)
!399 = !DILocalVariable(name: "r", scope: !400, file: !3, line: 678, type: !285)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 678, column: 37)
!401 = distinct !DILexicalBlock(scope: !402, file: !3, line: 678, column: 37)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 677, column: 45)
!403 = distinct !DILexicalBlock(scope: !339, file: !3, line: 677, column: 6)
!404 = !DILocalVariable(name: "__pptr", scope: !405, file: !3, line: 678, type: !406)
!405 = distinct !DILexicalBlock(scope: !400, file: !3, line: 678, column: 37)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !3, line: 678, size: 8, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !408, file: !3, line: 678, baseType: !285, size: 8)
!411 = !DILocalVariable(name: "v", scope: !412, file: !3, line: 678, type: !285)
!412 = distinct !DILexicalBlock(scope: !400, file: !3, line: 678, column: 37)
!413 = !DILabel(scope: !339, name: "done", file: !3, line: 680)
!414 = !DILabel(scope: !339, name: "err_out", file: !3, line: 684)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !338, file: !3, line: 649, baseType: !285, size: 8)
!417 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !3, line: 91, size: 8, elements: !446)
!421 = distinct !DISubprogram(name: "__insn_get_emulate_prefix", scope: !3, file: !3, line: 85, type: !422, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !429)
!422 = !DISubroutineType(types: !423)
!423 = !{!20, !21, !66, !424}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !425, line: 61, baseType: !426)
!425 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !427, line: 72, baseType: !428)
!427 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !427, line: 16, baseType: !417)
!429 = !{!430, !431, !432, !433, !434, !441, !443, !445}
!430 = !DILocalVariable(name: "insn", arg: 1, scope: !421, file: !3, line: 85, type: !21)
!431 = !DILocalVariable(name: "prefix", arg: 2, scope: !421, file: !3, line: 86, type: !66)
!432 = !DILocalVariable(name: "len", arg: 3, scope: !421, file: !3, line: 86, type: !424)
!433 = !DILocalVariable(name: "i", scope: !421, file: !3, line: 88, type: !424)
!434 = !DILocalVariable(name: "r", scope: !435, file: !3, line: 91, type: !35)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 91, column: 7)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 91, column: 7)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 91, column: 7)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 90, column: 28)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 90, column: 2)
!440 = distinct !DILexicalBlock(scope: !421, file: !3, line: 90, column: 2)
!441 = !DILocalVariable(name: "__pptr", scope: !442, file: !3, line: 91, type: !418)
!442 = distinct !DILexicalBlock(scope: !435, file: !3, line: 91, column: 7)
!443 = !DILocalVariable(name: "v", scope: !444, file: !3, line: 91, type: !35)
!444 = distinct !DILexicalBlock(scope: !435, file: !3, line: 91, column: 7)
!445 = !DILabel(scope: !421, name: "err_out", file: !3, line: 100)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !420, file: !3, line: 91, baseType: !35, size: 8)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !3, line: 521, size: 16, elements: !499)
!451 = distinct !DISubprogram(name: "__get_moffset", scope: !3, file: !3, line: 517, type: !18, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!452 = !{!453, !454, !458, !460, !462, !465, !472, !474, !477, !484, !486, !489, !496, !498}
!453 = !DILocalVariable(name: "insn", arg: 1, scope: !451, file: !3, line: 517, type: !21)
!454 = !DILocalVariable(name: "r", scope: !455, file: !3, line: 521, type: !297)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 521, column: 35)
!456 = distinct !DILexicalBlock(scope: !457, file: !3, line: 521, column: 35)
!457 = distinct !DILexicalBlock(scope: !451, file: !3, line: 519, column: 28)
!458 = !DILocalVariable(name: "__pptr", scope: !459, file: !3, line: 521, type: !448)
!459 = distinct !DILexicalBlock(scope: !455, file: !3, line: 521, column: 35)
!460 = !DILocalVariable(name: "v", scope: !461, file: !3, line: 521, type: !297)
!461 = distinct !DILexicalBlock(scope: !455, file: !3, line: 521, column: 35)
!462 = !DILocalVariable(name: "r", scope: !463, file: !3, line: 524, type: !20)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 524, column: 35)
!464 = distinct !DILexicalBlock(scope: !457, file: !3, line: 524, column: 35)
!465 = !DILocalVariable(name: "__pptr", scope: !466, file: !3, line: 524, type: !467)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 524, column: 35)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !3, line: 524, size: 32, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !469, file: !3, line: 524, baseType: !20, size: 32)
!472 = !DILocalVariable(name: "v", scope: !473, file: !3, line: 524, type: !20)
!473 = distinct !DILexicalBlock(scope: !463, file: !3, line: 524, column: 35)
!474 = !DILocalVariable(name: "r", scope: !475, file: !3, line: 527, type: !20)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 527, column: 35)
!476 = distinct !DILexicalBlock(scope: !457, file: !3, line: 527, column: 35)
!477 = !DILocalVariable(name: "__pptr", scope: !478, file: !3, line: 527, type: !479)
!478 = distinct !DILexicalBlock(scope: !475, file: !3, line: 527, column: 35)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !3, line: 527, size: 32, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !481, file: !3, line: 527, baseType: !20, size: 32)
!484 = !DILocalVariable(name: "v", scope: !485, file: !3, line: 527, type: !20)
!485 = distinct !DILexicalBlock(scope: !475, file: !3, line: 527, column: 35)
!486 = !DILocalVariable(name: "r", scope: !487, file: !3, line: 528, type: !20)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 528, column: 35)
!488 = distinct !DILexicalBlock(scope: !457, file: !3, line: 528, column: 35)
!489 = !DILocalVariable(name: "__pptr", scope: !490, file: !3, line: 528, type: !491)
!490 = distinct !DILexicalBlock(scope: !487, file: !3, line: 528, column: 35)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !3, line: 528, size: 32, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !493, file: !3, line: 528, baseType: !20, size: 32)
!496 = !DILocalVariable(name: "v", scope: !497, file: !3, line: 528, type: !20)
!497 = distinct !DILexicalBlock(scope: !487, file: !3, line: 528, column: 35)
!498 = !DILabel(scope: !451, name: "err_out", file: !3, line: 537)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !450, file: !3, line: 521, baseType: !297, size: 16)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !504, file: !3, line: 592, size: 16, elements: !540)
!504 = distinct !DISubprogram(name: "__get_immptr", scope: !3, file: !3, line: 588, type: !18, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!505 = !{!506, !507, !511, !513, !515, !518, !525, !527, !530, !537, !539}
!506 = !DILocalVariable(name: "insn", arg: 1, scope: !504, file: !3, line: 588, type: !21)
!507 = !DILocalVariable(name: "r", scope: !508, file: !3, line: 592, type: !297)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 592, column: 37)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 592, column: 37)
!510 = distinct !DILexicalBlock(scope: !504, file: !3, line: 590, column: 28)
!511 = !DILocalVariable(name: "__pptr", scope: !512, file: !3, line: 592, type: !501)
!512 = distinct !DILexicalBlock(scope: !508, file: !3, line: 592, column: 37)
!513 = !DILocalVariable(name: "v", scope: !514, file: !3, line: 592, type: !297)
!514 = distinct !DILexicalBlock(scope: !508, file: !3, line: 592, column: 37)
!515 = !DILocalVariable(name: "r", scope: !516, file: !3, line: 595, type: !20)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 595, column: 37)
!517 = distinct !DILexicalBlock(scope: !510, file: !3, line: 595, column: 37)
!518 = !DILocalVariable(name: "__pptr", scope: !519, file: !3, line: 595, type: !520)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 595, column: 37)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !504, file: !3, line: 595, size: 32, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !522, file: !3, line: 595, baseType: !20, size: 32)
!525 = !DILocalVariable(name: "v", scope: !526, file: !3, line: 595, type: !20)
!526 = distinct !DILexicalBlock(scope: !516, file: !3, line: 595, column: 37)
!527 = !DILocalVariable(name: "r", scope: !528, file: !3, line: 603, type: !330)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 603, column: 36)
!529 = distinct !DILexicalBlock(scope: !504, file: !3, line: 603, column: 36)
!530 = !DILocalVariable(name: "__pptr", scope: !531, file: !3, line: 603, type: !532)
!531 = distinct !DILexicalBlock(scope: !528, file: !3, line: 603, column: 36)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !504, file: !3, line: 603, size: 16, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !534, file: !3, line: 603, baseType: !330, size: 16)
!537 = !DILocalVariable(name: "v", scope: !538, file: !3, line: 603, type: !330)
!538 = distinct !DILexicalBlock(scope: !528, file: !3, line: 603, column: 36)
!539 = !DILabel(scope: !504, name: "err_out", file: !3, line: 607)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !503, file: !3, line: 592, baseType: !297, size: 16)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !546, file: !3, line: 546, size: 16, elements: !570)
!546 = distinct !DISubprogram(name: "__get_immv32", scope: !3, file: !3, line: 542, type: !18, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!547 = !{!548, !549, !553, !555, !557, !560, !567, !569}
!548 = !DILocalVariable(name: "insn", arg: 1, scope: !546, file: !3, line: 542, type: !21)
!549 = !DILocalVariable(name: "r", scope: !550, file: !3, line: 546, type: !297)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 546, column: 36)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 546, column: 36)
!552 = distinct !DILexicalBlock(scope: !546, file: !3, line: 544, column: 28)
!553 = !DILocalVariable(name: "__pptr", scope: !554, file: !3, line: 546, type: !543)
!554 = distinct !DILexicalBlock(scope: !550, file: !3, line: 546, column: 36)
!555 = !DILocalVariable(name: "v", scope: !556, file: !3, line: 546, type: !297)
!556 = distinct !DILexicalBlock(scope: !550, file: !3, line: 546, column: 36)
!557 = !DILocalVariable(name: "r", scope: !558, file: !3, line: 550, type: !20)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 550, column: 36)
!559 = distinct !DILexicalBlock(scope: !552, file: !3, line: 550, column: 36)
!560 = !DILocalVariable(name: "__pptr", scope: !561, file: !3, line: 550, type: !562)
!561 = distinct !DILexicalBlock(scope: !558, file: !3, line: 550, column: 36)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !546, file: !3, line: 550, size: 32, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !564, file: !3, line: 550, baseType: !20, size: 32)
!567 = !DILocalVariable(name: "v", scope: !568, file: !3, line: 550, type: !20)
!568 = distinct !DILexicalBlock(scope: !558, file: !3, line: 550, column: 36)
!569 = !DILabel(scope: !546, name: "err_out", file: !3, line: 558)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !545, file: !3, line: 546, baseType: !297, size: 16)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !575, file: !3, line: 567, size: 16, elements: !623)
!575 = distinct !DISubprogram(name: "__get_immv", scope: !3, file: !3, line: 563, type: !18, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!576 = !{!577, !578, !582, !584, !586, !589, !596, !598, !601, !608, !610, !613, !620, !622}
!577 = !DILocalVariable(name: "insn", arg: 1, scope: !575, file: !3, line: 563, type: !21)
!578 = !DILocalVariable(name: "r", scope: !579, file: !3, line: 567, type: !297)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 567, column: 37)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 567, column: 37)
!581 = distinct !DILexicalBlock(scope: !575, file: !3, line: 565, column: 28)
!582 = !DILocalVariable(name: "__pptr", scope: !583, file: !3, line: 567, type: !572)
!583 = distinct !DILexicalBlock(scope: !579, file: !3, line: 567, column: 37)
!584 = !DILocalVariable(name: "v", scope: !585, file: !3, line: 567, type: !297)
!585 = distinct !DILexicalBlock(scope: !579, file: !3, line: 567, column: 37)
!586 = !DILocalVariable(name: "r", scope: !587, file: !3, line: 570, type: !20)
!587 = distinct !DILexicalBlock(scope: !588, file: !3, line: 570, column: 37)
!588 = distinct !DILexicalBlock(scope: !581, file: !3, line: 570, column: 37)
!589 = !DILocalVariable(name: "__pptr", scope: !590, file: !3, line: 570, type: !591)
!590 = distinct !DILexicalBlock(scope: !587, file: !3, line: 570, column: 37)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !575, file: !3, line: 570, size: 32, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !593, file: !3, line: 570, baseType: !20, size: 32)
!596 = !DILocalVariable(name: "v", scope: !597, file: !3, line: 570, type: !20)
!597 = distinct !DILexicalBlock(scope: !587, file: !3, line: 570, column: 37)
!598 = !DILocalVariable(name: "r", scope: !599, file: !3, line: 574, type: !20)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 574, column: 37)
!600 = distinct !DILexicalBlock(scope: !581, file: !3, line: 574, column: 37)
!601 = !DILocalVariable(name: "__pptr", scope: !602, file: !3, line: 574, type: !603)
!602 = distinct !DILexicalBlock(scope: !599, file: !3, line: 574, column: 37)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !575, file: !3, line: 574, size: 32, elements: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !605, file: !3, line: 574, baseType: !20, size: 32)
!608 = !DILocalVariable(name: "v", scope: !609, file: !3, line: 574, type: !20)
!609 = distinct !DILexicalBlock(scope: !599, file: !3, line: 574, column: 37)
!610 = !DILocalVariable(name: "r", scope: !611, file: !3, line: 575, type: !20)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 575, column: 37)
!612 = distinct !DILexicalBlock(scope: !581, file: !3, line: 575, column: 37)
!613 = !DILocalVariable(name: "__pptr", scope: !614, file: !3, line: 575, type: !615)
!614 = distinct !DILexicalBlock(scope: !611, file: !3, line: 575, column: 37)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !575, file: !3, line: 575, size: 32, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !617, file: !3, line: 575, baseType: !20, size: 32)
!620 = !DILocalVariable(name: "v", scope: !621, file: !3, line: 575, type: !20)
!621 = distinct !DILexicalBlock(scope: !611, file: !3, line: 575, column: 37)
!622 = !DILabel(scope: !575, name: "err_out", file: !3, line: 583)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !574, file: !3, line: 567, baseType: !297, size: 16)
!625 = !{!0, !626}
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "kvm_prefix", scope: !2, file: !3, line: 83, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 40, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 5)
!631 = !{i32 7, !"Dwarf Version", i32 5}
!632 = !{i32 2, !"Debug Info Version", i32 3}
!633 = !{i32 1, !"wchar_size", i32 2}
!634 = !{i32 8, !"cf-protection-branch", i32 1}
!635 = !{i32 4, !"function_return_thunk_extern", i32 1}
!636 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!637 = !{i32 1, !"Code Model", i32 2}
!638 = !{i32 1, !"override-stack-alignment", i32 8}
!639 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!640 = distinct !DISubprogram(name: "insn_init", scope: !3, file: !3, line: 61, type: !641, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !21, !643, !20, !20}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!645 = !{!646, !647, !648, !649}
!646 = !DILocalVariable(name: "insn", arg: 1, scope: !640, file: !3, line: 61, type: !21)
!647 = !DILocalVariable(name: "kaddr", arg: 2, scope: !640, file: !3, line: 61, type: !643)
!648 = !DILocalVariable(name: "buf_len", arg: 3, scope: !640, file: !3, line: 61, type: !20)
!649 = !DILocalVariable(name: "x86_64", arg: 4, scope: !640, file: !3, line: 61, type: !20)
!650 = !DILocation(line: 61, column: 29, scope: !640)
!651 = !DILocation(line: 61, column: 47, scope: !640)
!652 = !DILocation(line: 61, column: 58, scope: !640)
!653 = !DILocation(line: 61, column: 71, scope: !640)
!654 = !DILocation(line: 67, column: 6, scope: !655)
!655 = distinct !DILexicalBlock(scope: !640, file: !3, line: 67, column: 6)
!656 = !DILocation(line: 67, column: 14, scope: !655)
!657 = !DILocation(line: 67, column: 6, scope: !640)
!658 = !DILocation(line: 68, column: 11, scope: !655)
!659 = !DILocation(line: 68, column: 3, scope: !655)
!660 = !DILocation(line: 70, column: 9, scope: !640)
!661 = !DILocation(line: 70, column: 2, scope: !640)
!662 = !DILocation(line: 71, column: 16, scope: !640)
!663 = !DILocation(line: 71, column: 2, scope: !640)
!664 = !DILocation(line: 71, column: 8, scope: !640)
!665 = !DILocation(line: 71, column: 14, scope: !640)
!666 = !DILocation(line: 72, column: 20, scope: !640)
!667 = !DILocation(line: 72, column: 28, scope: !640)
!668 = !DILocation(line: 72, column: 26, scope: !640)
!669 = !DILocation(line: 72, column: 2, scope: !640)
!670 = !DILocation(line: 72, column: 8, scope: !640)
!671 = !DILocation(line: 72, column: 18, scope: !640)
!672 = !DILocation(line: 73, column: 20, scope: !640)
!673 = !DILocation(line: 73, column: 2, scope: !640)
!674 = !DILocation(line: 73, column: 8, scope: !640)
!675 = !DILocation(line: 73, column: 18, scope: !640)
!676 = !DILocation(line: 74, column: 17, scope: !640)
!677 = !DILocation(line: 74, column: 2, scope: !640)
!678 = !DILocation(line: 74, column: 8, scope: !640)
!679 = !DILocation(line: 74, column: 15, scope: !640)
!680 = !DILocation(line: 75, column: 2, scope: !640)
!681 = !DILocation(line: 75, column: 8, scope: !640)
!682 = !DILocation(line: 75, column: 19, scope: !640)
!683 = !DILocation(line: 76, column: 6, scope: !684)
!684 = distinct !DILexicalBlock(scope: !640, file: !3, line: 76, column: 6)
!685 = !DILocation(line: 76, column: 6, scope: !640)
!686 = !DILocation(line: 77, column: 3, scope: !684)
!687 = !DILocation(line: 77, column: 9, scope: !684)
!688 = !DILocation(line: 77, column: 20, scope: !684)
!689 = !DILocation(line: 79, column: 3, scope: !684)
!690 = !DILocation(line: 79, column: 9, scope: !684)
!691 = !DILocation(line: 79, column: 20, scope: !684)
!692 = !DILocation(line: 80, column: 1, scope: !640)
!693 = !DILocation(line: 124, column: 36, scope: !17)
!694 = !DILocation(line: 126, column: 2, scope: !17)
!695 = !DILocation(line: 126, column: 21, scope: !17)
!696 = !DILocation(line: 126, column: 33, scope: !17)
!697 = !DILocation(line: 126, column: 39, scope: !17)
!698 = !DILocation(line: 127, column: 2, scope: !17)
!699 = !DILocation(line: 127, column: 14, scope: !17)
!700 = !DILocation(line: 128, column: 2, scope: !17)
!701 = !DILocation(line: 128, column: 14, scope: !17)
!702 = !DILocation(line: 128, column: 17, scope: !17)
!703 = !DILocation(line: 129, column: 2, scope: !17)
!704 = !DILocation(line: 129, column: 6, scope: !17)
!705 = !DILocation(line: 129, column: 9, scope: !17)
!706 = !DILocation(line: 131, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !17, file: !3, line: 131, column: 6)
!708 = !DILocation(line: 131, column: 16, scope: !707)
!709 = !DILocation(line: 131, column: 6, scope: !17)
!710 = !DILocation(line: 132, column: 3, scope: !707)
!711 = !DILocation(line: 134, column: 26, scope: !17)
!712 = !DILocation(line: 134, column: 2, scope: !17)
!713 = !DILocation(line: 136, column: 5, scope: !17)
!714 = !DILocation(line: 137, column: 5, scope: !17)
!715 = !DILocation(line: 138, column: 6, scope: !716)
!716 = distinct !DILexicalBlock(scope: !81, file: !3, line: 138, column: 6)
!717 = !DILocation(line: 138, column: 6, scope: !81)
!718 = !DILocation(line: 138, column: 6, scope: !80)
!719 = !DILocation(line: 138, column: 6, scope: !83)
!720 = !DILocation(line: 138, column: 6, scope: !85)
!721 = !DILocation(line: 138, column: 4, scope: !17)
!722 = !DILocation(line: 139, column: 35, scope: !17)
!723 = !DILocation(line: 139, column: 9, scope: !17)
!724 = !DILocation(line: 139, column: 7, scope: !17)
!725 = !DILocation(line: 140, column: 2, scope: !17)
!726 = !DILocation(line: 140, column: 31, scope: !17)
!727 = !DILocation(line: 140, column: 9, scope: !17)
!728 = !DILocation(line: 142, column: 10, scope: !729)
!729 = distinct !DILexicalBlock(scope: !87, file: !3, line: 142, column: 3)
!730 = !DILocation(line: 142, column: 8, scope: !729)
!731 = !DILocation(line: 142, column: 15, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 142, column: 3)
!733 = !DILocation(line: 142, column: 19, scope: !732)
!734 = !DILocation(line: 142, column: 17, scope: !732)
!735 = !DILocation(line: 142, column: 3, scope: !729)
!736 = !DILocation(line: 143, column: 8, scope: !737)
!737 = distinct !DILexicalBlock(scope: !732, file: !3, line: 143, column: 8)
!738 = !DILocation(line: 143, column: 18, scope: !737)
!739 = !DILocation(line: 143, column: 24, scope: !737)
!740 = !DILocation(line: 143, column: 30, scope: !737)
!741 = !DILocation(line: 143, column: 27, scope: !737)
!742 = !DILocation(line: 143, column: 8, scope: !732)
!743 = !DILocation(line: 144, column: 5, scope: !737)
!744 = !DILocation(line: 142, column: 24, scope: !732)
!745 = !DILocation(line: 142, column: 3, scope: !732)
!746 = distinct !{!746, !735, !747, !748, !749}
!747 = !DILocation(line: 144, column: 10, scope: !729)
!748 = !{!"llvm.loop.mustprogress"}
!749 = !{!"llvm.loop.unroll.disable"}
!750 = !DILocation(line: 145, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !87, file: !3, line: 145, column: 7)
!752 = !DILocation(line: 145, column: 10, scope: !751)
!753 = !DILocation(line: 145, column: 7, scope: !87)
!754 = !DILocation(line: 147, column: 4, scope: !751)
!755 = !DILocation(line: 148, column: 27, scope: !87)
!756 = !DILocation(line: 148, column: 3, scope: !87)
!757 = !DILocation(line: 148, column: 13, scope: !87)
!758 = !DILocation(line: 148, column: 21, scope: !87)
!759 = !DILocation(line: 148, column: 25, scope: !87)
!760 = !DILocation(line: 149, column: 35, scope: !761)
!761 = distinct !DILexicalBlock(scope: !87, file: !3, line: 149, column: 7)
!762 = !DILocation(line: 149, column: 7, scope: !761)
!763 = !DILocation(line: 149, column: 7, scope: !87)
!764 = !DILocation(line: 151, column: 8, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 151, column: 8)
!766 = distinct !DILexicalBlock(scope: !761, file: !3, line: 149, column: 42)
!767 = !DILocation(line: 151, column: 14, scope: !765)
!768 = !DILocation(line: 151, column: 8, scope: !766)
!769 = !DILocation(line: 152, column: 5, scope: !765)
!770 = !DILocation(line: 152, column: 11, scope: !765)
!771 = !DILocation(line: 152, column: 22, scope: !765)
!772 = !DILocation(line: 154, column: 5, scope: !765)
!773 = !DILocation(line: 154, column: 11, scope: !765)
!774 = !DILocation(line: 154, column: 22, scope: !765)
!775 = !DILocation(line: 155, column: 3, scope: !766)
!776 = !DILocation(line: 155, column: 42, scope: !777)
!777 = distinct !DILexicalBlock(scope: !761, file: !3, line: 155, column: 14)
!778 = !DILocation(line: 155, column: 14, scope: !777)
!779 = !DILocation(line: 155, column: 14, scope: !761)
!780 = !DILocation(line: 157, column: 4, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !3, line: 155, column: 49)
!782 = !DILocation(line: 157, column: 10, scope: !781)
!783 = !DILocation(line: 157, column: 21, scope: !781)
!784 = !DILocation(line: 158, column: 3, scope: !781)
!785 = !DILocation(line: 149, column: 39, scope: !761)
!786 = !DILocation(line: 159, column: 1, scope: !87)
!787 = !DILocation(line: 160, column: 3, scope: !87)
!788 = !DILocation(line: 160, column: 13, scope: !87)
!789 = !DILocation(line: 160, column: 19, scope: !87)
!790 = !DILocation(line: 161, column: 3, scope: !87)
!791 = !DILocation(line: 161, column: 9, scope: !87)
!792 = !DILocation(line: 161, column: 18, scope: !87)
!793 = !DILocation(line: 162, column: 8, scope: !87)
!794 = !DILocation(line: 162, column: 6, scope: !87)
!795 = !DILocation(line: 163, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !90, file: !3, line: 163, column: 7)
!797 = !DILocation(line: 163, column: 7, scope: !90)
!798 = !DILocation(line: 163, column: 7, scope: !89)
!799 = !DILocation(line: 163, column: 7, scope: !92)
!800 = !DILocation(line: 163, column: 7, scope: !99)
!801 = !DILocation(line: 163, column: 5, scope: !87)
!802 = !DILocation(line: 164, column: 36, scope: !87)
!803 = !DILocation(line: 164, column: 10, scope: !87)
!804 = !DILocation(line: 164, column: 8, scope: !87)
!805 = distinct !{!805, !725, !806, !748, !749}
!806 = !DILocation(line: 165, column: 2, scope: !17)
!807 = !DILocation(line: 167, column: 6, scope: !808)
!808 = distinct !DILexicalBlock(scope: !17, file: !3, line: 167, column: 6)
!809 = !DILocation(line: 167, column: 9, scope: !808)
!810 = !DILocation(line: 167, column: 12, scope: !808)
!811 = !DILocation(line: 167, column: 18, scope: !808)
!812 = !DILocation(line: 167, column: 24, scope: !808)
!813 = !DILocation(line: 167, column: 33, scope: !808)
!814 = !DILocation(line: 167, column: 15, scope: !808)
!815 = !DILocation(line: 167, column: 6, scope: !17)
!816 = !DILocation(line: 168, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 168, column: 7)
!818 = distinct !DILexicalBlock(scope: !808, file: !3, line: 167, column: 43)
!819 = !DILocation(line: 168, column: 7, scope: !818)
!820 = !DILocation(line: 170, column: 8, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !3, line: 168, column: 42)
!822 = !DILocation(line: 170, column: 14, scope: !821)
!823 = !DILocation(line: 170, column: 23, scope: !821)
!824 = !DILocation(line: 170, column: 6, scope: !821)
!825 = !DILocation(line: 171, column: 11, scope: !826)
!826 = distinct !DILexicalBlock(scope: !821, file: !3, line: 171, column: 4)
!827 = !DILocation(line: 171, column: 9, scope: !826)
!828 = !DILocation(line: 171, column: 16, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !3, line: 171, column: 4)
!830 = !DILocation(line: 171, column: 20, scope: !829)
!831 = !DILocation(line: 171, column: 18, scope: !829)
!832 = !DILocation(line: 171, column: 4, scope: !826)
!833 = !DILocation(line: 172, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !829, file: !3, line: 172, column: 9)
!835 = !DILocation(line: 172, column: 19, scope: !834)
!836 = !DILocation(line: 172, column: 25, scope: !834)
!837 = !DILocation(line: 172, column: 31, scope: !834)
!838 = !DILocation(line: 172, column: 28, scope: !834)
!839 = !DILocation(line: 172, column: 9, scope: !829)
!840 = !DILocation(line: 173, column: 20, scope: !834)
!841 = !DILocation(line: 173, column: 30, scope: !834)
!842 = !DILocation(line: 173, column: 33, scope: !834)
!843 = !DILocation(line: 173, column: 6, scope: !834)
!844 = !DILocation(line: 171, column: 25, scope: !829)
!845 = !DILocation(line: 171, column: 4, scope: !829)
!846 = distinct !{!846, !832, !847, !748, !749}
!847 = !DILocation(line: 173, column: 34, scope: !826)
!848 = !DILocation(line: 174, column: 3, scope: !821)
!849 = !DILocation(line: 175, column: 18, scope: !818)
!850 = !DILocation(line: 175, column: 24, scope: !818)
!851 = !DILocation(line: 175, column: 37, scope: !818)
!852 = !DILocation(line: 175, column: 3, scope: !818)
!853 = !DILocation(line: 176, column: 2, scope: !818)
!854 = !DILocation(line: 179, column: 6, scope: !104)
!855 = !DILocation(line: 179, column: 12, scope: !104)
!856 = !DILocation(line: 179, column: 6, scope: !17)
!857 = !DILocation(line: 180, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !102, file: !3, line: 180, column: 7)
!859 = !DILocation(line: 180, column: 7, scope: !102)
!860 = !DILocation(line: 180, column: 7, scope: !101)
!861 = !DILocation(line: 180, column: 7, scope: !106)
!862 = !DILocation(line: 180, column: 7, scope: !113)
!863 = !DILocation(line: 180, column: 5, scope: !103)
!864 = !DILocation(line: 181, column: 36, scope: !103)
!865 = !DILocation(line: 181, column: 10, scope: !103)
!866 = !DILocation(line: 181, column: 8, scope: !103)
!867 = !DILocation(line: 182, column: 26, scope: !868)
!868 = distinct !DILexicalBlock(scope: !103, file: !3, line: 182, column: 7)
!869 = !DILocation(line: 182, column: 7, scope: !868)
!870 = !DILocation(line: 182, column: 7, scope: !103)
!871 = !DILocation(line: 183, column: 20, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !3, line: 182, column: 33)
!873 = !DILocation(line: 183, column: 26, scope: !872)
!874 = !DILocation(line: 183, column: 38, scope: !872)
!875 = !DILocation(line: 183, column: 4, scope: !872)
!876 = !DILocation(line: 184, column: 4, scope: !872)
!877 = !DILocation(line: 184, column: 10, scope: !872)
!878 = !DILocation(line: 184, column: 19, scope: !872)
!879 = !DILocation(line: 185, column: 8, scope: !880)
!880 = distinct !DILexicalBlock(scope: !872, file: !3, line: 185, column: 8)
!881 = !DILocation(line: 185, column: 8, scope: !872)
!882 = !DILocation(line: 187, column: 5, scope: !880)
!883 = !DILocation(line: 187, column: 11, scope: !880)
!884 = !DILocation(line: 187, column: 22, scope: !880)
!885 = !DILocation(line: 188, column: 3, scope: !872)
!886 = !DILocation(line: 189, column: 2, scope: !103)
!887 = !DILocation(line: 190, column: 2, scope: !17)
!888 = !DILocation(line: 190, column: 8, scope: !17)
!889 = !DILocation(line: 190, column: 19, scope: !17)
!890 = !DILocation(line: 190, column: 23, scope: !17)
!891 = !DILocation(line: 193, column: 6, scope: !892)
!892 = distinct !DILexicalBlock(scope: !116, file: !3, line: 193, column: 6)
!893 = !DILocation(line: 193, column: 6, scope: !116)
!894 = !DILocation(line: 193, column: 6, scope: !115)
!895 = !DILocation(line: 193, column: 6, scope: !118)
!896 = !DILocation(line: 193, column: 6, scope: !125)
!897 = !DILocation(line: 193, column: 4, scope: !17)
!898 = !DILocation(line: 194, column: 35, scope: !17)
!899 = !DILocation(line: 194, column: 9, scope: !17)
!900 = !DILocation(line: 194, column: 7, scope: !17)
!901 = !DILocation(line: 195, column: 25, scope: !128)
!902 = !DILocation(line: 195, column: 6, scope: !128)
!903 = !DILocation(line: 195, column: 6, scope: !17)
!904 = !DILocation(line: 196, column: 3, scope: !127)
!905 = !DILocation(line: 196, column: 15, scope: !127)
!906 = !DILocation(line: 196, column: 20, scope: !907)
!907 = distinct !DILexicalBlock(scope: !131, file: !3, line: 196, column: 20)
!908 = !DILocation(line: 196, column: 20, scope: !131)
!909 = !DILocation(line: 196, column: 20, scope: !130)
!910 = !DILocation(line: 196, column: 20, scope: !133)
!911 = !DILocation(line: 196, column: 20, scope: !140)
!912 = !DILocation(line: 197, column: 8, scope: !913)
!913 = distinct !DILexicalBlock(scope: !127, file: !3, line: 197, column: 7)
!914 = !DILocation(line: 197, column: 14, scope: !913)
!915 = !DILocation(line: 197, column: 7, scope: !127)
!916 = !DILocation(line: 203, column: 8, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 203, column: 8)
!918 = distinct !DILexicalBlock(scope: !913, file: !3, line: 197, column: 22)
!919 = !DILocation(line: 203, column: 26, scope: !917)
!920 = !DILocation(line: 203, column: 8, scope: !918)
!921 = !DILocation(line: 204, column: 5, scope: !917)
!922 = !DILocation(line: 205, column: 3, scope: !918)
!923 = !DILocation(line: 206, column: 18, scope: !127)
!924 = !DILocation(line: 206, column: 24, scope: !127)
!925 = !DILocation(line: 206, column: 39, scope: !127)
!926 = !DILocation(line: 206, column: 3, scope: !127)
!927 = !DILocation(line: 207, column: 18, scope: !127)
!928 = !DILocation(line: 207, column: 24, scope: !127)
!929 = !DILocation(line: 207, column: 39, scope: !127)
!930 = !DILocation(line: 207, column: 3, scope: !127)
!931 = !DILocation(line: 208, column: 27, scope: !145)
!932 = !DILocation(line: 208, column: 7, scope: !145)
!933 = !DILocation(line: 208, column: 7, scope: !127)
!934 = !DILocation(line: 209, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !143, file: !3, line: 209, column: 9)
!936 = !DILocation(line: 209, column: 9, scope: !143)
!937 = !DILocation(line: 209, column: 9, scope: !142)
!938 = !DILocation(line: 209, column: 9, scope: !147)
!939 = !DILocation(line: 209, column: 9, scope: !154)
!940 = !DILocation(line: 209, column: 7, scope: !144)
!941 = !DILocation(line: 210, column: 19, scope: !144)
!942 = !DILocation(line: 210, column: 25, scope: !144)
!943 = !DILocation(line: 210, column: 40, scope: !144)
!944 = !DILocation(line: 210, column: 4, scope: !144)
!945 = !DILocation(line: 211, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !157, file: !3, line: 211, column: 9)
!947 = !DILocation(line: 211, column: 9, scope: !157)
!948 = !DILocation(line: 211, column: 9, scope: !156)
!949 = !DILocation(line: 211, column: 9, scope: !159)
!950 = !DILocation(line: 211, column: 9, scope: !166)
!951 = !DILocation(line: 211, column: 7, scope: !144)
!952 = !DILocation(line: 212, column: 19, scope: !144)
!953 = !DILocation(line: 212, column: 25, scope: !144)
!954 = !DILocation(line: 212, column: 40, scope: !144)
!955 = !DILocation(line: 212, column: 4, scope: !144)
!956 = !DILocation(line: 213, column: 4, scope: !144)
!957 = !DILocation(line: 213, column: 10, scope: !144)
!958 = !DILocation(line: 213, column: 21, scope: !144)
!959 = !DILocation(line: 213, column: 28, scope: !144)
!960 = !DILocation(line: 214, column: 4, scope: !144)
!961 = !DILocation(line: 214, column: 10, scope: !144)
!962 = !DILocation(line: 214, column: 20, scope: !144)
!963 = !DILocation(line: 215, column: 8, scope: !964)
!964 = distinct !DILexicalBlock(scope: !144, file: !3, line: 215, column: 8)
!965 = !DILocation(line: 215, column: 14, scope: !964)
!966 = !DILocation(line: 215, column: 21, scope: !964)
!967 = !DILocation(line: 215, column: 24, scope: !964)
!968 = !DILocation(line: 215, column: 8, scope: !144)
!969 = !DILocation(line: 217, column: 5, scope: !964)
!970 = !DILocation(line: 217, column: 11, scope: !964)
!971 = !DILocation(line: 217, column: 22, scope: !964)
!972 = !DILocation(line: 218, column: 3, scope: !144)
!973 = !DILocation(line: 218, column: 34, scope: !171)
!974 = !DILocation(line: 218, column: 14, scope: !171)
!975 = !DILocation(line: 218, column: 14, scope: !145)
!976 = !DILocation(line: 219, column: 9, scope: !977)
!977 = distinct !DILexicalBlock(scope: !169, file: !3, line: 219, column: 9)
!978 = !DILocation(line: 219, column: 9, scope: !169)
!979 = !DILocation(line: 219, column: 9, scope: !168)
!980 = !DILocation(line: 219, column: 9, scope: !173)
!981 = !DILocation(line: 219, column: 9, scope: !180)
!982 = !DILocation(line: 219, column: 7, scope: !170)
!983 = !DILocation(line: 220, column: 19, scope: !170)
!984 = !DILocation(line: 220, column: 25, scope: !170)
!985 = !DILocation(line: 220, column: 40, scope: !170)
!986 = !DILocation(line: 220, column: 4, scope: !170)
!987 = !DILocation(line: 221, column: 4, scope: !170)
!988 = !DILocation(line: 221, column: 10, scope: !170)
!989 = !DILocation(line: 221, column: 21, scope: !170)
!990 = !DILocation(line: 221, column: 28, scope: !170)
!991 = !DILocation(line: 222, column: 4, scope: !170)
!992 = !DILocation(line: 222, column: 10, scope: !170)
!993 = !DILocation(line: 222, column: 20, scope: !170)
!994 = !DILocation(line: 223, column: 8, scope: !995)
!995 = distinct !DILexicalBlock(scope: !170, file: !3, line: 223, column: 8)
!996 = !DILocation(line: 223, column: 14, scope: !995)
!997 = !DILocation(line: 223, column: 21, scope: !995)
!998 = !DILocation(line: 223, column: 24, scope: !995)
!999 = !DILocation(line: 223, column: 8, scope: !170)
!1000 = !DILocation(line: 225, column: 5, scope: !995)
!1001 = !DILocation(line: 225, column: 11, scope: !995)
!1002 = !DILocation(line: 225, column: 22, scope: !995)
!1003 = !DILocation(line: 226, column: 3, scope: !170)
!1004 = !DILocation(line: 232, column: 19, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !171, file: !3, line: 226, column: 10)
!1006 = !DILocation(line: 232, column: 25, scope: !1005)
!1007 = !DILocation(line: 232, column: 40, scope: !1005)
!1008 = !DILocation(line: 232, column: 43, scope: !1005)
!1009 = !DILocation(line: 232, column: 4, scope: !1005)
!1010 = !DILocation(line: 233, column: 4, scope: !1005)
!1011 = !DILocation(line: 233, column: 10, scope: !1005)
!1012 = !DILocation(line: 233, column: 21, scope: !1005)
!1013 = !DILocation(line: 233, column: 28, scope: !1005)
!1014 = !DILocation(line: 234, column: 4, scope: !1005)
!1015 = !DILocation(line: 234, column: 10, scope: !1005)
!1016 = !DILocation(line: 234, column: 20, scope: !1005)
!1017 = !DILocation(line: 236, column: 2, scope: !128)
!1018 = !DILocation(line: 236, column: 2, scope: !127)
!1019 = !DILocation(line: 195, column: 29, scope: !128)
!1020 = !DILocation(line: 237, column: 1, scope: !17)
!1021 = !DILocation(line: 238, column: 2, scope: !17)
!1022 = !DILocation(line: 238, column: 8, scope: !17)
!1023 = !DILocation(line: 238, column: 19, scope: !17)
!1024 = !DILocation(line: 238, column: 23, scope: !17)
!1025 = !DILocation(line: 240, column: 2, scope: !17)
!1026 = !DILocation(line: 240, column: 12, scope: !17)
!1027 = !DILocation(line: 240, column: 16, scope: !17)
!1028 = !DILocation(line: 242, column: 2, scope: !17)
!1029 = !DILocation(line: 244, column: 1, scope: !17)
!1030 = !DILocation(line: 245, column: 2, scope: !17)
!1031 = !DILocation(line: 246, column: 1, scope: !17)
!1032 = distinct !DISubprogram(name: "insn_get_emulate_prefix", scope: !3, file: !3, line: 104, type: !1033, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1035)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !21}
!1035 = !{!1036}
!1036 = !DILocalVariable(name: "insn", arg: 1, scope: !1032, file: !3, line: 104, type: !21)
!1037 = !DILocation(line: 104, column: 50, scope: !1032)
!1038 = !DILocation(line: 106, column: 32, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 106, column: 6)
!1040 = !DILocation(line: 106, column: 6, scope: !1039)
!1041 = !DILocation(line: 106, column: 6, scope: !1032)
!1042 = !DILocation(line: 107, column: 3, scope: !1039)
!1043 = !DILocation(line: 109, column: 28, scope: !1032)
!1044 = !DILocation(line: 109, column: 2, scope: !1032)
!1045 = !DILocation(line: 110, column: 1, scope: !1032)
!1046 = !DISubprogram(name: "inat_get_opcode_attribute", scope: !1047, file: !1047, line: 97, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DIFile(filename: "./arch/x86/include/asm/inat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6bb7b4e1f3c9759f1cc04be8dd9de68a")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!60, !35}
!1050 = distinct !DISubprogram(name: "inat_is_legacy_prefix", scope: !1047, file: !1047, line: 110, type: !1051, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!20, !60}
!1053 = !{!1054}
!1054 = !DILocalVariable(name: "attr", arg: 1, scope: !1050, file: !1047, line: 110, type: !60)
!1055 = !DILocation(line: 110, column: 53, scope: !1050)
!1056 = !DILocation(line: 112, column: 7, scope: !1050)
!1057 = !DILocation(line: 113, column: 9, scope: !1050)
!1058 = !DILocation(line: 113, column: 14, scope: !1050)
!1059 = !DILocation(line: 113, column: 17, scope: !1050)
!1060 = !DILocation(line: 113, column: 22, scope: !1050)
!1061 = !DILocation(line: 0, scope: !1050)
!1062 = !DILocation(line: 113, column: 2, scope: !1050)
!1063 = distinct !DISubprogram(name: "inat_is_address_size_prefix", scope: !1047, file: !1047, line: 116, type: !1051, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1064 = !{!1065}
!1065 = !DILocalVariable(name: "attr", arg: 1, scope: !1063, file: !1047, line: 116, type: !60)
!1066 = !DILocation(line: 116, column: 59, scope: !1063)
!1067 = !DILocation(line: 118, column: 10, scope: !1063)
!1068 = !DILocation(line: 118, column: 15, scope: !1063)
!1069 = !DILocation(line: 118, column: 32, scope: !1063)
!1070 = !DILocation(line: 118, column: 2, scope: !1063)
!1071 = distinct !DISubprogram(name: "inat_is_operand_size_prefix", scope: !1047, file: !1047, line: 121, type: !1051, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1072)
!1072 = !{!1073}
!1073 = !DILocalVariable(name: "attr", arg: 1, scope: !1071, file: !1047, line: 121, type: !60)
!1074 = !DILocation(line: 121, column: 59, scope: !1071)
!1075 = !DILocation(line: 123, column: 10, scope: !1071)
!1076 = !DILocation(line: 123, column: 15, scope: !1071)
!1077 = !DILocation(line: 123, column: 32, scope: !1071)
!1078 = !DILocation(line: 123, column: 2, scope: !1071)
!1079 = distinct !DISubprogram(name: "insn_set_byte", scope: !6, file: !6, line: 33, type: !1080, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1082)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !73, !36, !35}
!1082 = !{!1083, !1084, !1085}
!1083 = !DILocalVariable(name: "p", arg: 1, scope: !1079, file: !6, line: 33, type: !73)
!1084 = !DILocalVariable(name: "n", arg: 2, scope: !1079, file: !6, line: 33, type: !36)
!1085 = !DILocalVariable(name: "v", arg: 3, scope: !1079, file: !6, line: 34, type: !35)
!1086 = !DILocation(line: 33, column: 53, scope: !1079)
!1087 = !DILocation(line: 33, column: 70, scope: !1079)
!1088 = !DILocation(line: 34, column: 18, scope: !1079)
!1089 = !DILocation(line: 36, column: 16, scope: !1079)
!1090 = !DILocation(line: 36, column: 2, scope: !1079)
!1091 = !DILocation(line: 36, column: 5, scope: !1079)
!1092 = !DILocation(line: 36, column: 11, scope: !1079)
!1093 = !DILocation(line: 36, column: 14, scope: !1079)
!1094 = !DILocation(line: 37, column: 1, scope: !1079)
!1095 = distinct !DISubprogram(name: "inat_is_rex_prefix", scope: !1047, file: !1047, line: 126, type: !1051, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1096)
!1096 = !{!1097}
!1097 = !DILocalVariable(name: "attr", arg: 1, scope: !1095, file: !1047, line: 126, type: !60)
!1098 = !DILocation(line: 126, column: 50, scope: !1095)
!1099 = !DILocation(line: 128, column: 10, scope: !1095)
!1100 = !DILocation(line: 128, column: 15, scope: !1095)
!1101 = !DILocation(line: 128, column: 32, scope: !1095)
!1102 = !DILocation(line: 128, column: 2, scope: !1095)
!1103 = distinct !DISubprogram(name: "insn_field_set", scope: !6, file: !6, line: 26, type: !1104, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !73, !31, !36}
!1106 = !{!1107, !1108, !1109}
!1107 = !DILocalVariable(name: "p", arg: 1, scope: !1103, file: !6, line: 26, type: !73)
!1108 = !DILocalVariable(name: "v", arg: 2, scope: !1103, file: !6, line: 26, type: !31)
!1109 = !DILocalVariable(name: "n", arg: 3, scope: !1103, file: !6, line: 27, type: !36)
!1110 = !DILocation(line: 26, column: 54, scope: !1103)
!1111 = !DILocation(line: 26, column: 70, scope: !1103)
!1112 = !DILocation(line: 27, column: 21, scope: !1103)
!1113 = !DILocation(line: 29, column: 13, scope: !1103)
!1114 = !DILocation(line: 29, column: 2, scope: !1103)
!1115 = !DILocation(line: 29, column: 5, scope: !1103)
!1116 = !DILocation(line: 29, column: 11, scope: !1103)
!1117 = !DILocation(line: 30, column: 14, scope: !1103)
!1118 = !DILocation(line: 30, column: 2, scope: !1103)
!1119 = !DILocation(line: 30, column: 5, scope: !1103)
!1120 = !DILocation(line: 30, column: 12, scope: !1103)
!1121 = !DILocation(line: 31, column: 1, scope: !1103)
!1122 = distinct !DISubprogram(name: "inat_is_vex_prefix", scope: !1047, file: !1047, line: 139, type: !1051, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1123)
!1123 = !{!1124}
!1124 = !DILocalVariable(name: "attr", arg: 1, scope: !1122, file: !1047, line: 139, type: !60)
!1125 = !DILocation(line: 139, column: 50, scope: !1122)
!1126 = !DILocation(line: 141, column: 7, scope: !1122)
!1127 = !DILocation(line: 142, column: 9, scope: !1122)
!1128 = !DILocation(line: 142, column: 14, scope: !1122)
!1129 = !DILocation(line: 142, column: 31, scope: !1122)
!1130 = !DILocation(line: 142, column: 34, scope: !1122)
!1131 = !DILocation(line: 142, column: 39, scope: !1122)
!1132 = !DILocation(line: 142, column: 56, scope: !1122)
!1133 = !DILocation(line: 143, column: 9, scope: !1122)
!1134 = !DILocation(line: 143, column: 14, scope: !1122)
!1135 = !DILocation(line: 142, column: 2, scope: !1122)
!1136 = distinct !DISubprogram(name: "inat_is_evex_prefix", scope: !1047, file: !1047, line: 146, type: !1051, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!1137 = !{!1138}
!1138 = !DILocalVariable(name: "attr", arg: 1, scope: !1136, file: !1047, line: 146, type: !60)
!1139 = !DILocation(line: 146, column: 51, scope: !1136)
!1140 = !DILocation(line: 148, column: 10, scope: !1136)
!1141 = !DILocation(line: 148, column: 15, scope: !1136)
!1142 = !DILocation(line: 148, column: 32, scope: !1136)
!1143 = !DILocation(line: 148, column: 2, scope: !1136)
!1144 = distinct !DISubprogram(name: "inat_is_vex3_prefix", scope: !1047, file: !1047, line: 151, type: !1051, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1145)
!1145 = !{!1146}
!1146 = !DILocalVariable(name: "attr", arg: 1, scope: !1144, file: !1047, line: 151, type: !60)
!1147 = !DILocation(line: 151, column: 51, scope: !1144)
!1148 = !DILocation(line: 153, column: 10, scope: !1144)
!1149 = !DILocation(line: 153, column: 15, scope: !1144)
!1150 = !DILocation(line: 153, column: 32, scope: !1144)
!1151 = !DILocation(line: 153, column: 2, scope: !1144)
!1152 = !DILocation(line: 262, column: 34, scope: !189)
!1153 = !DILocation(line: 264, column: 2, scope: !189)
!1154 = !DILocation(line: 264, column: 21, scope: !189)
!1155 = !DILocation(line: 264, column: 31, scope: !189)
!1156 = !DILocation(line: 264, column: 37, scope: !189)
!1157 = !DILocation(line: 265, column: 2, scope: !189)
!1158 = !DILocation(line: 265, column: 6, scope: !189)
!1159 = !DILocation(line: 265, column: 14, scope: !189)
!1160 = !DILocation(line: 266, column: 2, scope: !189)
!1161 = !DILocation(line: 266, column: 14, scope: !189)
!1162 = !DILocation(line: 268, column: 6, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !189, file: !3, line: 268, column: 6)
!1164 = !DILocation(line: 268, column: 14, scope: !1163)
!1165 = !DILocation(line: 268, column: 6, scope: !189)
!1166 = !DILocation(line: 269, column: 3, scope: !1163)
!1167 = !DILocation(line: 271, column: 7, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !189, file: !3, line: 271, column: 6)
!1169 = !DILocation(line: 271, column: 13, scope: !1168)
!1170 = !DILocation(line: 271, column: 22, scope: !1168)
!1171 = !DILocation(line: 271, column: 6, scope: !189)
!1172 = !DILocation(line: 272, column: 27, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 271, column: 27)
!1174 = !DILocation(line: 272, column: 9, scope: !1173)
!1175 = !DILocation(line: 272, column: 7, scope: !1173)
!1176 = !DILocation(line: 273, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 273, column: 7)
!1178 = !DILocation(line: 273, column: 7, scope: !1173)
!1179 = !DILocation(line: 274, column: 11, scope: !1177)
!1180 = !DILocation(line: 274, column: 4, scope: !1177)
!1181 = !DILocation(line: 275, column: 2, scope: !1173)
!1182 = !DILocation(line: 278, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !198, file: !3, line: 278, column: 7)
!1184 = !DILocation(line: 278, column: 7, scope: !198)
!1185 = !DILocation(line: 278, column: 7, scope: !197)
!1186 = !DILocation(line: 278, column: 7, scope: !200)
!1187 = !DILocation(line: 278, column: 7, scope: !202)
!1188 = !DILocation(line: 278, column: 5, scope: !189)
!1189 = !DILocation(line: 279, column: 16, scope: !189)
!1190 = !DILocation(line: 279, column: 27, scope: !189)
!1191 = !DILocation(line: 279, column: 2, scope: !189)
!1192 = !DILocation(line: 280, column: 2, scope: !189)
!1193 = !DILocation(line: 280, column: 10, scope: !189)
!1194 = !DILocation(line: 280, column: 17, scope: !189)
!1195 = !DILocation(line: 283, column: 18, scope: !205)
!1196 = !DILocation(line: 283, column: 6, scope: !205)
!1197 = !DILocation(line: 283, column: 6, scope: !189)
!1198 = !DILocation(line: 284, column: 3, scope: !204)
!1199 = !DILocation(line: 284, column: 15, scope: !204)
!1200 = !DILocation(line: 284, column: 18, scope: !204)
!1201 = !DILocation(line: 285, column: 23, scope: !204)
!1202 = !DILocation(line: 285, column: 7, scope: !204)
!1203 = !DILocation(line: 285, column: 5, scope: !204)
!1204 = !DILocation(line: 286, column: 23, scope: !204)
!1205 = !DILocation(line: 286, column: 7, scope: !204)
!1206 = !DILocation(line: 286, column: 5, scope: !204)
!1207 = !DILocation(line: 287, column: 39, scope: !204)
!1208 = !DILocation(line: 287, column: 43, scope: !204)
!1209 = !DILocation(line: 287, column: 46, scope: !204)
!1210 = !DILocation(line: 287, column: 16, scope: !204)
!1211 = !DILocation(line: 287, column: 3, scope: !204)
!1212 = !DILocation(line: 287, column: 9, scope: !204)
!1213 = !DILocation(line: 287, column: 14, scope: !204)
!1214 = !DILocation(line: 288, column: 23, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !204, file: !3, line: 288, column: 7)
!1216 = !DILocation(line: 288, column: 29, scope: !1215)
!1217 = !DILocation(line: 288, column: 8, scope: !1215)
!1218 = !DILocation(line: 288, column: 35, scope: !1215)
!1219 = !DILocation(line: 288, column: 52, scope: !1215)
!1220 = !DILocation(line: 288, column: 39, scope: !1215)
!1221 = !DILocation(line: 288, column: 59, scope: !1215)
!1222 = !DILocation(line: 289, column: 25, scope: !1215)
!1223 = !DILocation(line: 289, column: 31, scope: !1215)
!1224 = !DILocation(line: 289, column: 9, scope: !1215)
!1225 = !DILocation(line: 289, column: 37, scope: !1215)
!1226 = !DILocation(line: 290, column: 23, scope: !1215)
!1227 = !DILocation(line: 290, column: 29, scope: !1215)
!1228 = !DILocation(line: 290, column: 9, scope: !1215)
!1229 = !DILocation(line: 288, column: 7, scope: !204)
!1230 = !DILocation(line: 292, column: 4, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 290, column: 37)
!1232 = !DILocation(line: 292, column: 10, scope: !1231)
!1233 = !DILocation(line: 292, column: 15, scope: !1231)
!1234 = !DILocation(line: 293, column: 4, scope: !1231)
!1235 = !DILocation(line: 296, column: 3, scope: !204)
!1236 = !DILocation(line: 297, column: 2, scope: !205)
!1237 = !DILocation(line: 299, column: 41, scope: !189)
!1238 = !DILocation(line: 299, column: 15, scope: !189)
!1239 = !DILocation(line: 299, column: 2, scope: !189)
!1240 = !DILocation(line: 299, column: 8, scope: !189)
!1241 = !DILocation(line: 299, column: 13, scope: !189)
!1242 = !DILocation(line: 300, column: 2, scope: !189)
!1243 = !DILocation(line: 300, column: 24, scope: !189)
!1244 = !DILocation(line: 300, column: 30, scope: !189)
!1245 = !DILocation(line: 300, column: 9, scope: !189)
!1246 = !DILocation(line: 302, column: 8, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !209, file: !3, line: 302, column: 8)
!1248 = !DILocation(line: 302, column: 8, scope: !209)
!1249 = !DILocation(line: 302, column: 8, scope: !208)
!1250 = !DILocation(line: 302, column: 8, scope: !212)
!1251 = !DILocation(line: 302, column: 8, scope: !219)
!1252 = !DILocation(line: 302, column: 6, scope: !210)
!1253 = !DILocation(line: 303, column: 37, scope: !210)
!1254 = !DILocation(line: 303, column: 3, scope: !210)
!1255 = !DILocation(line: 303, column: 11, scope: !210)
!1256 = !DILocation(line: 303, column: 17, scope: !210)
!1257 = !DILocation(line: 303, column: 25, scope: !210)
!1258 = !DILocation(line: 303, column: 31, scope: !210)
!1259 = !DILocation(line: 303, column: 35, scope: !210)
!1260 = !DILocation(line: 304, column: 32, scope: !210)
!1261 = !DILocation(line: 304, column: 12, scope: !210)
!1262 = !DILocation(line: 304, column: 10, scope: !210)
!1263 = !DILocation(line: 305, column: 42, scope: !210)
!1264 = !DILocation(line: 305, column: 46, scope: !210)
!1265 = !DILocation(line: 305, column: 54, scope: !210)
!1266 = !DILocation(line: 305, column: 60, scope: !210)
!1267 = !DILocation(line: 305, column: 16, scope: !210)
!1268 = !DILocation(line: 305, column: 3, scope: !210)
!1269 = !DILocation(line: 305, column: 9, scope: !210)
!1270 = !DILocation(line: 305, column: 14, scope: !210)
!1271 = distinct !{!1271, !1242, !1272, !748, !749}
!1272 = !DILocation(line: 306, column: 2, scope: !189)
!1273 = !DILocation(line: 308, column: 20, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !189, file: !3, line: 308, column: 6)
!1275 = !DILocation(line: 308, column: 26, scope: !1274)
!1276 = !DILocation(line: 308, column: 6, scope: !1274)
!1277 = !DILocation(line: 308, column: 6, scope: !189)
!1278 = !DILocation(line: 310, column: 3, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 308, column: 33)
!1280 = !DILocation(line: 310, column: 9, scope: !1279)
!1281 = !DILocation(line: 310, column: 14, scope: !1279)
!1282 = !DILocation(line: 311, column: 3, scope: !1279)
!1283 = !DILocation(line: 308, column: 30, scope: !1274)
!1284 = !DILocation(line: 313, column: 1, scope: !189)
!1285 = !DILocation(line: 314, column: 2, scope: !189)
!1286 = !DILocation(line: 314, column: 10, scope: !189)
!1287 = !DILocation(line: 314, column: 14, scope: !189)
!1288 = !DILocation(line: 315, column: 2, scope: !189)
!1289 = !DILocation(line: 317, column: 1, scope: !189)
!1290 = !DILocation(line: 318, column: 2, scope: !189)
!1291 = !DILocation(line: 319, column: 1, scope: !189)
!1292 = distinct !DISubprogram(name: "insn_is_avx", scope: !6, file: !6, line: 164, type: !18, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1293)
!1293 = !{!1294}
!1294 = !DILocalVariable(name: "insn", arg: 1, scope: !1292, file: !6, line: 164, type: !21)
!1295 = !DILocation(line: 164, column: 44, scope: !1292)
!1296 = !DILocation(line: 166, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !6, line: 166, column: 6)
!1298 = !DILocation(line: 166, column: 13, scope: !1297)
!1299 = !DILocation(line: 166, column: 22, scope: !1297)
!1300 = !DILocation(line: 166, column: 6, scope: !1292)
!1301 = !DILocation(line: 167, column: 21, scope: !1297)
!1302 = !DILocation(line: 167, column: 3, scope: !1297)
!1303 = !DILocation(line: 168, column: 10, scope: !1292)
!1304 = !DILocation(line: 168, column: 16, scope: !1292)
!1305 = !DILocation(line: 168, column: 27, scope: !1292)
!1306 = !DILocation(line: 168, column: 33, scope: !1292)
!1307 = !DILocation(line: 168, column: 2, scope: !1292)
!1308 = distinct !DISubprogram(name: "insn_vex_m_bits", scope: !6, file: !6, line: 183, type: !1309, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!35, !21}
!1311 = !{!1312}
!1312 = !DILocalVariable(name: "insn", arg: 1, scope: !1308, file: !6, line: 183, type: !21)
!1313 = !DILocation(line: 183, column: 56, scope: !1308)
!1314 = !DILocation(line: 185, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !6, line: 185, column: 6)
!1316 = !DILocation(line: 185, column: 12, scope: !1315)
!1317 = !DILocation(line: 185, column: 23, scope: !1315)
!1318 = !DILocation(line: 185, column: 30, scope: !1315)
!1319 = !DILocation(line: 185, column: 6, scope: !1308)
!1320 = !DILocation(line: 186, column: 3, scope: !1315)
!1321 = !DILocation(line: 187, column: 11, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1315, file: !6, line: 187, column: 11)
!1323 = !DILocation(line: 187, column: 17, scope: !1322)
!1324 = !DILocation(line: 187, column: 28, scope: !1322)
!1325 = !DILocation(line: 187, column: 35, scope: !1322)
!1326 = !DILocation(line: 187, column: 11, scope: !1315)
!1327 = !DILocation(line: 188, column: 10, scope: !1322)
!1328 = !DILocation(line: 188, column: 3, scope: !1322)
!1329 = !DILocation(line: 190, column: 10, scope: !1322)
!1330 = !DILocation(line: 190, column: 3, scope: !1322)
!1331 = !DILocation(line: 191, column: 1, scope: !1308)
!1332 = distinct !DISubprogram(name: "insn_vex_p_bits", scope: !6, file: !6, line: 193, type: !1309, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1333)
!1333 = !{!1334}
!1334 = !DILocalVariable(name: "insn", arg: 1, scope: !1332, file: !6, line: 193, type: !21)
!1335 = !DILocation(line: 193, column: 56, scope: !1332)
!1336 = !DILocation(line: 195, column: 6, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !6, line: 195, column: 6)
!1338 = !DILocation(line: 195, column: 12, scope: !1337)
!1339 = !DILocation(line: 195, column: 23, scope: !1337)
!1340 = !DILocation(line: 195, column: 30, scope: !1337)
!1341 = !DILocation(line: 195, column: 6, scope: !1332)
!1342 = !DILocation(line: 196, column: 10, scope: !1337)
!1343 = !DILocation(line: 196, column: 3, scope: !1337)
!1344 = !DILocation(line: 198, column: 10, scope: !1337)
!1345 = !DILocation(line: 198, column: 3, scope: !1337)
!1346 = !DILocation(line: 199, column: 1, scope: !1332)
!1347 = !DISubprogram(name: "inat_get_avx_attribute", scope: !1047, file: !1047, line: 105, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!60, !35, !35, !35}
!1350 = distinct !DISubprogram(name: "inat_must_evex", scope: !1047, file: !1047, line: 226, type: !1051, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1351)
!1351 = !{!1352}
!1352 = !DILocalVariable(name: "attr", arg: 1, scope: !1350, file: !1047, line: 226, type: !60)
!1353 = !DILocation(line: 226, column: 46, scope: !1350)
!1354 = !DILocation(line: 228, column: 9, scope: !1350)
!1355 = !DILocation(line: 228, column: 14, scope: !1350)
!1356 = !DILocation(line: 228, column: 2, scope: !1350)
!1357 = distinct !DISubprogram(name: "insn_is_evex", scope: !6, file: !6, line: 171, type: !18, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1358)
!1358 = !{!1359}
!1359 = !DILocalVariable(name: "insn", arg: 1, scope: !1357, file: !6, line: 171, type: !21)
!1360 = !DILocation(line: 171, column: 45, scope: !1357)
!1361 = !DILocation(line: 173, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !6, line: 173, column: 6)
!1363 = !DILocation(line: 173, column: 13, scope: !1362)
!1364 = !DILocation(line: 173, column: 22, scope: !1362)
!1365 = !DILocation(line: 173, column: 6, scope: !1357)
!1366 = !DILocation(line: 174, column: 21, scope: !1362)
!1367 = !DILocation(line: 174, column: 3, scope: !1362)
!1368 = !DILocation(line: 175, column: 10, scope: !1357)
!1369 = !DILocation(line: 175, column: 16, scope: !1357)
!1370 = !DILocation(line: 175, column: 27, scope: !1357)
!1371 = !DILocation(line: 175, column: 34, scope: !1357)
!1372 = !DILocation(line: 175, column: 2, scope: !1357)
!1373 = distinct !DISubprogram(name: "inat_accept_vex", scope: !1047, file: !1047, line: 216, type: !1051, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1374)
!1374 = !{!1375}
!1375 = !DILocalVariable(name: "attr", arg: 1, scope: !1373, file: !1047, line: 216, type: !60)
!1376 = !DILocation(line: 216, column: 47, scope: !1373)
!1377 = !DILocation(line: 218, column: 9, scope: !1373)
!1378 = !DILocation(line: 218, column: 14, scope: !1373)
!1379 = !DILocation(line: 218, column: 2, scope: !1373)
!1380 = distinct !DISubprogram(name: "inat_is_group", scope: !1047, file: !1047, line: 166, type: !1051, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1381)
!1381 = !{!1382}
!1382 = !DILocalVariable(name: "attr", arg: 1, scope: !1380, file: !1047, line: 166, type: !60)
!1383 = !DILocation(line: 166, column: 45, scope: !1380)
!1384 = !DILocation(line: 168, column: 9, scope: !1380)
!1385 = !DILocation(line: 168, column: 14, scope: !1380)
!1386 = !DILocation(line: 168, column: 2, scope: !1380)
!1387 = distinct !DISubprogram(name: "inat_is_escape", scope: !1047, file: !1047, line: 156, type: !1051, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1388)
!1388 = !{!1389}
!1389 = !DILocalVariable(name: "attr", arg: 1, scope: !1387, file: !1047, line: 156, type: !60)
!1390 = !DILocation(line: 156, column: 46, scope: !1387)
!1391 = !DILocation(line: 158, column: 9, scope: !1387)
!1392 = !DILocation(line: 158, column: 14, scope: !1387)
!1393 = !DILocation(line: 158, column: 2, scope: !1387)
!1394 = distinct !DISubprogram(name: "insn_last_prefix_id", scope: !6, file: !6, line: 202, type: !18, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1395)
!1395 = !{!1396}
!1396 = !DILocalVariable(name: "insn", arg: 1, scope: !1394, file: !6, line: 202, type: !21)
!1397 = !DILocation(line: 202, column: 52, scope: !1394)
!1398 = !DILocation(line: 204, column: 18, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !6, line: 204, column: 6)
!1400 = !DILocation(line: 204, column: 6, scope: !1399)
!1401 = !DILocation(line: 204, column: 6, scope: !1394)
!1402 = !DILocation(line: 205, column: 26, scope: !1399)
!1403 = !DILocation(line: 205, column: 10, scope: !1399)
!1404 = !DILocation(line: 205, column: 3, scope: !1399)
!1405 = !DILocation(line: 207, column: 6, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1394, file: !6, line: 207, column: 6)
!1407 = !DILocation(line: 207, column: 12, scope: !1406)
!1408 = !DILocation(line: 207, column: 21, scope: !1406)
!1409 = !DILocation(line: 207, column: 6, scope: !1394)
!1410 = !DILocation(line: 208, column: 34, scope: !1406)
!1411 = !DILocation(line: 208, column: 40, scope: !1406)
!1412 = !DILocation(line: 208, column: 49, scope: !1406)
!1413 = !DILocation(line: 208, column: 10, scope: !1406)
!1414 = !DILocation(line: 208, column: 3, scope: !1406)
!1415 = !DILocation(line: 210, column: 2, scope: !1394)
!1416 = !DILocation(line: 211, column: 1, scope: !1394)
!1417 = !DISubprogram(name: "inat_get_escape_attribute", scope: !1047, file: !1047, line: 99, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!60, !35, !20, !60}
!1420 = distinct !DISubprogram(name: "inat_must_vex", scope: !1047, file: !1047, line: 221, type: !1051, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1421 = !{!1422}
!1422 = !DILocalVariable(name: "attr", arg: 1, scope: !1420, file: !1047, line: 221, type: !60)
!1423 = !DILocation(line: 221, column: 45, scope: !1420)
!1424 = !DILocation(line: 223, column: 9, scope: !1420)
!1425 = !DILocation(line: 223, column: 14, scope: !1420)
!1426 = !DILocation(line: 223, column: 2, scope: !1420)
!1427 = !DILocation(line: 333, column: 33, scope: !227)
!1428 = !DILocation(line: 335, column: 2, scope: !227)
!1429 = !DILocation(line: 335, column: 21, scope: !227)
!1430 = !DILocation(line: 335, column: 30, scope: !227)
!1431 = !DILocation(line: 335, column: 36, scope: !227)
!1432 = !DILocation(line: 336, column: 2, scope: !227)
!1433 = !DILocation(line: 336, column: 14, scope: !227)
!1434 = !DILocation(line: 336, column: 22, scope: !227)
!1435 = !DILocation(line: 337, column: 2, scope: !227)
!1436 = !DILocation(line: 337, column: 6, scope: !227)
!1437 = !DILocation(line: 339, column: 6, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !227, file: !3, line: 339, column: 6)
!1439 = !DILocation(line: 339, column: 13, scope: !1438)
!1440 = !DILocation(line: 339, column: 6, scope: !227)
!1441 = !DILocation(line: 340, column: 3, scope: !1438)
!1442 = !DILocation(line: 342, column: 7, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !227, file: !3, line: 342, column: 6)
!1444 = !DILocation(line: 342, column: 13, scope: !1443)
!1445 = !DILocation(line: 342, column: 20, scope: !1443)
!1446 = !DILocation(line: 342, column: 6, scope: !227)
!1447 = !DILocation(line: 343, column: 25, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 342, column: 25)
!1449 = !DILocation(line: 343, column: 9, scope: !1448)
!1450 = !DILocation(line: 343, column: 7, scope: !1448)
!1451 = !DILocation(line: 344, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 344, column: 7)
!1453 = !DILocation(line: 344, column: 7, scope: !1448)
!1454 = !DILocation(line: 345, column: 11, scope: !1452)
!1455 = !DILocation(line: 345, column: 4, scope: !1452)
!1456 = !DILocation(line: 346, column: 2, scope: !1448)
!1457 = !DILocation(line: 348, column: 21, scope: !238)
!1458 = !DILocation(line: 348, column: 27, scope: !238)
!1459 = !DILocation(line: 348, column: 6, scope: !238)
!1460 = !DILocation(line: 348, column: 6, scope: !227)
!1461 = !DILocation(line: 349, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !236, file: !3, line: 349, column: 9)
!1463 = !DILocation(line: 349, column: 9, scope: !236)
!1464 = !DILocation(line: 349, column: 9, scope: !235)
!1465 = !DILocation(line: 349, column: 9, scope: !240)
!1466 = !DILocation(line: 349, column: 9, scope: !242)
!1467 = !DILocation(line: 349, column: 7, scope: !237)
!1468 = !DILocation(line: 350, column: 18, scope: !237)
!1469 = !DILocation(line: 350, column: 25, scope: !237)
!1470 = !DILocation(line: 350, column: 3, scope: !237)
!1471 = !DILocation(line: 351, column: 21, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !237, file: !3, line: 351, column: 7)
!1473 = !DILocation(line: 351, column: 27, scope: !1472)
!1474 = !DILocation(line: 351, column: 7, scope: !1472)
!1475 = !DILocation(line: 351, column: 7, scope: !237)
!1476 = !DILocation(line: 352, column: 33, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 351, column: 34)
!1478 = !DILocation(line: 352, column: 13, scope: !1477)
!1479 = !DILocation(line: 352, column: 11, scope: !1477)
!1480 = !DILocation(line: 353, column: 42, scope: !1477)
!1481 = !DILocation(line: 353, column: 47, scope: !1477)
!1482 = !DILocation(line: 354, column: 14, scope: !1477)
!1483 = !DILocation(line: 354, column: 20, scope: !1477)
!1484 = !DILocation(line: 353, column: 17, scope: !1477)
!1485 = !DILocation(line: 353, column: 4, scope: !1477)
!1486 = !DILocation(line: 353, column: 10, scope: !1477)
!1487 = !DILocation(line: 353, column: 15, scope: !1477)
!1488 = !DILocation(line: 355, column: 20, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 355, column: 8)
!1490 = !DILocation(line: 355, column: 8, scope: !1489)
!1491 = !DILocation(line: 355, column: 26, scope: !1489)
!1492 = !DILocation(line: 355, column: 46, scope: !1489)
!1493 = !DILocation(line: 355, column: 52, scope: !1489)
!1494 = !DILocation(line: 355, column: 30, scope: !1489)
!1495 = !DILocation(line: 355, column: 8, scope: !1477)
!1496 = !DILocation(line: 357, column: 5, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 355, column: 59)
!1498 = !DILocation(line: 357, column: 11, scope: !1497)
!1499 = !DILocation(line: 357, column: 16, scope: !1497)
!1500 = !DILocation(line: 358, column: 5, scope: !1497)
!1501 = !DILocation(line: 360, column: 3, scope: !1477)
!1502 = !DILocation(line: 361, column: 2, scope: !237)
!1503 = !DILocation(line: 363, column: 6, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !227, file: !3, line: 363, column: 6)
!1505 = !DILocation(line: 363, column: 12, scope: !1504)
!1506 = !DILocation(line: 363, column: 19, scope: !1504)
!1507 = !DILocation(line: 363, column: 38, scope: !1504)
!1508 = !DILocation(line: 363, column: 44, scope: !1504)
!1509 = !DILocation(line: 363, column: 22, scope: !1504)
!1510 = !DILocation(line: 363, column: 6, scope: !227)
!1511 = !DILocation(line: 364, column: 3, scope: !1504)
!1512 = !DILocation(line: 364, column: 9, scope: !1504)
!1513 = !DILocation(line: 364, column: 20, scope: !1504)
!1514 = !DILocation(line: 366, column: 2, scope: !227)
!1515 = !DILocation(line: 366, column: 9, scope: !227)
!1516 = !DILocation(line: 366, column: 13, scope: !227)
!1517 = !DILocation(line: 367, column: 2, scope: !227)
!1518 = !DILocation(line: 369, column: 1, scope: !227)
!1519 = !DILocation(line: 370, column: 2, scope: !227)
!1520 = !DILocation(line: 371, column: 1, scope: !227)
!1521 = distinct !DISubprogram(name: "inat_has_modrm", scope: !1047, file: !1047, line: 191, type: !1051, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1522)
!1522 = !{!1523}
!1523 = !DILocalVariable(name: "attr", arg: 1, scope: !1521, file: !1047, line: 191, type: !60)
!1524 = !DILocation(line: 191, column: 46, scope: !1521)
!1525 = !DILocation(line: 193, column: 9, scope: !1521)
!1526 = !DILocation(line: 193, column: 14, scope: !1521)
!1527 = !DILocation(line: 193, column: 2, scope: !1521)
!1528 = !DISubprogram(name: "inat_get_group_attribute", scope: !1047, file: !1047, line: 102, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1529 = distinct !DISubprogram(name: "inat_is_force64", scope: !1047, file: !1047, line: 196, type: !1051, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1530)
!1530 = !{!1531}
!1531 = !DILocalVariable(name: "attr", arg: 1, scope: !1529, file: !1047, line: 196, type: !60)
!1532 = !DILocation(line: 196, column: 47, scope: !1529)
!1533 = !DILocation(line: 198, column: 9, scope: !1529)
!1534 = !DILocation(line: 198, column: 14, scope: !1529)
!1535 = !DILocation(line: 198, column: 2, scope: !1529)
!1536 = distinct !DISubprogram(name: "insn_rip_relative", scope: !3, file: !3, line: 381, type: !18, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1537)
!1537 = !{!1538, !1539, !1540}
!1538 = !DILocalVariable(name: "insn", arg: 1, scope: !1536, file: !3, line: 381, type: !21)
!1539 = !DILocalVariable(name: "modrm", scope: !1536, file: !3, line: 383, type: !73)
!1540 = !DILocalVariable(name: "ret", scope: !1536, file: !3, line: 384, type: !20)
!1541 = !DILocation(line: 381, column: 36, scope: !1536)
!1542 = !DILocation(line: 383, column: 2, scope: !1536)
!1543 = !DILocation(line: 383, column: 21, scope: !1536)
!1544 = !DILocation(line: 383, column: 30, scope: !1536)
!1545 = !DILocation(line: 383, column: 36, scope: !1536)
!1546 = !DILocation(line: 384, column: 2, scope: !1536)
!1547 = !DILocation(line: 384, column: 6, scope: !1536)
!1548 = !DILocation(line: 386, column: 7, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 386, column: 6)
!1550 = !DILocation(line: 386, column: 13, scope: !1549)
!1551 = !DILocation(line: 386, column: 6, scope: !1536)
!1552 = !DILocation(line: 387, column: 3, scope: !1549)
!1553 = !DILocation(line: 389, column: 7, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 389, column: 6)
!1555 = !DILocation(line: 389, column: 14, scope: !1554)
!1556 = !DILocation(line: 389, column: 6, scope: !1536)
!1557 = !DILocation(line: 390, column: 24, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 389, column: 19)
!1559 = !DILocation(line: 390, column: 9, scope: !1558)
!1560 = !DILocation(line: 390, column: 7, scope: !1558)
!1561 = !DILocation(line: 391, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 391, column: 7)
!1563 = !DILocation(line: 391, column: 7, scope: !1558)
!1564 = !DILocation(line: 392, column: 4, scope: !1562)
!1565 = !DILocation(line: 393, column: 2, scope: !1558)
!1566 = !DILocation(line: 398, column: 10, scope: !1536)
!1567 = !DILocation(line: 398, column: 17, scope: !1536)
!1568 = !DILocation(line: 398, column: 24, scope: !1536)
!1569 = !DILocation(line: 398, column: 28, scope: !1536)
!1570 = !DILocation(line: 398, column: 35, scope: !1536)
!1571 = !DILocation(line: 398, column: 44, scope: !1536)
!1572 = !DILocation(line: 398, column: 52, scope: !1536)
!1573 = !DILocation(line: 0, scope: !1536)
!1574 = !DILocation(line: 398, column: 2, scope: !1536)
!1575 = !DILocation(line: 399, column: 1, scope: !1536)
!1576 = !DILocation(line: 412, column: 31, scope: !249)
!1577 = !DILocation(line: 414, column: 2, scope: !249)
!1578 = !DILocation(line: 414, column: 14, scope: !249)
!1579 = !DILocation(line: 415, column: 2, scope: !249)
!1580 = !DILocation(line: 415, column: 6, scope: !249)
!1581 = !DILocation(line: 417, column: 6, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !249, file: !3, line: 417, column: 6)
!1583 = !DILocation(line: 417, column: 12, scope: !1582)
!1584 = !DILocation(line: 417, column: 16, scope: !1582)
!1585 = !DILocation(line: 417, column: 6, scope: !249)
!1586 = !DILocation(line: 418, column: 3, scope: !1582)
!1587 = !DILocation(line: 420, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !249, file: !3, line: 420, column: 6)
!1589 = !DILocation(line: 420, column: 13, scope: !1588)
!1590 = !DILocation(line: 420, column: 19, scope: !1588)
!1591 = !DILocation(line: 420, column: 6, scope: !249)
!1592 = !DILocation(line: 421, column: 24, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 420, column: 24)
!1594 = !DILocation(line: 421, column: 9, scope: !1593)
!1595 = !DILocation(line: 421, column: 7, scope: !1593)
!1596 = !DILocation(line: 422, column: 7, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 422, column: 7)
!1598 = !DILocation(line: 422, column: 7, scope: !1593)
!1599 = !DILocation(line: 423, column: 11, scope: !1597)
!1600 = !DILocation(line: 423, column: 4, scope: !1597)
!1601 = !DILocation(line: 424, column: 2, scope: !1593)
!1602 = !DILocation(line: 426, column: 6, scope: !260)
!1603 = !DILocation(line: 426, column: 12, scope: !260)
!1604 = !DILocation(line: 426, column: 18, scope: !260)
!1605 = !DILocation(line: 426, column: 6, scope: !249)
!1606 = !DILocation(line: 427, column: 11, scope: !259)
!1607 = !DILocation(line: 427, column: 17, scope: !259)
!1608 = !DILocation(line: 427, column: 23, scope: !259)
!1609 = !DILocation(line: 427, column: 9, scope: !259)
!1610 = !DILocation(line: 428, column: 7, scope: !258)
!1611 = !DILocation(line: 428, column: 13, scope: !258)
!1612 = !DILocation(line: 428, column: 24, scope: !258)
!1613 = !DILocation(line: 428, column: 29, scope: !258)
!1614 = !DILocation(line: 429, column: 7, scope: !258)
!1615 = !DILocation(line: 429, column: 28, scope: !258)
!1616 = !DILocation(line: 429, column: 33, scope: !258)
!1617 = !DILocation(line: 429, column: 36, scope: !258)
!1618 = !DILocation(line: 429, column: 56, scope: !258)
!1619 = !DILocation(line: 428, column: 7, scope: !259)
!1620 = !DILocation(line: 430, column: 20, scope: !257)
!1621 = !DILocation(line: 430, column: 26, scope: !257)
!1622 = !DILocation(line: 431, column: 12, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !256, file: !3, line: 431, column: 12)
!1624 = !DILocation(line: 431, column: 12, scope: !256)
!1625 = !DILocation(line: 431, column: 12, scope: !255)
!1626 = !DILocation(line: 431, column: 12, scope: !262)
!1627 = !DILocation(line: 431, column: 12, scope: !264)
!1628 = !DILocation(line: 431, column: 12, scope: !257)
!1629 = !DILocation(line: 430, column: 4, scope: !257)
!1630 = !DILocation(line: 432, column: 3, scope: !257)
!1631 = !DILocation(line: 433, column: 2, scope: !259)
!1632 = !DILocation(line: 434, column: 2, scope: !249)
!1633 = !DILocation(line: 434, column: 8, scope: !249)
!1634 = !DILocation(line: 434, column: 12, scope: !249)
!1635 = !DILocation(line: 434, column: 16, scope: !249)
!1636 = !DILocation(line: 436, column: 2, scope: !249)
!1637 = !DILocation(line: 438, column: 1, scope: !249)
!1638 = !DILocation(line: 439, column: 2, scope: !249)
!1639 = !DILocation(line: 440, column: 1, scope: !249)
!1640 = !DILocation(line: 455, column: 40, scope: !271)
!1641 = !DILocation(line: 457, column: 2, scope: !271)
!1642 = !DILocation(line: 457, column: 14, scope: !271)
!1643 = !DILocation(line: 457, column: 19, scope: !271)
!1644 = !DILocation(line: 457, column: 23, scope: !271)
!1645 = !DILocation(line: 458, column: 2, scope: !271)
!1646 = !DILocation(line: 458, column: 6, scope: !271)
!1647 = !DILocation(line: 460, column: 6, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !271, file: !3, line: 460, column: 6)
!1649 = !DILocation(line: 460, column: 12, scope: !1648)
!1650 = !DILocation(line: 460, column: 25, scope: !1648)
!1651 = !DILocation(line: 460, column: 6, scope: !271)
!1652 = !DILocation(line: 461, column: 3, scope: !1648)
!1653 = !DILocation(line: 463, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !271, file: !3, line: 463, column: 6)
!1655 = !DILocation(line: 463, column: 13, scope: !1654)
!1656 = !DILocation(line: 463, column: 17, scope: !1654)
!1657 = !DILocation(line: 463, column: 6, scope: !271)
!1658 = !DILocation(line: 464, column: 22, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 463, column: 22)
!1660 = !DILocation(line: 464, column: 9, scope: !1659)
!1661 = !DILocation(line: 464, column: 7, scope: !1659)
!1662 = !DILocation(line: 465, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 465, column: 7)
!1664 = !DILocation(line: 465, column: 7, scope: !1659)
!1665 = !DILocation(line: 466, column: 11, scope: !1663)
!1666 = !DILocation(line: 466, column: 4, scope: !1663)
!1667 = !DILocation(line: 467, column: 2, scope: !1659)
!1668 = !DILocation(line: 469, column: 6, scope: !284)
!1669 = !DILocation(line: 469, column: 12, scope: !284)
!1670 = !DILocation(line: 469, column: 18, scope: !284)
!1671 = !DILocation(line: 469, column: 6, scope: !271)
!1672 = !DILocation(line: 487, column: 9, scope: !283)
!1673 = !DILocation(line: 487, column: 7, scope: !283)
!1674 = !DILocation(line: 488, column: 8, scope: !283)
!1675 = !DILocation(line: 488, column: 6, scope: !283)
!1676 = !DILocation(line: 489, column: 10, scope: !283)
!1677 = !DILocation(line: 489, column: 8, scope: !283)
!1678 = !DILocation(line: 490, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !283, file: !3, line: 490, column: 7)
!1680 = !DILocation(line: 490, column: 11, scope: !1679)
!1681 = !DILocation(line: 490, column: 7, scope: !283)
!1682 = !DILocation(line: 491, column: 4, scope: !1679)
!1683 = !DILocation(line: 492, column: 7, scope: !282)
!1684 = !DILocation(line: 492, column: 11, scope: !282)
!1685 = !DILocation(line: 492, column: 7, scope: !283)
!1686 = !DILocation(line: 493, column: 20, scope: !281)
!1687 = !DILocation(line: 493, column: 26, scope: !281)
!1688 = !DILocation(line: 494, column: 12, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !280, file: !3, line: 494, column: 12)
!1690 = !DILocation(line: 494, column: 12, scope: !280)
!1691 = !DILocation(line: 494, column: 12, scope: !279)
!1692 = !DILocation(line: 494, column: 12, scope: !287)
!1693 = !DILocation(line: 494, column: 12, scope: !289)
!1694 = !DILocation(line: 494, column: 12, scope: !281)
!1695 = !DILocation(line: 493, column: 4, scope: !281)
!1696 = !DILocation(line: 495, column: 3, scope: !281)
!1697 = !DILocation(line: 495, column: 14, scope: !296)
!1698 = !DILocation(line: 495, column: 20, scope: !296)
!1699 = !DILocation(line: 495, column: 31, scope: !296)
!1700 = !DILocation(line: 495, column: 14, scope: !282)
!1701 = !DILocation(line: 496, column: 9, scope: !294)
!1702 = !DILocation(line: 496, column: 13, scope: !294)
!1703 = !DILocation(line: 496, column: 18, scope: !294)
!1704 = !DILocation(line: 496, column: 21, scope: !294)
!1705 = !DILocation(line: 496, column: 24, scope: !294)
!1706 = !DILocation(line: 496, column: 30, scope: !294)
!1707 = !DILocation(line: 496, column: 33, scope: !294)
!1708 = !DILocation(line: 496, column: 37, scope: !294)
!1709 = !DILocation(line: 496, column: 8, scope: !295)
!1710 = !DILocation(line: 497, column: 21, scope: !293)
!1711 = !DILocation(line: 497, column: 27, scope: !293)
!1712 = !DILocation(line: 498, column: 13, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !292, file: !3, line: 498, column: 13)
!1714 = !DILocation(line: 498, column: 13, scope: !292)
!1715 = !DILocation(line: 498, column: 13, scope: !291)
!1716 = !DILocation(line: 498, column: 13, scope: !299)
!1717 = !DILocation(line: 498, column: 13, scope: !306)
!1718 = !DILocation(line: 498, column: 13, scope: !293)
!1719 = !DILocation(line: 497, column: 5, scope: !293)
!1720 = !DILocation(line: 499, column: 4, scope: !293)
!1721 = !DILocation(line: 500, column: 3, scope: !295)
!1722 = !DILocation(line: 501, column: 9, scope: !311)
!1723 = !DILocation(line: 501, column: 13, scope: !311)
!1724 = !DILocation(line: 501, column: 18, scope: !311)
!1725 = !DILocation(line: 501, column: 21, scope: !311)
!1726 = !DILocation(line: 501, column: 24, scope: !311)
!1727 = !DILocation(line: 501, column: 30, scope: !311)
!1728 = !DILocation(line: 501, column: 33, scope: !311)
!1729 = !DILocation(line: 501, column: 37, scope: !311)
!1730 = !DILocation(line: 501, column: 42, scope: !311)
!1731 = !DILocation(line: 502, column: 9, scope: !311)
!1732 = !DILocation(line: 502, column: 13, scope: !311)
!1733 = !DILocation(line: 502, column: 18, scope: !311)
!1734 = !DILocation(line: 502, column: 21, scope: !311)
!1735 = !DILocation(line: 502, column: 26, scope: !311)
!1736 = !DILocation(line: 501, column: 8, scope: !312)
!1737 = !DILocation(line: 503, column: 21, scope: !310)
!1738 = !DILocation(line: 503, column: 27, scope: !310)
!1739 = !DILocation(line: 504, column: 13, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !309, file: !3, line: 504, column: 13)
!1741 = !DILocation(line: 504, column: 13, scope: !309)
!1742 = !DILocation(line: 504, column: 13, scope: !308)
!1743 = !DILocation(line: 504, column: 13, scope: !314)
!1744 = !DILocation(line: 504, column: 13, scope: !321)
!1745 = !DILocation(line: 503, column: 5, scope: !310)
!1746 = !DILocation(line: 505, column: 4, scope: !310)
!1747 = !DILocation(line: 507, column: 2, scope: !283)
!1748 = !DILocation(line: 508, column: 1, scope: !271)
!1749 = !DILocation(line: 509, column: 2, scope: !271)
!1750 = !DILocation(line: 509, column: 8, scope: !271)
!1751 = !DILocation(line: 509, column: 21, scope: !271)
!1752 = !DILocation(line: 509, column: 25, scope: !271)
!1753 = !DILocation(line: 510, column: 2, scope: !271)
!1754 = !DILocation(line: 512, column: 1, scope: !271)
!1755 = !DILocation(line: 513, column: 2, scope: !271)
!1756 = !DILocation(line: 514, column: 1, scope: !271)
!1757 = !DILocation(line: 624, column: 37, scope: !339)
!1758 = !DILocation(line: 626, column: 2, scope: !339)
!1759 = !DILocation(line: 626, column: 6, scope: !339)
!1760 = !DILocation(line: 628, column: 6, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !339, file: !3, line: 628, column: 6)
!1762 = !DILocation(line: 628, column: 12, scope: !1761)
!1763 = !DILocation(line: 628, column: 22, scope: !1761)
!1764 = !DILocation(line: 628, column: 6, scope: !339)
!1765 = !DILocation(line: 629, column: 3, scope: !1761)
!1766 = !DILocation(line: 631, column: 7, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !339, file: !3, line: 631, column: 6)
!1768 = !DILocation(line: 631, column: 13, scope: !1767)
!1769 = !DILocation(line: 631, column: 26, scope: !1767)
!1770 = !DILocation(line: 631, column: 6, scope: !339)
!1771 = !DILocation(line: 632, column: 31, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 631, column: 31)
!1773 = !DILocation(line: 632, column: 9, scope: !1772)
!1774 = !DILocation(line: 632, column: 7, scope: !1772)
!1775 = !DILocation(line: 633, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 633, column: 7)
!1777 = !DILocation(line: 633, column: 7, scope: !1772)
!1778 = !DILocation(line: 634, column: 11, scope: !1776)
!1779 = !DILocation(line: 634, column: 4, scope: !1776)
!1780 = !DILocation(line: 635, column: 2, scope: !1772)
!1781 = !DILocation(line: 637, column: 23, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !339, file: !3, line: 637, column: 6)
!1783 = !DILocation(line: 637, column: 29, scope: !1782)
!1784 = !DILocation(line: 637, column: 6, scope: !1782)
!1785 = !DILocation(line: 637, column: 6, scope: !339)
!1786 = !DILocation(line: 638, column: 22, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 638, column: 7)
!1788 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 637, column: 36)
!1789 = !DILocation(line: 638, column: 8, scope: !1787)
!1790 = !DILocation(line: 638, column: 7, scope: !1788)
!1791 = !DILocation(line: 639, column: 4, scope: !1787)
!1792 = !DILocation(line: 640, column: 3, scope: !1788)
!1793 = !DILocation(line: 643, column: 26, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !339, file: !3, line: 643, column: 6)
!1795 = !DILocation(line: 643, column: 32, scope: !1794)
!1796 = !DILocation(line: 643, column: 7, scope: !1794)
!1797 = !DILocation(line: 643, column: 6, scope: !339)
!1798 = !DILocation(line: 645, column: 3, scope: !1794)
!1799 = !DILocation(line: 647, column: 30, scope: !339)
!1800 = !DILocation(line: 647, column: 36, scope: !339)
!1801 = !DILocation(line: 647, column: 10, scope: !339)
!1802 = !DILocation(line: 647, column: 2, scope: !339)
!1803 = !DILocation(line: 649, column: 19, scope: !346)
!1804 = !DILocation(line: 649, column: 25, scope: !346)
!1805 = !DILocation(line: 649, column: 36, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !345, file: !3, line: 649, column: 36)
!1807 = !DILocation(line: 649, column: 36, scope: !345)
!1808 = !DILocation(line: 649, column: 36, scope: !344)
!1809 = !DILocation(line: 649, column: 36, scope: !348)
!1810 = !DILocation(line: 649, column: 36, scope: !350)
!1811 = !DILocation(line: 649, column: 36, scope: !346)
!1812 = !DILocation(line: 649, column: 3, scope: !346)
!1813 = !DILocation(line: 650, column: 3, scope: !346)
!1814 = !DILocation(line: 652, column: 19, scope: !346)
!1815 = !DILocation(line: 652, column: 25, scope: !346)
!1816 = !DILocation(line: 652, column: 36, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !353, file: !3, line: 652, column: 36)
!1818 = !DILocation(line: 652, column: 36, scope: !353)
!1819 = !DILocation(line: 652, column: 36, scope: !352)
!1820 = !DILocation(line: 652, column: 36, scope: !355)
!1821 = !DILocation(line: 652, column: 36, scope: !362)
!1822 = !DILocation(line: 652, column: 36, scope: !346)
!1823 = !DILocation(line: 652, column: 3, scope: !346)
!1824 = !DILocation(line: 653, column: 3, scope: !346)
!1825 = !DILocation(line: 655, column: 19, scope: !346)
!1826 = !DILocation(line: 655, column: 25, scope: !346)
!1827 = !DILocation(line: 655, column: 36, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !365, file: !3, line: 655, column: 36)
!1829 = !DILocation(line: 655, column: 36, scope: !365)
!1830 = !DILocation(line: 655, column: 36, scope: !364)
!1831 = !DILocation(line: 655, column: 36, scope: !367)
!1832 = !DILocation(line: 655, column: 36, scope: !374)
!1833 = !DILocation(line: 655, column: 3, scope: !346)
!1834 = !DILocation(line: 656, column: 3, scope: !346)
!1835 = !DILocation(line: 658, column: 19, scope: !346)
!1836 = !DILocation(line: 658, column: 25, scope: !346)
!1837 = !DILocation(line: 658, column: 37, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !377, file: !3, line: 658, column: 37)
!1839 = !DILocation(line: 658, column: 37, scope: !377)
!1840 = !DILocation(line: 658, column: 37, scope: !376)
!1841 = !DILocation(line: 658, column: 37, scope: !379)
!1842 = !DILocation(line: 658, column: 37, scope: !386)
!1843 = !DILocation(line: 658, column: 3, scope: !346)
!1844 = !DILocation(line: 659, column: 19, scope: !346)
!1845 = !DILocation(line: 659, column: 25, scope: !346)
!1846 = !DILocation(line: 659, column: 37, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !389, file: !3, line: 659, column: 37)
!1848 = !DILocation(line: 659, column: 37, scope: !389)
!1849 = !DILocation(line: 659, column: 37, scope: !388)
!1850 = !DILocation(line: 659, column: 37, scope: !391)
!1851 = !DILocation(line: 659, column: 37, scope: !398)
!1852 = !DILocation(line: 659, column: 3, scope: !346)
!1853 = !DILocation(line: 660, column: 3, scope: !346)
!1854 = !DILocation(line: 662, column: 21, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !346, file: !3, line: 662, column: 7)
!1856 = !DILocation(line: 662, column: 8, scope: !1855)
!1857 = !DILocation(line: 662, column: 7, scope: !346)
!1858 = !DILocation(line: 663, column: 4, scope: !1855)
!1859 = !DILocation(line: 664, column: 3, scope: !346)
!1860 = !DILocation(line: 666, column: 21, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !346, file: !3, line: 666, column: 7)
!1862 = !DILocation(line: 666, column: 8, scope: !1861)
!1863 = !DILocation(line: 666, column: 7, scope: !346)
!1864 = !DILocation(line: 667, column: 4, scope: !1861)
!1865 = !DILocation(line: 668, column: 3, scope: !346)
!1866 = !DILocation(line: 670, column: 19, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !346, file: !3, line: 670, column: 7)
!1868 = !DILocation(line: 670, column: 8, scope: !1867)
!1869 = !DILocation(line: 670, column: 7, scope: !346)
!1870 = !DILocation(line: 671, column: 4, scope: !1867)
!1871 = !DILocation(line: 672, column: 3, scope: !346)
!1872 = !DILocation(line: 675, column: 3, scope: !346)
!1873 = !DILocation(line: 677, column: 32, scope: !403)
!1874 = !DILocation(line: 677, column: 38, scope: !403)
!1875 = !DILocation(line: 677, column: 6, scope: !403)
!1876 = !DILocation(line: 677, column: 6, scope: !339)
!1877 = !DILocation(line: 678, column: 19, scope: !402)
!1878 = !DILocation(line: 678, column: 25, scope: !402)
!1879 = !DILocation(line: 678, column: 37, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !401, file: !3, line: 678, column: 37)
!1881 = !DILocation(line: 678, column: 37, scope: !401)
!1882 = !DILocation(line: 678, column: 37, scope: !400)
!1883 = !DILocation(line: 678, column: 37, scope: !405)
!1884 = !DILocation(line: 678, column: 37, scope: !412)
!1885 = !DILocation(line: 678, column: 37, scope: !402)
!1886 = !DILocation(line: 678, column: 3, scope: !402)
!1887 = !DILocation(line: 679, column: 2, scope: !402)
!1888 = !DILocation(line: 677, column: 42, scope: !403)
!1889 = !DILocation(line: 680, column: 1, scope: !339)
!1890 = !DILocation(line: 681, column: 2, scope: !339)
!1891 = !DILocation(line: 681, column: 8, scope: !339)
!1892 = !DILocation(line: 681, column: 18, scope: !339)
!1893 = !DILocation(line: 681, column: 22, scope: !339)
!1894 = !DILocation(line: 682, column: 2, scope: !339)
!1895 = !DILocation(line: 684, column: 1, scope: !339)
!1896 = !DILocation(line: 685, column: 2, scope: !339)
!1897 = !DILocation(line: 686, column: 1, scope: !339)
!1898 = distinct !DISubprogram(name: "inat_has_moffset", scope: !1047, file: !1047, line: 206, type: !1051, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1899)
!1899 = !{!1900}
!1900 = !DILocalVariable(name: "attr", arg: 1, scope: !1898, file: !1047, line: 206, type: !60)
!1901 = !DILocation(line: 206, column: 48, scope: !1898)
!1902 = !DILocation(line: 208, column: 9, scope: !1898)
!1903 = !DILocation(line: 208, column: 14, scope: !1898)
!1904 = !DILocation(line: 208, column: 2, scope: !1898)
!1905 = !DILocation(line: 517, column: 39, scope: !451)
!1906 = !DILocation(line: 519, column: 10, scope: !451)
!1907 = !DILocation(line: 519, column: 16, scope: !451)
!1908 = !DILocation(line: 519, column: 2, scope: !451)
!1909 = !DILocation(line: 521, column: 19, scope: !457)
!1910 = !DILocation(line: 521, column: 25, scope: !457)
!1911 = !DILocation(line: 521, column: 35, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !456, file: !3, line: 521, column: 35)
!1913 = !DILocation(line: 521, column: 35, scope: !456)
!1914 = !DILocation(line: 521, column: 35, scope: !455)
!1915 = !DILocation(line: 521, column: 35, scope: !459)
!1916 = !DILocation(line: 521, column: 35, scope: !461)
!1917 = !DILocation(line: 521, column: 35, scope: !457)
!1918 = !DILocation(line: 521, column: 3, scope: !457)
!1919 = !DILocation(line: 522, column: 3, scope: !457)
!1920 = !DILocation(line: 524, column: 19, scope: !457)
!1921 = !DILocation(line: 524, column: 25, scope: !457)
!1922 = !DILocation(line: 524, column: 35, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !464, file: !3, line: 524, column: 35)
!1924 = !DILocation(line: 524, column: 35, scope: !464)
!1925 = !DILocation(line: 524, column: 35, scope: !463)
!1926 = !DILocation(line: 524, column: 35, scope: !466)
!1927 = !DILocation(line: 524, column: 35, scope: !473)
!1928 = !DILocation(line: 524, column: 3, scope: !457)
!1929 = !DILocation(line: 525, column: 3, scope: !457)
!1930 = !DILocation(line: 527, column: 19, scope: !457)
!1931 = !DILocation(line: 527, column: 25, scope: !457)
!1932 = !DILocation(line: 527, column: 35, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !476, file: !3, line: 527, column: 35)
!1934 = !DILocation(line: 527, column: 35, scope: !476)
!1935 = !DILocation(line: 527, column: 35, scope: !475)
!1936 = !DILocation(line: 527, column: 35, scope: !478)
!1937 = !DILocation(line: 527, column: 35, scope: !485)
!1938 = !DILocation(line: 527, column: 3, scope: !457)
!1939 = !DILocation(line: 528, column: 19, scope: !457)
!1940 = !DILocation(line: 528, column: 25, scope: !457)
!1941 = !DILocation(line: 528, column: 35, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !488, file: !3, line: 528, column: 35)
!1943 = !DILocation(line: 528, column: 35, scope: !488)
!1944 = !DILocation(line: 528, column: 35, scope: !487)
!1945 = !DILocation(line: 528, column: 35, scope: !490)
!1946 = !DILocation(line: 528, column: 35, scope: !497)
!1947 = !DILocation(line: 528, column: 3, scope: !457)
!1948 = !DILocation(line: 529, column: 3, scope: !457)
!1949 = !DILocation(line: 531, column: 3, scope: !457)
!1950 = !DILocation(line: 533, column: 23, scope: !451)
!1951 = !DILocation(line: 533, column: 29, scope: !451)
!1952 = !DILocation(line: 533, column: 38, scope: !451)
!1953 = !DILocation(line: 533, column: 42, scope: !451)
!1954 = !DILocation(line: 533, column: 2, scope: !451)
!1955 = !DILocation(line: 533, column: 8, scope: !451)
!1956 = !DILocation(line: 533, column: 17, scope: !451)
!1957 = !DILocation(line: 533, column: 21, scope: !451)
!1958 = !DILocation(line: 535, column: 2, scope: !451)
!1959 = !DILocation(line: 537, column: 1, scope: !451)
!1960 = !DILocation(line: 538, column: 2, scope: !451)
!1961 = !DILocation(line: 539, column: 1, scope: !451)
!1962 = distinct !DISubprogram(name: "inat_has_immediate", scope: !1047, file: !1047, line: 181, type: !1051, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1963)
!1963 = !{!1964}
!1964 = !DILocalVariable(name: "attr", arg: 1, scope: !1962, file: !1047, line: 181, type: !60)
!1965 = !DILocation(line: 181, column: 50, scope: !1962)
!1966 = !DILocation(line: 183, column: 9, scope: !1962)
!1967 = !DILocation(line: 183, column: 14, scope: !1962)
!1968 = !DILocation(line: 183, column: 2, scope: !1962)
!1969 = distinct !DISubprogram(name: "inat_immediate_size", scope: !1047, file: !1047, line: 186, type: !1051, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1970)
!1970 = !{!1971}
!1971 = !DILocalVariable(name: "attr", arg: 1, scope: !1969, file: !1047, line: 186, type: !60)
!1972 = !DILocation(line: 186, column: 51, scope: !1969)
!1973 = !DILocation(line: 188, column: 10, scope: !1969)
!1974 = !DILocation(line: 188, column: 15, scope: !1969)
!1975 = !DILocation(line: 188, column: 32, scope: !1969)
!1976 = !DILocation(line: 188, column: 2, scope: !1969)
!1977 = !DILocation(line: 588, column: 38, scope: !504)
!1978 = !DILocation(line: 590, column: 10, scope: !504)
!1979 = !DILocation(line: 590, column: 16, scope: !504)
!1980 = !DILocation(line: 590, column: 2, scope: !504)
!1981 = !DILocation(line: 592, column: 19, scope: !510)
!1982 = !DILocation(line: 592, column: 25, scope: !510)
!1983 = !DILocation(line: 592, column: 37, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !509, file: !3, line: 592, column: 37)
!1985 = !DILocation(line: 592, column: 37, scope: !509)
!1986 = !DILocation(line: 592, column: 37, scope: !508)
!1987 = !DILocation(line: 592, column: 37, scope: !512)
!1988 = !DILocation(line: 592, column: 37, scope: !514)
!1989 = !DILocation(line: 592, column: 37, scope: !510)
!1990 = !DILocation(line: 592, column: 3, scope: !510)
!1991 = !DILocation(line: 593, column: 3, scope: !510)
!1992 = !DILocation(line: 595, column: 19, scope: !510)
!1993 = !DILocation(line: 595, column: 25, scope: !510)
!1994 = !DILocation(line: 595, column: 37, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !517, file: !3, line: 595, column: 37)
!1996 = !DILocation(line: 595, column: 37, scope: !517)
!1997 = !DILocation(line: 595, column: 37, scope: !516)
!1998 = !DILocation(line: 595, column: 37, scope: !519)
!1999 = !DILocation(line: 595, column: 37, scope: !526)
!2000 = !DILocation(line: 595, column: 3, scope: !510)
!2001 = !DILocation(line: 596, column: 3, scope: !510)
!2002 = !DILocation(line: 599, column: 3, scope: !510)
!2003 = !DILocation(line: 601, column: 3, scope: !510)
!2004 = !DILocation(line: 603, column: 18, scope: !504)
!2005 = !DILocation(line: 603, column: 24, scope: !504)
!2006 = !DILocation(line: 603, column: 36, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !529, file: !3, line: 603, column: 36)
!2008 = !DILocation(line: 603, column: 36, scope: !529)
!2009 = !DILocation(line: 603, column: 36, scope: !528)
!2010 = !DILocation(line: 603, column: 36, scope: !531)
!2011 = !DILocation(line: 603, column: 36, scope: !538)
!2012 = !DILocation(line: 603, column: 36, scope: !504)
!2013 = !DILocation(line: 603, column: 2, scope: !504)
!2014 = !DILocation(line: 604, column: 25, scope: !504)
!2015 = !DILocation(line: 604, column: 31, scope: !504)
!2016 = !DILocation(line: 604, column: 42, scope: !504)
!2017 = !DILocation(line: 604, column: 46, scope: !504)
!2018 = !DILocation(line: 604, column: 2, scope: !504)
!2019 = !DILocation(line: 604, column: 8, scope: !504)
!2020 = !DILocation(line: 604, column: 19, scope: !504)
!2021 = !DILocation(line: 604, column: 23, scope: !504)
!2022 = !DILocation(line: 606, column: 2, scope: !504)
!2023 = !DILocation(line: 607, column: 1, scope: !504)
!2024 = !DILocation(line: 608, column: 2, scope: !504)
!2025 = !DILocation(line: 609, column: 1, scope: !504)
!2026 = !DILocation(line: 542, column: 38, scope: !546)
!2027 = !DILocation(line: 544, column: 10, scope: !546)
!2028 = !DILocation(line: 544, column: 16, scope: !546)
!2029 = !DILocation(line: 544, column: 2, scope: !546)
!2030 = !DILocation(line: 546, column: 19, scope: !552)
!2031 = !DILocation(line: 546, column: 25, scope: !552)
!2032 = !DILocation(line: 546, column: 36, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !551, file: !3, line: 546, column: 36)
!2034 = !DILocation(line: 546, column: 36, scope: !551)
!2035 = !DILocation(line: 546, column: 36, scope: !550)
!2036 = !DILocation(line: 546, column: 36, scope: !554)
!2037 = !DILocation(line: 546, column: 36, scope: !556)
!2038 = !DILocation(line: 546, column: 36, scope: !552)
!2039 = !DILocation(line: 546, column: 3, scope: !552)
!2040 = !DILocation(line: 547, column: 3, scope: !552)
!2041 = !DILocation(line: 550, column: 19, scope: !552)
!2042 = !DILocation(line: 550, column: 25, scope: !552)
!2043 = !DILocation(line: 550, column: 36, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !559, file: !3, line: 550, column: 36)
!2045 = !DILocation(line: 550, column: 36, scope: !559)
!2046 = !DILocation(line: 550, column: 36, scope: !558)
!2047 = !DILocation(line: 550, column: 36, scope: !561)
!2048 = !DILocation(line: 550, column: 36, scope: !568)
!2049 = !DILocation(line: 550, column: 3, scope: !552)
!2050 = !DILocation(line: 551, column: 3, scope: !552)
!2051 = !DILocation(line: 553, column: 3, scope: !552)
!2052 = !DILocation(line: 556, column: 2, scope: !546)
!2053 = !DILocation(line: 558, column: 1, scope: !546)
!2054 = !DILocation(line: 559, column: 2, scope: !546)
!2055 = !DILocation(line: 560, column: 1, scope: !546)
!2056 = !DILocation(line: 563, column: 36, scope: !575)
!2057 = !DILocation(line: 565, column: 10, scope: !575)
!2058 = !DILocation(line: 565, column: 16, scope: !575)
!2059 = !DILocation(line: 565, column: 2, scope: !575)
!2060 = !DILocation(line: 567, column: 19, scope: !581)
!2061 = !DILocation(line: 567, column: 25, scope: !581)
!2062 = !DILocation(line: 567, column: 37, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !580, file: !3, line: 567, column: 37)
!2064 = !DILocation(line: 567, column: 37, scope: !580)
!2065 = !DILocation(line: 567, column: 37, scope: !579)
!2066 = !DILocation(line: 567, column: 37, scope: !583)
!2067 = !DILocation(line: 567, column: 37, scope: !585)
!2068 = !DILocation(line: 567, column: 37, scope: !581)
!2069 = !DILocation(line: 567, column: 3, scope: !581)
!2070 = !DILocation(line: 568, column: 3, scope: !581)
!2071 = !DILocation(line: 570, column: 19, scope: !581)
!2072 = !DILocation(line: 570, column: 25, scope: !581)
!2073 = !DILocation(line: 570, column: 37, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !588, file: !3, line: 570, column: 37)
!2075 = !DILocation(line: 570, column: 37, scope: !588)
!2076 = !DILocation(line: 570, column: 37, scope: !587)
!2077 = !DILocation(line: 570, column: 37, scope: !590)
!2078 = !DILocation(line: 570, column: 37, scope: !597)
!2079 = !DILocation(line: 570, column: 3, scope: !581)
!2080 = !DILocation(line: 571, column: 3, scope: !581)
!2081 = !DILocation(line: 571, column: 9, scope: !581)
!2082 = !DILocation(line: 571, column: 20, scope: !581)
!2083 = !DILocation(line: 571, column: 27, scope: !581)
!2084 = !DILocation(line: 572, column: 3, scope: !581)
!2085 = !DILocation(line: 574, column: 19, scope: !581)
!2086 = !DILocation(line: 574, column: 25, scope: !581)
!2087 = !DILocation(line: 574, column: 37, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !600, file: !3, line: 574, column: 37)
!2089 = !DILocation(line: 574, column: 37, scope: !600)
!2090 = !DILocation(line: 574, column: 37, scope: !599)
!2091 = !DILocation(line: 574, column: 37, scope: !602)
!2092 = !DILocation(line: 574, column: 37, scope: !609)
!2093 = !DILocation(line: 574, column: 3, scope: !581)
!2094 = !DILocation(line: 575, column: 19, scope: !581)
!2095 = !DILocation(line: 575, column: 25, scope: !581)
!2096 = !DILocation(line: 575, column: 37, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !612, file: !3, line: 575, column: 37)
!2098 = !DILocation(line: 575, column: 37, scope: !612)
!2099 = !DILocation(line: 575, column: 37, scope: !611)
!2100 = !DILocation(line: 575, column: 37, scope: !614)
!2101 = !DILocation(line: 575, column: 37, scope: !621)
!2102 = !DILocation(line: 575, column: 3, scope: !581)
!2103 = !DILocation(line: 576, column: 3, scope: !581)
!2104 = !DILocation(line: 578, column: 3, scope: !581)
!2105 = !DILocation(line: 580, column: 25, scope: !575)
!2106 = !DILocation(line: 580, column: 31, scope: !575)
!2107 = !DILocation(line: 580, column: 42, scope: !575)
!2108 = !DILocation(line: 580, column: 46, scope: !575)
!2109 = !DILocation(line: 580, column: 2, scope: !575)
!2110 = !DILocation(line: 580, column: 8, scope: !575)
!2111 = !DILocation(line: 580, column: 19, scope: !575)
!2112 = !DILocation(line: 580, column: 23, scope: !575)
!2113 = !DILocation(line: 582, column: 2, scope: !575)
!2114 = !DILocation(line: 583, column: 1, scope: !575)
!2115 = !DILocation(line: 584, column: 2, scope: !575)
!2116 = !DILocation(line: 585, column: 1, scope: !575)
!2117 = distinct !DISubprogram(name: "inat_has_second_immediate", scope: !1047, file: !1047, line: 201, type: !1051, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2118 = !{!2119}
!2119 = !DILocalVariable(name: "attr", arg: 1, scope: !2117, file: !1047, line: 201, type: !60)
!2120 = !DILocation(line: 201, column: 57, scope: !2117)
!2121 = !DILocation(line: 203, column: 9, scope: !2117)
!2122 = !DILocation(line: 203, column: 14, scope: !2117)
!2123 = !DILocation(line: 203, column: 2, scope: !2117)
!2124 = distinct !DISubprogram(name: "insn_get_length", scope: !3, file: !3, line: 699, type: !18, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2125 = !{!2126, !2127}
!2126 = !DILocalVariable(name: "insn", arg: 1, scope: !2124, file: !3, line: 699, type: !21)
!2127 = !DILocalVariable(name: "ret", scope: !2124, file: !3, line: 701, type: !20)
!2128 = !DILocation(line: 699, column: 34, scope: !2124)
!2129 = !DILocation(line: 701, column: 2, scope: !2124)
!2130 = !DILocation(line: 701, column: 6, scope: !2124)
!2131 = !DILocation(line: 703, column: 6, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 703, column: 6)
!2133 = !DILocation(line: 703, column: 12, scope: !2132)
!2134 = !DILocation(line: 703, column: 6, scope: !2124)
!2135 = !DILocation(line: 704, column: 3, scope: !2132)
!2136 = !DILocation(line: 706, column: 7, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 706, column: 6)
!2138 = !DILocation(line: 706, column: 13, scope: !2137)
!2139 = !DILocation(line: 706, column: 23, scope: !2137)
!2140 = !DILocation(line: 706, column: 6, scope: !2124)
!2141 = !DILocation(line: 707, column: 28, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 706, column: 28)
!2143 = !DILocation(line: 707, column: 9, scope: !2142)
!2144 = !DILocation(line: 707, column: 7, scope: !2142)
!2145 = !DILocation(line: 708, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 708, column: 7)
!2147 = !DILocation(line: 708, column: 7, scope: !2142)
!2148 = !DILocation(line: 709, column: 11, scope: !2146)
!2149 = !DILocation(line: 709, column: 4, scope: !2146)
!2150 = !DILocation(line: 710, column: 2, scope: !2142)
!2151 = !DILocation(line: 712, column: 48, scope: !2124)
!2152 = !DILocation(line: 712, column: 54, scope: !2124)
!2153 = !DILocation(line: 712, column: 33, scope: !2124)
!2154 = !DILocation(line: 713, column: 27, scope: !2124)
!2155 = !DILocation(line: 713, column: 33, scope: !2124)
!2156 = !DILocation(line: 713, column: 12, scope: !2124)
!2157 = !DILocation(line: 713, column: 10, scope: !2124)
!2158 = !DILocation(line: 712, column: 17, scope: !2124)
!2159 = !DILocation(line: 712, column: 2, scope: !2124)
!2160 = !DILocation(line: 712, column: 8, scope: !2124)
!2161 = !DILocation(line: 712, column: 15, scope: !2124)
!2162 = !DILocation(line: 715, column: 2, scope: !2124)
!2163 = !DILocation(line: 716, column: 1, scope: !2124)
!2164 = distinct !DISubprogram(name: "insn_decode", scope: !3, file: !3, line: 736, type: !2165, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!20, !21, !643, !20, !5}
!2167 = !{!2168, !2169, !2170, !2171, !2172}
!2168 = !DILocalVariable(name: "insn", arg: 1, scope: !2164, file: !3, line: 736, type: !21)
!2169 = !DILocalVariable(name: "kaddr", arg: 2, scope: !2164, file: !3, line: 736, type: !643)
!2170 = !DILocalVariable(name: "buf_len", arg: 3, scope: !2164, file: !3, line: 736, type: !20)
!2171 = !DILocalVariable(name: "m", arg: 4, scope: !2164, file: !3, line: 736, type: !5)
!2172 = !DILocalVariable(name: "ret", scope: !2164, file: !3, line: 738, type: !20)
!2173 = !DILocation(line: 736, column: 30, scope: !2164)
!2174 = !DILocation(line: 736, column: 48, scope: !2164)
!2175 = !DILocation(line: 736, column: 59, scope: !2164)
!2176 = !DILocation(line: 736, column: 83, scope: !2164)
!2177 = !DILocation(line: 738, column: 2, scope: !2164)
!2178 = !DILocation(line: 738, column: 6, scope: !2164)
!2179 = !DILocation(line: 742, column: 6, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 742, column: 6)
!2181 = !DILocation(line: 742, column: 8, scope: !2180)
!2182 = !DILocation(line: 742, column: 6, scope: !2164)
!2183 = !DILocation(line: 743, column: 13, scope: !2180)
!2184 = !DILocation(line: 743, column: 19, scope: !2180)
!2185 = !DILocation(line: 743, column: 26, scope: !2180)
!2186 = !DILocation(line: 743, column: 3, scope: !2180)
!2187 = !DILocation(line: 745, column: 13, scope: !2180)
!2188 = !DILocation(line: 745, column: 19, scope: !2180)
!2189 = !DILocation(line: 745, column: 26, scope: !2180)
!2190 = !DILocation(line: 745, column: 35, scope: !2180)
!2191 = !DILocation(line: 745, column: 37, scope: !2180)
!2192 = !DILocation(line: 745, column: 3, scope: !2180)
!2193 = !DILocation(line: 747, column: 24, scope: !2164)
!2194 = !DILocation(line: 747, column: 8, scope: !2164)
!2195 = !DILocation(line: 747, column: 6, scope: !2164)
!2196 = !DILocation(line: 748, column: 6, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 748, column: 6)
!2198 = !DILocation(line: 748, column: 6, scope: !2164)
!2199 = !DILocation(line: 749, column: 10, scope: !2197)
!2200 = !DILocation(line: 749, column: 3, scope: !2197)
!2201 = !DILocation(line: 751, column: 20, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 751, column: 6)
!2203 = !DILocation(line: 751, column: 6, scope: !2202)
!2204 = !DILocation(line: 751, column: 6, scope: !2164)
!2205 = !DILocation(line: 752, column: 3, scope: !2202)
!2206 = !DILocation(line: 754, column: 2, scope: !2164)
!2207 = !DILocation(line: 755, column: 1, scope: !2164)
!2208 = distinct !DISubprogram(name: "insn_complete", scope: !3, file: !3, line: 719, type: !18, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2209)
!2209 = !{!2210}
!2210 = !DILocalVariable(name: "insn", arg: 1, scope: !2208, file: !3, line: 719, type: !21)
!2211 = !DILocation(line: 719, column: 46, scope: !2208)
!2212 = !DILocation(line: 721, column: 9, scope: !2208)
!2213 = !DILocation(line: 721, column: 15, scope: !2208)
!2214 = !DILocation(line: 721, column: 22, scope: !2208)
!2215 = !DILocation(line: 721, column: 26, scope: !2208)
!2216 = !DILocation(line: 721, column: 29, scope: !2208)
!2217 = !DILocation(line: 721, column: 35, scope: !2208)
!2218 = !DILocation(line: 721, column: 41, scope: !2208)
!2219 = !DILocation(line: 721, column: 45, scope: !2208)
!2220 = !DILocation(line: 721, column: 48, scope: !2208)
!2221 = !DILocation(line: 721, column: 54, scope: !2208)
!2222 = !DILocation(line: 721, column: 58, scope: !2208)
!2223 = !DILocation(line: 721, column: 62, scope: !2208)
!2224 = !DILocation(line: 722, column: 3, scope: !2208)
!2225 = !DILocation(line: 722, column: 9, scope: !2208)
!2226 = !DILocation(line: 722, column: 22, scope: !2208)
!2227 = !DILocation(line: 722, column: 26, scope: !2208)
!2228 = !DILocation(line: 722, column: 29, scope: !2208)
!2229 = !DILocation(line: 722, column: 35, scope: !2208)
!2230 = !DILocation(line: 722, column: 45, scope: !2208)
!2231 = !DILocation(line: 0, scope: !2208)
!2232 = !DILocation(line: 721, column: 2, scope: !2208)
!2233 = !DILocation(line: 85, column: 51, scope: !421)
!2234 = !DILocation(line: 86, column: 29, scope: !421)
!2235 = !DILocation(line: 86, column: 44, scope: !421)
!2236 = !DILocation(line: 88, column: 2, scope: !421)
!2237 = !DILocation(line: 88, column: 9, scope: !421)
!2238 = !DILocation(line: 90, column: 9, scope: !440)
!2239 = !DILocation(line: 90, column: 7, scope: !440)
!2240 = !DILocation(line: 90, column: 14, scope: !439)
!2241 = !DILocation(line: 90, column: 18, scope: !439)
!2242 = !DILocation(line: 90, column: 16, scope: !439)
!2243 = !DILocation(line: 90, column: 2, scope: !440)
!2244 = !DILocation(line: 91, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !436, file: !3, line: 91, column: 7)
!2246 = !DILocation(line: 91, column: 7, scope: !436)
!2247 = !DILocation(line: 91, column: 7, scope: !435)
!2248 = !DILocation(line: 91, column: 7, scope: !442)
!2249 = !DILocation(line: 91, column: 7, scope: !444)
!2250 = !DILocation(line: 91, column: 7, scope: !437)
!2251 = !DILocation(line: 91, column: 48, scope: !437)
!2252 = !DILocation(line: 91, column: 55, scope: !437)
!2253 = !DILocation(line: 91, column: 45, scope: !437)
!2254 = !DILocation(line: 91, column: 7, scope: !438)
!2255 = !DILocation(line: 92, column: 4, scope: !437)
!2256 = !DILocation(line: 93, column: 2, scope: !438)
!2257 = !DILocation(line: 90, column: 24, scope: !439)
!2258 = !DILocation(line: 90, column: 2, scope: !439)
!2259 = distinct !{!2259, !2243, !2260, !748, !749}
!2260 = !DILocation(line: 93, column: 2, scope: !440)
!2261 = !DILocation(line: 95, column: 30, scope: !421)
!2262 = !DILocation(line: 95, column: 2, scope: !421)
!2263 = !DILocation(line: 95, column: 8, scope: !421)
!2264 = !DILocation(line: 95, column: 28, scope: !421)
!2265 = !DILocation(line: 96, column: 21, scope: !421)
!2266 = !DILocation(line: 96, column: 2, scope: !421)
!2267 = !DILocation(line: 96, column: 8, scope: !421)
!2268 = !DILocation(line: 96, column: 18, scope: !421)
!2269 = !DILocation(line: 98, column: 2, scope: !421)
!2270 = !DILocation(line: 100, column: 1, scope: !421)
!2271 = !DILocation(line: 101, column: 2, scope: !421)
!2272 = !DILocation(line: 102, column: 1, scope: !421)
!2273 = !DISubprogram(name: "inat_get_last_prefix_id", scope: !1047, file: !1047, line: 98, type: !2274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!20, !35}
