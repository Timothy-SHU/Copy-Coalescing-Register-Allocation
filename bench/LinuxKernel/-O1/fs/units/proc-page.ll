; ModuleID = 'fs/proc/page.c'
source_filename = "fs/proc/page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init..kmod_proc__340_339_proc_page_init\22, \22a\22\09\09"
module asm "__initcall__kmod_proc__340_339_proc_page_init5:\09\09\09"
module asm ".long\09__initstub__kmod_proc__340_339_proc_page_init5 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.33 }
%struct.atomic_t = type { i32 }
%union.anon.33 = type { i64 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.34, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.36, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.34 = type { i32 }
%union.anon.36 = type { i64, [88 x i8] }
%struct.pcpu_hot = type { %union.anon.37 }
%union.anon.37 = type { %struct.anon.38, [16 x i8] }
%struct.anon.38 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.39 }
%union.anon.39 = type { i64 }
%struct.page = type { i64, %union.anon.13, %union.anon.22, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %union.anon.15, ptr, %union.anon.17, i64 }
%union.anon.15 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.17 = type { i64 }
%union.anon.22 = type { %struct.atomic_t }
%struct.anon.20 = type { i64 }
%struct.folio = type { %union.anon.23, %union.anon.28, %union.anon.30 }
%union.anon.23 = type { %struct.page }
%union.anon.28 = type { %struct.page }
%union.anon.30 = type { %struct.page }
%struct.anon.29 = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.anon.24 = type { i64, %union.anon.25, ptr, i64, %union.anon.27, %struct.atomic_t, %struct.atomic_t }
%union.anon.25 = type { %struct.list_head }
%union.anon.27 = type { ptr }
%struct.mem_section = type { i64, ptr }
%struct.mem_section_usage = type { %struct.callback_head, [1 x i64], [0 x i64] }
%struct.callback_head = type { ptr, ptr }

@vmemmap_base = external dso_local global i64, align 8
@__UNIQUE_ID___addressable___initstub__kmod_proc__340_339_proc_page_init5341 = internal global ptr @__initstub__kmod_proc__340_339_proc_page_init5, section ".discard.addressable", align 8, !dbg !0
@hugetlb_optimize_vmemmap_key = external dso_local global %struct.static_key_false, align 8
@zero_pfn = external dso_local global i64, align 8
@.str = private unnamed_addr constant [11 x i8] c"kpagecount\00", align 1, !dbg !5439
@kpagecount_proc_ops = internal constant %struct.proc_ops { i32 1, ptr null, ptr @kpagecount_read, ptr null, ptr null, ptr @mem_lseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5446
@.str.1 = private unnamed_addr constant [11 x i8] c"kpageflags\00", align 1, !dbg !5444
@kpageflags_proc_ops = internal constant %struct.proc_ops { i32 1, ptr null, ptr @kpageflags_read, ptr null, ptr null, ptr @mem_lseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5476
@.str.2 = private unnamed_addr constant [15 x i8] c"fs/proc/page.c\00", align 1, !dbg !5464
@max_pfn = external dso_local global i64, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@mem_section = external dso_local global ptr, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@rcu_read_unlock_sched.__UNIQUE_ID___addressable___SCK__preempt_schedule89 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !5469
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched175 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !5473
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_proc__340_339_proc_page_init5341, ptr @rcu_read_unlock_sched.__UNIQUE_ID___addressable___SCK__preempt_schedule89, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched175], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @stable_page_flags(ptr noundef %page) #0 align 16 !dbg !5488 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %k = alloca i64, align 8
  %u = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %head = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5492, metadata !DIExpression()), !dbg !5499
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #12, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %k, metadata !5493, metadata !DIExpression()), !dbg !5501
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #12, !dbg !5502
  call void @llvm.dbg.declare(metadata ptr %u, metadata !5494, metadata !DIExpression()), !dbg !5503
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5504
  %tobool = icmp ne ptr %0, null, !dbg !5504
  br i1 %tobool, label %if.end, label %if.then, !dbg !5506

if.then:                                          ; preds = %entry
  store i64 1048576, ptr %retval, align 8, !dbg !5507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5507

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %page.addr, align 8, !dbg !5508
  %flags = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 0, !dbg !5509
  %2 = load i64, ptr %flags, align 16, !dbg !5509
  store i64 %2, ptr %k, align 8, !dbg !5510
  store i64 0, ptr %u, align 8, !dbg !5511
  %3 = load ptr, ptr %page.addr, align 8, !dbg !5512
  %call = call zeroext i1 @page_mapped(ptr noundef %3) #13, !dbg !5514
  br i1 %call, label %if.then1, label %if.end2, !dbg !5515

if.then1:                                         ; preds = %if.end
  %4 = load i64, ptr %u, align 8, !dbg !5516
  %or = or i64 %4, 2048, !dbg !5516
  store i64 %or, ptr %u, align 8, !dbg !5516
  br label %if.end2, !dbg !5517

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !5518
  %call3 = call zeroext i1 @PageAnon(ptr noundef %5) #13, !dbg !5520
  br i1 %call3, label %if.then4, label %if.end6, !dbg !5521

if.then4:                                         ; preds = %if.end2
  %6 = load i64, ptr %u, align 8, !dbg !5522
  %or5 = or i64 %6, 4096, !dbg !5522
  store i64 %or5, ptr %u, align 8, !dbg !5522
  br label %if.end6, !dbg !5523

if.end6:                                          ; preds = %if.then4, %if.end2
  %7 = load ptr, ptr %page.addr, align 8, !dbg !5524
  %call7 = call i32 @PageKsm(ptr noundef %7) #13, !dbg !5526
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5526
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5527

if.then9:                                         ; preds = %if.end6
  %8 = load i64, ptr %u, align 8, !dbg !5528
  %or10 = or i64 %8, 2097152, !dbg !5528
  store i64 %or10, ptr %u, align 8, !dbg !5528
  br label %if.end11, !dbg !5529

if.end11:                                         ; preds = %if.then9, %if.end6
  %9 = load ptr, ptr %page.addr, align 8, !dbg !5530
  %call12 = call i32 @PageHead(ptr noundef %9) #13, !dbg !5532
  %tobool13 = icmp ne i32 %call12, 0, !dbg !5532
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !5533

if.then14:                                        ; preds = %if.end11
  %10 = load i64, ptr %u, align 8, !dbg !5534
  %or15 = or i64 %10, 32768, !dbg !5534
  store i64 %or15, ptr %u, align 8, !dbg !5534
  br label %if.end16, !dbg !5535

if.end16:                                         ; preds = %if.then14, %if.end11
  %11 = load ptr, ptr %page.addr, align 8, !dbg !5536
  %call17 = call i32 @PageTail(ptr noundef %11) #13, !dbg !5538
  %tobool18 = icmp ne i32 %call17, 0, !dbg !5538
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !5539

if.then19:                                        ; preds = %if.end16
  %12 = load i64, ptr %u, align 8, !dbg !5540
  %or20 = or i64 %12, 65536, !dbg !5540
  store i64 %or20, ptr %u, align 8, !dbg !5540
  br label %if.end21, !dbg !5541

if.end21:                                         ; preds = %if.then19, %if.end16
  %13 = load ptr, ptr %page.addr, align 8, !dbg !5542
  %call22 = call zeroext i1 @PageHuge(ptr noundef %13) #13, !dbg !5543
  br i1 %call22, label %if.then23, label %if.else, !dbg !5544

if.then23:                                        ; preds = %if.end21
  %14 = load i64, ptr %u, align 8, !dbg !5545
  %or24 = or i64 %14, 131072, !dbg !5545
  store i64 %or24, ptr %u, align 8, !dbg !5545
  br label %if.end48, !dbg !5546

if.else:                                          ; preds = %if.end21
  %15 = load ptr, ptr %page.addr, align 8, !dbg !5547
  %call25 = call i32 @PageTransCompound(ptr noundef %15) #13, !dbg !5548
  %tobool26 = icmp ne i32 %call25, 0, !dbg !5548
  br i1 %tobool26, label %if.then27, label %if.else41, !dbg !5549

if.then27:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #12, !dbg !5550
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5495, metadata !DIExpression()), !dbg !5551
  %16 = load ptr, ptr %page.addr, align 8, !dbg !5552
  %call28 = call i64 @_compound_head(ptr noundef %16) #13, !dbg !5552
  %17 = inttoptr i64 %call28 to ptr, !dbg !5552
  store ptr %17, ptr %head, align 8, !dbg !5551
  %18 = load ptr, ptr %head, align 8, !dbg !5553
  %call29 = call i32 @PageLRU(ptr noundef %18) #13, !dbg !5555
  %tobool30 = icmp ne i32 %call29, 0, !dbg !5555
  br i1 %tobool30, label %if.then32, label %lor.lhs.false, !dbg !5556

lor.lhs.false:                                    ; preds = %if.then27
  %19 = load ptr, ptr %head, align 8, !dbg !5557
  %call31 = call zeroext i1 @PageAnon(ptr noundef %19) #13, !dbg !5558
  br i1 %call31, label %if.then32, label %if.else34, !dbg !5559

if.then32:                                        ; preds = %lor.lhs.false, %if.then27
  %20 = load i64, ptr %u, align 8, !dbg !5560
  %or33 = or i64 %20, 4194304, !dbg !5560
  store i64 %or33, ptr %u, align 8, !dbg !5560
  br label %if.end40, !dbg !5561

if.else34:                                        ; preds = %lor.lhs.false
  %21 = load ptr, ptr %head, align 8, !dbg !5562
  %call35 = call zeroext i1 @is_huge_zero_page(ptr noundef %21) #13, !dbg !5564
  br i1 %call35, label %if.then36, label %if.end39, !dbg !5565

if.then36:                                        ; preds = %if.else34
  %22 = load i64, ptr %u, align 8, !dbg !5566
  %or37 = or i64 %22, 16777216, !dbg !5566
  store i64 %or37, ptr %u, align 8, !dbg !5566
  %23 = load i64, ptr %u, align 8, !dbg !5568
  %or38 = or i64 %23, 4194304, !dbg !5568
  store i64 %or38, ptr %u, align 8, !dbg !5568
  br label %if.end39, !dbg !5569

if.end39:                                         ; preds = %if.then36, %if.else34
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then32
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #12, !dbg !5570
  br label %if.end47, !dbg !5571

if.else41:                                        ; preds = %if.else
  %24 = load ptr, ptr %page.addr, align 8, !dbg !5572
  %25 = load i64, ptr @vmemmap_base, align 8, !dbg !5572
  %26 = inttoptr i64 %25 to ptr, !dbg !5572
  %sub.ptr.lhs.cast = ptrtoint ptr %24 to i64, !dbg !5572
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64, !dbg !5572
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5572
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5572
  %call42 = call i32 @is_zero_pfn(i64 noundef %sub.ptr.div) #13, !dbg !5574
  %tobool43 = icmp ne i32 %call42, 0, !dbg !5574
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !5575

if.then44:                                        ; preds = %if.else41
  %27 = load i64, ptr %u, align 8, !dbg !5576
  %or45 = or i64 %27, 16777216, !dbg !5576
  store i64 %or45, ptr %u, align 8, !dbg !5576
  br label %if.end46, !dbg !5577

if.end46:                                         ; preds = %if.then44, %if.else41
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end40
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then23
  %28 = load ptr, ptr %page.addr, align 8, !dbg !5578
  %call49 = call i32 @PageBuddy(ptr noundef %28) #13, !dbg !5580
  %tobool50 = icmp ne i32 %call49, 0, !dbg !5580
  br i1 %tobool50, label %if.then51, label %if.else53, !dbg !5581

if.then51:                                        ; preds = %if.end48
  %29 = load i64, ptr %u, align 8, !dbg !5582
  %or52 = or i64 %29, 1024, !dbg !5582
  store i64 %or52, ptr %u, align 8, !dbg !5582
  br label %if.end59, !dbg !5583

if.else53:                                        ; preds = %if.end48
  %30 = load ptr, ptr %page.addr, align 8, !dbg !5584
  %call54 = call i32 @page_count(ptr noundef %30) #13, !dbg !5586
  %cmp = icmp eq i32 %call54, 0, !dbg !5587
  br i1 %cmp, label %land.lhs.true, label %if.end58, !dbg !5588

land.lhs.true:                                    ; preds = %if.else53
  %31 = load ptr, ptr %page.addr, align 8, !dbg !5589
  %call55 = call zeroext i1 @is_free_buddy_page(ptr noundef %31) #13, !dbg !5590
  br i1 %call55, label %if.then56, label %if.end58, !dbg !5591

if.then56:                                        ; preds = %land.lhs.true
  %32 = load i64, ptr %u, align 8, !dbg !5592
  %or57 = or i64 %32, 1024, !dbg !5592
  store i64 %or57, ptr %u, align 8, !dbg !5592
  br label %if.end58, !dbg !5593

if.end58:                                         ; preds = %if.then56, %land.lhs.true, %if.else53
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then51
  %33 = load ptr, ptr %page.addr, align 8, !dbg !5594
  %call60 = call i32 @PageOffline(ptr noundef %33) #13, !dbg !5596
  %tobool61 = icmp ne i32 %call60, 0, !dbg !5596
  br i1 %tobool61, label %if.then62, label %if.end64, !dbg !5597

if.then62:                                        ; preds = %if.end59
  %34 = load i64, ptr %u, align 8, !dbg !5598
  %or63 = or i64 %34, 8388608, !dbg !5598
  store i64 %or63, ptr %u, align 8, !dbg !5598
  br label %if.end64, !dbg !5599

if.end64:                                         ; preds = %if.then62, %if.end59
  %35 = load ptr, ptr %page.addr, align 8, !dbg !5600
  %call65 = call i32 @PageTable(ptr noundef %35) #13, !dbg !5602
  %tobool66 = icmp ne i32 %call65, 0, !dbg !5602
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !5603

if.then67:                                        ; preds = %if.end64
  %36 = load i64, ptr %u, align 8, !dbg !5604
  %or68 = or i64 %36, 67108864, !dbg !5604
  store i64 %or68, ptr %u, align 8, !dbg !5604
  br label %if.end69, !dbg !5605

if.end69:                                         ; preds = %if.then67, %if.end64
  %37 = load ptr, ptr %page.addr, align 8, !dbg !5606
  %call70 = call zeroext i1 @page_is_idle(ptr noundef %37) #13, !dbg !5608
  br i1 %call70, label %if.then71, label %if.end73, !dbg !5609

if.then71:                                        ; preds = %if.end69
  %38 = load i64, ptr %u, align 8, !dbg !5610
  %or72 = or i64 %38, 33554432, !dbg !5610
  store i64 %or72, ptr %u, align 8, !dbg !5610
  br label %if.end73, !dbg !5611

if.end73:                                         ; preds = %if.then71, %if.end69
  %39 = load i64, ptr %k, align 8, !dbg !5612
  %call74 = call i64 @kpf_copy_bit(i64 noundef %39, i32 noundef 0, i32 noundef 0) #13, !dbg !5613
  %40 = load i64, ptr %u, align 8, !dbg !5614
  %or75 = or i64 %40, %call74, !dbg !5614
  store i64 %or75, ptr %u, align 8, !dbg !5614
  %41 = load i64, ptr %k, align 8, !dbg !5615
  %call76 = call i64 @kpf_copy_bit(i64 noundef %41, i32 noundef 7, i32 noundef 11) #13, !dbg !5616
  %42 = load i64, ptr %u, align 8, !dbg !5617
  %or77 = or i64 %42, %call76, !dbg !5617
  store i64 %or77, ptr %u, align 8, !dbg !5617
  %43 = load ptr, ptr %page.addr, align 8, !dbg !5618
  %call78 = call i32 @PageTail(ptr noundef %43) #13, !dbg !5620
  %tobool79 = icmp ne i32 %call78, 0, !dbg !5620
  br i1 %tobool79, label %land.lhs.true80, label %if.end85, !dbg !5621

land.lhs.true80:                                  ; preds = %if.end73
  %44 = load ptr, ptr %page.addr, align 8, !dbg !5622
  %call81 = call i32 @PageSlab(ptr noundef %44) #13, !dbg !5623
  %tobool82 = icmp ne i32 %call81, 0, !dbg !5623
  br i1 %tobool82, label %if.then83, label %if.end85, !dbg !5624

if.then83:                                        ; preds = %land.lhs.true80
  %45 = load i64, ptr %u, align 8, !dbg !5625
  %or84 = or i64 %45, 128, !dbg !5625
  store i64 %or84, ptr %u, align 8, !dbg !5625
  br label %if.end85, !dbg !5626

if.end85:                                         ; preds = %if.then83, %land.lhs.true80, %if.end73
  %46 = load i64, ptr %k, align 8, !dbg !5627
  %call86 = call i64 @kpf_copy_bit(i64 noundef %46, i32 noundef 1, i32 noundef 10) #13, !dbg !5628
  %47 = load i64, ptr %u, align 8, !dbg !5629
  %or87 = or i64 %47, %call86, !dbg !5629
  store i64 %or87, ptr %u, align 8, !dbg !5629
  %48 = load i64, ptr %k, align 8, !dbg !5630
  %call88 = call i64 @kpf_copy_bit(i64 noundef %48, i32 noundef 4, i32 noundef 4) #13, !dbg !5631
  %49 = load i64, ptr %u, align 8, !dbg !5632
  %or89 = or i64 %49, %call88, !dbg !5632
  store i64 %or89, ptr %u, align 8, !dbg !5632
  %50 = load i64, ptr %k, align 8, !dbg !5633
  %call90 = call i64 @kpf_copy_bit(i64 noundef %50, i32 noundef 3, i32 noundef 3) #13, !dbg !5634
  %51 = load i64, ptr %u, align 8, !dbg !5635
  %or91 = or i64 %51, %call90, !dbg !5635
  store i64 %or91, ptr %u, align 8, !dbg !5635
  %52 = load i64, ptr %k, align 8, !dbg !5636
  %call92 = call i64 @kpf_copy_bit(i64 noundef %52, i32 noundef 8, i32 noundef 1) #13, !dbg !5637
  %53 = load i64, ptr %u, align 8, !dbg !5638
  %or93 = or i64 %53, %call92, !dbg !5638
  store i64 %or93, ptr %u, align 8, !dbg !5638
  %54 = load i64, ptr %k, align 8, !dbg !5639
  %call94 = call i64 @kpf_copy_bit(i64 noundef %54, i32 noundef 5, i32 noundef 5) #13, !dbg !5640
  %55 = load i64, ptr %u, align 8, !dbg !5641
  %or95 = or i64 %55, %call94, !dbg !5641
  store i64 %or95, ptr %u, align 8, !dbg !5641
  %56 = load i64, ptr %k, align 8, !dbg !5642
  %call96 = call i64 @kpf_copy_bit(i64 noundef %56, i32 noundef 2, i32 noundef 2) #13, !dbg !5643
  %57 = load i64, ptr %u, align 8, !dbg !5644
  %or97 = or i64 %57, %call96, !dbg !5644
  store i64 %or97, ptr %u, align 8, !dbg !5644
  %58 = load i64, ptr %k, align 8, !dbg !5645
  %call98 = call i64 @kpf_copy_bit(i64 noundef %58, i32 noundef 6, i32 noundef 8) #13, !dbg !5646
  %59 = load i64, ptr %u, align 8, !dbg !5647
  %or99 = or i64 %59, %call98, !dbg !5647
  store i64 %or99, ptr %u, align 8, !dbg !5647
  %60 = load i64, ptr %k, align 8, !dbg !5648
  %call100 = call i64 @kpf_copy_bit(i64 noundef %60, i32 noundef 9, i32 noundef 18) #13, !dbg !5649
  %61 = load i64, ptr %u, align 8, !dbg !5650
  %or101 = or i64 %61, %call100, !dbg !5650
  store i64 %or101, ptr %u, align 8, !dbg !5650
  %62 = load ptr, ptr %page.addr, align 8, !dbg !5651
  %call102 = call zeroext i1 @PageSwapCache(ptr noundef %62) #13, !dbg !5653
  br i1 %call102, label %if.then103, label %if.end105, !dbg !5654

if.then103:                                       ; preds = %if.end85
  %63 = load i64, ptr %u, align 8, !dbg !5655
  %or104 = or i64 %63, 8192, !dbg !5655
  store i64 %or104, ptr %u, align 8, !dbg !5655
  br label %if.end105, !dbg !5656

if.end105:                                        ; preds = %if.then103, %if.end85
  %64 = load i64, ptr %k, align 8, !dbg !5657
  %call106 = call i64 @kpf_copy_bit(i64 noundef %64, i32 noundef 14, i32 noundef 19) #13, !dbg !5658
  %65 = load i64, ptr %u, align 8, !dbg !5659
  %or107 = or i64 %65, %call106, !dbg !5659
  store i64 %or107, ptr %u, align 8, !dbg !5659
  %66 = load i64, ptr %k, align 8, !dbg !5660
  %call108 = call i64 @kpf_copy_bit(i64 noundef %66, i32 noundef 18, i32 noundef 20) #13, !dbg !5661
  %67 = load i64, ptr %u, align 8, !dbg !5662
  %or109 = or i64 %67, %call108, !dbg !5662
  store i64 %or109, ptr %u, align 8, !dbg !5662
  %68 = load i64, ptr %k, align 8, !dbg !5663
  %call110 = call i64 @kpf_copy_bit(i64 noundef %68, i32 noundef 33, i32 noundef 21) #13, !dbg !5664
  %69 = load i64, ptr %u, align 8, !dbg !5665
  %or111 = or i64 %69, %call110, !dbg !5665
  store i64 %or111, ptr %u, align 8, !dbg !5665
  %70 = load i64, ptr %k, align 8, !dbg !5666
  %call112 = call i64 @kpf_copy_bit(i64 noundef %70, i32 noundef 39, i32 noundef 22) #13, !dbg !5667
  %71 = load i64, ptr %u, align 8, !dbg !5668
  %or113 = or i64 %71, %call112, !dbg !5668
  store i64 %or113, ptr %u, align 8, !dbg !5668
  %72 = load i64, ptr %k, align 8, !dbg !5669
  %call114 = call i64 @kpf_copy_bit(i64 noundef %72, i32 noundef 32, i32 noundef 14) #13, !dbg !5670
  %73 = load i64, ptr %u, align 8, !dbg !5671
  %or115 = or i64 %73, %call114, !dbg !5671
  store i64 %or115, ptr %u, align 8, !dbg !5671
  %74 = load i64, ptr %k, align 8, !dbg !5672
  %call116 = call i64 @kpf_copy_bit(i64 noundef %74, i32 noundef 34, i32 noundef 17) #13, !dbg !5673
  %75 = load i64, ptr %u, align 8, !dbg !5674
  %or117 = or i64 %75, %call116, !dbg !5674
  store i64 %or117, ptr %u, align 8, !dbg !5674
  %76 = load i64, ptr %k, align 8, !dbg !5675
  %call118 = call i64 @kpf_copy_bit(i64 noundef %76, i32 noundef 35, i32 noundef 15) #13, !dbg !5676
  %77 = load i64, ptr %u, align 8, !dbg !5677
  %or119 = or i64 %77, %call118, !dbg !5677
  store i64 %or119, ptr %u, align 8, !dbg !5677
  %78 = load i64, ptr %k, align 8, !dbg !5678
  %call120 = call i64 @kpf_copy_bit(i64 noundef %78, i32 noundef 36, i32 noundef 16) #13, !dbg !5679
  %79 = load i64, ptr %u, align 8, !dbg !5680
  %or121 = or i64 %79, %call120, !dbg !5680
  store i64 %or121, ptr %u, align 8, !dbg !5680
  %80 = load i64, ptr %k, align 8, !dbg !5681
  %call122 = call i64 @kpf_copy_bit(i64 noundef %80, i32 noundef 37, i32 noundef 12) #13, !dbg !5682
  %81 = load i64, ptr %u, align 8, !dbg !5683
  %or123 = or i64 %81, %call122, !dbg !5683
  store i64 %or123, ptr %u, align 8, !dbg !5683
  %82 = load i64, ptr %k, align 8, !dbg !5684
  %call124 = call i64 @kpf_copy_bit(i64 noundef %82, i32 noundef 38, i32 noundef 13) #13, !dbg !5685
  %83 = load i64, ptr %u, align 8, !dbg !5686
  %or125 = or i64 %83, %call124, !dbg !5686
  store i64 %or125, ptr %u, align 8, !dbg !5686
  %84 = load i64, ptr %u, align 8, !dbg !5687
  store i64 %84, ptr %retval, align 8, !dbg !5688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5688

cleanup:                                          ; preds = %if.end105, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #12, !dbg !5689
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #12, !dbg !5689
  %85 = load i64, ptr %retval, align 8, !dbg !5689
  ret i64 %85, !dbg !5689
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @page_mapped(ptr noundef %page) #3 align 16 !dbg !5690 {
entry:
  %retval = alloca i1, align 1
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5696
  %call = call i32 @PageCompound(ptr noundef %0) #13, !dbg !5696
  %tobool = icmp ne i32 %call, 0, !dbg !5696
  %lnot = xor i1 %tobool, true, !dbg !5696
  %lnot1 = xor i1 %lnot, true, !dbg !5696
  %lnot2 = xor i1 %lnot1, true, !dbg !5696
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5696
  %conv = sext i32 %lnot.ext to i64, !dbg !5696
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5696
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5696
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5698

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %page.addr, align 8, !dbg !5699
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 2, !dbg !5700
  %call4 = call i32 @atomic_read(ptr noundef %2) #13, !dbg !5701
  %cmp = icmp sge i32 %call4, 0, !dbg !5702
  store i1 %cmp, ptr %retval, align 1, !dbg !5703
  br label %return, !dbg !5703

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !5704
  %call6 = call i64 @_compound_head(ptr noundef %3) #13, !dbg !5704
  %4 = inttoptr i64 %call6 to ptr, !dbg !5704
  %call7 = call zeroext i1 @folio_large_is_mapped(ptr noundef %4) #13, !dbg !5705
  store i1 %call7, ptr %retval, align 1, !dbg !5706
  br label %return, !dbg !5706

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, ptr %retval, align 1, !dbg !5707
  ret i1 %5, !dbg !5707
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @PageAnon(ptr noundef %page) #4 align 16 !dbg !5708 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5712
  %call = call i64 @_compound_head(ptr noundef %0) #13, !dbg !5712
  %1 = inttoptr i64 %call to ptr, !dbg !5712
  %call1 = call zeroext i1 @folio_test_anon(ptr noundef %1) #13, !dbg !5713
  ret i1 %call1, !dbg !5714
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageKsm(ptr noundef %page) #3 align 16 !dbg !5715 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  ret i32 0, !dbg !5720
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageHead(ptr noundef %page) #4 align 16 !dbg !5721 {
entry:
  %page.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5725, metadata !DIExpression()), !dbg !5726
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5727
  store ptr %0, ptr %tmp, align 8, !dbg !5727
  %1 = load ptr, ptr %tmp, align 8, !dbg !5727
  %2 = load ptr, ptr %page.addr, align 8, !dbg !5729
  %flags = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 0, !dbg !5729
  %3 = ptrtoint ptr %flags to i64, !dbg !5729
  %cmp = icmp ne i64 %3, 0, !dbg !5729
  %conv = zext i1 %cmp to i32, !dbg !5729
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5729
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !5729

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %page.addr, align 8, !dbg !5729
  %flags1 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !5729
  %6 = ptrtoint ptr %flags1 to i64, !dbg !5729
  %cmp2 = icmp ne i64 %6, 0, !dbg !5729
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5729

land.lhs.true4:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %page.addr, align 8, !dbg !5729
  %flags5 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 0, !dbg !5729
  %8 = load i64, ptr %flags5, align 16, !dbg !5729
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5729
  br i1 %9, label %cond.true, label %cond.false, !dbg !5730

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load ptr, ptr %page.addr, align 8, !dbg !5729
  %flags6 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !5729
  %call = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags6) #13, !dbg !5729
  br i1 %call, label %land.rhs, label %land.end, !dbg !5729

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %11 = load ptr, ptr %page.addr, align 8, !dbg !5729
  %flags8 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 0, !dbg !5729
  %call9 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags8) #13, !dbg !5729
  br i1 %call9, label %land.rhs, label %land.end, !dbg !5730

land.rhs:                                         ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %page.addr, align 8, !dbg !5731
  %call11 = call i32 @page_is_fake_head(ptr noundef %12) #13, !dbg !5732
  %tobool = icmp ne i32 %call11, 0, !dbg !5733
  %lnot = xor i1 %tobool, true, !dbg !5733
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true
  %13 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %lnot, %land.rhs ], !dbg !5734
  %land.ext = zext i1 %13 to i32, !dbg !5730
  ret i32 %land.ext, !dbg !5735
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageTail(ptr noundef %page) #4 align 16 !dbg !5736 {
entry:
  %page.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5738, metadata !DIExpression()), !dbg !5739
  br label %do.body, !dbg !5740

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5742

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5740
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !5740
  %compound_head = getelementptr inbounds %struct.anon.20, ptr %1, i32 0, i32 0, !dbg !5740
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !5740
  store i64 %2, ptr %tmp, align 8, !dbg !5742
  %3 = load i64, ptr %tmp, align 8, !dbg !5740
  %and = and i64 %3, 1, !dbg !5744
  %tobool = icmp ne i64 %and, 0, !dbg !5744
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5745

lor.rhs:                                          ; preds = %do.end
  %4 = load ptr, ptr %page.addr, align 8, !dbg !5746
  %call = call i32 @page_is_fake_head(ptr noundef %4) #13, !dbg !5747
  %tobool1 = icmp ne i32 %call, 0, !dbg !5745
  br label %lor.end, !dbg !5745

lor.end:                                          ; preds = %lor.rhs, %do.end
  %5 = phi i1 [ true, %do.end ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32, !dbg !5745
  ret i32 %lor.ext, !dbg !5748
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @PageHuge(ptr noundef %page) #3 align 16 !dbg !5749 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5755
  %call = call i64 @_compound_head(ptr noundef %0) #13, !dbg !5755
  %1 = inttoptr i64 %call to ptr, !dbg !5755
  %call1 = call zeroext i1 @folio_test_hugetlb(ptr noundef %1) #13, !dbg !5756
  ret i1 %call1, !dbg !5757
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageTransCompound(ptr noundef %page) #3 align 16 !dbg !5758 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5760, metadata !DIExpression()), !dbg !5761
  ret i32 0, !dbg !5761
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_compound_head(ptr noundef %page) #3 align 16 !dbg !5762 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %head = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5766, metadata !DIExpression()), !dbg !5768
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #12, !dbg !5769
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5767, metadata !DIExpression()), !dbg !5770
  br label %do.body, !dbg !5771

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5773

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5773

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5771
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, !dbg !5771
  %compound_head = getelementptr inbounds %struct.anon.20, ptr %1, i32 0, i32 0, !dbg !5771
  %2 = load volatile i64, ptr %compound_head, align 8, !dbg !5771
  store i64 %2, ptr %tmp, align 8, !dbg !5773
  %3 = load i64, ptr %tmp, align 8, !dbg !5771
  store i64 %3, ptr %head, align 8, !dbg !5770
  %4 = load i64, ptr %head, align 8, !dbg !5775
  %and = and i64 %4, 1, !dbg !5775
  %tobool = icmp ne i64 %and, 0, !dbg !5775
  %lnot = xor i1 %tobool, true, !dbg !5775
  %lnot1 = xor i1 %lnot, true, !dbg !5775
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5775
  %conv = sext i32 %lnot.ext to i64, !dbg !5775
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5775
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5775
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5777

if.then:                                          ; preds = %do.end
  %5 = load i64, ptr %head, align 8, !dbg !5778
  %sub = sub i64 %5, 1, !dbg !5779
  store i64 %sub, ptr %retval, align 8, !dbg !5780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5780

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %page.addr, align 8, !dbg !5781
  %call = call ptr @page_fixed_fake_head(ptr noundef %6) #13, !dbg !5782
  %7 = ptrtoint ptr %call to i64, !dbg !5783
  store i64 %7, ptr %retval, align 8, !dbg !5784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5784

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #12, !dbg !5785
  %8 = load i64, ptr %retval, align 8, !dbg !5785
  ret i64 %8, !dbg !5785
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageLRU(ptr noundef %page) #4 align 16 !dbg !5786 {
entry:
  %page.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5790
  %call = call i64 @_compound_head(ptr noundef %0) #13, !dbg !5790
  %1 = inttoptr i64 %call to ptr, !dbg !5790
  store ptr %1, ptr %tmp, align 8, !dbg !5790
  %2 = load ptr, ptr %tmp, align 8, !dbg !5790
  %flags = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 0, !dbg !5789
  %call1 = call zeroext i1 @_test_bit(i64 noundef 5, ptr noundef %flags) #13, !dbg !5789
  %conv = zext i1 %call1 to i32, !dbg !5789
  ret i32 %conv, !dbg !5789
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_huge_zero_page(ptr noundef %page) #3 align 16 !dbg !5792 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5795, metadata !DIExpression()), !dbg !5796
  ret i1 false, !dbg !5797
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_zero_pfn(i64 noundef %pfn) #3 align 16 !dbg !5798 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !5805
  %1 = load i64, ptr @zero_pfn, align 8, !dbg !5806
  %cmp = icmp eq i64 %0, %1, !dbg !5807
  %conv = zext i1 %cmp to i32, !dbg !5807
  ret i32 %conv, !dbg !5808
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageBuddy(ptr noundef %page) #4 align 16 !dbg !5809 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5811, metadata !DIExpression()), !dbg !5812
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5812
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2, !dbg !5812
  %2 = load i32, ptr %1, align 16, !dbg !5812
  %and = and i32 %2, -268435328, !dbg !5812
  %cmp = icmp eq i32 %and, -268435456, !dbg !5812
  %conv = zext i1 %cmp to i32, !dbg !5812
  ret i32 %conv, !dbg !5812
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_count(ptr noundef %page) #3 align 16 !dbg !5813 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5818
  %call = call i64 @_compound_head(ptr noundef %0) #13, !dbg !5818
  %1 = inttoptr i64 %call to ptr, !dbg !5818
  %call1 = call i32 @folio_ref_count(ptr noundef %1) #13, !dbg !5819
  ret i32 %call1, !dbg !5820
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5821 dso_local zeroext i1 @is_free_buddy_page(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageOffline(ptr noundef %page) #4 align 16 !dbg !5822 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5825
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2, !dbg !5825
  %2 = load i32, ptr %1, align 16, !dbg !5825
  %and = and i32 %2, -268435200, !dbg !5825
  %cmp = icmp eq i32 %and, -268435456, !dbg !5825
  %conv = zext i1 %cmp to i32, !dbg !5825
  ret i32 %conv, !dbg !5825
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageTable(ptr noundef %page) #4 align 16 !dbg !5826 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5828, metadata !DIExpression()), !dbg !5829
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5829
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2, !dbg !5829
  %2 = load i32, ptr %1, align 16, !dbg !5829
  %and = and i32 %2, -268434944, !dbg !5829
  %cmp = icmp eq i32 %and, -268435456, !dbg !5829
  %conv = zext i1 %cmp to i32, !dbg !5829
  ret i32 %conv, !dbg !5829
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @page_is_idle(ptr noundef %page) #3 align 16 !dbg !5830 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5835
  %call = call i64 @_compound_head(ptr noundef %0) #13, !dbg !5835
  %1 = inttoptr i64 %call to ptr, !dbg !5835
  %call1 = call zeroext i1 @folio_test_idle(ptr noundef %1) #13, !dbg !5836
  ret i1 %call1, !dbg !5837
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kpf_copy_bit(i64 noundef %kflags, i32 noundef %ubit, i32 noundef %kbit) #3 align 16 !dbg !5838 {
entry:
  %kflags.addr = alloca i64, align 8
  %ubit.addr = alloca i32, align 4
  %kbit.addr = alloca i32, align 4
  store i64 %kflags, ptr %kflags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kflags.addr, metadata !5842, metadata !DIExpression()), !dbg !5845
  store i32 %ubit, ptr %ubit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ubit.addr, metadata !5843, metadata !DIExpression()), !dbg !5846
  store i32 %kbit, ptr %kbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %kbit.addr, metadata !5844, metadata !DIExpression()), !dbg !5847
  %0 = load i64, ptr %kflags.addr, align 8, !dbg !5848
  %1 = load i32, ptr %kbit.addr, align 4, !dbg !5849
  %sh_prom = zext i32 %1 to i64, !dbg !5850
  %shr = lshr i64 %0, %sh_prom, !dbg !5850
  %and = and i64 %shr, 1, !dbg !5851
  %2 = load i32, ptr %ubit.addr, align 4, !dbg !5852
  %sh_prom1 = zext i32 %2 to i64, !dbg !5853
  %shl = shl i64 %and, %sh_prom1, !dbg !5853
  ret i64 %shl, !dbg !5854
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageSlab(ptr noundef %page) #4 align 16 !dbg !5855 {
entry:
  %page.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5859
  %call = call i64 @_compound_head(ptr noundef %0) #13, !dbg !5859
  %1 = inttoptr i64 %call to ptr, !dbg !5859
  store ptr %1, ptr %tmp1, align 8, !dbg !5859
  %2 = load ptr, ptr %tmp1, align 8, !dbg !5859
  store ptr %2, ptr %tmp, align 8, !dbg !5862
  %3 = load ptr, ptr %tmp, align 8, !dbg !5862
  %flags = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 0, !dbg !5858
  %call2 = call zeroext i1 @_test_bit(i64 noundef 11, ptr noundef %flags) #13, !dbg !5858
  %conv = zext i1 %call2 to i32, !dbg !5858
  ret i32 %conv, !dbg !5858
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @PageSwapCache(ptr noundef %page) #4 align 16 !dbg !5863 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5867
  %call = call i64 @_compound_head(ptr noundef %0) #13, !dbg !5867
  %1 = inttoptr i64 %call to ptr, !dbg !5867
  %call1 = call zeroext i1 @folio_test_swapcache(ptr noundef %1) #13, !dbg !5868
  ret i1 %call1, !dbg !5869
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_proc__340_339_proc_page_init5() #6 section ".init.text" align 16 !dbg !5870 {
entry:
  %call = call i32 @proc_page_init() #14, !dbg !5871
  ret i32 %call, !dbg !5871
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @proc_page_init() #6 section ".init.text" align 16 !dbg !5872 {
entry:
  %call = call ptr @proc_create(ptr noundef @.str, i16 noundef zeroext 256, ptr noundef null, ptr noundef @kpagecount_proc_ops) #13, !dbg !5873
  %call1 = call ptr @proc_create(ptr noundef @.str.1, i16 noundef zeroext 256, ptr noundef null, ptr noundef @kpageflags_proc_ops) #13, !dbg !5874
  ret i32 0, !dbg !5875
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PageCompound(ptr noundef %page) #4 align 16 !dbg !5876 {
entry:
  %page.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5880
  %flags = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 0, !dbg !5880
  %1 = ptrtoint ptr %flags to i64, !dbg !5880
  %cmp = icmp ne i64 %1, 0, !dbg !5880
  %conv = zext i1 %cmp to i32, !dbg !5880
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5880
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !5880

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !5880
  %flags1 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 0, !dbg !5880
  %4 = ptrtoint ptr %flags1 to i64, !dbg !5880
  %cmp2 = icmp ne i64 %4, 0, !dbg !5880
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5880

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %page.addr, align 8, !dbg !5880
  %flags5 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !5880
  %6 = load i64, ptr %flags5, align 16, !dbg !5880
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5880
  br i1 %7, label %cond.true, label %cond.false, !dbg !5881

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %page.addr, align 8, !dbg !5880
  %flags6 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !5880
  %call = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags6) #13, !dbg !5880
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !5880

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %page.addr, align 8, !dbg !5880
  %flags8 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 0, !dbg !5880
  %call9 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags8) #13, !dbg !5880
  br i1 %call9, label %lor.end, label %lor.rhs, !dbg !5881

lor.rhs:                                          ; preds = %cond.false, %cond.true
  br label %do.body, !dbg !5882

do.body:                                          ; preds = %lor.rhs
  br label %do.end, !dbg !5884

do.end:                                           ; preds = %do.body
  %10 = load ptr, ptr %page.addr, align 8, !dbg !5882
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1, !dbg !5882
  %compound_head = getelementptr inbounds %struct.anon.20, ptr %11, i32 0, i32 0, !dbg !5882
  %12 = load volatile i64, ptr %compound_head, align 8, !dbg !5882
  store i64 %12, ptr %tmp, align 8, !dbg !5884
  %13 = load i64, ptr %tmp, align 8, !dbg !5882
  %and = and i64 %13, 1, !dbg !5886
  %tobool = icmp ne i64 %and, 0, !dbg !5881
  br label %lor.end, !dbg !5881

lor.end:                                          ; preds = %do.end, %cond.false, %cond.true
  %14 = phi i1 [ true, %cond.false ], [ true, %cond.true ], [ %tobool, %do.end ]
  %lor.ext = zext i1 %14 to i32, !dbg !5881
  ret i32 %lor.ext, !dbg !5887
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !5888 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5895, metadata !DIExpression()), !dbg !5896
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5897
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #13, !dbg !5898
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5899
  %call = call i32 @raw_atomic_read(ptr noundef %1) #13, !dbg !5900
  ret i32 %call, !dbg !5901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_large_is_mapped(ptr noundef %folio) #3 align 16 !dbg !5902 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5906, metadata !DIExpression()), !dbg !5907
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5908
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 1, !dbg !5909
  %_nr_pages_mapped = getelementptr inbounds %struct.anon.29, ptr %1, i32 0, i32 4, !dbg !5909
  %call = call i32 @atomic_read(ptr noundef %_nr_pages_mapped) #13, !dbg !5910
  %cmp = icmp sgt i32 %call, 0, !dbg !5911
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5912

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %folio.addr, align 8, !dbg !5913
  %3 = getelementptr inbounds %struct.folio, ptr %2, i32 0, i32 1, !dbg !5914
  %_entire_mapcount = getelementptr inbounds %struct.anon.29, ptr %3, i32 0, i32 3, !dbg !5914
  %call1 = call i32 @atomic_read(ptr noundef %_entire_mapcount) #13, !dbg !5915
  %cmp2 = icmp sge i32 %call1, 0, !dbg !5916
  br label %lor.end, !dbg !5912

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  ret i1 %4, !dbg !5917
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5918 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5923, metadata !DIExpression()), !dbg !5928
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5924, metadata !DIExpression()), !dbg !5929
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !5930
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5925, metadata !DIExpression()), !dbg !5931
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5932
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5933
  %div = udiv i64 %1, 64, !dbg !5933
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5934
  store ptr %add.ptr, ptr %p, align 8, !dbg !5931
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5926, metadata !DIExpression()), !dbg !5936
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5937
  %rem = urem i64 %2, 64, !dbg !5937
  %shl = shl i64 1, %rem, !dbg !5937
  store i64 %shl, ptr %mask, align 8, !dbg !5936
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !5938
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5927, metadata !DIExpression()), !dbg !5939
  %3 = load ptr, ptr %p, align 8, !dbg !5940
  %4 = load i64, ptr %3, align 8, !dbg !5941
  store i64 %4, ptr %val, align 8, !dbg !5939
  %5 = load i64, ptr %val, align 8, !dbg !5942
  %6 = load i64, ptr %mask, align 8, !dbg !5943
  %and = and i64 %5, %6, !dbg !5944
  %tobool = icmp ne i64 %and, 0, !dbg !5945
  %lnot = xor i1 %tobool, true, !dbg !5945
  %lnot1 = xor i1 %lnot, true, !dbg !5946
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !5947
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !5947
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !5947
  ret i1 %lnot1, !dbg !5948
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5949 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5952, metadata !DIExpression()), !dbg !5954
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5953, metadata !DIExpression()), !dbg !5955
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5956
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5957
  %div = udiv i64 %1, 64, !dbg !5957
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5958
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !5959
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5960
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5961
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !5962
  ret i1 %call, !dbg !5963
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5964 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5972, metadata !DIExpression()), !dbg !5974
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5973, metadata !DIExpression()), !dbg !5975
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5976
  %1 = load i64, ptr %size.addr, align 8, !dbg !5977
  %conv = trunc i64 %1 to i32, !dbg !5977
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !5978
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5979
  %3 = load i64, ptr %size.addr, align 8, !dbg !5979
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !5979
  ret void, !dbg !5980
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5981 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5984, metadata !DIExpression()), !dbg !5986
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5985, metadata !DIExpression()), !dbg !5987
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5988
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5989
  br i1 %1, label %cond.true, label %cond.false, !dbg !5989

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5990
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5991
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !5992
  %conv = zext i1 %call to i32, !dbg !5992
  br label %cond.end, !dbg !5989

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5993
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5994
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !5995
  %conv2 = zext i1 %call1 to i32, !dbg !5995
  br label %cond.end, !dbg !5989

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5989
  %tobool = icmp ne i32 %cond, 0, !dbg !5989
  ret i1 %tobool, !dbg !5996
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5997 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6002, metadata !DIExpression()), !dbg !6004
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6003, metadata !DIExpression()), !dbg !6005
  ret i1 true, !dbg !6006
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6007 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6012, metadata !DIExpression()), !dbg !6015
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6013, metadata !DIExpression()), !dbg !6016
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6014, metadata !DIExpression()), !dbg !6017
  ret void, !dbg !6018
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6019 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6023, metadata !DIExpression()), !dbg !6025
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6024, metadata !DIExpression()), !dbg !6026
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6027
  %and = and i64 %0, 63, !dbg !6028
  %shl = shl i64 1, %and, !dbg !6029
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6030
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6031
  %shr = ashr i64 %2, 6, !dbg !6032
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6030
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6030
  %and1 = and i64 %shl, %3, !dbg !6033
  %cmp = icmp ne i64 %and1, 0, !dbg !6034
  ret i1 %cmp, !dbg !6035
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6036 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6038, metadata !DIExpression()), !dbg !6041
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6039, metadata !DIExpression()), !dbg !6042
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !6043
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6040, metadata !DIExpression()), !dbg !6044
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6045
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6046
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !6047, !srcloc !6048
  %3 = icmp ult i8 %2, 2, !dbg !6047
  call void @llvm.assume(i1 %3), !dbg !6047
  store i8 %2, ptr %oldbit, align 1, !dbg !6047
  %4 = load i8, ptr %oldbit, align 1, !dbg !6049, !range !6050, !noundef !1315
  %tobool = trunc i8 %4 to i1, !dbg !6049
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !6051
  ret i1 %tobool, !dbg !6052
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !6053 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6058
  %call = call i32 @arch_atomic_read(ptr noundef %0) #13, !dbg !6059
  ret i32 %call, !dbg !6060
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !6061 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6064, metadata !DIExpression()), !dbg !6065
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6066
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6066
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6066
  ret i32 %1, !dbg !6067
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_anon(ptr noundef %folio) #4 align 16 !dbg !6068 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6070, metadata !DIExpression()), !dbg !6071
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6072
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6073
  %mapping = getelementptr inbounds %struct.anon.24, ptr %1, i32 0, i32 2, !dbg !6073
  %2 = load ptr, ptr %mapping, align 8, !dbg !6073
  %3 = ptrtoint ptr %2 to i64, !dbg !6074
  %and = and i64 %3, 1, !dbg !6075
  %cmp = icmp ne i64 %and, 0, !dbg !6076
  ret i1 %cmp, !dbg !6077
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_is_fake_head(ptr noundef %page) #4 align 16 !dbg !6078 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6080, metadata !DIExpression()), !dbg !6081
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6082
  %call = call ptr @page_fixed_fake_head(ptr noundef %0) #13, !dbg !6083
  %1 = load ptr, ptr %page.addr, align 8, !dbg !6084
  %cmp = icmp ne ptr %call, %1, !dbg !6085
  %conv = zext i1 %cmp to i32, !dbg !6085
  ret i32 %conv, !dbg !6086
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @page_fixed_fake_head(ptr noundef %page) #4 align 16 !dbg !6087 {
entry:
  %retval = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %head = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6091, metadata !DIExpression()), !dbg !6098
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #12, !dbg !6099
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !6092, metadata !DIExpression()), !dbg !6099
  %call = call zeroext i1 @arch_static_branch(ptr noundef @hugetlb_optimize_vmemmap_key, i1 noundef zeroext false) #13, !dbg !6100
  %frombool = zext i1 %call to i8, !dbg !6100
  store i8 %frombool, ptr %branch, align 1, !dbg !6100
  %0 = load i8, ptr %branch, align 1, !dbg !6099, !range !6050, !noundef !1315
  %tobool = trunc i8 %0 to i1, !dbg !6099
  %lnot = xor i1 %tobool, true, !dbg !6099
  %lnot1 = xor i1 %lnot, true, !dbg !6099
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6099
  %conv = sext i32 %lnot.ext to i64, !dbg !6099
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6099
  store i64 %expval, ptr %tmp, align 8, !dbg !6103
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #12, !dbg !6104
  %1 = load i64, ptr %tmp, align 8, !dbg !6099
  %tobool2 = icmp ne i64 %1, 0, !dbg !6104
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6105

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !6106
  store ptr %2, ptr %retval, align 8, !dbg !6107
  br label %return, !dbg !6107

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !6108
  %4 = ptrtoint ptr %3 to i64, !dbg !6108
  %and = and i64 %4, 4095, !dbg !6108
  %cmp = icmp eq i64 %and, 0, !dbg !6108
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !6109

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %page.addr, align 8, !dbg !6110
  %flags = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 0, !dbg !6110
  %6 = ptrtoint ptr %flags to i64, !dbg !6110
  %cmp4 = icmp ne i64 %6, 0, !dbg !6110
  %conv5 = zext i1 %cmp4 to i32, !dbg !6110
  %7 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !6110
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !6110

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %page.addr, align 8, !dbg !6110
  %flags7 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 0, !dbg !6110
  %9 = ptrtoint ptr %flags7 to i64, !dbg !6110
  %cmp8 = icmp ne i64 %9, 0, !dbg !6110
  br i1 %cmp8, label %land.lhs.true10, label %cond.false, !dbg !6110

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %10 = load ptr, ptr %page.addr, align 8, !dbg !6110
  %flags11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 0, !dbg !6110
  %11 = load i64, ptr %flags11, align 16, !dbg !6110
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6110
  br i1 %12, label %cond.true, label %cond.false, !dbg !6111

cond.true:                                        ; preds = %land.lhs.true10
  %13 = load ptr, ptr %page.addr, align 8, !dbg !6110
  %flags12 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 0, !dbg !6110
  %call13 = call zeroext i1 @const_test_bit(i64 noundef 6, ptr noundef %flags12) #13, !dbg !6110
  br i1 %call13, label %if.then18, label %if.end31, !dbg !6110

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %14 = load ptr, ptr %page.addr, align 8, !dbg !6110
  %flags15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 0, !dbg !6110
  %call16 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %flags15) #13, !dbg !6110
  br i1 %call16, label %if.then18, label %if.end31, !dbg !6111

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #12, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6095, metadata !DIExpression()), !dbg !6113
  br label %do.body, !dbg !6114

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !6116

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6116

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %page.addr, align 8, !dbg !6114
  %arrayidx = getelementptr %struct.page, ptr %15, i64 1, !dbg !6114
  %16 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1, !dbg !6114
  %compound_head = getelementptr inbounds %struct.anon.20, ptr %16, i32 0, i32 0, !dbg !6114
  %17 = load volatile i64, ptr %compound_head, align 8, !dbg !6114
  store i64 %17, ptr %tmp19, align 8, !dbg !6116
  %18 = load i64, ptr %tmp19, align 8, !dbg !6114
  store i64 %18, ptr %head, align 8, !dbg !6113
  %19 = load i64, ptr %head, align 8, !dbg !6118
  %and20 = and i64 %19, 1, !dbg !6118
  %tobool21 = icmp ne i64 %and20, 0, !dbg !6118
  %lnot22 = xor i1 %tobool21, true, !dbg !6118
  %lnot24 = xor i1 %lnot22, true, !dbg !6118
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6118
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6118
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !6118
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !6118
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6120

if.then29:                                        ; preds = %do.end
  %20 = load i64, ptr %head, align 8, !dbg !6121
  %sub = sub i64 %20, 1, !dbg !6122
  %21 = inttoptr i64 %sub to ptr, !dbg !6123
  store ptr %21, ptr %retval, align 8, !dbg !6124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6124

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6125
  br label %cleanup, !dbg !6125

cleanup:                                          ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #12, !dbg !6125
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31, !dbg !6126

if.end31:                                         ; preds = %cleanup.cont, %cond.false, %cond.true, %if.end
  %22 = load ptr, ptr %page.addr, align 8, !dbg !6127
  store ptr %22, ptr %retval, align 8, !dbg !6128
  br label %return, !dbg !6128

return:                                           ; preds = %if.end31, %cleanup, %if.then
  %23 = load ptr, ptr %retval, align 8, !dbg !6129
  ret ptr %23, !dbg !6129

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !6130 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6147, metadata !DIExpression()), !dbg !6150
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6148, metadata !DIExpression()), !dbg !6151
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6152
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6153, !range !6050, !noundef !1315
  %tobool = trunc i8 %1 to i1, !dbg !6153
  %conv = zext i1 %tobool to i32, !dbg !6153
  %or = or i32 2, %conv, !dbg !6154
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !6155, !srcloc !6156

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6157
  br label %return, !dbg !6157

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6149), !dbg !6158
  store i1 true, ptr %retval, align 1, !dbg !6159
  br label %return, !dbg !6159

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6160
  ret i1 %2, !dbg !6160
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_hugetlb(ptr noundef %folio) #4 align 16 !dbg !6161 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6165, metadata !DIExpression()), !dbg !6166
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6166
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6166
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 2, !dbg !6166
  %3 = load i32, ptr %2, align 16, !dbg !6166
  %and = and i32 %3, -268433408, !dbg !6166
  %cmp = icmp eq i32 %and, -268435456, !dbg !6166
  ret i1 %cmp, !dbg !6166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_ref_count(ptr noundef %folio) #3 align 16 !dbg !6167 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6171, metadata !DIExpression()), !dbg !6172
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6173
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6174
  %call = call i32 @page_ref_count(ptr noundef %1) #13, !dbg !6175
  ret i32 %call, !dbg !6176
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_ref_count(ptr noundef %page) #3 align 16 !dbg !6177 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6179, metadata !DIExpression()), !dbg !6180
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6181
  %_refcount = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3, !dbg !6182
  %call = call i32 @atomic_read(ptr noundef %_refcount) #13, !dbg !6183
  ret i32 %call, !dbg !6184
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_idle(ptr noundef %folio) #3 align 16 !dbg !6185 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6187, metadata !DIExpression()), !dbg !6188
  ret i1 false, !dbg !6189
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_swapcache(ptr noundef %folio) #4 align 16 !dbg !6190 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6192, metadata !DIExpression()), !dbg !6193
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6194
  %call = call zeroext i1 @folio_test_swapbacked(ptr noundef %0) #13, !dbg !6195
  br i1 %call, label %land.rhs, label %land.end, !dbg !6196

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %folio.addr, align 8, !dbg !6197
  %call1 = call ptr @folio_flags(ptr noundef %1, i32 noundef 0) #13, !dbg !6197
  %call2 = call zeroext i1 @_test_bit(i64 noundef 12, ptr noundef %call1) #13, !dbg !6197
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %call2, %land.rhs ], !dbg !6198
  ret i1 %2, !dbg !6199
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_swapbacked(ptr noundef %folio) #4 align 16 !dbg !6200 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6202, metadata !DIExpression()), !dbg !6203
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6203
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #13, !dbg !6203
  %call1 = call zeroext i1 @_test_bit(i64 noundef 19, ptr noundef %call) #13, !dbg !6203
  ret i1 %call1, !dbg !6203
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !6204 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6208, metadata !DIExpression()), !dbg !6211
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6209, metadata !DIExpression()), !dbg !6212
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #12, !dbg !6213
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6210, metadata !DIExpression()), !dbg !6214
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6215
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6216
  store ptr %1, ptr %page, align 8, !dbg !6214
  %2 = load ptr, ptr %page, align 8, !dbg !6217
  %3 = load i32, ptr %n.addr, align 4, !dbg !6218
  %idxprom = zext i32 %3 to i64, !dbg !6217
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !6217
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !6219
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #12, !dbg !6220
  ret ptr %flags, !dbg !6221
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6222 dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kpagecount_read(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6268 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %max_dump_pfn = alloca i64, align 8
  %out = alloca ptr, align 8
  %ppage = alloca ptr, align 8
  %src = alloca i64, align 8
  %pfn = alloca i64, align 8
  %ret = alloca i64, align 8
  %pcount = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x336 = alloca i64, align 8
  %__UNIQUE_ID___y337 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %___page = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tmp17 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i64, align 8
  %__x = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp19 = alloca i64, align 8
  %tmp25 = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6270, metadata !DIExpression()), !dbg !6295
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6271, metadata !DIExpression()), !dbg !6296
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6272, metadata !DIExpression()), !dbg !6297
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6273, metadata !DIExpression()), !dbg !6298
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_dump_pfn) #12, !dbg !6299
  call void @llvm.dbg.declare(metadata ptr %max_dump_pfn, metadata !6274, metadata !DIExpression()), !dbg !6300
  %call = call i64 @get_max_dump_pfn() #13, !dbg !6301
  store i64 %call, ptr %max_dump_pfn, align 8, !dbg !6300
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #12, !dbg !6302
  call void @llvm.dbg.declare(metadata ptr %out, metadata !6275, metadata !DIExpression()), !dbg !6303
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6304
  store ptr %0, ptr %out, align 8, !dbg !6303
  call void @llvm.lifetime.start.p0(i64 8, ptr %ppage) #12, !dbg !6305
  call void @llvm.dbg.declare(metadata ptr %ppage, metadata !6276, metadata !DIExpression()), !dbg !6306
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #12, !dbg !6307
  call void @llvm.dbg.declare(metadata ptr %src, metadata !6277, metadata !DIExpression()), !dbg !6308
  %1 = load ptr, ptr %ppos.addr, align 8, !dbg !6309
  %2 = load i64, ptr %1, align 8, !dbg !6310
  store i64 %2, ptr %src, align 8, !dbg !6308
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #12, !dbg !6311
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6278, metadata !DIExpression()), !dbg !6312
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6313
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6279, metadata !DIExpression()), !dbg !6314
  store i64 0, ptr %ret, align 8, !dbg !6314
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcount) #12, !dbg !6315
  call void @llvm.dbg.declare(metadata ptr %pcount, metadata !6280, metadata !DIExpression()), !dbg !6316
  %3 = load i64, ptr %src, align 8, !dbg !6317
  %div = udiv i64 %3, 8, !dbg !6318
  store i64 %div, ptr %pfn, align 8, !dbg !6319
  %4 = load i64, ptr %src, align 8, !dbg !6320
  %and = and i64 %4, 7, !dbg !6322
  %tobool = icmp ne i64 %and, 0, !dbg !6322
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6323

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, ptr %count.addr, align 8, !dbg !6324
  %and1 = and i64 %5, 7, !dbg !6325
  %tobool2 = icmp ne i64 %and1, 0, !dbg !6325
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6326

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !6327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6327

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, ptr %src, align 8, !dbg !6328
  %7 = load i64, ptr %max_dump_pfn, align 8, !dbg !6330
  %mul = mul i64 %7, 8, !dbg !6331
  %cmp = icmp uge i64 %6, %mul, !dbg !6332
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6333

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !6334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6334

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x336) #12, !dbg !6335
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x336, metadata !6281, metadata !DIExpression()), !dbg !6335
  %8 = load i64, ptr %count.addr, align 8, !dbg !6335
  store i64 %8, ptr %__UNIQUE_ID___x336, align 8, !dbg !6335
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y337) #12, !dbg !6335
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y337, metadata !6283, metadata !DIExpression()), !dbg !6335
  %9 = load i64, ptr %max_dump_pfn, align 8, !dbg !6335
  %mul5 = mul i64 %9, 8, !dbg !6335
  %10 = load i64, ptr %src, align 8, !dbg !6335
  %sub = sub i64 %mul5, %10, !dbg !6335
  store i64 %sub, ptr %__UNIQUE_ID___y337, align 8, !dbg !6335
  %11 = load i64, ptr %__UNIQUE_ID___x336, align 8, !dbg !6335
  %12 = load i64, ptr %__UNIQUE_ID___y337, align 8, !dbg !6335
  %cmp6 = icmp ult i64 %11, %12, !dbg !6335
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !6335

cond.true:                                        ; preds = %if.end4
  %13 = load i64, ptr %__UNIQUE_ID___x336, align 8, !dbg !6335
  br label %cond.end, !dbg !6335

cond.false:                                       ; preds = %if.end4
  %14 = load i64, ptr %__UNIQUE_ID___y337, align 8, !dbg !6335
  br label %cond.end, !dbg !6335

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !6335
  store i64 %cond, ptr %tmp, align 8, !dbg !6335
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y337) #12, !dbg !6336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x336) #12, !dbg !6336
  %15 = load i64, ptr %tmp, align 8, !dbg !6335
  store i64 %15, ptr %count.addr, align 8, !dbg !6337
  br label %while.cond, !dbg !6338

while.cond:                                       ; preds = %if.end23, %cond.end
  %16 = load i64, ptr %count.addr, align 8, !dbg !6339
  %cmp7 = icmp ugt i64 %16, 0, !dbg !6340
  br i1 %cmp7, label %while.body, label %while.end, !dbg !6338

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %___page) #12, !dbg !6341
  call void @llvm.dbg.declare(metadata ptr %___page, metadata !6284, metadata !DIExpression()), !dbg !6341
  store ptr null, ptr %___page, align 8, !dbg !6341
  %17 = load i64, ptr %pfn, align 8, !dbg !6342
  %call8 = call i32 @pfn_valid(i64 noundef %17) #13, !dbg !6342
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6342
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6341

if.then10:                                        ; preds = %while.body
  %18 = load i64, ptr @vmemmap_base, align 8, !dbg !6342
  %19 = inttoptr i64 %18 to ptr, !dbg !6342
  %20 = load i64, ptr %pfn, align 8, !dbg !6342
  %add.ptr = getelementptr %struct.page, ptr %19, i64 %20, !dbg !6342
  store ptr %add.ptr, ptr %___page, align 8, !dbg !6342
  br label %if.end11, !dbg !6342

if.end11:                                         ; preds = %if.then10, %while.body
  %21 = load ptr, ptr %___page, align 8, !dbg !6341
  store ptr %21, ptr %tmp12, align 8, !dbg !6342
  call void @llvm.lifetime.end.p0(i64 8, ptr %___page) #12, !dbg !6344
  %22 = load ptr, ptr %tmp12, align 8, !dbg !6341
  store ptr %22, ptr %ppage, align 8, !dbg !6345
  %23 = load ptr, ptr %ppage, align 8, !dbg !6346
  %tobool13 = icmp ne ptr %23, null, !dbg !6346
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !6348

if.then14:                                        ; preds = %if.end11
  store i64 0, ptr %pcount, align 8, !dbg !6349
  br label %if.end16, !dbg !6350

if.else:                                          ; preds = %if.end11
  %24 = load ptr, ptr %ppage, align 8, !dbg !6351
  %call15 = call i32 @page_mapcount(ptr noundef %24) #13, !dbg !6352
  %conv = sext i32 %call15 to i64, !dbg !6352
  store i64 %conv, ptr %pcount, align 8, !dbg !6353
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  call void @might_fault() #13, !dbg !6354
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #12, !dbg !6355
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6287, metadata !DIExpression()), !dbg !6355
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #12, !dbg !6355
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6291, metadata !DIExpression()), !dbg !6355
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_pu) #12, !dbg !6355
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6292, metadata !DIExpression()), !dbg !6355
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #12, !dbg !6355
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6293, metadata !DIExpression()), !dbg !6355
  %25 = load i64, ptr %pcount, align 8, !dbg !6355
  store i64 %25, ptr %__x, align 8, !dbg !6355
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6355
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6294, metadata !DIExpression()), !dbg !6355
  %26 = load ptr, ptr %out, align 8, !dbg !6355
  store ptr %26, ptr %__ptr, align 8, !dbg !6355
  %27 = load ptr, ptr %__ptr, align 8, !dbg !6355
  store ptr %27, ptr %__ptr_pu, align 8, !dbg !6355
  %28 = load i64, ptr %__x, align 8, !dbg !6355
  store i64 %28, ptr %__val_pu, align 8, !dbg !6355
  %29 = call i64 @llvm.read_register.i64(metadata !5478), !dbg !6355
  %30 = load ptr, ptr %__ptr_pu, align 8, !dbg !6355
  %31 = load i64, ptr %__val_pu, align 8, !dbg !6355
  %32 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %30, i64 %31, i64 8, i64 %29) #12, !dbg !6355, !srcloc !6356
  %asmresult = extractvalue { ptr, i64 } %32, 0, !dbg !6355
  %asmresult18 = extractvalue { ptr, i64 } %32, 1, !dbg !6355
  %33 = ptrtoint ptr %asmresult to i64, !dbg !6355
  %34 = trunc i64 %33 to i32, !dbg !6355
  store i32 %34, ptr %__ret_pu, align 4, !dbg !6355
  call void @llvm.write_register.i64(metadata !5478, i64 %asmresult18), !dbg !6355
  %35 = load ptr, ptr %__ptr, align 8, !dbg !6357
  call void @kmsan_copy_to_user(ptr noundef %35, ptr noundef %__x, i64 noundef 8, i64 noundef 0) #13, !dbg !6357
  %36 = load i32, ptr %__ret_pu, align 4, !dbg !6355
  %conv20 = sext i32 %36 to i64, !dbg !6355
  %expval = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !6355
  store i64 %expval, ptr %tmp19, align 8, !dbg !6355
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #12, !dbg !6354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_pu) #12, !dbg !6354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #12, !dbg !6354
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #12, !dbg !6354
  %37 = load i64, ptr %tmp19, align 8, !dbg !6355
  store i64 %37, ptr %tmp17, align 8, !dbg !6354
  %38 = load i64, ptr %tmp17, align 8, !dbg !6354
  %tobool21 = icmp ne i64 %38, 0, !dbg !6359
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !6360

if.then22:                                        ; preds = %if.end16
  store i64 -14, ptr %ret, align 8, !dbg !6361
  br label %while.end, !dbg !6363

if.end23:                                         ; preds = %if.end16
  %39 = load i64, ptr %pfn, align 8, !dbg !6364
  %inc = add i64 %39, 1, !dbg !6364
  store i64 %inc, ptr %pfn, align 8, !dbg !6364
  %40 = load ptr, ptr %out, align 8, !dbg !6365
  %incdec.ptr = getelementptr i64, ptr %40, i32 1, !dbg !6365
  store ptr %incdec.ptr, ptr %out, align 8, !dbg !6365
  %41 = load i64, ptr %count.addr, align 8, !dbg !6366
  %sub24 = sub i64 %41, 8, !dbg !6366
  store i64 %sub24, ptr %count.addr, align 8, !dbg !6366
  call void @__might_resched(ptr noundef @.str.2, i32 noundef 84, i32 noundef 0) #13, !dbg !6367
  %call26 = call i32 @_cond_resched() #13, !dbg !6367
  store i32 %call26, ptr %tmp25, align 4, !dbg !6367
  %42 = load i32, ptr %tmp25, align 4, !dbg !6367
  br label %while.cond, !dbg !6338, !llvm.loop !6369

while.end:                                        ; preds = %if.then22, %while.cond
  %43 = load ptr, ptr %out, align 8, !dbg !6373
  %44 = load ptr, ptr %buf.addr, align 8, !dbg !6374
  %sub.ptr.lhs.cast = ptrtoint ptr %43 to i64, !dbg !6375
  %sub.ptr.rhs.cast = ptrtoint ptr %44 to i64, !dbg !6375
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6375
  %45 = load ptr, ptr %ppos.addr, align 8, !dbg !6376
  %46 = load i64, ptr %45, align 8, !dbg !6377
  %add = add i64 %46, %sub.ptr.sub, !dbg !6377
  store i64 %add, ptr %45, align 8, !dbg !6377
  %47 = load i64, ptr %ret, align 8, !dbg !6378
  %tobool27 = icmp ne i64 %47, 0, !dbg !6378
  br i1 %tobool27, label %if.end32, label %if.then28, !dbg !6380

if.then28:                                        ; preds = %while.end
  %48 = load ptr, ptr %out, align 8, !dbg !6381
  %49 = load ptr, ptr %buf.addr, align 8, !dbg !6382
  %sub.ptr.lhs.cast29 = ptrtoint ptr %48 to i64, !dbg !6383
  %sub.ptr.rhs.cast30 = ptrtoint ptr %49 to i64, !dbg !6383
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30, !dbg !6383
  store i64 %sub.ptr.sub31, ptr %ret, align 8, !dbg !6384
  br label %if.end32, !dbg !6385

if.end32:                                         ; preds = %if.then28, %while.end
  %50 = load i64, ptr %ret, align 8, !dbg !6386
  store i64 %50, ptr %retval, align 8, !dbg !6387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6387

cleanup:                                          ; preds = %if.end32, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcount) #12, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #12, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #12, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 8, ptr %ppage) #12, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #12, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_dump_pfn) #12, !dbg !6388
  %51 = load i64, ptr %retval, align 8, !dbg !6388
  ret i64 %51, !dbg !6388
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @mem_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_max_dump_pfn() #3 align 16 !dbg !6389 {
entry:
  %0 = load i64, ptr @max_pfn, align 8, !dbg !6392
  %sub = sub i64 %0, 1, !dbg !6392
  %or = or i64 %sub, 32767, !dbg !6392
  %add = add i64 %or, 1, !dbg !6392
  ret i64 %add, !dbg !6393
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pfn_valid(i64 noundef %pfn) #3 align 16 !dbg !6394 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca i64, align 8
  %ms = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6396, metadata !DIExpression()), !dbg !6404
  call void @llvm.lifetime.start.p0(i64 8, ptr %ms) #12, !dbg !6405
  call void @llvm.dbg.declare(metadata ptr %ms, metadata !6397, metadata !DIExpression()), !dbg !6406
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !6407
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6403, metadata !DIExpression()), !dbg !6408
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6409
  %shl = shl i64 %0, 12, !dbg !6409
  %shr = lshr i64 %shl, 12, !dbg !6409
  %1 = load i64, ptr %pfn.addr, align 8, !dbg !6411
  %cmp = icmp ne i64 %shr, %1, !dbg !6412
  br i1 %cmp, label %if.then, label %if.end, !dbg !6413

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6414

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %pfn.addr, align 8, !dbg !6415
  %call = call i64 @pfn_to_section_nr(i64 noundef %2) #13, !dbg !6417
  %call1 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #13, !dbg !6418
  %3 = zext i1 %call1 to i64, !dbg !6418
  %cond = select i1 %call1, i32 52, i32 46, !dbg !6418
  %sub = sub i32 %cond, 27, !dbg !6418
  %sh_prom = zext i32 %sub to i64, !dbg !6418
  %shl2 = shl i64 1, %sh_prom, !dbg !6418
  %cmp3 = icmp uge i64 %call, %shl2, !dbg !6419
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6420

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6421

if.end5:                                          ; preds = %if.end
  %4 = load i64, ptr %pfn.addr, align 8, !dbg !6422
  %call6 = call ptr @__pfn_to_section(i64 noundef %4) #13, !dbg !6423
  store ptr %call6, ptr %ms, align 8, !dbg !6424
  call void @rcu_read_lock_sched() #13, !dbg !6425
  %5 = load ptr, ptr %ms, align 8, !dbg !6426
  %call7 = call i32 @valid_section(ptr noundef %5) #13, !dbg !6428
  %tobool = icmp ne i32 %call7, 0, !dbg !6428
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !6429

if.then8:                                         ; preds = %if.end5
  call void @rcu_read_unlock_sched() #13, !dbg !6430
  store i32 0, ptr %retval, align 4, !dbg !6432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6432

if.end9:                                          ; preds = %if.end5
  %6 = load ptr, ptr %ms, align 8, !dbg !6433
  %call10 = call i32 @early_section(ptr noundef %6) #13, !dbg !6434
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6434
  br i1 %tobool11, label %lor.end, label %lor.rhs, !dbg !6435

lor.rhs:                                          ; preds = %if.end9
  %7 = load ptr, ptr %ms, align 8, !dbg !6436
  %8 = load i64, ptr %pfn.addr, align 8, !dbg !6437
  %call12 = call i32 @pfn_section_valid(ptr noundef %7, i64 noundef %8) #13, !dbg !6438
  %tobool13 = icmp ne i32 %call12, 0, !dbg !6435
  br label %lor.end, !dbg !6435

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %9 = phi i1 [ true, %if.end9 ], [ %tobool13, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32, !dbg !6435
  store i32 %lor.ext, ptr %ret, align 4, !dbg !6439
  call void @rcu_read_unlock_sched() #13, !dbg !6440
  %10 = load i32, ptr %ret, align 4, !dbg !6441
  store i32 %10, ptr %retval, align 4, !dbg !6442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6442

cleanup:                                          ; preds = %lor.end, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !6443
  call void @llvm.lifetime.end.p0(i64 8, ptr %ms) #12, !dbg !6443
  %11 = load i32, ptr %retval, align 4, !dbg !6443
  ret i32 %11, !dbg !6443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @page_mapcount(ptr noundef %page) #3 align 16 !dbg !6444 {
entry:
  %page.addr = alloca ptr, align 8
  %mapcount = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6446, metadata !DIExpression()), !dbg !6448
  call void @llvm.lifetime.start.p0(i64 4, ptr %mapcount) #12, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %mapcount, metadata !6447, metadata !DIExpression()), !dbg !6450
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6451
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2, !dbg !6452
  %call = call i32 @atomic_read(ptr noundef %1) #13, !dbg !6453
  %add = add i32 %call, 1, !dbg !6454
  store i32 %add, ptr %mapcount, align 4, !dbg !6450
  %2 = load i32, ptr %mapcount, align 4, !dbg !6455
  %cmp = icmp slt i32 %2, 0, !dbg !6457
  br i1 %cmp, label %if.then, label %if.end, !dbg !6458

if.then:                                          ; preds = %entry
  store i32 0, ptr %mapcount, align 4, !dbg !6459
  br label %if.end, !dbg !6460

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %page.addr, align 8, !dbg !6461
  %call1 = call i32 @PageCompound(ptr noundef %3) #13, !dbg !6461
  %tobool = icmp ne i32 %call1, 0, !dbg !6461
  %lnot = xor i1 %tobool, true, !dbg !6461
  %lnot2 = xor i1 %lnot, true, !dbg !6461
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6461
  %conv = sext i32 %lnot.ext to i64, !dbg !6461
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6461
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6461
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !6463

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %page.addr, align 8, !dbg !6464
  %call5 = call i64 @_compound_head(ptr noundef %4) #13, !dbg !6464
  %5 = inttoptr i64 %call5 to ptr, !dbg !6464
  %call6 = call i32 @folio_entire_mapcount(ptr noundef %5) #13, !dbg !6465
  %6 = load i32, ptr %mapcount, align 4, !dbg !6466
  %add7 = add i32 %6, %call6, !dbg !6466
  store i32 %add7, ptr %mapcount, align 4, !dbg !6466
  br label %if.end8, !dbg !6467

if.end8:                                          ; preds = %if.then4, %if.end
  %7 = load i32, ptr %mapcount, align 4, !dbg !6468
  call void @llvm.lifetime.end.p0(i64 4, ptr %mapcount) #12, !dbg !6469
  ret i32 %7, !dbg !6470
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #3 align 16 !dbg !6471 {
entry:
  ret void, !dbg !6473
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #3 align 16 !dbg !6474 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6479, metadata !DIExpression()), !dbg !6483
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6480, metadata !DIExpression()), !dbg !6484
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6481, metadata !DIExpression()), !dbg !6485
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6482, metadata !DIExpression()), !dbg !6486
  ret void, !dbg !6487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !6488 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6492, metadata !DIExpression()), !dbg !6495
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !6493, metadata !DIExpression()), !dbg !6496
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !6494, metadata !DIExpression()), !dbg !6497
  ret void, !dbg !6498
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #4 align 16 !dbg !5475 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !6499
  %0 = load ptr, ptr %tmp, align 8, !dbg !6499
  %call = call i32 %0() #13, !dbg !6501
  ret i32 %call, !dbg !6502
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pfn_to_section_nr(i64 noundef %pfn) #3 align 16 !dbg !6503 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6507, metadata !DIExpression()), !dbg !6508
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6509
  %shr = lshr i64 %0, 15, !dbg !6510
  ret i64 %shr, !dbg !6511
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !6512 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6517, metadata !DIExpression()), !dbg !6520
  %0 = load i16, ptr %bit.addr, align 2, !dbg !6521
  %1 = load i16, ptr %bit.addr, align 2, !dbg !6522
  %conv = zext i16 %1 to i32, !dbg !6522
  %and = and i32 %conv, 7, !dbg !6523
  %shl = shl i32 1, %and, !dbg !6524
  %2 = load i16, ptr %bit.addr, align 2, !dbg !6525
  %conv1 = zext i16 %2 to i32, !dbg !6525
  %shr = ashr i32 %conv1, 3, !dbg !6526
  %idxprom = sext i32 %shr to i64, !dbg !6527
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !6527
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #12
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !6528, !srcloc !6529

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !6528

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !6518), !dbg !6530
  store i1 true, ptr %retval, align 1, !dbg !6531
  br label %return, !dbg !6531

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !6519), !dbg !6532
  store i1 false, ptr %retval, align 1, !dbg !6533
  br label %return, !dbg !6533

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !6534
  ret i1 %3, !dbg !6534
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__pfn_to_section(i64 noundef %pfn) #3 align 16 !dbg !6535 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6539, metadata !DIExpression()), !dbg !6540
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6541
  %call = call i64 @pfn_to_section_nr(i64 noundef %0) #13, !dbg !6542
  %call1 = call ptr @__nr_to_section(i64 noundef %call) #13, !dbg !6543
  ret ptr %call1, !dbg !6544
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock_sched() #3 align 16 !dbg !6545 {
entry:
  br label %do.body, !dbg !6546

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !6547
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6547, !srcloc !6549
  br label %do.end, !dbg !6547

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6550

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6551

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !6553

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !6554

do.end4:                                          ; preds = %do.body3
  ret void, !dbg !6556
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @valid_section(ptr noundef %section) #3 align 16 !dbg !6557 {
entry:
  %section.addr = alloca ptr, align 8
  store ptr %section, ptr %section.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section.addr, metadata !6561, metadata !DIExpression()), !dbg !6562
  %0 = load ptr, ptr %section.addr, align 8, !dbg !6563
  %tobool = icmp ne ptr %0, null, !dbg !6563
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6564

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %section.addr, align 8, !dbg !6565
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %1, i32 0, i32 0, !dbg !6566
  %2 = load i64, ptr %section_mem_map, align 8, !dbg !6566
  %and = and i64 %2, 2, !dbg !6567
  %tobool1 = icmp ne i64 %and, 0, !dbg !6564
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6568
  %land.ext = zext i1 %3 to i32, !dbg !6564
  ret i32 %land.ext, !dbg !6569
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock_sched() #3 align 16 !dbg !5471 {
entry:
  br label %do.body, !dbg !6570

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6571

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6573

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6574

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !6576

do.body3:                                         ; preds = %do.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6577, !srcloc !6579
  %call = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !6580
  %lnot = xor i1 %call, true, !dbg !6580
  %lnot4 = xor i1 %lnot, true, !dbg !6580
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6580
  %conv = sext i32 %lnot.ext to i64, !dbg !6580
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6580
  %tobool = icmp ne i64 %expval, 0, !dbg !6580
  br i1 %tobool, label %if.then, label %if.end, !dbg !6577

if.then:                                          ; preds = %do.body3
  br label %do.body5, !dbg !6580

do.body5:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !5478), !dbg !6582
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !6582, !srcloc !6584
  call void @llvm.write_register.i64(metadata !5478, i64 %1), !dbg !6582
  br label %do.end6, !dbg !6582

do.end6:                                          ; preds = %do.body5
  br label %if.end, !dbg !6582

if.end:                                           ; preds = %do.end6, %do.body3
  br label %do.end7, !dbg !6577

do.end7:                                          ; preds = %if.end
  ret void, !dbg !6585
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @early_section(ptr noundef %section) #3 align 16 !dbg !6586 {
entry:
  %section.addr = alloca ptr, align 8
  store ptr %section, ptr %section.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %section.addr, metadata !6588, metadata !DIExpression()), !dbg !6589
  %0 = load ptr, ptr %section.addr, align 8, !dbg !6590
  %tobool = icmp ne ptr %0, null, !dbg !6590
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6591

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %section.addr, align 8, !dbg !6592
  %section_mem_map = getelementptr inbounds %struct.mem_section, ptr %1, i32 0, i32 0, !dbg !6593
  %2 = load i64, ptr %section_mem_map, align 8, !dbg !6593
  %and = and i64 %2, 8, !dbg !6594
  %tobool1 = icmp ne i64 %and, 0, !dbg !6591
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6595
  %land.ext = zext i1 %3 to i32, !dbg !6591
  ret i32 %land.ext, !dbg !6596
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pfn_section_valid(ptr noundef %ms, i64 noundef %pfn) #3 align 16 !dbg !6597 {
entry:
  %ms.addr = alloca ptr, align 8
  %pfn.addr = alloca i64, align 8
  %idx = alloca i32, align 4
  %usage = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ms, ptr %ms.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ms.addr, metadata !6601, metadata !DIExpression()), !dbg !6605
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6602, metadata !DIExpression()), !dbg !6606
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #12, !dbg !6607
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !6603, metadata !DIExpression()), !dbg !6608
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6609
  %call = call i32 @subsection_map_index(i64 noundef %0) #13, !dbg !6610
  store i32 %call, ptr %idx, align 4, !dbg !6608
  call void @llvm.lifetime.start.p0(i64 8, ptr %usage) #12, !dbg !6611
  call void @llvm.dbg.declare(metadata ptr %usage, metadata !6604, metadata !DIExpression()), !dbg !6612
  br label %do.body, !dbg !6613

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6615

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6615

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %ms.addr, align 8, !dbg !6613
  %usage1 = getelementptr inbounds %struct.mem_section, ptr %1, i32 0, i32 1, !dbg !6613
  %2 = load volatile ptr, ptr %usage1, align 8, !dbg !6613
  store ptr %2, ptr %tmp, align 8, !dbg !6615
  %3 = load ptr, ptr %tmp, align 8, !dbg !6613
  store ptr %3, ptr %usage, align 8, !dbg !6612
  %4 = load ptr, ptr %usage, align 8, !dbg !6617
  %tobool = icmp ne ptr %4, null, !dbg !6617
  br i1 %tobool, label %cond.true, label %cond.false21, !dbg !6617

cond.true:                                        ; preds = %do.end
  %5 = load i32, ptr %idx, align 4, !dbg !6618
  %6 = call i1 @llvm.is.constant.i32(i32 %5), !dbg !6618
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !6618

land.lhs.true:                                    ; preds = %cond.true
  %7 = load ptr, ptr %usage, align 8, !dbg !6618
  %subsection_map = getelementptr inbounds %struct.mem_section_usage, ptr %7, i32 0, i32 1, !dbg !6618
  %arraydecay = getelementptr inbounds [1 x i64], ptr %subsection_map, i64 0, i64 0, !dbg !6618
  %8 = ptrtoint ptr %arraydecay to i64, !dbg !6618
  %cmp = icmp ne i64 %8, 0, !dbg !6618
  %conv = zext i1 %cmp to i32, !dbg !6618
  %9 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6618
  br i1 %9, label %land.lhs.true2, label %cond.false, !dbg !6618

land.lhs.true2:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %usage, align 8, !dbg !6618
  %subsection_map3 = getelementptr inbounds %struct.mem_section_usage, ptr %10, i32 0, i32 1, !dbg !6618
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %subsection_map3, i64 0, i64 0, !dbg !6618
  %11 = ptrtoint ptr %arraydecay4 to i64, !dbg !6618
  %cmp5 = icmp ne i64 %11, 0, !dbg !6618
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !6618

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %12 = load ptr, ptr %usage, align 8, !dbg !6618
  %subsection_map8 = getelementptr inbounds %struct.mem_section_usage, ptr %12, i32 0, i32 1, !dbg !6618
  %arraydecay9 = getelementptr inbounds [1 x i64], ptr %subsection_map8, i64 0, i64 0, !dbg !6618
  %13 = load i64, ptr %arraydecay9, align 8, !dbg !6618
  %14 = call i1 @llvm.is.constant.i64(i64 %13), !dbg !6618
  br i1 %14, label %cond.true10, label %cond.false, !dbg !6618

cond.true10:                                      ; preds = %land.lhs.true7
  %15 = load i32, ptr %idx, align 4, !dbg !6618
  %conv11 = sext i32 %15 to i64, !dbg !6618
  %16 = load ptr, ptr %usage, align 8, !dbg !6618
  %subsection_map12 = getelementptr inbounds %struct.mem_section_usage, ptr %16, i32 0, i32 1, !dbg !6618
  %arraydecay13 = getelementptr inbounds [1 x i64], ptr %subsection_map12, i64 0, i64 0, !dbg !6618
  %call14 = call zeroext i1 @const_test_bit(i64 noundef %conv11, ptr noundef %arraydecay13) #13, !dbg !6618
  %conv15 = zext i1 %call14 to i32, !dbg !6618
  br label %cond.end, !dbg !6618

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true2, %land.lhs.true, %cond.true
  %17 = load i32, ptr %idx, align 4, !dbg !6618
  %conv16 = sext i32 %17 to i64, !dbg !6618
  %18 = load ptr, ptr %usage, align 8, !dbg !6618
  %subsection_map17 = getelementptr inbounds %struct.mem_section_usage, ptr %18, i32 0, i32 1, !dbg !6618
  %arraydecay18 = getelementptr inbounds [1 x i64], ptr %subsection_map17, i64 0, i64 0, !dbg !6618
  %call19 = call zeroext i1 @_test_bit(i64 noundef %conv16, ptr noundef %arraydecay18) #13, !dbg !6618
  %conv20 = zext i1 %call19 to i32, !dbg !6618
  br label %cond.end, !dbg !6618

cond.end:                                         ; preds = %cond.false, %cond.true10
  %cond = phi i32 [ %conv15, %cond.true10 ], [ %conv20, %cond.false ], !dbg !6618
  br label %cond.end22, !dbg !6617

cond.false21:                                     ; preds = %do.end
  br label %cond.end22, !dbg !6617

cond.end22:                                       ; preds = %cond.false21, %cond.end
  %cond23 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false21 ], !dbg !6617
  call void @llvm.lifetime.end.p0(i64 8, ptr %usage) #12, !dbg !6619
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #12, !dbg !6619
  ret i32 %cond23, !dbg !6620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__nr_to_section(i64 noundef %nr) #3 align 16 !dbg !6621 {
entry:
  %retval = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  %root = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6623, metadata !DIExpression()), !dbg !6625
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #12, !dbg !6626
  call void @llvm.dbg.declare(metadata ptr %root, metadata !6624, metadata !DIExpression()), !dbg !6627
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6628
  %div = udiv i64 %0, 256, !dbg !6628
  store i64 %div, ptr %root, align 8, !dbg !6627
  %1 = load i64, ptr %root, align 8, !dbg !6629
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #13, !dbg !6629
  %2 = zext i1 %call to i64, !dbg !6629
  %cond = select i1 %call, i32 52, i32 46, !dbg !6629
  %sub = sub i32 %cond, 27, !dbg !6629
  %sh_prom = zext i32 %sub to i64, !dbg !6629
  %shl = shl i64 1, %sh_prom, !dbg !6629
  %add = add i64 %shl, 256, !dbg !6629
  %sub1 = sub i64 %add, 1, !dbg !6629
  %div2 = udiv i64 %sub1, 256, !dbg !6629
  %cmp = icmp uge i64 %1, %div2, !dbg !6629
  %lnot = xor i1 %cmp, true, !dbg !6629
  %lnot3 = xor i1 %lnot, true, !dbg !6629
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6629
  %conv = sext i32 %lnot.ext to i64, !dbg !6629
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6629
  %tobool = icmp ne i64 %expval, 0, !dbg !6629
  br i1 %tobool, label %if.then, label %if.end, !dbg !6631

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6632

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @mem_section, align 8, !dbg !6633
  %tobool4 = icmp ne ptr %3, null, !dbg !6633
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !6635

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr @mem_section, align 8, !dbg !6636
  %5 = load i64, ptr %root, align 8, !dbg !6637
  %arrayidx = getelementptr ptr, ptr %4, i64 %5, !dbg !6636
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !6636
  %tobool5 = icmp ne ptr %6, null, !dbg !6636
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6638

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store ptr null, ptr %retval, align 8, !dbg !6639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6639

if.end7:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr @mem_section, align 8, !dbg !6640
  %8 = load i64, ptr %root, align 8, !dbg !6641
  %arrayidx8 = getelementptr ptr, ptr %7, i64 %8, !dbg !6640
  %9 = load ptr, ptr %arrayidx8, align 8, !dbg !6640
  %10 = load i64, ptr %nr.addr, align 8, !dbg !6642
  %and = and i64 %10, 255, !dbg !6643
  %arrayidx9 = getelementptr %struct.mem_section, ptr %9, i64 %and, !dbg !6640
  store ptr %arrayidx9, ptr %retval, align 8, !dbg !6644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6644

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #12, !dbg !6645
  %11 = load ptr, ptr %retval, align 8, !dbg !6645
  ret ptr %11, !dbg !6645
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !6646 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6649, metadata !DIExpression()), !dbg !6656
  br label %do.body, !dbg !6657

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6650, metadata !DIExpression()), !dbg !6658
  %0 = load i32, ptr %val.addr, align 4, !dbg !6658
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6658
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6658

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6658
  %cmp = icmp eq i32 %2, 1, !dbg !6658
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6658

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6658
  %cmp1 = icmp eq i32 %3, -1, !dbg !6658
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6658

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6658
  br label %cond.end, !dbg !6658

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6658

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6658
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6658
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6659
  %cmp2 = icmp eq i32 %5, 1, !dbg !6659
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6658

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.38, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.38, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !6660, !srcloc !6662
  br label %if.end8, !dbg !6659

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6663
  %cmp3 = icmp eq i32 %6, -1, !dbg !6663
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6659

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.38, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.38, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !6664, !srcloc !6666
  br label %if.end, !dbg !6663

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6663

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !6667
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6652, metadata !DIExpression()), !dbg !6667
  %7 = load i32, ptr %val.addr, align 4, !dbg !6667
  %conv = sext i32 %7 to i64, !dbg !6667
  %and = and i64 %conv, 4294967295, !dbg !6667
  %conv7 = trunc i64 %and to i32, !dbg !6667
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6667
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6667
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.38, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.38, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !6667, !srcloc !6668
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !6663
  br label %do.cond, !dbg !6667

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6667

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !6657
  br label %do.end10, !dbg !6658

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6669
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !6670 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !6674
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6672, metadata !DIExpression()), !dbg !6674
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.38, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.38, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !6674, !srcloc !6675
  %1 = icmp ult i8 %0, 2, !dbg !6674
  call void @llvm.assume(i1 %1), !dbg !6674
  store i8 %0, ptr %c, align 1, !dbg !6674
  %2 = load i8, ptr %c, align 1, !dbg !6674, !range !6050, !noundef !1315
  %tobool = trunc i8 %2 to i1, !dbg !6674
  %frombool = zext i1 %tobool to i8, !dbg !6674
  store i8 %frombool, ptr %tmp, align 1, !dbg !6674
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !6676
  %3 = load i8, ptr %tmp, align 1, !dbg !6674, !range !6050, !noundef !1315
  %tobool1 = trunc i8 %3 to i1, !dbg !6674
  ret i1 %tobool1, !dbg !6677
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @subsection_map_index(i64 noundef %pfn) #3 align 16 !dbg !6678 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, ptr %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfn.addr, metadata !6680, metadata !DIExpression()), !dbg !6681
  %0 = load i64, ptr %pfn.addr, align 8, !dbg !6682
  %and = and i64 %0, 32767, !dbg !6683
  %div = udiv i64 %and, 512, !dbg !6684
  %conv = trunc i64 %div to i32, !dbg !6685
  ret i32 %conv, !dbg !6686
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @folio_entire_mapcount(ptr noundef %folio) #3 align 16 !dbg !6687 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6689, metadata !DIExpression()), !dbg !6690
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6691
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 1, !dbg !6692
  %_entire_mapcount = getelementptr inbounds %struct.anon.29, ptr %1, i32 0, i32 3, !dbg !6692
  %call = call i32 @atomic_read(ptr noundef %_entire_mapcount) #13, !dbg !6693
  %add = add i32 %call, 1, !dbg !6694
  ret i32 %add, !dbg !6695
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kpageflags_read(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6696 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %max_dump_pfn = alloca i64, align 8
  %out = alloca ptr, align 8
  %ppage = alloca ptr, align 8
  %src = alloca i64, align 8
  %pfn = alloca i64, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x338 = alloca i64, align 8
  %__UNIQUE_ID___y339 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %___page = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tmp13 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i64, align 8
  %__x = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp16 = alloca i64, align 8
  %tmp21 = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6698, metadata !DIExpression()), !dbg !6722
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6699, metadata !DIExpression()), !dbg !6723
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6700, metadata !DIExpression()), !dbg !6724
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6701, metadata !DIExpression()), !dbg !6725
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_dump_pfn) #12, !dbg !6726
  call void @llvm.dbg.declare(metadata ptr %max_dump_pfn, metadata !6702, metadata !DIExpression()), !dbg !6727
  %call = call i64 @get_max_dump_pfn() #13, !dbg !6728
  store i64 %call, ptr %max_dump_pfn, align 8, !dbg !6727
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #12, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %out, metadata !6703, metadata !DIExpression()), !dbg !6730
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6731
  store ptr %0, ptr %out, align 8, !dbg !6730
  call void @llvm.lifetime.start.p0(i64 8, ptr %ppage) #12, !dbg !6732
  call void @llvm.dbg.declare(metadata ptr %ppage, metadata !6704, metadata !DIExpression()), !dbg !6733
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #12, !dbg !6734
  call void @llvm.dbg.declare(metadata ptr %src, metadata !6705, metadata !DIExpression()), !dbg !6735
  %1 = load ptr, ptr %ppos.addr, align 8, !dbg !6736
  %2 = load i64, ptr %1, align 8, !dbg !6737
  store i64 %2, ptr %src, align 8, !dbg !6735
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #12, !dbg !6738
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6706, metadata !DIExpression()), !dbg !6739
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6740
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6707, metadata !DIExpression()), !dbg !6741
  store i64 0, ptr %ret, align 8, !dbg !6741
  %3 = load i64, ptr %src, align 8, !dbg !6742
  %div = udiv i64 %3, 8, !dbg !6743
  store i64 %div, ptr %pfn, align 8, !dbg !6744
  %4 = load i64, ptr %src, align 8, !dbg !6745
  %and = and i64 %4, 7, !dbg !6747
  %tobool = icmp ne i64 %and, 0, !dbg !6747
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6748

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, ptr %count.addr, align 8, !dbg !6749
  %and1 = and i64 %5, 7, !dbg !6750
  %tobool2 = icmp ne i64 %and1, 0, !dbg !6750
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6751

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !6752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6752

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, ptr %src, align 8, !dbg !6753
  %7 = load i64, ptr %max_dump_pfn, align 8, !dbg !6755
  %mul = mul i64 %7, 8, !dbg !6756
  %cmp = icmp uge i64 %6, %mul, !dbg !6757
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6758

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !6759
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6759

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x338) #12, !dbg !6760
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x338, metadata !6708, metadata !DIExpression()), !dbg !6760
  %8 = load i64, ptr %count.addr, align 8, !dbg !6760
  store i64 %8, ptr %__UNIQUE_ID___x338, align 8, !dbg !6760
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y339) #12, !dbg !6760
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y339, metadata !6710, metadata !DIExpression()), !dbg !6760
  %9 = load i64, ptr %max_dump_pfn, align 8, !dbg !6760
  %mul5 = mul i64 %9, 8, !dbg !6760
  %10 = load i64, ptr %src, align 8, !dbg !6760
  %sub = sub i64 %mul5, %10, !dbg !6760
  store i64 %sub, ptr %__UNIQUE_ID___y339, align 8, !dbg !6760
  %11 = load i64, ptr %__UNIQUE_ID___x338, align 8, !dbg !6760
  %12 = load i64, ptr %__UNIQUE_ID___y339, align 8, !dbg !6760
  %cmp6 = icmp ult i64 %11, %12, !dbg !6760
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !6760

cond.true:                                        ; preds = %if.end4
  %13 = load i64, ptr %__UNIQUE_ID___x338, align 8, !dbg !6760
  br label %cond.end, !dbg !6760

cond.false:                                       ; preds = %if.end4
  %14 = load i64, ptr %__UNIQUE_ID___y339, align 8, !dbg !6760
  br label %cond.end, !dbg !6760

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !6760
  store i64 %cond, ptr %tmp, align 8, !dbg !6760
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y339) #12, !dbg !6761
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x338) #12, !dbg !6761
  %15 = load i64, ptr %tmp, align 8, !dbg !6760
  store i64 %15, ptr %count.addr, align 8, !dbg !6762
  br label %while.cond, !dbg !6763

while.cond:                                       ; preds = %if.end19, %cond.end
  %16 = load i64, ptr %count.addr, align 8, !dbg !6764
  %cmp7 = icmp ugt i64 %16, 0, !dbg !6765
  br i1 %cmp7, label %while.body, label %while.end, !dbg !6763

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %___page) #12, !dbg !6766
  call void @llvm.dbg.declare(metadata ptr %___page, metadata !6711, metadata !DIExpression()), !dbg !6766
  store ptr null, ptr %___page, align 8, !dbg !6766
  %17 = load i64, ptr %pfn, align 8, !dbg !6767
  %call8 = call i32 @pfn_valid(i64 noundef %17) #13, !dbg !6767
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6767
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6766

if.then10:                                        ; preds = %while.body
  %18 = load i64, ptr @vmemmap_base, align 8, !dbg !6767
  %19 = inttoptr i64 %18 to ptr, !dbg !6767
  %20 = load i64, ptr %pfn, align 8, !dbg !6767
  %add.ptr = getelementptr %struct.page, ptr %19, i64 %20, !dbg !6767
  store ptr %add.ptr, ptr %___page, align 8, !dbg !6767
  br label %if.end11, !dbg !6767

if.end11:                                         ; preds = %if.then10, %while.body
  %21 = load ptr, ptr %___page, align 8, !dbg !6766
  store ptr %21, ptr %tmp12, align 8, !dbg !6767
  call void @llvm.lifetime.end.p0(i64 8, ptr %___page) #12, !dbg !6769
  %22 = load ptr, ptr %tmp12, align 8, !dbg !6766
  store ptr %22, ptr %ppage, align 8, !dbg !6770
  call void @might_fault() #13, !dbg !6771
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #12, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6714, metadata !DIExpression()), !dbg !6772
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #12, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6718, metadata !DIExpression()), !dbg !6772
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_pu) #12, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6719, metadata !DIExpression()), !dbg !6772
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #12, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6720, metadata !DIExpression()), !dbg !6772
  %23 = load ptr, ptr %ppage, align 8, !dbg !6772
  %call14 = call i64 @stable_page_flags(ptr noundef %23) #13, !dbg !6772
  store i64 %call14, ptr %__x, align 8, !dbg !6772
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6721, metadata !DIExpression()), !dbg !6772
  %24 = load ptr, ptr %out, align 8, !dbg !6772
  store ptr %24, ptr %__ptr, align 8, !dbg !6772
  %25 = load ptr, ptr %__ptr, align 8, !dbg !6772
  store ptr %25, ptr %__ptr_pu, align 8, !dbg !6772
  %26 = load i64, ptr %__x, align 8, !dbg !6772
  store i64 %26, ptr %__val_pu, align 8, !dbg !6772
  %27 = call i64 @llvm.read_register.i64(metadata !5478), !dbg !6772
  %28 = load ptr, ptr %__ptr_pu, align 8, !dbg !6772
  %29 = load i64, ptr %__val_pu, align 8, !dbg !6772
  %30 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %28, i64 %29, i64 8, i64 %27) #12, !dbg !6772, !srcloc !6773
  %asmresult = extractvalue { ptr, i64 } %30, 0, !dbg !6772
  %asmresult15 = extractvalue { ptr, i64 } %30, 1, !dbg !6772
  %31 = ptrtoint ptr %asmresult to i64, !dbg !6772
  %32 = trunc i64 %31 to i32, !dbg !6772
  store i32 %32, ptr %__ret_pu, align 4, !dbg !6772
  call void @llvm.write_register.i64(metadata !5478, i64 %asmresult15), !dbg !6772
  %33 = load ptr, ptr %__ptr, align 8, !dbg !6774
  call void @kmsan_copy_to_user(ptr noundef %33, ptr noundef %__x, i64 noundef 8, i64 noundef 0) #13, !dbg !6774
  %34 = load i32, ptr %__ret_pu, align 4, !dbg !6772
  %conv = sext i32 %34 to i64, !dbg !6772
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6772
  store i64 %expval, ptr %tmp16, align 8, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6771
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #12, !dbg !6771
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_pu) #12, !dbg !6771
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #12, !dbg !6771
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #12, !dbg !6771
  %35 = load i64, ptr %tmp16, align 8, !dbg !6772
  store i64 %35, ptr %tmp13, align 8, !dbg !6771
  %36 = load i64, ptr %tmp13, align 8, !dbg !6771
  %tobool17 = icmp ne i64 %36, 0, !dbg !6776
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6777

if.then18:                                        ; preds = %if.end11
  store i64 -14, ptr %ret, align 8, !dbg !6778
  br label %while.end, !dbg !6780

if.end19:                                         ; preds = %if.end11
  %37 = load i64, ptr %pfn, align 8, !dbg !6781
  %inc = add i64 %37, 1, !dbg !6781
  store i64 %inc, ptr %pfn, align 8, !dbg !6781
  %38 = load ptr, ptr %out, align 8, !dbg !6782
  %incdec.ptr = getelementptr i64, ptr %38, i32 1, !dbg !6782
  store ptr %incdec.ptr, ptr %out, align 8, !dbg !6782
  %39 = load i64, ptr %count.addr, align 8, !dbg !6783
  %sub20 = sub i64 %39, 8, !dbg !6783
  store i64 %sub20, ptr %count.addr, align 8, !dbg !6783
  call void @__might_resched(ptr noundef @.str.2, i32 noundef 259, i32 noundef 0) #13, !dbg !6784
  %call22 = call i32 @_cond_resched() #13, !dbg !6784
  store i32 %call22, ptr %tmp21, align 4, !dbg !6784
  %40 = load i32, ptr %tmp21, align 4, !dbg !6784
  br label %while.cond, !dbg !6763, !llvm.loop !6786

while.end:                                        ; preds = %if.then18, %while.cond
  %41 = load ptr, ptr %out, align 8, !dbg !6788
  %42 = load ptr, ptr %buf.addr, align 8, !dbg !6789
  %sub.ptr.lhs.cast = ptrtoint ptr %41 to i64, !dbg !6790
  %sub.ptr.rhs.cast = ptrtoint ptr %42 to i64, !dbg !6790
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6790
  %43 = load ptr, ptr %ppos.addr, align 8, !dbg !6791
  %44 = load i64, ptr %43, align 8, !dbg !6792
  %add = add i64 %44, %sub.ptr.sub, !dbg !6792
  store i64 %add, ptr %43, align 8, !dbg !6792
  %45 = load i64, ptr %ret, align 8, !dbg !6793
  %tobool23 = icmp ne i64 %45, 0, !dbg !6793
  br i1 %tobool23, label %if.end28, label %if.then24, !dbg !6795

if.then24:                                        ; preds = %while.end
  %46 = load ptr, ptr %out, align 8, !dbg !6796
  %47 = load ptr, ptr %buf.addr, align 8, !dbg !6797
  %sub.ptr.lhs.cast25 = ptrtoint ptr %46 to i64, !dbg !6798
  %sub.ptr.rhs.cast26 = ptrtoint ptr %47 to i64, !dbg !6798
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26, !dbg !6798
  store i64 %sub.ptr.sub27, ptr %ret, align 8, !dbg !6799
  br label %if.end28, !dbg !6800

if.end28:                                         ; preds = %if.then24, %while.end
  %48 = load i64, ptr %ret, align 8, !dbg !6801
  store i64 %48, ptr %retval, align 8, !dbg !6802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6802

cleanup:                                          ; preds = %if.end28, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6803
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #12, !dbg !6803
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #12, !dbg !6803
  call void @llvm.lifetime.end.p0(i64 8, ptr %ppage) #12, !dbg !6803
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #12, !dbg !6803
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_dump_pfn) #12, !dbg !6803
  %49 = load i64, ptr %retval, align 8, !dbg !6803
  ret i64 %49, !dbg !6803
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5478}
!llvm.module.flags = !{!5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486}
!llvm.ident = !{!5487}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_proc__340_339_proc_page_init5341", scope: !2, file: !3, line: 339, type: !64, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/proc/.page.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/proc/proc\22 -D KBUILD_BASENAME=\22page\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/proc/page.ll fs/proc/page.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !306, globals: !5438, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/proc/page.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a0782fc73b2e03e5ba43bb17ca64b1fa")
!4 = !{!5, !13, !21, !26, !42, !48, !55, !151, !157, !162, !167, !173, !179, !186, !194, !201, !210, !215, !220, !226, !238, !245, !253, !293, !298}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !14, line: 9, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!17 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!18 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!19 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!20 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !22, line: 65, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!25 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !43, line: 16, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!44 = !{!45, !46, !47}
!45 = !DIEnumerator(name: "TT_NONE", value: 0)
!46 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!47 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !49, line: 51, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!52 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!53 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!54 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !57, file: !56, line: 147, baseType: !7, size: 32, elements: !148)
!56 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !56, line: 135, size: 512, elements: !58)
!58 = !{!59, !63, !65, !67, !71, !72, !88, !146, !147}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !57, file: !56, line: 136, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !57, file: !56, line: 137, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !57, file: !56, line: 138, baseType: !66, size: 32, offset: 128)
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !57, file: !56, line: 139, baseType: !68, size: 16, offset: 160)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !69, line: 24, baseType: !70)
!69 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !56, line: 150, baseType: !55, size: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !57, file: !56, line: 151, baseType: !73, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !56, line: 64, baseType: !75)
!75 = !DISubroutineType(types: !76)
!76 = !{!66, !77, !66, !64, !78, !84}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 61, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !81, line: 72, baseType: !82)
!81 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !81, line: 16, baseType: !83)
!83 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !69, line: 52, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !81, line: 88, baseType: !87)
!87 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !57, file: !56, line: 152, baseType: !89, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !56, line: 117, size: 256, elements: !91)
!91 = !{!92, !97}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !90, file: !56, line: 118, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !69, line: 174, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 172, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !94, file: !69, line: 173, baseType: !66, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !90, file: !56, line: 119, baseType: !98, size: 192, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !99, line: 41, baseType: !100)
!99 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !99, line: 37, size: 192, elements: !101)
!101 = !{!102, !140}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !100, file: !99, line: 38, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !104, line: 29, baseType: !105)
!104 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !104, line: 17, size: 32, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !104, line: 18, baseType: !108, size: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !104, line: 18, size: 32, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !108, file: !104, line: 19, baseType: !111, size: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !112, line: 14, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !111, file: !112, line: 15, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !116, line: 44, baseType: !117)
!116 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !116, line: 14, size: 32, elements: !118)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !116, line: 15, baseType: !120, size: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !116, line: 15, size: 32, elements: !121)
!121 = !{!122, !123, !133}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !120, file: !116, line: 16, baseType: !93, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !116, line: 24, baseType: !124, size: 16)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !116, line: 24, size: 16, elements: !125)
!125 = !{!126, !132}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !124, file: !116, line: 25, baseType: !127, size: 8)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !128, line: 17, baseType: !129)
!128 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !130, line: 21, baseType: !131)
!130 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!131 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !124, file: !116, line: 26, baseType: !127, size: 8, offset: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !116, line: 28, baseType: !134, size: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !116, line: 28, size: 32, elements: !135)
!135 = !{!136, !139}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !134, file: !116, line: 29, baseType: !137, size: 16)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !128, line: 19, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !130, line: 24, baseType: !70)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !134, file: !116, line: 30, baseType: !137, size: 16, offset: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !100, file: !99, line: 39, baseType: !141, size: 128, offset: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !69, line: 190, size: 128, elements: !142)
!142 = !{!143, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !69, line: 191, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !141, file: !69, line: 191, baseType: !144, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !57, file: !56, line: 153, baseType: !64, size: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !57, file: !56, line: 154, baseType: !64, size: 64, offset: 448)
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!150 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !152, line: 26, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!155 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!156 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !158, line: 32, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!159 = !{!160, !161}
!160 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!161 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !163, line: 2052, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!164 = !{!165, !166}
!165 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!166 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !168, line: 54, baseType: !7, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "USRQUOTA", value: 0)
!171 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!172 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !174, line: 45, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!177 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!178 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !180, line: 487, baseType: !7, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!181 = !{!182, !183, !184, !185}
!182 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!183 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!184 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!185 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !187, line: 620, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!190 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!191 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!192 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!193 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !187, line: 597, baseType: !66, size: 32, elements: !195)
!195 = !{!196, !197, !198, !199, !200}
!196 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!197 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!198 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!199 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!200 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !180, line: 547, baseType: !7, size: 32, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209}
!203 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!204 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!205 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!206 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!207 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!208 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!209 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !180, line: 564, baseType: !7, size: 32, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!213 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!214 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !180, line: 577, baseType: !7, size: 32, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!218 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!219 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !180, line: 503, baseType: !7, size: 32, elements: !221)
!221 = !{!222, !223, !224, !225}
!222 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!223 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!224 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!225 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !227, line: 44, baseType: !7, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237}
!229 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!230 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!231 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!232 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!233 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!234 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!235 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!236 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!237 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !239, line: 15, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!240 = !{!241, !242, !243, !244}
!241 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!242 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!243 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!244 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !246, line: 68, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!247 = !{!248, !249, !250, !251, !252}
!248 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!249 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!250 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!251 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!252 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !254, line: 100, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!256 = !DIEnumerator(name: "PG_locked", value: 0)
!257 = !DIEnumerator(name: "PG_writeback", value: 1)
!258 = !DIEnumerator(name: "PG_referenced", value: 2)
!259 = !DIEnumerator(name: "PG_uptodate", value: 3)
!260 = !DIEnumerator(name: "PG_dirty", value: 4)
!261 = !DIEnumerator(name: "PG_lru", value: 5)
!262 = !DIEnumerator(name: "PG_head", value: 6)
!263 = !DIEnumerator(name: "PG_waiters", value: 7)
!264 = !DIEnumerator(name: "PG_active", value: 8)
!265 = !DIEnumerator(name: "PG_workingset", value: 9)
!266 = !DIEnumerator(name: "PG_error", value: 10)
!267 = !DIEnumerator(name: "PG_slab", value: 11)
!268 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!269 = !DIEnumerator(name: "PG_arch_1", value: 13)
!270 = !DIEnumerator(name: "PG_reserved", value: 14)
!271 = !DIEnumerator(name: "PG_private", value: 15)
!272 = !DIEnumerator(name: "PG_private_2", value: 16)
!273 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!274 = !DIEnumerator(name: "PG_reclaim", value: 18)
!275 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!276 = !DIEnumerator(name: "PG_unevictable", value: 20)
!277 = !DIEnumerator(name: "PG_mlocked", value: 21)
!278 = !DIEnumerator(name: "PG_uncached", value: 22)
!279 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!280 = !DIEnumerator(name: "PG_readahead", value: 18)
!281 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!282 = !DIEnumerator(name: "PG_checked", value: 12)
!283 = !DIEnumerator(name: "PG_swapcache", value: 12)
!284 = !DIEnumerator(name: "PG_fscache", value: 16)
!285 = !DIEnumerator(name: "PG_pinned", value: 12)
!286 = !DIEnumerator(name: "PG_savepinned", value: 4)
!287 = !DIEnumerator(name: "PG_foreign", value: 12)
!288 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!289 = !DIEnumerator(name: "PG_isolated", value: 18)
!290 = !DIEnumerator(name: "PG_reported", value: 3)
!291 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!292 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !294, line: 10, baseType: !7, size: 32, elements: !295)
!294 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!295 = !{!296, !297}
!296 = !DIEnumerator(name: "false", value: 0)
!297 = !DIEnumerator(name: "true", value: 1)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 1873, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!300 = !{!301, !302, !303, !304, !305}
!301 = !DIEnumerator(name: "SECTION_MARKED_PRESENT_BIT", value: 0)
!302 = !DIEnumerator(name: "SECTION_HAS_MEM_MAP_BIT", value: 1)
!303 = !DIEnumerator(name: "SECTION_IS_ONLINE_BIT", value: 2)
!304 = !DIEnumerator(name: "SECTION_IS_EARLY_BIT", value: 3)
!305 = !DIEnumerator(name: "SECTION_MAP_LAST_BIT", value: 4)
!306 = !{!307, !83, !64, !3323, !5416, !5417, !5418, !3903, !5421, !5424, !5426, !4532, !474, !2917, !60, !66, !402, !5428}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !309)
!309 = !{!310, !311, !5410, !5415}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !27, line: 75, baseType: !83, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !27, line: 83, baseType: !312, size: 320, offset: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !27, line: 83, size: 320, elements: !313)
!313 = !{!314, !5336, !5350, !5354, !5409}
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !27, line: 84, baseType: !315, size: 320)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !27, line: 84, size: 320, elements: !316)
!316 = !{!317, !328, !5330, !5335}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !27, line: 90, baseType: !318, size: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !27, line: 90, size: 128, elements: !319)
!319 = !{!320, !321, !326, !327}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !318, file: !27, line: 91, baseType: !141, size: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !27, line: 94, baseType: !322, size: 128)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !27, line: 94, size: 128, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !322, file: !27, line: 96, baseType: !64, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !322, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !318, file: !27, line: 102, baseType: !141, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !318, file: !27, line: 103, baseType: !141, size: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !315, file: !27, line: 106, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !163, line: 472, size: 1536, align: 64, elements: !331)
!331 = !{!332, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5324, !5325, !5326, !5327, !5328, !5329}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !330, file: !163, line: 473, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !163, line: 641, size: 4800, elements: !335)
!335 = !{!336, !337, !338, !346, !347, !354, !355, !358, !359, !5115, !5116, !5117, !5118, !5119, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5159, !5162, !5163, !5164, !5173, !5174, !5175, !5176}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !334, file: !163, line: 642, baseType: !68, size: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !334, file: !163, line: 643, baseType: !70, size: 16, offset: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !334, file: !163, line: 644, baseType: !339, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !340, line: 23, baseType: !341)
!340 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 21, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !341, file: !340, line: 22, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !69, line: 37, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !81, line: 49, baseType: !7)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !334, file: !163, line: 645, baseType: !141, size: 128, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !334, file: !163, line: 646, baseType: !348, size: 32, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !340, line: 28, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 26, size: 32, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !349, file: !340, line: 27, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !69, line: 38, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !81, line: 50, baseType: !7)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !334, file: !163, line: 647, baseType: !7, size: 32, offset: 224)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !334, file: !163, line: 650, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !163, line: 607, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !334, file: !163, line: 651, baseType: !356, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !334, file: !163, line: 654, baseType: !360, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !163, line: 1966, size: 2048, align: 512, elements: !363)
!363 = !{!364, !4949, !4959, !4963, !4967, !4971, !4975, !4979, !4983, !4987, !4991, !4992, !4996, !5000, !5037, !5066, !5070, !5076, !5080, !5084, !5088, !5092, !5096, !5102, !5106}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !362, file: !163, line: 1967, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !333, !368, !7}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !370, line: 82, size: 1536, elements: !371)
!370 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!371 = !{!372, !373, !383, !391, !392, !412, !413, !417, !430, !4932, !4933, !4934, !4935, !4941, !4942, !4943}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !369, file: !370, line: 84, baseType: !7, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !369, file: !370, line: 85, baseType: !374, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !375, line: 275, baseType: !376)
!375 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !375, line: 275, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !376, file: !375, line: 275, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !375, line: 69, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !375, line: 64, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !380, file: !375, line: 65, baseType: !7, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !369, file: !370, line: 86, baseType: !384, size: 128, offset: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !385, line: 38, size: 128, elements: !386)
!385 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!386 = !{!387, !389}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !385, line: 39, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !384, file: !385, line: 39, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !369, file: !370, line: 87, baseType: !368, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !369, file: !370, line: 88, baseType: !393, size: 128, offset: 256)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !370, line: 49, size: 128, elements: !394)
!394 = !{!395, !409}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !370, line: 50, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !370, line: 50, size: 64, elements: !397)
!397 = !{!398, !405}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !370, line: 51, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !370, line: 51, size: 64, elements: !400)
!400 = !{!401, !404}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !399, file: !370, line: 52, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !128, line: 21, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !130, line: 27, baseType: !7)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !399, file: !370, line: 52, baseType: !402, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !396, file: !370, line: 54, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !128, line: 23, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !130, line: 31, baseType: !408)
!408 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !370, line: 56, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !369, file: !370, line: 89, baseType: !333, size: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !369, file: !370, line: 91, baseType: !414, size: 256, offset: 448)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !369, file: !370, line: 94, baseType: !418, size: 64, offset: 704)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !419, line: 25, size: 64, elements: !420)
!419 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !419, line: 26, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !419, line: 26, size: 64, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !422, file: !419, line: 28, baseType: !407, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !419, line: 30, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !422, file: !419, line: 30, size: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !426, file: !419, line: 31, baseType: !103, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !426, file: !419, line: 32, baseType: !66, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !369, file: !370, line: 95, baseType: !431, size: 64, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !370, line: 128, size: 1024, align: 512, elements: !434)
!434 = !{!435, !439, !440, !447, !453, !457, !461, !465, !466, !470, !475, !4922, !4926}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !433, file: !370, line: 129, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!66, !368, !7}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !433, file: !370, line: 130, baseType: !436, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !433, file: !370, line: 131, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!66, !444, !446}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !433, file: !370, line: 132, baseType: !448, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!66, !444, !7, !60, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !433, file: !370, line: 134, baseType: !454, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!66, !444}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !433, file: !370, line: 135, baseType: !458, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!66, !368}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !433, file: !370, line: 136, baseType: !462, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !368}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !433, file: !370, line: 137, baseType: !462, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !433, file: !370, line: 138, baseType: !467, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !368, !333}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !433, file: !370, line: 139, baseType: !471, size: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!474, !368, !474, !66}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !433, file: !370, line: 140, baseType: !476, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !4921}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !481, line: 70, size: 256, elements: !482)
!481 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!482 = !{!483, !484, !4917, !4918}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !480, file: !481, line: 71, baseType: !368, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !480, file: !481, line: 72, baseType: !485, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !163, line: 1190, size: 10752, elements: !487)
!487 = !{!488, !489, !492, !493, !494, !495, !3929, !4081, !4121, !4206, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4223, !4227, !4228, !4719, !4722, !4779, !4782, !4783, !4784, !4825, !4851, !4852, !4853, !4854, !4855, !4856, !4859, !4860, !4867, !4868, !4869, !4870, !4871, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !486, file: !163, line: 1191, baseType: !141, size: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !486, file: !163, line: 1192, baseType: !490, size: 32, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !69, line: 21, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !69, line: 18, baseType: !402)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !486, file: !163, line: 1193, baseType: !131, size: 8, offset: 160)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !486, file: !163, line: 1194, baseType: !83, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !486, file: !163, line: 1195, baseType: !85, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !486, file: !163, line: 1196, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !163, line: 2366, size: 576, elements: !498)
!498 = !{!499, !500, !501, !507, !511, !515, !519, !3917, !3918, !3919, !3921, !3922, !3923, !3925, !3926, !3927, !3928}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !497, file: !163, line: 2367, baseType: !60, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !497, file: !163, line: 2368, baseType: !66, size: 32, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !497, file: !163, line: 2376, baseType: !502, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!66, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !481, line: 21, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !497, file: !163, line: 2377, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !163, line: 75, flags: DIFlagFwdDecl)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !497, file: !163, line: 2378, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!368, !496, !66, !60, !64}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !497, file: !163, line: 2380, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !485}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !497, file: !163, line: 2381, baseType: !520, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !522)
!522 = !{!523, !524, !525, !529, !3593, !3619, !3620, !3621, !3622, !3626, !3629, !3630, !3631, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3699, !3703, !3721, !3738, !3739, !3740, !3741, !3750, !3773, !3774, !3777, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3791, !3792, !3878, !3886, !3887, !3888, !3890, !3894, !3895, !3899, !3900, !3901, !3902, !3904, !3905, !3906, !3913, !3914, !3915, !3916}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !521, file: !6, line: 403, baseType: !5, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !521, file: !6, line: 406, baseType: !141, size: 128, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !521, file: !6, line: 409, baseType: !526, size: 448, offset: 192)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 448, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 56)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !521, file: !6, line: 417, baseType: !530, size: 768, offset: 640)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !531)
!531 = !{!532, !3587, !3588, !3589, !3592}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !530, file: !6, line: 46, baseType: !533, size: 512)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !534, line: 64, size: 512, elements: !535)
!534 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!535 = !{!536, !537, !538, !540, !586, !3576, !3577, !3582, !3583, !3584, !3585, !3586}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !533, file: !534, line: 65, baseType: !60, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !533, file: !534, line: 66, baseType: !141, size: 128, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !533, file: !534, line: 67, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !533, file: !534, line: 68, baseType: !541, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !534, line: 168, size: 768, elements: !543)
!543 = !{!544, !545, !546, !547}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !542, file: !534, line: 169, baseType: !141, size: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !542, file: !534, line: 170, baseType: !103, size: 32, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !542, file: !534, line: 171, baseType: !533, size: 512, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !542, file: !534, line: 172, baseType: !548, size: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !534, line: 133, size: 192, elements: !551)
!551 = !{!552, !559, !564}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !550, file: !534, line: 134, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!66, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !550, file: !534, line: 135, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!60, !557}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !550, file: !534, line: 136, baseType: !565, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!66, !557, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !534, line: 125, size: 20736, elements: !571)
!571 = !{!572, !576, !580, !581, !585}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !570, file: !534, line: 126, baseType: !573, size: 192)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 192, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 3)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !570, file: !534, line: 127, baseType: !577, size: 4096, offset: 192)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 4096, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !570, file: !534, line: 128, baseType: !66, size: 32, offset: 4288)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !570, file: !534, line: 129, baseType: !582, size: 16384, offset: 4320)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 16384, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 2048)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !570, file: !534, line: 130, baseType: !66, size: 32, offset: 20704)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !533, file: !534, line: 69, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !534, line: 116, size: 384, elements: !590)
!590 = !{!591, !595, !618, !3537, !3568, !3572}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !589, file: !534, line: 117, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !539}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !589, file: !534, line: 118, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !599, line: 254, size: 128, elements: !600)
!599 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!600 = !{!601, !614}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !598, file: !599, line: 255, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !539, !609, !474}
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !69, line: 66, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !81, line: 73, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !81, line: 15, baseType: !608)
!608 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !599, line: 30, size: 128, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !610, file: !599, line: 31, baseType: !60, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !610, file: !599, line: 32, baseType: !68, size: 16, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !598, file: !599, line: 256, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!605, !539, !609, !60, !79}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !589, file: !534, line: 119, baseType: !619, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !599, line: 84, size: 320, elements: !623)
!623 = !{!624, !625, !629, !3533, !3535}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !622, file: !599, line: 85, baseType: !60, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !622, file: !599, line: 86, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!68, !539, !609, !66}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !622, file: !599, line: 88, baseType: !630, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!68, !539, !633, !66}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !599, line: 175, size: 512, elements: !635)
!635 = !{!636, !637, !638, !639, !643, !3528, !3529}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !634, file: !599, line: 176, baseType: !610, size: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !634, file: !599, line: 177, baseType: !79, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !634, file: !599, line: 178, baseType: !64, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !634, file: !599, line: 179, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!329}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !634, file: !599, line: 180, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!605, !647, !539, !633, !474, !85, !79}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !163, line: 994, size: 1856, align: 64, elements: !649)
!649 = !{!650, !669, !670, !672, !681, !694, !695, !696, !762, !3264, !3273, !3279, !3280, !3518, !3519, !3520, !3521, !3523, !3524, !3527}
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !163, line: 995, baseType: !651, size: 128)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !163, line: 995, size: 128, elements: !652)
!652 = !{!653, !659, !668}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !651, file: !163, line: 996, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !655, line: 60, size: 64, elements: !656)
!655 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !655, line: 61, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !651, file: !163, line: 997, baseType: !660, size: 128, align: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !69, line: 232, size: 128, align: 64, elements: !661)
!661 = !{!662, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !69, line: 233, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !660, file: !69, line: 234, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !663}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !651, file: !163, line: 998, baseType: !7, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !648, file: !163, line: 1005, baseType: !103, size: 32, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !648, file: !163, line: 1006, baseType: !671, size: 32, offset: 160)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !69, line: 156, baseType: !7)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !648, file: !163, line: 1007, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !674, line: 13, baseType: !675)
!674 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !69, line: 181, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 179, size: 64, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !676, file: !69, line: 180, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !128, line: 22, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !130, line: 30, baseType: !87)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !648, file: !163, line: 1008, baseType: !682, size: 256, offset: 256)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !683, line: 66, size: 256, elements: !684)
!683 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!684 = !{!685, !686, !688, !693}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !682, file: !683, line: 67, baseType: !673, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !682, file: !683, line: 68, baseType: !687, size: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !112, line: 23, baseType: !111)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !682, file: !683, line: 70, baseType: !689, size: 32, offset: 96)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !690, line: 15, size: 32, elements: !691)
!690 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !689, file: !690, line: 20, baseType: !93, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !682, file: !683, line: 72, baseType: !141, size: 128, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !648, file: !163, line: 1009, baseType: !85, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !648, file: !163, line: 1010, baseType: !7, size: 32, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !648, file: !163, line: 1011, baseType: !697, size: 256, offset: 640)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !163, line: 948, size: 256, elements: !698)
!698 = !{!699, !720, !758, !759, !760, !761}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !697, file: !163, line: 949, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !701, line: 34, baseType: !702)
!701 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 25, size: 64, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !702, file: !701, line: 26, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !706, line: 27, baseType: !707)
!706 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !706, line: 13, size: 64, elements: !708)
!708 = !{!709, !719}
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !706, line: 14, baseType: !710, size: 32)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !707, file: !706, line: 14, size: 32, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !710, file: !706, line: 15, baseType: !93, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !706, line: 16, baseType: !714, size: 32)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !710, file: !706, line: 16, size: 32, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !714, file: !706, line: 18, baseType: !127, size: 8)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !714, file: !706, line: 19, baseType: !718, size: 24, offset: 8)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 24, elements: !574)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !707, file: !706, line: 26, baseType: !115, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !697, file: !163, line: 950, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !14, line: 59, size: 768, elements: !723)
!723 = !{!724, !730, !731, !732, !745, !746, !747, !748}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !722, file: !14, line: 61, baseType: !725, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !726, line: 113, baseType: !727)
!726 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !726, line: 111, size: 32, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !727, file: !726, line: 112, baseType: !93, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !722, file: !14, line: 62, baseType: !7, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !722, file: !14, line: 63, baseType: !103, size: 32, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !722, file: !14, line: 65, baseType: !733, size: 256, offset: 128)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 256, elements: !743)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !69, line: 194, size: 64, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !734, file: !69, line: 195, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !69, line: 198, size: 128, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !69, line: 199, baseType: !737, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !738, file: !69, line: 199, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!743 = !{!744}
!744 = !DISubrange(count: 4)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !722, file: !14, line: 66, baseType: !734, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !722, file: !14, line: 68, baseType: !98, size: 192, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !722, file: !14, line: 69, baseType: !660, size: 128, align: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !722, file: !14, line: 70, baseType: !749, offset: 768)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, elements: !756)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !14, line: 54, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !750, file: !14, line: 55, baseType: !66, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !750, file: !14, line: 56, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !14, line: 56, flags: DIFlagFwdDecl)
!756 = !{!757}
!757 = !DISubrange(count: -1)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !697, file: !163, line: 951, baseType: !13, size: 32, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !697, file: !163, line: 952, baseType: !339, size: 32, offset: 160)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !697, file: !163, line: 952, baseType: !339, size: 32, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !697, file: !163, line: 953, baseType: !66, size: 32, offset: 224)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !648, file: !163, line: 1012, baseType: !763, size: 64, offset: 896)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !766, line: 110, size: 1472, elements: !767)
!766 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !784, !785, !786, !787, !788, !789, !919, !920, !921, !922, !923, !954, !3250, !3251, !3259}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !765, file: !766, line: 111, baseType: !673, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !765, file: !766, line: 112, baseType: !339, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !765, file: !766, line: 113, baseType: !348, size: 32, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !765, file: !766, line: 114, baseType: !339, size: 32, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !765, file: !766, line: 115, baseType: !348, size: 32, offset: 160)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !765, file: !766, line: 116, baseType: !339, size: 32, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !765, file: !766, line: 117, baseType: !348, size: 32, offset: 224)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !765, file: !766, line: 118, baseType: !339, size: 32, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !765, file: !766, line: 119, baseType: !348, size: 32, offset: 288)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !765, file: !766, line: 120, baseType: !7, size: 32, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !765, file: !766, line: 121, baseType: !779, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !780, line: 24, baseType: !781)
!780 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !780, line: 24, size: 64, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !781, file: !780, line: 24, baseType: !406, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !765, file: !766, line: 122, baseType: !779, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !765, file: !766, line: 123, baseType: !779, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !765, file: !766, line: 124, baseType: !779, size: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !765, file: !766, line: 125, baseType: !779, size: 64, offset: 640)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !765, file: !766, line: 127, baseType: !131, size: 8, offset: 704)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !765, file: !766, line: 129, baseType: !790, size: 64, offset: 768)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !792, line: 195, size: 1728, elements: !793)
!792 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!793 = !{!794, !795, !800, !812, !821, !824, !825, !832, !833, !834, !835, !838, !839, !840, !842, !843, !883, !904}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !791, file: !792, line: 196, baseType: !725, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !791, file: !792, line: 197, baseType: !796, size: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !792, line: 28, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !69, line: 104, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !128, line: 20, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !130, line: 26, baseType: !66)
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !792, line: 198, baseType: !801, size: 192, offset: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !792, line: 198, size: 192, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !801, file: !792, line: 199, baseType: !141, size: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !801, file: !792, line: 200, baseType: !805, size: 192, align: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !806, line: 5, size: 192, align: 64, elements: !807)
!806 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!807 = !{!808, !809, !811}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !805, file: !806, line: 6, baseType: !83, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !805, file: !806, line: 7, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !805, file: !806, line: 8, baseType: !810, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !791, file: !792, line: 205, baseType: !813, size: 320, offset: 256)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !814, line: 48, size: 320, elements: !815)
!814 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!815 = !{!816, !817, !818, !819, !820}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !813, file: !814, line: 49, baseType: !673, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !813, file: !814, line: 55, baseType: !673, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !813, file: !814, line: 57, baseType: !689, size: 32, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !813, file: !814, line: 59, baseType: !687, size: 32, offset: 160)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !813, file: !814, line: 60, baseType: !141, size: 128, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !791, file: !792, line: 206, baseType: !822, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !792, line: 206, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !791, file: !792, line: 207, baseType: !64, size: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !792, line: 208, baseType: !826, size: 64, offset: 704)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !792, line: 208, size: 64, elements: !827)
!827 = !{!828, !831}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !826, file: !792, line: 209, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !830, line: 8, baseType: !680)
!830 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!831 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !826, file: !792, line: 210, baseType: !829, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !791, file: !792, line: 212, baseType: !829, size: 64, offset: 768)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !791, file: !792, line: 213, baseType: !339, size: 32, offset: 832)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !791, file: !792, line: 214, baseType: !348, size: 32, offset: 864)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !791, file: !792, line: 215, baseType: !836, size: 32, offset: 896)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !792, line: 31, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !69, line: 110, baseType: !402)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !791, file: !792, line: 216, baseType: !70, size: 16, offset: 928)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !791, file: !792, line: 217, baseType: !70, size: 16, offset: 944)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !791, file: !792, line: 221, baseType: !841, size: 16, offset: 960)
!841 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !791, file: !792, line: 228, baseType: !83, size: 64, offset: 1024)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !792, line: 245, baseType: !844, size: 320, offset: 1088)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !792, line: 245, size: 320, elements: !845)
!845 = !{!846, !875}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !844, file: !792, line: 246, baseType: !847, size: 320)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !792, line: 114, size: 320, elements: !848)
!848 = !{!849, !850, !862, !865, !874}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !847, file: !792, line: 116, baseType: !83, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !847, file: !792, line: 117, baseType: !851, size: 64, offset: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !847, file: !792, line: 117, size: 64, elements: !852)
!852 = !{!853, !861}
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !792, line: 118, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !792, line: 118, size: 64, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !854, file: !792, line: 120, baseType: !137, size: 16)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !854, file: !792, line: 121, baseType: !858, size: 48, offset: 16)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 48, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 6)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !851, file: !792, line: 127, baseType: !83, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !847, file: !792, line: 129, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !792, line: 102, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !847, file: !792, line: 130, baseType: !866, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !792, line: 108, size: 192, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !867, file: !792, line: 109, baseType: !660, size: 128, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !867, file: !792, line: 110, baseType: !725, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !867, file: !792, line: 111, baseType: !872, size: 8, offset: 160)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !69, line: 35, baseType: !873)
!873 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !847, file: !792, line: 131, baseType: !60, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !792, line: 247, baseType: !876, size: 320)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !792, line: 247, size: 320, elements: !877)
!877 = !{!878, !879, !880, !881, !882}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !876, file: !792, line: 248, baseType: !83, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !876, file: !792, line: 249, baseType: !83, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !792, line: 250, baseType: !863, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !876, file: !792, line: 251, baseType: !866, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !876, file: !792, line: 252, baseType: !474, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !792, line: 260, baseType: !884, size: 256, offset: 1408)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !792, line: 260, size: 256, elements: !885)
!885 = !{!886, !892}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !884, file: !792, line: 261, baseType: !887, size: 256)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !792, line: 134, size: 256, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !887, file: !792, line: 135, baseType: !64, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !887, file: !792, line: 136, baseType: !891, size: 256)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !743)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !792, line: 262, baseType: !893, size: 256)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !792, line: 262, size: 256, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !893, file: !792, line: 264, baseType: !141, size: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !893, file: !792, line: 265, baseType: !897, size: 128, offset: 128)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !898, line: 22, size: 128, elements: !899)
!898 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!899 = !{!900, !903}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !897, file: !898, line: 23, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !898, line: 23, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !897, file: !898, line: 24, baseType: !83, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !791, file: !792, line: 280, baseType: !905, size: 64, offset: 1664)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !792, line: 176, size: 192, elements: !907)
!907 = !{!908, !917, !918}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !906, file: !792, line: 177, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !792, line: 171, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!66, !790, !913, !915, !790}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !906, file: !792, line: 178, baseType: !790, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !906, file: !792, line: 179, baseType: !863, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !765, file: !766, line: 130, baseType: !790, size: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !765, file: !766, line: 131, baseType: !790, size: 64, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !765, file: !766, line: 132, baseType: !790, size: 64, offset: 960)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !765, file: !766, line: 135, baseType: !64, size: 64, offset: 1024)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !765, file: !766, line: 137, baseType: !924, size: 64, offset: 1088)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !926, line: 14, size: 1088, elements: !927)
!926 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!927 = !{!928, !929, !938, !939, !940, !941, !942, !943}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !925, file: !926, line: 15, baseType: !725, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !925, file: !926, line: 17, baseType: !930, size: 320, offset: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !931, line: 22, size: 320, elements: !932)
!931 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!932 = !{!933, !934, !935, !936}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !930, file: !931, line: 23, baseType: !687, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !930, file: !931, line: 24, baseType: !679, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !930, file: !931, line: 26, baseType: !141, size: 128, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !930, file: !931, line: 28, baseType: !937, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !925, file: !926, line: 19, baseType: !83, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !925, file: !926, line: 20, baseType: !673, size: 64, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !925, file: !926, line: 23, baseType: !738, size: 128, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !925, file: !926, line: 24, baseType: !339, size: 32, offset: 640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !925, file: !926, line: 29, baseType: !673, size: 64, offset: 704)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !925, file: !926, line: 36, baseType: !944, size: 320, offset: 768)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !945, line: 15, size: 320, elements: !946)
!945 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!946 = !{!947, !948, !949, !950, !951, !952, !953}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !944, file: !945, line: 16, baseType: !687, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !944, file: !945, line: 18, baseType: !66, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !944, file: !945, line: 19, baseType: !66, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !944, file: !945, line: 20, baseType: !66, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !944, file: !945, line: 21, baseType: !66, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !944, file: !945, line: 22, baseType: !83, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !945, line: 23, baseType: !83, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !765, file: !766, line: 138, baseType: !955, size: 64, offset: 1152)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !957, line: 68, size: 4800, elements: !958)
!957 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!958 = !{!959, !981, !982, !983, !984, !985, !986, !987, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3244, !3245, !3246, !3248}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !956, file: !957, line: 69, baseType: !960, size: 576)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !957, line: 23, size: 576, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !960, file: !957, line: 24, baseType: !402, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !957, line: 25, baseType: !964, size: 512, offset: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !957, line: 25, size: 512, elements: !965)
!965 = !{!966, !975}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !964, file: !957, line: 26, baseType: !967, size: 480)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 480, elements: !973)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !957, line: 17, size: 96, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !968, file: !957, line: 18, baseType: !402, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !968, file: !957, line: 19, baseType: !402, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !968, file: !957, line: 20, baseType: !402, size: 32, offset: 64)
!973 = !{!974}
!974 = !DISubrange(count: 5)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !957, line: 27, baseType: !976, size: 128)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !957, line: 27, size: 128, elements: !977)
!977 = !{!978, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !976, file: !957, line: 28, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !976, file: !957, line: 29, baseType: !979, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !956, file: !957, line: 70, baseType: !960, size: 576, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !956, file: !957, line: 71, baseType: !960, size: 576, offset: 1152)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !956, file: !957, line: 72, baseType: !955, size: 64, offset: 1728)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !956, file: !957, line: 73, baseType: !66, size: 32, offset: 1792)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !956, file: !957, line: 74, baseType: !339, size: 32, offset: 1824)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !956, file: !957, line: 75, baseType: !348, size: 32, offset: 1856)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !956, file: !957, line: 76, baseType: !988, size: 192, offset: 1920)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !989, line: 9, size: 192, elements: !990)
!989 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!990 = !{!991, !992, !3177, !3178}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !988, file: !989, line: 10, baseType: !673, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !988, file: !989, line: 11, baseType: !993, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !996, line: 16, size: 512, elements: !997)
!996 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!997 = !{!998, !999, !1000, !1001, !3154, !3158, !3169, !3173}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !995, file: !996, line: 17, baseType: !60, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !995, file: !996, line: 18, baseType: !60, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !995, file: !996, line: 19, baseType: !66, size: 32, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !995, file: !996, line: 20, baseType: !1002, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1008, line: 746, size: 58368, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1009 = !{!1010, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1090, !1101, !1196, !1200, !1203, !1234, !1235, !1236, !1237, !1248, !1250, !1251, !1252, !1253, !1254, !1255, !1266, !1267, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1284, !1285, !1292, !1293, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1784, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1799, !1800, !1801, !1813, !1815, !1816, !1817, !1818, !1819, !1820, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1844, !1850, !1851, !1852, !1853, !1854, !1858, !1861, !1868, !1873, !1876, !1879, !1882, !2363, !2559, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2597, !2598, !2599, !2608, !2616, !2617, !2618, !2619, !2620, !2625, !2626, !2627, !2630, !2631, !2634, !2637, !2643, !2651, !2654, !2655, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2754, !2757, !2758, !2761, !2762, !2763, !2766, !2767, !2768, !2769, !2770, !2771, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2803, !2806, !2812, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2824, !2896, !2898, !2899, !2900, !2901, !2902, !2903, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2933, !2934, !2935}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1007, file: !1008, line: 752, baseType: !1011, size: 192)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1012, line: 56, size: 192, elements: !1013)
!1012 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1013 = !{!1014, !1015, !1016, !1017}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1011, file: !1012, line: 57, baseType: !83, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1011, file: !1012, line: 58, baseType: !83, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1011, file: !1012, line: 59, baseType: !402, size: 32, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1011, file: !1012, line: 61, baseType: !402, size: 32, offset: 160)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1007, file: !1008, line: 754, baseType: !7, size: 32, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1007, file: !1008, line: 767, baseType: !64, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1007, file: !1008, line: 768, baseType: !725, size: 32, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !1008, line: 770, baseType: !7, size: 32, offset: 352)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1007, file: !1008, line: 771, baseType: !7, size: 32, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1007, file: !1008, line: 774, baseType: !66, size: 32, offset: 416)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1007, file: !1008, line: 775, baseType: !1025, size: 128, offset: 448)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1026, line: 58, size: 128, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1027 = !{!1028, !1029, !1034, !1035}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1025, file: !1026, line: 59, baseType: !654, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !1026, line: 60, baseType: !1030, size: 32, offset: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1025, file: !1026, line: 60, size: 32, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1030, file: !1026, line: 61, baseType: !7, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1030, file: !1026, line: 62, baseType: !93, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1025, file: !1026, line: 65, baseType: !137, size: 16, offset: 96)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1025, file: !1026, line: 65, baseType: !137, size: 16, offset: 112)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1007, file: !1008, line: 776, baseType: !7, size: 32, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1007, file: !1008, line: 777, baseType: !83, size: 64, offset: 640)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1007, file: !1008, line: 778, baseType: !1006, size: 64, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1007, file: !1008, line: 787, baseType: !66, size: 32, offset: 768)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1007, file: !1008, line: 788, baseType: !66, size: 32, offset: 800)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1007, file: !1008, line: 790, baseType: !66, size: 32, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1007, file: !1008, line: 792, baseType: !66, size: 32, offset: 864)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1007, file: !1008, line: 793, baseType: !66, size: 32, offset: 896)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1007, file: !1008, line: 794, baseType: !66, size: 32, offset: 928)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1007, file: !1008, line: 795, baseType: !7, size: 32, offset: 960)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1007, file: !1008, line: 797, baseType: !1047, size: 2048, offset: 1024)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1008, line: 551, size: 2048, elements: !1048)
!1048 = !{!1049, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1069, !1072, !1073, !1074}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1047, file: !1008, line: 553, baseType: !1050, size: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1008, line: 411, size: 128, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1050, file: !1008, line: 412, baseType: !83, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1050, file: !1008, line: 413, baseType: !402, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1047, file: !1008, line: 554, baseType: !805, size: 192, align: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1047, file: !1008, line: 555, baseType: !406, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1047, file: !1008, line: 556, baseType: !406, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1047, file: !1008, line: 558, baseType: !141, size: 128, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1047, file: !1008, line: 559, baseType: !7, size: 32, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1047, file: !1008, line: 561, baseType: !406, size: 64, offset: 640)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1047, file: !1008, line: 562, baseType: !406, size: 64, offset: 704)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1047, file: !1008, line: 563, baseType: !406, size: 64, offset: 768)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1047, file: !1008, line: 564, baseType: !406, size: 64, offset: 832)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1047, file: !1008, line: 565, baseType: !679, size: 64, offset: 896)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1047, file: !1008, line: 566, baseType: !406, size: 64, offset: 960)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1047, file: !1008, line: 568, baseType: !406, size: 64, offset: 1024)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1047, file: !1008, line: 571, baseType: !66, size: 32, offset: 1088)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1047, file: !1008, line: 572, baseType: !1068, size: 64, offset: 1152)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1047, file: !1008, line: 574, baseType: !1070, size: 64, offset: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1008, line: 49, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1047, file: !1008, line: 576, baseType: !1070, size: 64, offset: 1280)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1047, file: !1008, line: 578, baseType: !83, size: 64, offset: 1344)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1047, file: !1008, line: 588, baseType: !1075, size: 512, align: 512, offset: 1536)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1008, line: 497, size: 512, align: 512, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1075, file: !1008, line: 498, baseType: !406, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1075, file: !1008, line: 499, baseType: !406, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1075, file: !1008, line: 500, baseType: !406, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1075, file: !1008, line: 501, baseType: !402, size: 32, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1075, file: !1008, line: 502, baseType: !402, size: 32, offset: 224)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1075, file: !1008, line: 503, baseType: !83, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1075, file: !1008, line: 504, baseType: !83, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1075, file: !1008, line: 505, baseType: !83, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1075, file: !1008, line: 506, baseType: !1086, size: 64, align: 64, offset: 448)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1008, line: 445, size: 64, align: 64, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1086, file: !1008, line: 446, baseType: !7, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1086, file: !1008, line: 447, baseType: !7, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1007, file: !1008, line: 798, baseType: !1091, size: 384, offset: 3072)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1008, line: 592, size: 384, elements: !1092)
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1091, file: !1008, line: 593, baseType: !141, size: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1091, file: !1008, line: 594, baseType: !83, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1091, file: !1008, line: 595, baseType: !83, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1091, file: !1008, line: 596, baseType: !7, size: 32, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1091, file: !1008, line: 597, baseType: !70, size: 16, offset: 288)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1091, file: !1008, line: 598, baseType: !70, size: 16, offset: 304)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1091, file: !1008, line: 600, baseType: !1100, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1007, file: !1008, line: 799, baseType: !1102, size: 1792, offset: 3456)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1008, line: 610, size: 1792, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1193, !1194}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1102, file: !1008, line: 611, baseType: !805, size: 192, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1102, file: !1008, line: 618, baseType: !406, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1102, file: !1008, line: 619, baseType: !406, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1102, file: !1008, line: 620, baseType: !406, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1102, file: !1008, line: 621, baseType: !406, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1102, file: !1008, line: 622, baseType: !406, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1102, file: !1008, line: 629, baseType: !679, size: 64, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1102, file: !1008, line: 630, baseType: !406, size: 64, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1102, file: !1008, line: 631, baseType: !7, size: 32, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1102, file: !1008, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1102, file: !1008, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1102, file: !1008, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1102, file: !1008, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1102, file: !1008, line: 662, baseType: !1118, size: 512, offset: 704)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !1119)
!1119 = !{!1120, !1128, !1129, !1134, !1189, !1190, !1191, !1192}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1118, file: !22, line: 119, baseType: !1121, size: 256)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1122, line: 9, size: 256, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1121, file: !1122, line: 10, baseType: !805, size: 192, align: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1121, file: !1122, line: 11, baseType: !1126, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1127, line: 29, baseType: !679)
!1127 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1118, file: !22, line: 120, baseType: !1126, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1118, file: !22, line: 121, baseType: !1130, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!21, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1118, file: !22, line: 122, baseType: !1135, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !1137)
!1137 = !{!1138, !1163, !1164, !1167, !1172, !1173, !1184, !1188}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1136, file: !22, line: 160, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1140, file: !22, line: 216, baseType: !687, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1140, file: !22, line: 217, baseType: !7, size: 32, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1140, file: !22, line: 218, baseType: !7, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1140, file: !22, line: 219, baseType: !7, size: 32, offset: 96)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1140, file: !22, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1140, file: !22, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1140, file: !22, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1140, file: !22, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1140, file: !22, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1140, file: !22, line: 226, baseType: !7, size: 32, offset: 160)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1140, file: !22, line: 227, baseType: !70, size: 16, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1140, file: !22, line: 228, baseType: !70, size: 16, offset: 208)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1140, file: !22, line: 229, baseType: !7, size: 32, offset: 224)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1140, file: !22, line: 235, baseType: !1126, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1140, file: !22, line: 236, baseType: !1133, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1140, file: !22, line: 237, baseType: !1126, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1140, file: !22, line: 238, baseType: !1133, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1140, file: !22, line: 239, baseType: !1160, size: 4096, align: 512, offset: 512)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 4096, align: 512, elements: !1161)
!1161 = !{!1162}
!1162 = !DISubrange(count: 8)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1136, file: !22, line: 161, baseType: !7, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1136, file: !22, line: 162, baseType: !1165, size: 32, offset: 96)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !69, line: 32, baseType: !1166)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !81, line: 96, baseType: !66)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1136, file: !22, line: 163, baseType: !1168, size: 32, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !375, line: 274, baseType: !1169)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !375, line: 274, size: 32, elements: !1170)
!1170 = !{!1171}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1169, file: !375, line: 274, baseType: !379, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1136, file: !22, line: 164, baseType: !1133, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1136, file: !22, line: 165, baseType: !1174, size: 128, offset: 256)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1122, line: 14, size: 128, elements: !1175)
!1175 = !{!1176}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1174, file: !1122, line: 15, baseType: !1177, size: 128)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !806, line: 26, size: 128, elements: !1178)
!1178 = !{!1179, !1183}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1177, file: !806, line: 27, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !806, line: 12, size: 64, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1180, file: !806, line: 13, baseType: !810, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1177, file: !806, line: 28, baseType: !810, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1136, file: !22, line: 166, baseType: !1185, size: 64, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1126}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1136, file: !22, line: 167, baseType: !1126, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1118, file: !22, line: 123, baseType: !127, size: 8, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1118, file: !22, line: 124, baseType: !127, size: 8, offset: 456)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1118, file: !22, line: 125, baseType: !127, size: 8, offset: 464)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1118, file: !22, line: 126, baseType: !127, size: 8, offset: 472)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1102, file: !1008, line: 671, baseType: !1118, size: 512, offset: 1216)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1102, file: !1008, line: 679, baseType: !1195, size: 64, offset: 1728)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1007, file: !1008, line: 800, baseType: !1197, size: 64, offset: 5248)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1008, line: 800, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1007, file: !1008, line: 809, baseType: !1201, size: 64, offset: 5312)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1008, line: 70, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1007, file: !1008, line: 825, baseType: !1204, size: 2048, align: 512, offset: 5632)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1008, line: 509, size: 2048, align: 512, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1204, file: !1008, line: 511, baseType: !406, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1204, file: !1008, line: 512, baseType: !406, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1204, file: !1008, line: 513, baseType: !406, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1204, file: !1008, line: 514, baseType: !406, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1204, file: !1008, line: 515, baseType: !406, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1204, file: !1008, line: 516, baseType: !406, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1204, file: !1008, line: 518, baseType: !406, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1204, file: !1008, line: 519, baseType: !406, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1204, file: !1008, line: 520, baseType: !679, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1204, file: !1008, line: 522, baseType: !406, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1204, file: !1008, line: 523, baseType: !406, size: 64, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1204, file: !1008, line: 524, baseType: !679, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1204, file: !1008, line: 526, baseType: !679, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1204, file: !1008, line: 527, baseType: !406, size: 64, offset: 832)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1204, file: !1008, line: 529, baseType: !406, size: 64, offset: 896)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1204, file: !1008, line: 530, baseType: !406, size: 64, offset: 960)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1204, file: !1008, line: 531, baseType: !406, size: 64, offset: 1024)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1204, file: !1008, line: 532, baseType: !406, size: 64, offset: 1088)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1204, file: !1008, line: 533, baseType: !406, size: 64, offset: 1152)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1204, file: !1008, line: 535, baseType: !406, size: 64, offset: 1216)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1204, file: !1008, line: 536, baseType: !406, size: 64, offset: 1280)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1204, file: !1008, line: 537, baseType: !406, size: 64, offset: 1344)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1204, file: !1008, line: 538, baseType: !406, size: 64, offset: 1408)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1204, file: !1008, line: 539, baseType: !406, size: 64, offset: 1472)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1204, file: !1008, line: 540, baseType: !406, size: 64, offset: 1536)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1204, file: !1008, line: 541, baseType: !406, size: 64, offset: 1600)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1204, file: !1008, line: 542, baseType: !406, size: 64, offset: 1664)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1204, file: !1008, line: 543, baseType: !406, size: 64, offset: 1728)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1007, file: !1008, line: 833, baseType: !7, size: 32, offset: 7680)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1007, file: !1008, line: 836, baseType: !7, size: 32, offset: 7712)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1007, file: !1008, line: 837, baseType: !66, size: 32, offset: 7744)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1007, file: !1008, line: 838, baseType: !1238, size: 64, offset: 7808)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1241, line: 19, baseType: !1242)
!1241 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1241, line: 19, size: 64, elements: !1243)
!1243 = !{!1244}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1242, file: !1241, line: 19, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !1246)
!1246 = !{!1247}
!1247 = !DISubrange(count: 1)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1007, file: !1008, line: 839, baseType: !1249, size: 64, offset: 7872)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1007, file: !1008, line: 840, baseType: !1240, size: 64, offset: 7936)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1007, file: !1008, line: 841, baseType: !64, size: 64, offset: 8000)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1007, file: !1008, line: 843, baseType: !70, size: 16, offset: 8064)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1007, file: !1008, line: 845, baseType: !70, size: 16, offset: 8080)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1007, file: !1008, line: 848, baseType: !66, size: 32, offset: 8096)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1007, file: !1008, line: 849, baseType: !1256, size: 32, offset: 8128)
!1256 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1008, line: 718, size: 32, elements: !1257)
!1257 = !{!1258, !1265}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1256, file: !1008, line: 724, baseType: !1259, size: 32)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1256, file: !1008, line: 719, size: 32, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1259, file: !1008, line: 720, baseType: !127, size: 8)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1259, file: !1008, line: 721, baseType: !127, size: 8, offset: 8)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1259, file: !1008, line: 722, baseType: !127, size: 8, offset: 16)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1259, file: !1008, line: 723, baseType: !127, size: 8, offset: 24)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1256, file: !1008, line: 725, baseType: !402, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1007, file: !1008, line: 850, baseType: !141, size: 128, offset: 8192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1007, file: !1008, line: 851, baseType: !1268, size: 64, offset: 8320)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1008, line: 60, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1007, file: !1008, line: 855, baseType: !83, size: 64, offset: 8384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1007, file: !1008, line: 856, baseType: !127, size: 8, offset: 8448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1007, file: !1008, line: 857, baseType: !127, size: 8, offset: 8456)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1007, file: !1008, line: 858, baseType: !66, size: 32, offset: 8480)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1007, file: !1008, line: 859, baseType: !141, size: 128, offset: 8512)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1007, file: !1008, line: 860, baseType: !66, size: 32, offset: 8640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1007, file: !1008, line: 861, baseType: !141, size: 128, offset: 8704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1007, file: !1008, line: 873, baseType: !1278, size: 256, offset: 8832)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1008, line: 376, size: 256, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1278, file: !1008, line: 381, baseType: !83, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1278, file: !1008, line: 384, baseType: !408, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1278, file: !1008, line: 389, baseType: !408, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1278, file: !1008, line: 392, baseType: !408, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1007, file: !1008, line: 875, baseType: !141, size: 128, offset: 9088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1007, file: !1008, line: 877, baseType: !1286, size: 320, offset: 9216)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1287, line: 86, size: 320, elements: !1288)
!1287 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1288 = !{!1289, !1290, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1286, file: !1287, line: 87, baseType: !66, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1286, file: !1287, line: 88, baseType: !141, size: 128, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1286, file: !1287, line: 89, baseType: !141, size: 128, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1007, file: !1008, line: 878, baseType: !805, size: 192, align: 64, offset: 9536)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1007, file: !1008, line: 881, baseType: !1294, size: 64, offset: 9728)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !1296)
!1296 = !{!1297, !1703}
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !27, line: 734, baseType: !1298, size: 10240)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1295, file: !27, line: 734, size: 10240, elements: !1299)
!1299 = !{!1300, !1304, !1318, !1322, !1323, !1324, !1325, !1326, !1327, !1336, !1337, !1338, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1377, !1379, !1625, !1672, !1673, !1674, !1677, !1678, !1679, !1682, !1683, !1684, !1690, !1691}
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !27, line: 739, baseType: !1301, size: 512, align: 512)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !27, line: 739, size: 512, align: 512, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1301, file: !27, line: 747, baseType: !93, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1298, file: !27, line: 750, baseType: !1305, size: 128, offset: 512)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1306, line: 218, size: 128, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1307 = !{!1308, !1316, !1317}
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !1306, line: 219, baseType: !1309, size: 32)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !1306, line: 219, size: 32, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1309, file: !1306, line: 220, baseType: !103, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1309, file: !1306, line: 221, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1306, line: 197, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1306, line: 197, elements: !1315)
!1315 = !{}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1305, file: !1306, line: 223, baseType: !7, size: 32, offset: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1305, file: !1306, line: 224, baseType: !64, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1298, file: !27, line: 752, baseType: !1319, size: 64, offset: 640)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!83, !647, !83, !83, !83, !83}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1298, file: !27, line: 756, baseType: !83, size: 64, offset: 704)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1298, file: !27, line: 757, baseType: !83, size: 64, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1298, file: !27, line: 760, baseType: !83, size: 64, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1298, file: !27, line: 761, baseType: !83, size: 64, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1298, file: !27, line: 763, baseType: !83, size: 64, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1298, file: !27, line: 764, baseType: !1328, size: 64, offset: 1024)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1330, line: 299, baseType: !1331)
!1330 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1330, line: 299, size: 64, elements: !1332)
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1331, file: !1330, line: 299, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1335, line: 18, baseType: !83)
!1335 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1298, file: !27, line: 773, baseType: !93, size: 32, offset: 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1298, file: !27, line: 785, baseType: !93, size: 32, offset: 1120)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1298, file: !27, line: 795, baseType: !1339, size: 64, offset: 1152)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1340, file: !27, line: 727, baseType: !406, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1340, file: !27, line: 728, baseType: !66, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1298, file: !27, line: 801, baseType: !83, size: 64, offset: 1216)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1298, file: !27, line: 804, baseType: !673, size: 64, offset: 1280)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1298, file: !27, line: 806, baseType: !66, size: 32, offset: 1344)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1298, file: !27, line: 808, baseType: !103, size: 32, offset: 1376)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1298, file: !27, line: 823, baseType: !813, size: 320, offset: 1408)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1298, file: !27, line: 825, baseType: !141, size: 128, offset: 1728)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1298, file: !27, line: 845, baseType: !66, size: 32, offset: 1856)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1298, file: !27, line: 849, baseType: !83, size: 64, offset: 1920)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1298, file: !27, line: 850, baseType: !83, size: 64, offset: 1984)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1298, file: !27, line: 852, baseType: !83, size: 64, offset: 2048)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1298, file: !27, line: 853, baseType: !83, size: 64, offset: 2112)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1298, file: !27, line: 854, baseType: !675, size: 64, offset: 2176)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1298, file: !27, line: 855, baseType: !83, size: 64, offset: 2240)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1298, file: !27, line: 856, baseType: !83, size: 64, offset: 2304)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1298, file: !27, line: 857, baseType: !83, size: 64, offset: 2368)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1298, file: !27, line: 858, baseType: !83, size: 64, offset: 2432)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1298, file: !27, line: 865, baseType: !379, size: 32, offset: 2496)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1298, file: !27, line: 867, baseType: !103, size: 32, offset: 2528)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1298, file: !27, line: 869, baseType: !83, size: 64, offset: 2560)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1298, file: !27, line: 869, baseType: !83, size: 64, offset: 2624)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1298, file: !27, line: 869, baseType: !83, size: 64, offset: 2688)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1298, file: !27, line: 869, baseType: !83, size: 64, offset: 2752)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1298, file: !27, line: 870, baseType: !83, size: 64, offset: 2816)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1298, file: !27, line: 870, baseType: !83, size: 64, offset: 2880)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1298, file: !27, line: 870, baseType: !83, size: 64, offset: 2944)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1298, file: !27, line: 871, baseType: !83, size: 64, offset: 3008)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1298, file: !27, line: 871, baseType: !83, size: 64, offset: 3072)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1298, file: !27, line: 871, baseType: !83, size: 64, offset: 3136)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1298, file: !27, line: 871, baseType: !83, size: 64, offset: 3200)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1298, file: !27, line: 873, baseType: !1374, size: 3328, offset: 3264)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 3328, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 52)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1298, file: !27, line: 875, baseType: !1378, size: 1280, offset: 6592)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 1280, elements: !743)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1298, file: !27, line: 877, baseType: !1380, size: 64, offset: 7872)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1382, line: 84, size: 448, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/binfmts.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5e97d73c9e2b70108086968647f46d0")
!1383 = !{!1384, !1385, !1386, !1613, !1617, !1624}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lh", scope: !1381, file: !1382, line: 85, baseType: !141, size: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1381, file: !1382, line: 86, baseType: !520, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "load_binary", scope: !1381, file: !1382, line: 87, baseType: !1387, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!66, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binprm", file: !1382, line: 18, size: 3328, elements: !1392)
!1392 = !{!1393, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1609}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1391, file: !1382, line: 20, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1396)
!1396 = !{!1397, !1406, !1407, !1413, !1420, !1421, !1426, !1427, !1432, !1433, !1445, !1571, !1572, !1573, !1574, !1575, !1576}
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !27, line: 628, baseType: !1398, size: 128)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !27, line: 628, size: 128, elements: !1399)
!1399 = !{!1400, !1405}
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !27, line: 629, baseType: !1401, size: 128)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !27, line: 629, size: 128, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1401, file: !27, line: 631, baseType: !83, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1401, file: !27, line: 632, baseType: !83, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1398, file: !27, line: 635, baseType: !660, size: 128, align: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1395, file: !27, line: 639, baseType: !1294, size: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1395, file: !27, line: 640, baseType: !1408, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1330, line: 297, baseType: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1330, line: 297, size: 64, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1409, file: !1330, line: 297, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1335, line: 19, baseType: !83)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !27, line: 646, baseType: !1414, size: 64, offset: 256)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !27, line: 646, size: 64, elements: !1415)
!1415 = !{!1416, !1419}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1414, file: !27, line: 647, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !83)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1414, file: !27, line: 648, baseType: !1418, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1395, file: !27, line: 666, baseType: !66, size: 32, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1395, file: !27, line: 667, baseType: !1422, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1424)
!1424 = !{!1425}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1423, file: !27, line: 580, baseType: !813, size: 320)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1395, file: !27, line: 670, baseType: !872, size: 8, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1395, file: !27, line: 681, baseType: !1428, size: 256, offset: 512)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1395, file: !27, line: 678, size: 256, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1428, file: !27, line: 679, baseType: !805, size: 192, align: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1428, file: !27, line: 680, baseType: !83, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1395, file: !27, line: 689, baseType: !141, size: 128, offset: 768)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1395, file: !27, line: 691, baseType: !1434, size: 64, offset: 896)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1436, line: 31, size: 768, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/rmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "424c17c81581cd4481af59c84df2437d")
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1435, file: !1436, line: 32, baseType: !1434, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1435, file: !1436, line: 33, baseType: !813, size: 320, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1435, file: !1436, line: 41, baseType: !93, size: 32, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "num_children", scope: !1435, file: !1436, line: 50, baseType: !83, size: 64, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_vmas", scope: !1435, file: !1436, line: 52, baseType: !83, size: 64, offset: 512)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1435, file: !1436, line: 54, baseType: !1434, size: 64, offset: 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1435, file: !1436, line: 66, baseType: !1177, size: 128, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1395, file: !27, line: 694, baseType: !1446, size: 64, offset: 960)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1449, line: 563, size: 1024, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1450 = !{!1451, !1455, !1456, !1460, !1464, !1468, !1518, !1522, !1526, !1530, !1531, !1532, !1536, !1540, !1563, !1567}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1448, file: !1449, line: 564, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !1394}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1448, file: !1449, line: 569, baseType: !1452, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1448, file: !1449, line: 571, baseType: !1457, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!66, !1394, !83}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1448, file: !1449, line: 572, baseType: !1461, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!66, !1394}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1448, file: !1449, line: 578, baseType: !1465, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!66, !1394, !83, !83, !83}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1448, file: !1449, line: 580, baseType: !1469, size: 64, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1449, line: 512, size: 896, elements: !1475)
!1475 = !{!1476, !1485, !1486, !1493, !1500, !1510, !1511, !1512, !1514, !1516}
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1449, line: 513, baseType: !1477, size: 320)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !1449, line: 513, size: 320, elements: !1478)
!1478 = !{!1479, !1480, !1482, !1483, !1484}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1477, file: !1449, line: 514, baseType: !1394, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1477, file: !1449, line: 515, baseType: !1481, size: 32, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !69, line: 154, baseType: !7)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1477, file: !1449, line: 516, baseType: !83, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1477, file: !1449, line: 517, baseType: !83, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1477, file: !1449, line: 518, baseType: !83, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1474, file: !1449, line: 520, baseType: !26, size: 32, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1474, file: !1449, line: 522, baseType: !1487, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1335, line: 22, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1335, line: 22, size: 64, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1489, file: !1335, line: 22, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1335, line: 15, baseType: !83)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1474, file: !1449, line: 524, baseType: !1494, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1330, line: 372, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1330, line: 372, size: 64, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1496, file: !1330, line: 372, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1335, line: 16, baseType: !83)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1449, line: 527, baseType: !1501, size: 64, offset: 512)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1474, file: !1449, line: 527, size: 64, elements: !1502)
!1502 = !{!1503, !1509}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1501, file: !1449, line: 528, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1335, line: 21, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1335, line: 21, size: 64, elements: !1506)
!1506 = !{!1507}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1505, file: !1335, line: 21, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1335, line: 14, baseType: !83)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1501, file: !1449, line: 529, baseType: !1488, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1474, file: !1449, line: 534, baseType: !307, size: 64, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1474, file: !1449, line: 535, baseType: !307, size: 64, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1474, file: !1449, line: 541, baseType: !1513, size: 64, offset: 704)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1474, file: !1449, line: 545, baseType: !1515, size: 64, offset: 768)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1474, file: !1449, line: 549, baseType: !1517, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1330, line: 520, baseType: !307)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1448, file: !1449, line: 581, baseType: !1519, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!1472, !1473, !7}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1448, file: !1449, line: 582, baseType: !1523, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1472, !1473, !83, !83}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1448, file: !1449, line: 584, baseType: !1527, size: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!83, !1394}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1448, file: !1449, line: 588, baseType: !1469, size: 64, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1448, file: !1449, line: 591, baseType: !1469, size: 64, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1448, file: !1449, line: 597, baseType: !1533, size: 64, offset: 704)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!66, !1394, !83, !64, !66, !66}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1448, file: !1449, line: 603, baseType: !1537, size: 64, offset: 768)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!60, !1394}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1448, file: !1449, line: 613, baseType: !1541, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!66, !1394, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1546, line: 44, size: 256, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!1547 = !{!1548, !1549, !1550, !1551, !1557, !1558}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1545, file: !1546, line: 45, baseType: !93, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1545, file: !1546, line: 46, baseType: !70, size: 16, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1545, file: !1546, line: 47, baseType: !70, size: 16, offset: 48)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1545, file: !1546, line: 48, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1553, line: 99, baseType: !1554)
!1553 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1553, line: 99, size: 64, elements: !1555)
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1554, file: !1553, line: 99, baseType: !1245, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !1545, file: !1546, line: 49, baseType: !66, size: 32, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1545, file: !1546, line: 54, baseType: !1559, size: 64, offset: 192)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1545, file: !1546, line: 51, size: 64, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !1559, file: !1546, line: 52, baseType: !1552, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !1559, file: !1546, line: 53, baseType: !1552, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1448, file: !1449, line: 625, baseType: !1564, size: 64, offset: 896)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!1544, !1394, !83}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1448, file: !1449, line: 633, baseType: !1568, size: 64, offset: 960)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!307, !1394, !83}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1395, file: !27, line: 697, baseType: !83, size: 64, offset: 1024)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1395, file: !27, line: 699, baseType: !647, size: 64, offset: 1088)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1395, file: !27, line: 700, baseType: !64, size: 64, offset: 1152)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1395, file: !27, line: 711, baseType: !673, size: 64, offset: 1216)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1395, file: !27, line: 717, baseType: !1544, size: 64, offset: 1280)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1395, file: !27, line: 722, baseType: !1577, offset: 1344)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !1315)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vma_pages", scope: !1391, file: !1382, line: 21, baseType: !83, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1391, file: !1382, line: 26, baseType: !1294, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1391, file: !1382, line: 27, baseType: !83, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "argmin", scope: !1391, file: !1382, line: 28, baseType: !83, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "have_execfd", scope: !1391, file: !1382, line: 31, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "execfd_creds", scope: !1391, file: !1382, line: 34, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "secureexec", scope: !1391, file: !1382, line: 40, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "point_of_no_return", scope: !1391, file: !1382, line: 45, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "comm_from_dentry", scope: !1391, file: !1382, line: 47, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "executable", scope: !1391, file: !1382, line: 48, baseType: !647, size: 64, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "interpreter", scope: !1391, file: !1382, line: 49, baseType: !647, size: 64, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1391, file: !1382, line: 50, baseType: !647, size: 64, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1391, file: !1382, line: 51, baseType: !1591, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !1391, file: !1382, line: 52, baseType: !66, size: 32, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "per_clear", scope: !1391, file: !1382, line: 53, baseType: !7, size: 32, offset: 672)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1391, file: !1382, line: 54, baseType: !66, size: 32, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "envc", scope: !1391, file: !1382, line: 54, baseType: !66, size: 32, offset: 736)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1391, file: !1382, line: 55, baseType: !60, size: 64, offset: 768)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !1391, file: !1382, line: 56, baseType: !60, size: 64, offset: 832)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fdpath", scope: !1391, file: !1382, line: 59, baseType: !60, size: 64, offset: 896)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "interp_flags", scope: !1391, file: !1382, line: 60, baseType: !7, size: 32, offset: 960)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "execfd", scope: !1391, file: !1382, line: 61, baseType: !66, size: 32, offset: 992)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !1391, file: !1382, line: 62, baseType: !83, size: 64, offset: 1024)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !1391, file: !1382, line: 62, baseType: !83, size: 64, offset: 1088)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_stack", scope: !1391, file: !1382, line: 64, baseType: !1604, size: 128, offset: 1152)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1605, line: 43, size: 128, elements: !1606)
!1605 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1604, file: !1605, line: 44, baseType: !82, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1604, file: !1605, line: 45, baseType: !82, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1391, file: !1382, line: 66, baseType: !1610, size: 2048, offset: 1280)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2048, elements: !1611)
!1611 = !{!1612}
!1612 = !DISubrange(count: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "load_shlib", scope: !1381, file: !1382, line: 88, baseType: !1614, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!66, !647}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "core_dump", scope: !1381, file: !1382, line: 90, baseType: !1618, size: 64, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!66, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "coredump_params", file: !1623, line: 66, flags: DIFlagFwdDecl)
!1623 = !DIFile(filename: "./include/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b1d3b970b1358b3a026c26044689afa")
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "min_coredump", scope: !1381, file: !1382, line: 91, baseType: !83, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1298, file: !27, line: 880, baseType: !1626, size: 1088, offset: 7936)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1627, line: 72, baseType: !1628)
!1627 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1627, line: 23, size: 1088, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1637, !1638, !1639, !1640, !1667, !1668, !1669}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1628, file: !1627, line: 28, baseType: !406, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1628, file: !1627, line: 38, baseType: !675, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1628, file: !1627, line: 40, baseType: !83, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1628, file: !1627, line: 43, baseType: !813, size: 320, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1628, file: !1627, line: 44, baseType: !1635, size: 64, offset: 512)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1627, line: 44, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1628, file: !1627, line: 48, baseType: !83, size: 64, offset: 576)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1628, file: !1627, line: 59, baseType: !682, size: 256, offset: 640)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1628, file: !1627, line: 60, baseType: !64, size: 64, offset: 896)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1628, file: !1627, line: 61, baseType: !1641, size: 64, offset: 960)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1644, line: 13, size: 1216, elements: !1645)
!1644 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1643, file: !1644, line: 14, baseType: !64, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1643, file: !1644, line: 15, baseType: !83, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1643, file: !1644, line: 17, baseType: !83, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1643, file: !1644, line: 17, baseType: !83, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1643, file: !1644, line: 18, baseType: !83, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1643, file: !1644, line: 18, baseType: !83, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1643, file: !1644, line: 19, baseType: !1653, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1643, file: !1644, line: 21, baseType: !608, size: 64, offset: 448)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1643, file: !1644, line: 23, baseType: !608, size: 64, offset: 512)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1643, file: !1644, line: 24, baseType: !608, size: 64, offset: 576)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1643, file: !1644, line: 25, baseType: !608, size: 64, offset: 640)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1643, file: !1644, line: 26, baseType: !608, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1643, file: !1644, line: 27, baseType: !608, size: 64, offset: 768)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1643, file: !1644, line: 28, baseType: !608, size: 64, offset: 832)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1643, file: !1644, line: 29, baseType: !608, size: 64, offset: 896)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1643, file: !1644, line: 30, baseType: !608, size: 64, offset: 960)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1643, file: !1644, line: 31, baseType: !608, size: 64, offset: 1024)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1643, file: !1644, line: 32, baseType: !608, size: 64, offset: 1088)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1643, file: !1644, line: 33, baseType: !608, size: 64, offset: 1152)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1628, file: !1627, line: 63, baseType: !93, size: 32, offset: 1024)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1628, file: !1627, line: 69, baseType: !137, size: 16, offset: 1056)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1628, file: !1627, line: 70, baseType: !1670, size: 16, offset: 1072)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !128, line: 18, baseType: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !130, line: 23, baseType: !841)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1298, file: !27, line: 882, baseType: !83, size: 64, offset: 9024)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1298, file: !27, line: 885, baseType: !103, size: 32, offset: 9088)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1298, file: !27, line: 886, baseType: !1675, size: 64, offset: 9152)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1298, file: !27, line: 901, baseType: !955, size: 64, offset: 9216)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1298, file: !27, line: 904, baseType: !647, size: 64, offset: 9280)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1298, file: !27, line: 906, baseType: !1680, size: 64, offset: 9344)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1298, file: !27, line: 930, baseType: !93, size: 32, offset: 9408)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1298, file: !27, line: 933, baseType: !93, size: 32, offset: 9440)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1298, file: !27, line: 935, baseType: !1685, size: 64, offset: 9472)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !49, line: 103, size: 64, elements: !1686)
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1685, file: !49, line: 104, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !49, line: 101, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1298, file: !27, line: 940, baseType: !673, size: 64, offset: 9536)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1298, file: !27, line: 942, baseType: !1692, size: 256, offset: 9600)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1693, line: 98, size: 256, elements: !1694)
!1693 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1692, file: !1693, line: 99, baseType: !673, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1692, file: !1693, line: 100, baseType: !141, size: 128, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1692, file: !1693, line: 101, baseType: !1698, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1693, line: 21, baseType: !1699)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1702}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1295, file: !27, line: 986, baseType: !1704, offset: 10240)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !756)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1007, file: !1008, line: 882, baseType: !1294, size: 64, offset: 9792)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1007, file: !1008, line: 884, baseType: !66, size: 32, offset: 9856)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1007, file: !1008, line: 885, baseType: !66, size: 32, offset: 9888)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1007, file: !1008, line: 886, baseType: !66, size: 32, offset: 9920)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1007, file: !1008, line: 888, baseType: !66, size: 32, offset: 9952)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1007, file: !1008, line: 890, baseType: !83, size: 64, offset: 9984)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1007, file: !1008, line: 893, baseType: !7, size: 32, offset: 10048)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1007, file: !1008, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1007, file: !1008, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1007, file: !1008, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1007, file: !1008, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1007, file: !1008, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1007, file: !1008, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1007, file: !1008, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1007, file: !1008, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1007, file: !1008, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1007, file: !1008, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1007, file: !1008, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1007, file: !1008, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1007, file: !1008, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1007, file: !1008, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1007, file: !1008, line: 969, baseType: !83, size: 64, offset: 10176)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1007, file: !1008, line: 971, baseType: !1728, size: 448, offset: 10240)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !43, line: 25, size: 448, elements: !1729)
!1729 = !{!1730, !1731, !1736}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1728, file: !43, line: 26, baseType: !83, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1728, file: !43, line: 27, baseType: !1732, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!608, !1735}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !43, line: 28, baseType: !1737, size: 320, offset: 128)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1728, file: !43, line: 28, size: 320, elements: !1738)
!1738 = !{!1739, !1749, !1774}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1737, file: !43, line: 37, baseType: !1740, size: 320)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1737, file: !43, line: 30, size: 320, elements: !1741)
!1741 = !{!1742, !1744, !1745, !1746, !1747, !1748}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1740, file: !43, line: 31, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1740, file: !43, line: 32, baseType: !402, size: 32, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1740, file: !43, line: 33, baseType: !402, size: 32, offset: 96)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1740, file: !43, line: 34, baseType: !402, size: 32, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1740, file: !43, line: 35, baseType: !406, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1740, file: !43, line: 36, baseType: !1743, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1737, file: !43, line: 47, baseType: !1750, size: 192)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1737, file: !43, line: 39, size: 192, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1773}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1750, file: !43, line: 40, baseType: !1165, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1750, file: !43, line: 41, baseType: !42, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !43, line: 42, baseType: !1755, size: 64, offset: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1750, file: !43, line: 42, size: 64, elements: !1756)
!1756 = !{!1757, !1765}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1755, file: !43, line: 43, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1760, line: 7, size: 128, elements: !1761)
!1760 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1761 = !{!1762, !1764}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1759, file: !1760, line: 8, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !81, line: 93, baseType: !87)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1759, file: !1760, line: 9, baseType: !87, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1755, file: !43, line: 44, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1768, line: 7, size: 64, elements: !1769)
!1768 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1769 = !{!1770, !1772}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1767, file: !1768, line: 8, baseType: !1771, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1768, line: 5, baseType: !798)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1767, file: !1768, line: 9, baseType: !798, size: 32, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1750, file: !43, line: 46, baseType: !406, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1737, file: !43, line: 55, baseType: !1775, size: 256)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1737, file: !43, line: 49, size: 256, elements: !1776)
!1776 = !{!1777, !1780, !1781, !1782, !1783}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1775, file: !43, line: 50, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !43, line: 14, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1775, file: !43, line: 51, baseType: !66, size: 32, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1775, file: !43, line: 52, baseType: !66, size: 32, offset: 96)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1775, file: !43, line: 53, baseType: !83, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1775, file: !43, line: 54, baseType: !83, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1007, file: !1008, line: 973, baseType: !1785, size: 32, offset: 10688)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !69, line: 27, baseType: !1786)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !81, line: 28, baseType: !66)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1007, file: !1008, line: 974, baseType: !1785, size: 32, offset: 10720)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1007, file: !1008, line: 978, baseType: !83, size: 64, offset: 10752)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1007, file: !1008, line: 987, baseType: !1006, size: 64, offset: 10816)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1007, file: !1008, line: 990, baseType: !1006, size: 64, offset: 10880)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1007, file: !1008, line: 995, baseType: !141, size: 128, offset: 10944)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1007, file: !1008, line: 996, baseType: !141, size: 128, offset: 11072)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1007, file: !1008, line: 997, baseType: !1006, size: 64, offset: 11200)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1007, file: !1008, line: 1005, baseType: !141, size: 128, offset: 11264)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1007, file: !1008, line: 1006, baseType: !141, size: 128, offset: 11392)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1007, file: !1008, line: 1009, baseType: !721, size: 64, offset: 11520)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1007, file: !1008, line: 1010, baseType: !1798, size: 512, offset: 11584)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 512, elements: !743)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1007, file: !1008, line: 1011, baseType: !141, size: 128, offset: 12096)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1007, file: !1008, line: 1012, baseType: !141, size: 128, offset: 12224)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1007, file: !1008, line: 1014, baseType: !1802, size: 64, offset: 12352)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1804, line: 26, size: 256, elements: !1805)
!1804 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1803, file: !1804, line: 27, baseType: !7, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1803, file: !1804, line: 28, baseType: !1808, size: 192, offset: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1809, line: 43, size: 192, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1808, file: !1809, line: 44, baseType: !687, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1808, file: !1809, line: 45, baseType: !141, size: 128, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1007, file: !1008, line: 1017, baseType: !1814, size: 64, offset: 12416)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1007, file: !1008, line: 1020, baseType: !1814, size: 64, offset: 12480)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1007, file: !1008, line: 1023, baseType: !64, size: 64, offset: 12544)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1007, file: !1008, line: 1025, baseType: !406, size: 64, offset: 12608)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1007, file: !1008, line: 1026, baseType: !406, size: 64, offset: 12672)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1007, file: !1008, line: 1031, baseType: !406, size: 64, offset: 12736)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1007, file: !1008, line: 1032, baseType: !1821, size: 192, offset: 12800)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1008, line: 324, size: 192, elements: !1822)
!1822 = !{!1823, !1824, !1825}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1821, file: !1008, line: 326, baseType: !406, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1821, file: !1008, line: 327, baseType: !406, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1821, file: !1008, line: 328, baseType: !687, size: 32, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1007, file: !1008, line: 1041, baseType: !83, size: 64, offset: 12992)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1007, file: !1008, line: 1042, baseType: !83, size: 64, offset: 13056)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1007, file: !1008, line: 1045, baseType: !406, size: 64, offset: 13120)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1007, file: !1008, line: 1048, baseType: !406, size: 64, offset: 13184)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1007, file: !1008, line: 1051, baseType: !83, size: 64, offset: 13248)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1007, file: !1008, line: 1052, baseType: !83, size: 64, offset: 13312)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1007, file: !1008, line: 1055, baseType: !1833, size: 640, offset: 13376)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1834, line: 132, size: 640, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1835 = !{!1836, !1842, !1843}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1833, file: !1834, line: 133, baseType: !1837, size: 576)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1838, size: 576, elements: !574)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1834, line: 117, size: 192, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1838, file: !1834, line: 118, baseType: !406, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1838, file: !1834, line: 119, baseType: !1174, size: 128, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1833, file: !1834, line: 134, baseType: !7, size: 32, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1833, file: !1834, line: 135, baseType: !7, size: 32, offset: 608)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1007, file: !1008, line: 1058, baseType: !1845, size: 448, offset: 14016)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1834, line: 144, size: 448, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1845, file: !1834, line: 145, baseType: !660, size: 128, align: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1845, file: !1834, line: 146, baseType: !682, size: 256, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1845, file: !1834, line: 147, baseType: !7, size: 32, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1007, file: !1008, line: 1064, baseType: !763, size: 64, offset: 14464)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1007, file: !1008, line: 1067, baseType: !763, size: 64, offset: 14528)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1007, file: !1008, line: 1070, baseType: !763, size: 64, offset: 14592)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1007, file: !1008, line: 1074, baseType: !790, size: 64, offset: 14656)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1007, file: !1008, line: 1084, baseType: !1855, size: 128, offset: 14720)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !1856)
!1856 = !{!1857}
!1857 = !DISubrange(count: 16)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1007, file: !1008, line: 1086, baseType: !1859, size: 64, offset: 14848)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1008, line: 55, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1007, file: !1008, line: 1089, baseType: !1862, size: 64, offset: 14912)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1863, line: 12, size: 64, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1862, file: !1863, line: 13, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1863, line: 8, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1007, file: !1008, line: 1090, baseType: !1869, size: 128, offset: 14976)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1870, line: 13, size: 128, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1871 = !{!1872}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1869, file: !1870, line: 14, baseType: !141, size: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1007, file: !1008, line: 1097, baseType: !1874, size: 64, offset: 15104)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1008, line: 50, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1007, file: !1008, line: 1100, baseType: !1877, size: 64, offset: 15168)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1008, line: 1100, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1007, file: !1008, line: 1103, baseType: !1880, size: 64, offset: 15232)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1008, line: 53, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1007, file: !1008, line: 1107, baseType: !1883, size: 64, offset: 15296)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1885, line: 31, size: 576, elements: !1886)
!1885 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1886 = !{!1887, !1888, !1891, !1894, !1897, !1898, !1901, !1904, !1905}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1884, file: !1885, line: 32, baseType: !725, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1884, file: !1885, line: 33, baseType: !1889, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1885, line: 9, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1884, file: !1885, line: 34, baseType: !1892, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1885, line: 10, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1884, file: !1885, line: 35, baseType: !1895, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1885, line: 8, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1884, file: !1885, line: 36, baseType: !754, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1884, file: !1885, line: 37, baseType: !1899, size: 64, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !792, line: 34, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1884, file: !1885, line: 38, baseType: !1902, size: 64, offset: 384)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1885, line: 38, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1884, file: !1885, line: 39, baseType: !1902, size: 64, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1884, file: !1885, line: 40, baseType: !1906, size: 64, offset: 512)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1908, line: 771, size: 384, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1909 = !{!1910, !1911, !1912, !1926}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1907, file: !1908, line: 772, baseType: !988, size: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1907, file: !1908, line: 773, baseType: !955, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1907, file: !1908, line: 774, baseType: !1913, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !957, line: 107, size: 1152, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1924}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1914, file: !957, line: 108, baseType: !738, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1914, file: !957, line: 109, baseType: !955, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1914, file: !957, line: 110, baseType: !339, size: 32, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1914, file: !957, line: 111, baseType: !93, size: 32, offset: 224)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1914, file: !957, line: 112, baseType: !1921, size: 640, offset: 256)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 640, elements: !1922)
!1922 = !{!1923}
!1923 = !DISubrange(count: 10)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1914, file: !957, line: 113, baseType: !1925, size: 256, offset: 896)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 256, elements: !743)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1907, file: !1908, line: 775, baseType: !1927, size: 64, offset: 320)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1929, line: 209, size: 4736, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1930 = !{!1931, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1928, file: !1929, line: 215, baseType: !1932, size: 896)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1933, size: 896, elements: !2135)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1929, line: 152, size: 1600, elements: !1935)
!1935 = !{!1936, !2186, !2304, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2341}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1934, file: !1929, line: 154, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1929, line: 389, size: 7872, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !2086, !2103, !2104, !2108, !2109, !2110, !2111, !2112, !2113, !2132, !2133, !2137, !2138, !2139, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2173, !2176, !2177, !2184}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1938, file: !1929, line: 391, baseType: !1934, size: 1600)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1938, file: !1929, line: 393, baseType: !83, size: 64, offset: 1600)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1938, file: !1929, line: 401, baseType: !66, size: 32, offset: 1664)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1938, file: !1929, line: 404, baseType: !66, size: 32, offset: 1696)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1938, file: !1929, line: 417, baseType: !66, size: 32, offset: 1728)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1938, file: !1929, line: 418, baseType: !66, size: 32, offset: 1760)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1938, file: !1929, line: 419, baseType: !66, size: 32, offset: 1792)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1938, file: !1929, line: 432, baseType: !66, size: 32, offset: 1824)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1938, file: !1929, line: 433, baseType: !66, size: 32, offset: 1856)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1938, file: !1929, line: 434, baseType: !66, size: 32, offset: 1888)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1938, file: !1929, line: 436, baseType: !66, size: 32, offset: 1920)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1938, file: !1929, line: 439, baseType: !7, size: 32, offset: 1952)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1938, file: !1929, line: 441, baseType: !1953, size: 64, offset: 1984)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1955, line: 190, size: 1152, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !2078, !2079, !2080, !2081, !2082, !2085}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1954, file: !1955, line: 191, baseType: !93, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1954, file: !1955, line: 192, baseType: !93, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1954, file: !1955, line: 202, baseType: !1953, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1954, file: !1955, line: 203, baseType: !60, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1954, file: !1955, line: 205, baseType: !805, size: 192, align: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1954, file: !1955, line: 207, baseType: !1653, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1954, file: !1955, line: 208, baseType: !7, size: 32, offset: 448)
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !1955, line: 209, baseType: !1965, size: 256, offset: 512)
!1965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !1955, line: 209, size: 256, elements: !1966)
!1966 = !{!1967, !1976, !1980}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1965, file: !1955, line: 210, baseType: !1968, size: 256)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1955, line: 153, size: 256, elements: !1969)
!1969 = !{!1970, !1971, !1972, !1975}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1968, file: !1955, line: 154, baseType: !83, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1968, file: !1955, line: 156, baseType: !1180, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1968, file: !1955, line: 162, baseType: !1973, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1955, line: 162, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1968, file: !1955, line: 167, baseType: !83, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1965, file: !1955, line: 211, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1955, line: 170, size: 64, elements: !1978)
!1978 = !{!1979}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1977, file: !1955, line: 171, baseType: !1953, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1965, file: !1955, line: 212, baseType: !1981, size: 256)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1955, line: 174, size: 256, elements: !1982)
!1982 = !{!1983, !2073, !2076, !2077}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1981, file: !1955, line: 175, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1955, line: 271, size: 768, elements: !1987)
!1987 = !{!1988, !2046, !2050, !2051, !2052, !2053, !2054, !2058, !2059, !2060, !2061, !2069}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1986, file: !1955, line: 276, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!66, !1992}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1955, line: 251, size: 1216, elements: !1994)
!1994 = !{!1995, !1996, !1997, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1993, file: !1955, line: 253, baseType: !1953, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1993, file: !1955, line: 254, baseType: !647, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1993, file: !1955, line: 255, baseType: !1998, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2000, line: 17, size: 960, elements: !2001)
!2000 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2031, !2032, !2035}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1999, file: !2000, line: 18, baseType: !474, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1999, file: !2000, line: 19, baseType: !79, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1999, file: !2000, line: 20, baseType: !79, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1999, file: !2000, line: 21, baseType: !79, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1999, file: !2000, line: 22, baseType: !79, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1999, file: !2000, line: 23, baseType: !85, size: 64, offset: 320)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1999, file: !2000, line: 24, baseType: !85, size: 64, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1999, file: !2000, line: 25, baseType: !682, size: 256, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1999, file: !2000, line: 26, baseType: !2011, size: 64, offset: 704)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2000, line: 32, size: 256, elements: !2014)
!2014 = !{!2015, !2019, !2023, !2027}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2013, file: !2000, line: 33, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!64, !1998, !84}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2013, file: !2000, line: 34, baseType: !2020, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !1998, !64}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2013, file: !2000, line: 35, baseType: !2024, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!64, !1998, !64, !84}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2013, file: !2000, line: 36, baseType: !2028, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!66, !1998, !64}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1999, file: !2000, line: 27, baseType: !66, size: 32, offset: 768)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1999, file: !2000, line: 28, baseType: !2033, size: 64, offset: 832)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1999, file: !2000, line: 29, baseType: !64, size: 64, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1993, file: !1955, line: 256, baseType: !64, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1993, file: !1955, line: 259, baseType: !682, size: 256, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1993, file: !1955, line: 260, baseType: !682, size: 256, offset: 512)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1993, file: !1955, line: 261, baseType: !66, size: 32, offset: 768)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1993, file: !1955, line: 262, baseType: !141, size: 128, offset: 832)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1993, file: !1955, line: 263, baseType: !474, size: 64, offset: 960)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1993, file: !1955, line: 265, baseType: !79, size: 64, offset: 1024)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1993, file: !1955, line: 266, baseType: !872, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1993, file: !1955, line: 267, baseType: !872, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1993, file: !1955, line: 268, baseType: !1446, size: 64, offset: 1152)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1986, file: !1955, line: 277, baseType: !2047, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !1992}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1986, file: !1955, line: 290, baseType: !2028, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1986, file: !1955, line: 292, baseType: !2016, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1986, file: !1955, line: 293, baseType: !2024, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1986, file: !1955, line: 294, baseType: !2020, size: 64, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1986, file: !1955, line: 296, baseType: !2055, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!605, !1992, !474, !79, !85}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1986, file: !1955, line: 306, baseType: !79, size: 64, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1986, file: !1955, line: 313, baseType: !872, size: 8, offset: 512)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1986, file: !1955, line: 314, baseType: !2055, size: 64, offset: 576)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1986, file: !1955, line: 317, baseType: !2062, size: 64, offset: 640)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!2065, !1992, !2067}
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2066, line: 59, baseType: !7)
!2066 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !163, line: 61, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1986, file: !1955, line: 320, baseType: !2070, size: 64, offset: 704)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!66, !1992, !1394}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1981, file: !1955, line: 176, baseType: !2074, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1955, line: 35, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1981, file: !1955, line: 177, baseType: !85, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1981, file: !1955, line: 178, baseType: !1953, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1954, file: !1955, line: 215, baseType: !64, size: 64, offset: 768)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1954, file: !1955, line: 221, baseType: !406, size: 64, offset: 832)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1954, file: !1955, line: 223, baseType: !70, size: 16, offset: 896)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1954, file: !1955, line: 224, baseType: !68, size: 16, offset: 912)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1954, file: !1955, line: 225, baseType: !2083, size: 64, offset: 960)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1955, line: 36, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1954, file: !1955, line: 227, baseType: !660, size: 128, align: 64, offset: 1024)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1938, file: !1929, line: 442, baseType: !2087, size: 448, offset: 2048)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1929, line: 138, size: 448, elements: !2088)
!2088 = !{!2089, !2090, !2091}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2087, file: !1929, line: 140, baseType: !1953, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2087, file: !1929, line: 141, baseType: !83, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2087, file: !1929, line: 142, baseType: !2092, size: 320, offset: 128)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2093, line: 11, size: 320, elements: !2094)
!2093 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2094 = !{!2095, !2096, !2097, !2102}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2092, file: !2093, line: 16, baseType: !738, size: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2092, file: !2093, line: 17, baseType: !83, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2092, file: !2093, line: 18, baseType: !2098, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !2101}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2092, file: !2093, line: 19, baseType: !402, size: 32, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1938, file: !1929, line: 443, baseType: !2087, size: 448, offset: 2496)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1938, file: !1929, line: 446, baseType: !2105, offset: 2944)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2087, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 0)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1938, file: !1929, line: 455, baseType: !137, size: 16, offset: 2944)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1938, file: !1929, line: 456, baseType: !137, size: 16, offset: 2960)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1938, file: !1929, line: 457, baseType: !137, size: 16, offset: 2976)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1938, file: !1929, line: 458, baseType: !137, size: 16, offset: 2992)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1938, file: !1929, line: 461, baseType: !1932, size: 896, offset: 3008)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1938, file: !1929, line: 463, baseType: !2114, size: 64, offset: 3904)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1929, line: 537, size: 41664, elements: !2116)
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2130}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2115, file: !1929, line: 538, baseType: !1973, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2115, file: !1929, line: 541, baseType: !7, size: 32, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2115, file: !1929, line: 544, baseType: !66, size: 32, offset: 96)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2115, file: !1929, line: 547, baseType: !141, size: 128, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2115, file: !1929, line: 548, baseType: !660, size: 128, align: 64, offset: 256)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2115, file: !1929, line: 555, baseType: !1938, size: 7872, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2115, file: !1929, line: 558, baseType: !1937, size: 64, offset: 8256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2115, file: !1929, line: 561, baseType: !93, size: 32, offset: 8320)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2115, file: !1929, line: 564, baseType: !7, size: 32, offset: 8352)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2115, file: !1929, line: 567, baseType: !2127, size: 32768, offset: 8384)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32768, elements: !2128)
!2128 = !{!2129}
!2129 = !DISubrange(count: 4096)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2115, file: !1929, line: 570, baseType: !2131, size: 512, offset: 41152)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !578)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1938, file: !1929, line: 469, baseType: !141, size: 128, offset: 3968)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1938, file: !1929, line: 478, baseType: !2134, size: 1792, offset: 4096)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 1792, elements: !2135)
!2135 = !{!2136}
!2136 = !DISubrange(count: 14)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1938, file: !1929, line: 487, baseType: !1937, size: 64, offset: 5888)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1938, file: !1929, line: 488, baseType: !1937, size: 64, offset: 5952)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1938, file: !1929, line: 491, baseType: !2140, size: 64, offset: 6016)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1929, line: 327, size: 896, elements: !2142)
!2142 = !{!2143, !2146, !2156, !2157, !2158, !2159, !2160}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2141, file: !1929, line: 332, baseType: !2144)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2145, line: 64, elements: !1315)
!2145 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2141, file: !1929, line: 333, baseType: !2147, size: 192)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1929, line: 299, size: 192, elements: !2148)
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2147, file: !1929, line: 300, baseType: !2150, size: 192)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2151, line: 17, size: 192, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2152 = !{!2153, !2154, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2150, file: !2151, line: 18, baseType: !406, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2150, file: !2151, line: 19, baseType: !406, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2150, file: !2151, line: 20, baseType: !408, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2141, file: !1929, line: 339, baseType: !2147, size: 192, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2141, file: !1929, line: 347, baseType: !2147, size: 192, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2141, file: !1929, line: 353, baseType: !2147, size: 192, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2141, file: !1929, line: 366, baseType: !1937, size: 64, offset: 768)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2141, file: !1929, line: 367, baseType: !1937, size: 64, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1938, file: !1929, line: 492, baseType: !141, size: 128, offset: 6080)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1938, file: !1929, line: 495, baseType: !2147, size: 192, offset: 6208)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1938, file: !1929, line: 496, baseType: !2147, size: 192, offset: 6400)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1938, file: !1929, line: 497, baseType: !1821, size: 192, offset: 6592)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1938, file: !1929, line: 503, baseType: !141, size: 128, offset: 6784)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1938, file: !1929, line: 504, baseType: !682, size: 256, offset: 6912)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1938, file: !1929, line: 507, baseType: !98, size: 192, offset: 7168)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1938, file: !1929, line: 510, baseType: !1692, size: 256, offset: 7360)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1938, file: !1929, line: 513, baseType: !2170, size: 64, offset: 7616)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2172, line: 214, elements: !1315)
!2172 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1938, file: !1929, line: 516, baseType: !2174, offset: 7680)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2175, line: 76, elements: !1315)
!2175 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1938, file: !1929, line: 519, baseType: !93, size: 32, offset: 7680)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1938, file: !1929, line: 522, baseType: !2178, size: 128, offset: 7712)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1929, line: 370, size: 128, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2183}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2178, file: !1929, line: 372, baseType: !872, size: 8)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2178, file: !1929, line: 375, baseType: !66, size: 32, offset: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2178, file: !1929, line: 380, baseType: !66, size: 32, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2178, file: !1929, line: 386, baseType: !66, size: 32, offset: 96)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1938, file: !1929, line: 529, baseType: !2185, offset: 7872)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1937, elements: !756)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1934, file: !1929, line: 157, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1929, line: 669, size: 1984, elements: !2189)
!2189 = !{!2190, !2194, !2198, !2202, !2203, !2204, !2205, !2209, !2213, !2214, !2220, !2224, !2225, !2229, !2233, !2237, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2264, !2265, !2302, !2303}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2188, file: !1929, line: 670, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!1933, !1933}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2188, file: !1929, line: 671, baseType: !2195, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!66, !1933}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2188, file: !1929, line: 672, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !1933}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2188, file: !1929, line: 673, baseType: !2199, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2188, file: !1929, line: 674, baseType: !2199, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2188, file: !1929, line: 675, baseType: !2199, size: 64, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2188, file: !1929, line: 676, baseType: !2206, size: 64, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !1933, !66}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2188, file: !1929, line: 677, baseType: !2210, size: 64, offset: 448)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!66, !1998, !1933}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2188, file: !1929, line: 679, baseType: !2210, size: 64, offset: 512)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2188, file: !1929, line: 682, baseType: !2215, size: 64, offset: 576)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!66, !2218}
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1929, line: 30, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2188, file: !1929, line: 683, baseType: !2221, size: 64, offset: 640)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !2218}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2188, file: !1929, line: 684, baseType: !2221, size: 64, offset: 704)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2188, file: !1929, line: 685, baseType: !2226, size: 64, offset: 768)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2188, file: !1929, line: 686, baseType: !2230, size: 64, offset: 832)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!66, !1006, !1927}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2188, file: !1929, line: 688, baseType: !2234, size: 64, offset: 896)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !1006, !1927}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2188, file: !1929, line: 689, baseType: !2238, size: 64, offset: 960)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !1006}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2188, file: !1929, line: 690, baseType: !2238, size: 64, offset: 1024)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2188, file: !1929, line: 691, baseType: !2238, size: 64, offset: 1088)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2188, file: !1929, line: 692, baseType: !2199, size: 64, offset: 1152)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2188, file: !1929, line: 694, baseType: !872, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2188, file: !1929, line: 707, baseType: !872, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2188, file: !1929, line: 719, baseType: !872, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2188, file: !1929, line: 722, baseType: !66, size: 32, offset: 1248)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2188, file: !1929, line: 723, baseType: !60, size: 64, offset: 1280)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2188, file: !1929, line: 726, baseType: !60, size: 64, offset: 1344)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2188, file: !1929, line: 729, baseType: !2114, size: 64, offset: 1408)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2188, file: !1929, line: 732, baseType: !2252, size: 192, offset: 1472)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2253, line: 19, size: 192, elements: !2254)
!2253 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!2254 = !{!2255, !2262, !2263}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2252, file: !2253, line: 20, baseType: !2256, size: 128)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2257, line: 296, size: 128, elements: !2258)
!2257 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2258 = !{!2259, !2260, !2261}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2256, file: !2257, line: 297, baseType: !103, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2256, file: !2257, line: 299, baseType: !1481, size: 32, offset: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2256, file: !2257, line: 300, baseType: !64, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2252, file: !2253, line: 21, baseType: !7, size: 32, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2252, file: !2253, line: 22, baseType: !7, size: 32, offset: 160)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2188, file: !1929, line: 738, baseType: !141, size: 128, offset: 1664)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2188, file: !1929, line: 744, baseType: !2266, size: 64, offset: 1792)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1929, line: 580, size: 1728, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2278, !2279, !2280, !2284, !2288, !2289, !2290, !2291, !2292, !2296, !2300, !2301}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2267, file: !1929, line: 586, baseType: !2131, size: 512)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2267, file: !1929, line: 587, baseType: !83, size: 64, offset: 512)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2267, file: !1929, line: 593, baseType: !79, size: 64, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2267, file: !1929, line: 596, baseType: !7, size: 32, offset: 640)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2267, file: !1929, line: 604, baseType: !7, size: 32, offset: 672)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2267, file: !1929, line: 610, baseType: !2187, size: 64, offset: 704)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2267, file: !1929, line: 611, baseType: !141, size: 128, offset: 768)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2267, file: !1929, line: 612, baseType: !2277, size: 64, offset: 896)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2267, file: !1929, line: 614, baseType: !1989, size: 64, offset: 960)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2267, file: !1929, line: 615, baseType: !2047, size: 64, offset: 1024)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2267, file: !1929, line: 621, baseType: !2281, size: 64, offset: 1088)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!406, !1933, !2266}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2267, file: !1929, line: 625, baseType: !2285, size: 64, offset: 1152)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!679, !1933, !2266}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2267, file: !1929, line: 628, baseType: !2028, size: 64, offset: 1216)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2267, file: !1929, line: 631, baseType: !2016, size: 64, offset: 1280)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2267, file: !1929, line: 632, baseType: !2024, size: 64, offset: 1344)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2267, file: !1929, line: 633, baseType: !2020, size: 64, offset: 1408)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2267, file: !1929, line: 640, baseType: !2293, size: 64, offset: 1472)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!66, !1933, !2266, !406}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2267, file: !1929, line: 645, baseType: !2297, size: 64, offset: 1536)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!66, !1933, !2266, !679}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2267, file: !1929, line: 654, baseType: !2055, size: 64, offset: 1600)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2267, file: !1929, line: 657, baseType: !2062, size: 64, offset: 1664)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2188, file: !1929, line: 745, baseType: !2266, size: 64, offset: 1856)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2188, file: !1929, line: 754, baseType: !7, size: 32, offset: 1920)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1934, file: !1929, line: 160, baseType: !2305, size: 128, offset: 128)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2306, line: 105, size: 128, elements: !2307)
!2306 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2307 = !{!2308, !2309}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2305, file: !2306, line: 110, baseType: !83, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2305, file: !2306, line: 118, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2306, line: 95, size: 448, elements: !2312)
!2312 = !{!2313, !2314, !2320, !2321, !2322, !2323, !2324}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2311, file: !2306, line: 96, baseType: !673, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2311, file: !2306, line: 97, baseType: !2315, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2306, line: 60, baseType: !2317)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2311, file: !2306, line: 98, baseType: !2315, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2311, file: !2306, line: 99, baseType: !872, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2311, file: !2306, line: 100, baseType: !872, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2311, file: !2306, line: 101, baseType: !660, size: 128, align: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2311, file: !2306, line: 102, baseType: !2319, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1934, file: !1929, line: 163, baseType: !141, size: 128, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1934, file: !1929, line: 164, baseType: !141, size: 128, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1934, file: !1929, line: 167, baseType: !141, size: 128, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1934, file: !1929, line: 173, baseType: !66, size: 32, offset: 640)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1934, file: !1929, line: 175, baseType: !7, size: 32, offset: 672)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1934, file: !1929, line: 183, baseType: !406, size: 64, offset: 704)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1934, file: !1929, line: 189, baseType: !93, size: 32, offset: 768)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1934, file: !1929, line: 192, baseType: !1692, size: 256, offset: 832)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1934, file: !1929, line: 193, baseType: !2334, size: 448, offset: 1088)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1693, line: 120, size: 448, elements: !2335)
!2335 = !{!2336, !2337, !2338}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2334, file: !1693, line: 121, baseType: !1692, size: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2334, file: !1693, line: 122, baseType: !660, size: 128, align: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2334, file: !1693, line: 125, baseType: !2339, size: 64, offset: 384)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1693, line: 18, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1934, file: !1929, line: 199, baseType: !1933, size: 64, offset: 1536)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1928, file: !1929, line: 218, baseType: !725, size: 32, offset: 896)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1928, file: !1929, line: 226, baseType: !1927, size: 64, offset: 960)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1928, file: !1929, line: 229, baseType: !1937, size: 64, offset: 1024)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1928, file: !1929, line: 232, baseType: !66, size: 32, offset: 1088)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1928, file: !1929, line: 241, baseType: !141, size: 128, offset: 1152)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1928, file: !1929, line: 242, baseType: !141, size: 128, offset: 1280)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1928, file: !1929, line: 243, baseType: !141, size: 128, offset: 1408)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1928, file: !1929, line: 246, baseType: !141, size: 128, offset: 1536)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1928, file: !1929, line: 255, baseType: !2134, size: 1792, offset: 1664)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1928, file: !1929, line: 258, baseType: !141, size: 128, offset: 3456)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1928, file: !1929, line: 259, baseType: !141, size: 128, offset: 3584)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1928, file: !1929, line: 265, baseType: !738, size: 128, offset: 3712)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1928, file: !1929, line: 271, baseType: !141, size: 128, offset: 3840)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1928, file: !1929, line: 277, baseType: !141, size: 128, offset: 3968)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1928, file: !1929, line: 278, baseType: !141, size: 128, offset: 4096)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1928, file: !1929, line: 279, baseType: !141, size: 128, offset: 4224)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1928, file: !1929, line: 288, baseType: !1937, size: 64, offset: 4352)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1928, file: !1929, line: 289, baseType: !1937, size: 64, offset: 4416)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1928, file: !1929, line: 290, baseType: !1927, size: 64, offset: 4480)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1928, file: !1929, line: 293, baseType: !872, size: 8, offset: 4544)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1928, file: !1929, line: 296, baseType: !660, size: 128, align: 64, offset: 4608)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1007, file: !1008, line: 1110, baseType: !2364, size: 64, offset: 15360)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2366, line: 93, size: 8768, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2418, !2427, !2428, !2430, !2431, !2432, !2435, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2473, !2474, !2476, !2486, !2549, !2550, !2553, !2554, !2555, !2556, !2557, !2558}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2365, file: !2366, line: 94, baseType: !725, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2365, file: !2366, line: 95, baseType: !93, size: 32, offset: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2365, file: !2366, line: 96, baseType: !66, size: 32, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2365, file: !2366, line: 97, baseType: !66, size: 32, offset: 96)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2365, file: !2366, line: 98, baseType: !141, size: 128, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2365, file: !2366, line: 100, baseType: !98, size: 192, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2365, file: !2366, line: 103, baseType: !1006, size: 64, offset: 448)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2365, file: !2366, line: 106, baseType: !2376, size: 192, offset: 512)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2377, line: 32, size: 192, elements: !2378)
!2377 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2378 = !{!2379, !2380}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2376, file: !2377, line: 33, baseType: !141, size: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2376, file: !2377, line: 34, baseType: !2381, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2382, line: 25, baseType: !2383)
!2382 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2382, line: 23, size: 64, elements: !2384)
!2384 = !{!2385}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2383, file: !2382, line: 24, baseType: !1245, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2365, file: !2366, line: 109, baseType: !734, size: 64, offset: 704)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2365, file: !2366, line: 112, baseType: !66, size: 32, offset: 768)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2365, file: !2366, line: 114, baseType: !66, size: 32, offset: 800)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2365, file: !2366, line: 115, baseType: !1006, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2365, file: !2366, line: 118, baseType: !66, size: 32, offset: 896)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2365, file: !2366, line: 119, baseType: !7, size: 32, offset: 928)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2365, file: !2366, line: 121, baseType: !2393, size: 64, offset: 960)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2366, line: 80, size: 448, elements: !2395)
!2395 = !{!2396, !2397, !2403}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2394, file: !2366, line: 81, baseType: !93, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2394, file: !2366, line: 82, baseType: !2398, size: 128, offset: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2366, line: 75, size: 128, elements: !2399)
!2399 = !{!2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2398, file: !2366, line: 76, baseType: !1006, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2398, file: !2366, line: 77, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2394, file: !2366, line: 83, baseType: !1803, size: 256, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2365, file: !2366, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2365, file: !2366, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2365, file: !2366, line: 138, baseType: !7, size: 32, offset: 1056)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2365, file: !2366, line: 139, baseType: !141, size: 128, offset: 1088)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2365, file: !2366, line: 142, baseType: !1118, size: 512, offset: 1216)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2365, file: !2366, line: 143, baseType: !1126, size: 64, offset: 1728)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2365, file: !2366, line: 150, baseType: !2411, size: 256, offset: 1792)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2412, size: 256, elements: !2416)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2366, line: 38, size: 128, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2412, file: !2366, line: 39, baseType: !406, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2412, file: !2366, line: 40, baseType: !406, size: 64, offset: 64)
!2416 = !{!2417}
!2417 = !DISubrange(count: 2)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2365, file: !2366, line: 156, baseType: !2419, size: 192, offset: 2048)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2366, line: 66, size: 192, elements: !2420)
!2420 = !{!2421}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2419, file: !2366, line: 67, baseType: !2422, size: 192)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2366, line: 47, size: 192, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2422, file: !2366, line: 48, baseType: !675, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2422, file: !2366, line: 49, baseType: !675, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2422, file: !2366, line: 50, baseType: !675, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2365, file: !2366, line: 160, baseType: !1833, size: 640, offset: 2240)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2365, file: !2366, line: 163, baseType: !2429, size: 256, offset: 2880)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 256, elements: !743)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2365, file: !2366, line: 169, baseType: !721, size: 64, offset: 3136)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2365, file: !2366, line: 172, baseType: !66, size: 32, offset: 3200)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2365, file: !2366, line: 174, baseType: !2433, size: 64, offset: 3264)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2366, line: 174, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2365, file: !2366, line: 185, baseType: !2436, size: 64, offset: 3328)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !375, line: 860, baseType: !2437)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 853, size: 64, elements: !2438)
!2438 = !{!2439, !2440}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2437, file: !375, line: 858, baseType: !374, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2437, file: !375, line: 859, baseType: !103, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2365, file: !2366, line: 186, baseType: !406, size: 64, offset: 3392)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2365, file: !2366, line: 186, baseType: !406, size: 64, offset: 3456)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2365, file: !2366, line: 186, baseType: !406, size: 64, offset: 3520)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2365, file: !2366, line: 186, baseType: !406, size: 64, offset: 3584)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2365, file: !2366, line: 187, baseType: !406, size: 64, offset: 3648)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2365, file: !2366, line: 188, baseType: !406, size: 64, offset: 3712)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2365, file: !2366, line: 189, baseType: !1821, size: 192, offset: 3776)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2365, file: !2366, line: 190, baseType: !83, size: 64, offset: 3968)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2365, file: !2366, line: 190, baseType: !83, size: 64, offset: 4032)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2365, file: !2366, line: 190, baseType: !83, size: 64, offset: 4096)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2365, file: !2366, line: 190, baseType: !83, size: 64, offset: 4160)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2365, file: !2366, line: 191, baseType: !83, size: 64, offset: 4224)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2365, file: !2366, line: 191, baseType: !83, size: 64, offset: 4288)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2365, file: !2366, line: 191, baseType: !83, size: 64, offset: 4352)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2365, file: !2366, line: 191, baseType: !83, size: 64, offset: 4416)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2365, file: !2366, line: 192, baseType: !83, size: 64, offset: 4480)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2365, file: !2366, line: 192, baseType: !83, size: 64, offset: 4544)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2365, file: !2366, line: 192, baseType: !83, size: 64, offset: 4608)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2365, file: !2366, line: 192, baseType: !83, size: 64, offset: 4672)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2365, file: !2366, line: 193, baseType: !83, size: 64, offset: 4736)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2365, file: !2366, line: 193, baseType: !83, size: 64, offset: 4800)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2365, file: !2366, line: 194, baseType: !2463, size: 448, offset: 4864)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2464, line: 12, size: 448, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2463, file: !2464, line: 15, baseType: !406, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2463, file: !2464, line: 17, baseType: !406, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2463, file: !2464, line: 19, baseType: !406, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2463, file: !2464, line: 21, baseType: !406, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2463, file: !2464, line: 29, baseType: !406, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2463, file: !2464, line: 35, baseType: !406, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2463, file: !2464, line: 44, baseType: !406, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2365, file: !2366, line: 202, baseType: !408, size: 64, offset: 5312)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2365, file: !2366, line: 213, baseType: !2475, size: 2048, offset: 5376)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1604, size: 2048, elements: !1856)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2365, file: !2366, line: 216, baseType: !2477, size: 448, offset: 7424)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2366, line: 30, size: 448, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2477, file: !2366, line: 31, baseType: !66, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2477, file: !2366, line: 32, baseType: !608, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2477, file: !2366, line: 33, baseType: !83, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2477, file: !2366, line: 34, baseType: !406, size: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2477, file: !2366, line: 34, baseType: !406, size: 64, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2477, file: !2366, line: 35, baseType: !83, size: 64, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2477, file: !2366, line: 35, baseType: !83, size: 64, offset: 384)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2365, file: !2366, line: 219, baseType: !2487, size: 64, offset: 7872)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2489, line: 41, size: 3456, elements: !2490)
!2489 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2505, !2506, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2488, file: !2489, line: 47, baseType: !138, size: 16)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2488, file: !2489, line: 48, baseType: !403, size: 32, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2488, file: !2489, line: 54, baseType: !129, size: 8, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2488, file: !2489, line: 55, baseType: !129, size: 8, offset: 72)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2488, file: !2489, line: 73, baseType: !407, size: 64, align: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2488, file: !2489, line: 74, baseType: !407, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2488, file: !2489, line: 81, baseType: !407, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2488, file: !2489, line: 82, baseType: !407, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2488, file: !2489, line: 85, baseType: !407, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2488, file: !2489, line: 86, baseType: !407, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2488, file: !2489, line: 94, baseType: !407, size: 64, offset: 512)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2488, file: !2489, line: 102, baseType: !407, size: 64, offset: 576)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2488, file: !2489, line: 107, baseType: !2504, size: 256, offset: 640)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !415)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2488, file: !2489, line: 108, baseType: !129, size: 8, align: 64, offset: 896)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2488, file: !2489, line: 110, baseType: !2507, size: 24, offset: 904)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 24, elements: !574)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2488, file: !2489, line: 111, baseType: !403, size: 32, align: 64, offset: 960)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2488, file: !2489, line: 113, baseType: !403, size: 32, offset: 992)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2488, file: !2489, line: 114, baseType: !403, size: 32, offset: 1024)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2488, file: !2489, line: 115, baseType: !403, size: 32, offset: 1056)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2488, file: !2489, line: 117, baseType: !403, size: 32, offset: 1088)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2488, file: !2489, line: 118, baseType: !407, size: 64, align: 64, offset: 1152)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2488, file: !2489, line: 120, baseType: !407, size: 64, offset: 1216)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2488, file: !2489, line: 121, baseType: !407, size: 64, offset: 1280)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2488, file: !2489, line: 122, baseType: !407, size: 64, offset: 1344)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2488, file: !2489, line: 123, baseType: !407, size: 64, offset: 1408)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2488, file: !2489, line: 133, baseType: !407, size: 64, offset: 1472)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2488, file: !2489, line: 137, baseType: !407, size: 64, offset: 1536)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2488, file: !2489, line: 142, baseType: !407, size: 64, offset: 1600)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2488, file: !2489, line: 143, baseType: !407, size: 64, offset: 1664)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2488, file: !2489, line: 146, baseType: !407, size: 64, offset: 1728)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2488, file: !2489, line: 147, baseType: !407, size: 64, offset: 1792)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2488, file: !2489, line: 148, baseType: !407, size: 64, offset: 1856)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2488, file: !2489, line: 149, baseType: !407, size: 64, offset: 1920)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2488, file: !2489, line: 154, baseType: !407, size: 64, offset: 1984)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2488, file: !2489, line: 155, baseType: !407, size: 64, offset: 2048)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2488, file: !2489, line: 156, baseType: !407, size: 64, offset: 2112)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2488, file: !2489, line: 158, baseType: !407, size: 64, offset: 2176)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2488, file: !2489, line: 159, baseType: !407, size: 64, offset: 2240)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2488, file: !2489, line: 162, baseType: !407, size: 64, offset: 2304)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2488, file: !2489, line: 163, baseType: !407, size: 64, offset: 2368)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2488, file: !2489, line: 164, baseType: !407, size: 64, offset: 2432)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2488, file: !2489, line: 167, baseType: !407, size: 64, offset: 2496)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2488, file: !2489, line: 168, baseType: !407, size: 64, offset: 2560)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2488, file: !2489, line: 171, baseType: !407, size: 64, offset: 2624)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2488, file: !2489, line: 172, baseType: !407, size: 64, offset: 2688)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2488, file: !2489, line: 175, baseType: !407, size: 64, offset: 2752)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2488, file: !2489, line: 178, baseType: !407, size: 64, offset: 2816)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2488, file: !2489, line: 179, baseType: !407, size: 64, offset: 2880)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2488, file: !2489, line: 182, baseType: !403, size: 32, offset: 2944)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2488, file: !2489, line: 186, baseType: !407, size: 64, align: 64, offset: 3008)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2488, file: !2489, line: 194, baseType: !407, size: 64, offset: 3072)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2488, file: !2489, line: 195, baseType: !407, size: 64, offset: 3136)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2488, file: !2489, line: 199, baseType: !407, size: 64, offset: 3200)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2488, file: !2489, line: 200, baseType: !407, size: 64, offset: 3264)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2488, file: !2489, line: 203, baseType: !407, size: 64, offset: 3328)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2488, file: !2489, line: 204, baseType: !407, size: 64, offset: 3392)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2365, file: !2366, line: 222, baseType: !7, size: 32, offset: 7936)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2365, file: !2366, line: 223, baseType: !2551, size: 64, offset: 8000)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2366, line: 223, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2365, file: !2366, line: 230, baseType: !872, size: 8, offset: 8064)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2365, file: !2366, line: 231, baseType: !841, size: 16, offset: 8080)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2365, file: !2366, line: 232, baseType: !841, size: 16, offset: 8096)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2365, file: !2366, line: 234, baseType: !1294, size: 64, offset: 8128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2365, file: !2366, line: 237, baseType: !682, size: 256, offset: 8192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2365, file: !2366, line: 243, baseType: !813, size: 320, offset: 8448)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1007, file: !1008, line: 1111, baseType: !2560, size: 64, offset: 15424)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2366, line: 20, size: 16640, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2566}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2561, file: !2366, line: 21, baseType: !103, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2561, file: !2366, line: 22, baseType: !725, size: 32, offset: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2561, file: !2366, line: 23, baseType: !98, size: 192, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2561, file: !2366, line: 24, baseType: !2567, size: 16384, offset: 256)
!2567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2568, size: 16384, elements: !578)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2377, line: 51, size: 256, elements: !2569)
!2569 = !{!2570}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2568, file: !2377, line: 52, baseType: !2571, size: 256)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2377, line: 37, size: 256, elements: !2572)
!2572 = !{!2573, !2580, !2581, !2585}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2571, file: !2377, line: 39, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2575, line: 83, baseType: !2576)
!2575 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2575, line: 82, baseType: !2578)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{null, !66}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2571, file: !2377, line: 40, baseType: !83, size: 64, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2571, file: !2377, line: 46, baseType: !2582, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2575, line: 86, baseType: !2583)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2575, line: 85, baseType: !2227)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2571, file: !2377, line: 48, baseType: !2381, size: 64, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1007, file: !1008, line: 1112, baseType: !2381, size: 64, offset: 15488)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1007, file: !1008, line: 1113, baseType: !2381, size: 64, offset: 15552)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1007, file: !1008, line: 1115, baseType: !2381, size: 64, offset: 15616)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1007, file: !1008, line: 1116, baseType: !2376, size: 192, offset: 15680)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1007, file: !1008, line: 1117, baseType: !83, size: 64, offset: 15872)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1007, file: !1008, line: 1118, baseType: !79, size: 64, offset: 15936)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1007, file: !1008, line: 1119, baseType: !7, size: 32, offset: 16000)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1007, file: !1008, line: 1121, baseType: !663, size: 64, offset: 16064)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1007, file: !1008, line: 1125, baseType: !2595, size: 64, offset: 16128)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1008, line: 43, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1007, file: !1008, line: 1127, baseType: !339, size: 32, offset: 16192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1007, file: !1008, line: 1128, baseType: !7, size: 32, offset: 16224)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1007, file: !1008, line: 1130, baseType: !2600, size: 128, offset: 16256)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2601, line: 37, size: 128, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2602 = !{!2603, !2604, !2605}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2600, file: !2601, line: 38, baseType: !66, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2600, file: !2601, line: 39, baseType: !93, size: 32, offset: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2600, file: !2601, line: 40, baseType: !2606, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2601, line: 24, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1007, file: !1008, line: 1131, baseType: !2609, size: 256, offset: 16384)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2610, line: 12, size: 256, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2611 = !{!2612, !2613, !2614, !2615}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2609, file: !2610, line: 13, baseType: !474, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2609, file: !2610, line: 14, baseType: !83, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2609, file: !2610, line: 15, baseType: !83, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2609, file: !2610, line: 16, baseType: !872, size: 8, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1007, file: !1008, line: 1134, baseType: !406, size: 64, offset: 16640)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1007, file: !1008, line: 1135, baseType: !406, size: 64, offset: 16704)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1007, file: !1008, line: 1138, baseType: !103, size: 32, offset: 16768)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1007, file: !1008, line: 1141, baseType: !687, size: 32, offset: 16800)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1007, file: !1008, line: 1143, baseType: !2621, size: 64, offset: 16832)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1008, line: 735, size: 64, elements: !2622)
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2621, file: !1008, line: 736, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1007, file: !1008, line: 1147, baseType: !1177, size: 128, offset: 16896)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1007, file: !1008, line: 1149, baseType: !1006, size: 64, offset: 17024)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1007, file: !1008, line: 1151, baseType: !2628, size: 64, offset: 17088)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1008, line: 1151, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1007, file: !1008, line: 1188, baseType: !64, size: 64, offset: 17152)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1007, file: !1008, line: 1191, baseType: !2632, size: 64, offset: 17216)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1008, line: 44, flags: DIFlagFwdDecl)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1007, file: !1008, line: 1194, baseType: !2635, size: 64, offset: 17280)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1008, line: 45, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1007, file: !1008, line: 1197, baseType: !2638, size: 64, offset: 17344)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2640, line: 155, size: 64, elements: !2641)
!2640 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !2639, file: !2640, line: 157, baseType: !83, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1007, file: !1008, line: 1199, baseType: !2644, size: 64, offset: 17408)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2646, line: 99, size: 128, elements: !2647)
!2646 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2647 = !{!2648, !2649, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2645, file: !2646, line: 100, baseType: !673, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2645, file: !2646, line: 101, baseType: !93, size: 32, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2645, file: !2646, line: 103, baseType: !70, size: 16, offset: 96)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1007, file: !1008, line: 1202, baseType: !2652, size: 64, offset: 17472)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1008, line: 48, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1007, file: !1008, line: 1205, baseType: !83, size: 64, offset: 17536)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1007, file: !1008, line: 1206, baseType: !2656, size: 64, offset: 17600)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2377, line: 14, baseType: !2658)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2377, line: 12, size: 384, elements: !2659)
!2659 = !{!2660}
!2660 = !DIDerivedType(tag: DW_TAG_member, scope: !2658, file: !2377, line: 13, baseType: !2661, size: 384)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2658, file: !2377, line: 13, size: 384, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2661, file: !2377, line: 13, baseType: !66, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2661, file: !2377, line: 13, baseType: !66, size: 32, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2661, file: !2377, line: 13, baseType: !66, size: 32, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2661, file: !2377, line: 13, baseType: !2667, size: 256, offset: 128)
!2667 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2668, line: 37, size: 256, elements: !2669)
!2668 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2669 = !{!2670, !2675, !2688, !2694, !2703, !2730, !2735}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2667, file: !2668, line: 42, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2667, file: !2668, line: 39, size: 64, elements: !2672)
!2672 = !{!2673, !2674}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2671, file: !2668, line: 40, baseType: !1786, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2671, file: !2668, line: 41, baseType: !345, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2667, file: !2668, line: 50, baseType: !2676, size: 192)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2667, file: !2668, line: 45, size: 192, elements: !2677)
!2677 = !{!2678, !2680, !2681, !2687}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2676, file: !2668, line: 46, baseType: !2679, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !81, line: 95, baseType: !66)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2676, file: !2668, line: 47, baseType: !66, size: 32, offset: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2676, file: !2668, line: 48, baseType: !2682, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2668, line: 11, baseType: !2683)
!2683 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2668, line: 8, size: 64, elements: !2684)
!2684 = !{!2685, !2686}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2683, file: !2668, line: 9, baseType: !66, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2683, file: !2668, line: 10, baseType: !64, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2676, file: !2668, line: 49, baseType: !66, size: 32, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2667, file: !2668, line: 57, baseType: !2689, size: 128)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2667, file: !2668, line: 53, size: 128, elements: !2690)
!2690 = !{!2691, !2692, !2693}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2689, file: !2668, line: 54, baseType: !1786, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2689, file: !2668, line: 55, baseType: !345, size: 32, offset: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2689, file: !2668, line: 56, baseType: !2682, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2667, file: !2668, line: 66, baseType: !2695, size: 256)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2667, file: !2668, line: 60, size: 256, elements: !2696)
!2696 = !{!2697, !2698, !2699, !2700, !2702}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2695, file: !2668, line: 61, baseType: !1786, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2695, file: !2668, line: 62, baseType: !345, size: 32, offset: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2695, file: !2668, line: 63, baseType: !66, size: 32, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2695, file: !2668, line: 64, baseType: !2701, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !81, line: 94, baseType: !607)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2695, file: !2668, line: 65, baseType: !2701, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2667, file: !2668, line: 105, baseType: !2704, size: 256)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2667, file: !2668, line: 69, size: 256, elements: !2705)
!2705 = !{!2706, !2707}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2704, file: !2668, line: 70, baseType: !64, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, scope: !2704, file: !2668, line: 79, baseType: !2708, size: 192, offset: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2704, file: !2668, line: 79, size: 192, elements: !2709)
!2709 = !{!2710, !2711, !2712, !2719, !2724}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2708, file: !2668, line: 81, baseType: !66, size: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2708, file: !2668, line: 86, baseType: !841, size: 16)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2708, file: !2668, line: 92, baseType: !2713, size: 192)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2708, file: !2668, line: 88, size: 192, elements: !2714)
!2714 = !{!2715, !2717, !2718}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2713, file: !2668, line: 89, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !1161)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2713, file: !2668, line: 90, baseType: !64, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2713, file: !2668, line: 91, baseType: !64, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2708, file: !2668, line: 97, baseType: !2720, size: 96)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2708, file: !2668, line: 94, size: 96, elements: !2721)
!2721 = !{!2722, !2723}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2720, file: !2668, line: 95, baseType: !2716, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2720, file: !2668, line: 96, baseType: !403, size: 32, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2708, file: !2668, line: 103, baseType: !2725, size: 128)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2708, file: !2668, line: 99, size: 128, elements: !2726)
!2726 = !{!2727, !2728, !2729}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2725, file: !2668, line: 100, baseType: !83, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2725, file: !2668, line: 101, baseType: !403, size: 32, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2725, file: !2668, line: 102, baseType: !403, size: 32, offset: 96)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2667, file: !2668, line: 111, baseType: !2731, size: 128)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2667, file: !2668, line: 108, size: 128, elements: !2732)
!2732 = !{!2733, !2734}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2731, file: !2668, line: 109, baseType: !608, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2731, file: !2668, line: 110, baseType: !66, size: 32, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2667, file: !2668, line: 118, baseType: !2736, size: 128)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2667, file: !2668, line: 114, size: 128, elements: !2737)
!2737 = !{!2738, !2739, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2736, file: !2668, line: 115, baseType: !64, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2736, file: !2668, line: 116, baseType: !66, size: 32, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2736, file: !2668, line: 117, baseType: !7, size: 32, offset: 96)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1007, file: !1008, line: 1208, baseType: !2463, size: 448, offset: 17664)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1007, file: !1008, line: 1215, baseType: !406, size: 64, offset: 18112)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1007, file: !1008, line: 1217, baseType: !406, size: 64, offset: 18176)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1007, file: !1008, line: 1219, baseType: !406, size: 64, offset: 18240)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1007, file: !1008, line: 1223, baseType: !1552, size: 64, offset: 18304)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1007, file: !1008, line: 1225, baseType: !374, size: 32, offset: 18368)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1007, file: !1008, line: 1226, baseType: !66, size: 32, offset: 18400)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1007, file: !1008, line: 1227, baseType: !66, size: 32, offset: 18432)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1007, file: !1008, line: 1231, baseType: !1927, size: 64, offset: 18496)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1007, file: !1008, line: 1233, baseType: !141, size: 128, offset: 18560)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1007, file: !1008, line: 1240, baseType: !2752, size: 64, offset: 18688)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1008, line: 62, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1007, file: !1008, line: 1242, baseType: !2755, size: 64, offset: 18752)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1008, line: 1242, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1007, file: !1008, line: 1244, baseType: !141, size: 128, offset: 18816)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1007, file: !1008, line: 1245, baseType: !2759, size: 64, offset: 18944)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1008, line: 51, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1007, file: !1008, line: 1246, baseType: !682, size: 256, offset: 19008)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1007, file: !1008, line: 1247, baseType: !7, size: 32, offset: 19264)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1007, file: !1008, line: 1250, baseType: !2764, size: 64, offset: 19328)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1008, line: 57, flags: DIFlagFwdDecl)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1007, file: !1008, line: 1251, baseType: !682, size: 256, offset: 19392)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1007, file: !1008, line: 1252, baseType: !141, size: 128, offset: 19648)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1007, file: !1008, line: 1259, baseType: !1544, size: 64, offset: 19776)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1007, file: !1008, line: 1260, baseType: !841, size: 16, offset: 19840)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1007, file: !1008, line: 1261, baseType: !841, size: 16, offset: 19856)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1007, file: !1008, line: 1314, baseType: !2772, size: 64, offset: 19904)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2774, line: 62, size: 256, align: 256, elements: !2775)
!2774 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2773, file: !2774, line: 75, baseType: !403, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2773, file: !2774, line: 90, baseType: !403, size: 32, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2773, file: !2774, line: 112, baseType: !407, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2773, file: !2774, line: 132, baseType: !403, size: 32, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2773, file: !2774, line: 140, baseType: !403, size: 32, offset: 160)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2773, file: !2774, line: 149, baseType: !403, size: 32, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2773, file: !2774, line: 154, baseType: !2783, offset: 224)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, elements: !756)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1007, file: !1008, line: 1315, baseType: !402, size: 32, offset: 19968)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1007, file: !1008, line: 1316, baseType: !402, size: 32, offset: 20000)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1007, file: !1008, line: 1321, baseType: !83, size: 64, offset: 20032)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1007, file: !1008, line: 1325, baseType: !66, size: 32, offset: 20096)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1007, file: !1008, line: 1326, baseType: !66, size: 32, offset: 20128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1007, file: !1008, line: 1327, baseType: !66, size: 32, offset: 20160)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1007, file: !1008, line: 1328, baseType: !66, size: 32, offset: 20192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1007, file: !1008, line: 1329, baseType: !660, size: 128, align: 64, offset: 20224)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1007, file: !1008, line: 1332, baseType: !2793, size: 128, offset: 20352)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2794, line: 51, size: 128, elements: !2795)
!2794 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2795 = !{!2796, !2801, !2802}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2793, file: !2794, line: 60, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2798, line: 7, size: 64, elements: !2799)
!2798 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2799 = !{!2800}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2797, file: !2798, line: 12, baseType: !1242, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2793, file: !2794, line: 63, baseType: !872, size: 8, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2793, file: !2794, line: 70, baseType: !872, size: 8, offset: 72)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1007, file: !1008, line: 1335, baseType: !2804, size: 64, offset: 20480)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1008, line: 59, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1007, file: !1008, line: 1337, baseType: !2807, size: 128, offset: 20544)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2794, line: 39, size: 128, elements: !2808)
!2808 = !{!2809, !2810, !2811}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2807, file: !2794, line: 40, baseType: !307, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2807, file: !2794, line: 42, baseType: !403, size: 32, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2807, file: !2794, line: 43, baseType: !403, size: 32, offset: 96)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1007, file: !1008, line: 1340, baseType: !2813, size: 64, offset: 20672)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1008, line: 69, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1007, file: !1008, line: 1351, baseType: !66, size: 32, offset: 20736)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1007, file: !1008, line: 1352, baseType: !66, size: 32, offset: 20768)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1007, file: !1008, line: 1354, baseType: !83, size: 64, offset: 20800)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1007, file: !1008, line: 1364, baseType: !406, size: 64, offset: 20864)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1007, file: !1008, line: 1365, baseType: !406, size: 64, offset: 20928)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1007, file: !1008, line: 1412, baseType: !83, size: 64, offset: 20992)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1007, file: !1008, line: 1453, baseType: !2822, size: 64, offset: 21056)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1008, line: 1453, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1007, file: !1008, line: 1457, baseType: !2825, size: 64, offset: 21120)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !49, line: 61, size: 576, elements: !2827)
!2827 = !{!2828, !2829, !2848, !2851, !2852, !2885, !2895}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2826, file: !49, line: 62, baseType: !48, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, scope: !2826, file: !49, line: 64, baseType: !2830, size: 192, offset: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2826, file: !49, line: 64, size: 192, elements: !2831)
!2831 = !{!2832, !2843}
!2832 = !DIDerivedType(tag: DW_TAG_member, scope: !2830, file: !49, line: 65, baseType: !2833, size: 192)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2830, file: !49, line: 65, size: 192, elements: !2834)
!2834 = !{!2835, !2842}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2833, file: !49, line: 66, baseType: !2836, size: 128)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2837, line: 50, size: 128, elements: !2838)
!2837 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2838 = !{!2839, !2840, !2841}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2836, file: !2837, line: 52, baseType: !83, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2836, file: !2837, line: 54, baseType: !7, size: 32, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2836, file: !2837, line: 55, baseType: !7, size: 32, offset: 96)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2833, file: !49, line: 67, baseType: !83, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !2830, file: !49, line: 70, baseType: !2844, size: 192)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2830, file: !49, line: 70, size: 192, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2844, file: !49, line: 71, baseType: !660, size: 128, align: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2844, file: !49, line: 72, baseType: !83, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2826, file: !49, line: 76, baseType: !2849, size: 64, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !49, line: 76, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2826, file: !49, line: 77, baseType: !83, size: 64, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2826, file: !49, line: 79, baseType: !2853, size: 64, offset: 384)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2837, line: 25, size: 256, elements: !2855)
!2855 = !{!2856, !2862, !2866}
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !2854, file: !2837, line: 26, baseType: !2857, size: 128)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2854, file: !2837, line: 26, size: 128, elements: !2858)
!2858 = !{!2859, !2861}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2857, file: !2837, line: 27, baseType: !2860, size: 128)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !1856)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2857, file: !2837, line: 28, baseType: !2860, size: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2854, file: !2837, line: 31, baseType: !2863, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2837, line: 23, flags: DIFlagFwdDecl)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !2854, file: !2837, line: 33, baseType: !2867, size: 64, offset: 192)
!2867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2854, file: !2837, line: 33, size: 64, elements: !2868)
!2868 = !{!2869, !2875, !2880}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2867, file: !2837, line: 38, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2867, file: !2837, line: 34, size: 64, elements: !2871)
!2871 = !{!2872, !2873, !2874}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2870, file: !2837, line: 35, baseType: !798, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2870, file: !2837, line: 36, baseType: !127, size: 8, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2870, file: !2837, line: 37, baseType: !127, size: 8, offset: 40)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2867, file: !2837, line: 42, baseType: !2876, size: 16)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2867, file: !2837, line: 39, size: 16, elements: !2877)
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2876, file: !2837, line: 40, baseType: !127, size: 8)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2876, file: !2837, line: 41, baseType: !127, size: 8, offset: 8)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2867, file: !2837, line: 46, baseType: !2881, size: 16)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2867, file: !2837, line: 43, size: 16, elements: !2882)
!2882 = !{!2883, !2884}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2881, file: !2837, line: 44, baseType: !127, size: 8)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2881, file: !2837, line: 45, baseType: !127, size: 8, offset: 8)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2826, file: !49, line: 81, baseType: !2886, size: 64, offset: 448)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !49, line: 85, size: 384, elements: !2888)
!2888 = !{!2889, !2890, !2891, !2892, !2893, !2894}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2887, file: !49, line: 86, baseType: !2849, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2887, file: !49, line: 87, baseType: !83, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2887, file: !49, line: 88, baseType: !83, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2887, file: !49, line: 89, baseType: !83, size: 64, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2887, file: !49, line: 90, baseType: !872, size: 8, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2887, file: !49, line: 92, baseType: !2886, size: 64, offset: 320)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2826, file: !49, line: 82, baseType: !7, size: 32, offset: 512)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1007, file: !1008, line: 1463, baseType: !2897, offset: 21184)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1008, line: 739, elements: !1315)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1007, file: !1008, line: 1470, baseType: !660, size: 128, align: 64, offset: 21184)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1007, file: !1008, line: 1471, baseType: !725, size: 32, offset: 21312)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1007, file: !1008, line: 1472, baseType: !66, size: 32, offset: 21344)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1007, file: !1008, line: 1474, baseType: !1006, size: 64, offset: 21376)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1007, file: !1008, line: 1475, baseType: !2092, size: 320, offset: 21440)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1007, file: !1008, line: 1478, baseType: !2904, size: 64, offset: 21760)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2906, line: 49, size: 512, elements: !2907)
!2906 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2914, !2915, !2916, !2918}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2905, file: !2906, line: 50, baseType: !2904, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2905, file: !2906, line: 51, baseType: !64, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2905, file: !2906, line: 52, baseType: !83, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2905, file: !2906, line: 53, baseType: !83, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2905, file: !2906, line: 54, baseType: !2913, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2905, file: !2906, line: 56, baseType: !7, size: 32, offset: 320)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2905, file: !2906, line: 58, baseType: !7, size: 32, offset: 352)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2905, file: !2906, line: 59, baseType: !2917, size: 64, offset: 384)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !69, line: 159, baseType: !406)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2905, file: !2906, line: 60, baseType: !1653, size: 64, offset: 448)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1007, file: !1008, line: 1482, baseType: !725, size: 32, offset: 21824)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1007, file: !1008, line: 1489, baseType: !64, size: 64, offset: 21888)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1007, file: !1008, line: 1504, baseType: !64, size: 64, offset: 21952)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1007, file: !1008, line: 1505, baseType: !407, size: 64, offset: 22016)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1007, file: !1008, line: 1506, baseType: !406, size: 64, offset: 22080)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1007, file: !1008, line: 1507, baseType: !407, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1007, file: !1008, line: 1508, baseType: !407, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1007, file: !1008, line: 1509, baseType: !407, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1007, file: !1008, line: 1510, baseType: !660, size: 128, align: 64, offset: 22208)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1007, file: !1008, line: 1511, baseType: !66, size: 32, offset: 22336)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1007, file: !1008, line: 1515, baseType: !2930, size: 64, offset: 22400)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !655, line: 56, size: 64, elements: !2931)
!2931 = !{!2932}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2930, file: !655, line: 57, baseType: !658, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1007, file: !1008, line: 1518, baseType: !2930, size: 64, offset: 22464)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1007, file: !1008, line: 1528, baseType: !660, size: 128, align: 64, offset: 22528)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1007, file: !1008, line: 1552, baseType: !2936, size: 35328, offset: 23040)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2937, line: 430, size: 35328, elements: !2938)
!2937 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2938 = !{!2939, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2968, !2969, !2970, !2971, !2972, !2973, !2976, !2977, !2978, !2979}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2936, file: !2937, line: 432, baseType: !2940, size: 192)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2941, size: 192, elements: !574)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2942, line: 16, size: 64, elements: !2943)
!2942 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2941, file: !2942, line: 17, baseType: !137, size: 16)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2941, file: !2942, line: 18, baseType: !137, size: 16, offset: 16)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2941, file: !2942, line: 19, baseType: !137, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2941, file: !2942, line: 19, baseType: !137, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2941, file: !2942, line: 19, baseType: !137, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2941, file: !2942, line: 19, baseType: !137, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2941, file: !2942, line: 19, baseType: !137, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2941, file: !2942, line: 20, baseType: !137, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2941, file: !2942, line: 20, baseType: !137, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2941, file: !2942, line: 20, baseType: !137, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2941, file: !2942, line: 20, baseType: !137, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2941, file: !2942, line: 20, baseType: !137, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2941, file: !2942, line: 20, baseType: !137, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2936, file: !2937, line: 436, baseType: !83, size: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2936, file: !2937, line: 440, baseType: !70, size: 16, offset: 256)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2936, file: !2937, line: 441, baseType: !70, size: 16, offset: 272)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2936, file: !2937, line: 442, baseType: !70, size: 16, offset: 288)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2936, file: !2937, line: 443, baseType: !70, size: 16, offset: 304)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2936, file: !2937, line: 447, baseType: !83, size: 64, offset: 320)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2936, file: !2937, line: 448, baseType: !83, size: 64, offset: 384)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2936, file: !2937, line: 459, baseType: !2965, size: 256, offset: 448)
!2965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2966, size: 256, elements: !743)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2937, line: 428, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2936, file: !2937, line: 461, baseType: !83, size: 64, offset: 704)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2936, file: !2937, line: 463, baseType: !83, size: 64, offset: 768)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2936, file: !2937, line: 465, baseType: !83, size: 64, offset: 832)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2936, file: !2937, line: 466, baseType: !83, size: 64, offset: 896)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2936, file: !2937, line: 467, baseType: !83, size: 64, offset: 960)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2936, file: !2937, line: 473, baseType: !2974, size: 64, offset: 1024)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2937, line: 10, flags: DIFlagFwdDecl)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2936, file: !2937, line: 480, baseType: !83, size: 64, offset: 1088)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2936, file: !2937, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2936, file: !2937, line: 491, baseType: !402, size: 32, offset: 1184)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2936, file: !2937, line: 501, baseType: !2980, size: 33792, offset: 1536)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2981, line: 448, size: 33792, elements: !2982)
!2981 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2982 = !{!2983, !2984, !2985, !3145, !3146, !3152, !3153}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2980, file: !2981, line: 461, baseType: !7, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2980, file: !2981, line: 468, baseType: !83, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2980, file: !2981, line: 476, baseType: !2986, size: 64, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2981, line: 356, size: 33280, align: 512, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2987, file: !2981, line: 358, baseType: !7, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2987, file: !2981, line: 361, baseType: !7, size: 32, offset: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2987, file: !2981, line: 364, baseType: !406, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2987, file: !2981, line: 367, baseType: !406, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2987, file: !2981, line: 370, baseType: !406, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2987, file: !2981, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2987, file: !2981, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2987, file: !2981, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2987, file: !2981, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2987, file: !2981, line: 397, baseType: !2999, size: 32768, offset: 512)
!2999 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2981, line: 348, size: 32768, elements: !3000)
!3000 = !{!3001, !3016, !3053, !3130, !3143}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2999, file: !2981, line: 349, baseType: !3002, size: 896)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2981, line: 12, size: 896, elements: !3003)
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3015}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3002, file: !2981, line: 13, baseType: !402, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3002, file: !2981, line: 14, baseType: !402, size: 32, offset: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3002, file: !2981, line: 15, baseType: !402, size: 32, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3002, file: !2981, line: 16, baseType: !402, size: 32, offset: 96)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3002, file: !2981, line: 17, baseType: !402, size: 32, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3002, file: !2981, line: 18, baseType: !402, size: 32, offset: 160)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3002, file: !2981, line: 19, baseType: !402, size: 32, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3002, file: !2981, line: 22, baseType: !3012, size: 640, offset: 224)
!3012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 640, elements: !3013)
!3013 = !{!3014}
!3014 = !DISubrange(count: 20)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3002, file: !2981, line: 25, baseType: !402, size: 32, offset: 864)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2999, file: !2981, line: 350, baseType: !3017, size: 4096, align: 128)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2981, line: 34, size: 4096, align: 128, elements: !3018)
!3018 = !{!3019, !3020, !3021, !3022, !3023, !3038, !3039, !3040, !3042, !3044, !3048}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3017, file: !2981, line: 35, baseType: !137, size: 16)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3017, file: !2981, line: 36, baseType: !137, size: 16, offset: 16)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3017, file: !2981, line: 37, baseType: !137, size: 16, offset: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3017, file: !2981, line: 38, baseType: !137, size: 16, offset: 48)
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !3017, file: !2981, line: 39, baseType: !3024, size: 128, offset: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3017, file: !2981, line: 39, size: 128, elements: !3025)
!3025 = !{!3026, !3031}
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !3024, file: !2981, line: 40, baseType: !3027, size: 128)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3024, file: !2981, line: 40, size: 128, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3027, file: !2981, line: 41, baseType: !406, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3027, file: !2981, line: 42, baseType: !406, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, scope: !3024, file: !2981, line: 44, baseType: !3032, size: 128)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3024, file: !2981, line: 44, size: 128, elements: !3033)
!3033 = !{!3034, !3035, !3036, !3037}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3032, file: !2981, line: 45, baseType: !402, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3032, file: !2981, line: 46, baseType: !402, size: 32, offset: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3032, file: !2981, line: 47, baseType: !402, size: 32, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3032, file: !2981, line: 48, baseType: !402, size: 32, offset: 96)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3017, file: !2981, line: 51, baseType: !402, size: 32, offset: 192)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3017, file: !2981, line: 52, baseType: !402, size: 32, offset: 224)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3017, file: !2981, line: 55, baseType: !3041, size: 1024, offset: 256)
!3041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 1024, elements: !415)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3017, file: !2981, line: 58, baseType: !3043, size: 2048, offset: 1280)
!3043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 2048, elements: !578)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3017, file: !2981, line: 60, baseType: !3045, size: 384, offset: 3328)
!3045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 384, elements: !3046)
!3046 = !{!3047}
!3047 = !DISubrange(count: 12)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !3017, file: !2981, line: 62, baseType: !3049, size: 384, offset: 3712)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3017, file: !2981, line: 62, size: 384, elements: !3050)
!3050 = !{!3051, !3052}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3049, file: !2981, line: 63, baseType: !3045, size: 384)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3049, file: !2981, line: 64, baseType: !3045, size: 384)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2999, file: !2981, line: 351, baseType: !3054, size: 1088)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2981, line: 79, size: 1088, elements: !3055)
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3129}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3054, file: !2981, line: 80, baseType: !402, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3054, file: !2981, line: 81, baseType: !402, size: 32, offset: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3054, file: !2981, line: 82, baseType: !402, size: 32, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3054, file: !2981, line: 83, baseType: !402, size: 32, offset: 96)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3054, file: !2981, line: 84, baseType: !402, size: 32, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3054, file: !2981, line: 85, baseType: !402, size: 32, offset: 160)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3054, file: !2981, line: 86, baseType: !402, size: 32, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3054, file: !2981, line: 88, baseType: !3012, size: 640, offset: 224)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3054, file: !2981, line: 89, baseType: !127, size: 8, offset: 864)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3054, file: !2981, line: 90, baseType: !127, size: 8, offset: 872)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3054, file: !2981, line: 91, baseType: !127, size: 8, offset: 880)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3054, file: !2981, line: 92, baseType: !127, size: 8, offset: 888)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3054, file: !2981, line: 93, baseType: !127, size: 8, offset: 896)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3054, file: !2981, line: 94, baseType: !127, size: 8, offset: 904)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3054, file: !2981, line: 95, baseType: !3071, size: 64, offset: 960)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3073, line: 11, size: 128, elements: !3074)
!3073 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3072, file: !3073, line: 12, baseType: !608, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3072, file: !3073, line: 13, baseType: !3077, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3079, line: 103, size: 1344, elements: !3080)
!3079 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3080 = !{!3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3109, !3110, !3111}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3078, file: !3079, line: 109, baseType: !83, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3078, file: !3079, line: 110, baseType: !83, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3078, file: !3079, line: 111, baseType: !83, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3078, file: !3079, line: 112, baseType: !83, size: 64, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3078, file: !3079, line: 113, baseType: !83, size: 64, offset: 256)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3078, file: !3079, line: 114, baseType: !83, size: 64, offset: 320)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3078, file: !3079, line: 117, baseType: !83, size: 64, offset: 384)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3078, file: !3079, line: 118, baseType: !83, size: 64, offset: 448)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3078, file: !3079, line: 119, baseType: !83, size: 64, offset: 512)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3078, file: !3079, line: 120, baseType: !83, size: 64, offset: 576)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3078, file: !3079, line: 121, baseType: !83, size: 64, offset: 640)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3078, file: !3079, line: 122, baseType: !83, size: 64, offset: 704)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3078, file: !3079, line: 123, baseType: !83, size: 64, offset: 768)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3078, file: !3079, line: 124, baseType: !83, size: 64, offset: 832)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3078, file: !3079, line: 125, baseType: !83, size: 64, offset: 896)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3078, file: !3079, line: 139, baseType: !83, size: 64, offset: 960)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3078, file: !3079, line: 142, baseType: !83, size: 64, offset: 1024)
!3098 = !DIDerivedType(tag: DW_TAG_member, scope: !3078, file: !3079, line: 144, baseType: !3099, size: 64, offset: 1088)
!3099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3078, file: !3079, line: 144, size: 64, elements: !3100)
!3100 = !{!3101, !3102, !3103}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3099, file: !3079, line: 146, baseType: !137, size: 16)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3099, file: !3079, line: 148, baseType: !406, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3099, file: !3079, line: 150, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3079, line: 59, size: 64, elements: !3105)
!3105 = !{!3106, !3107, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3104, file: !3079, line: 61, baseType: !406, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3104, file: !3079, line: 63, baseType: !406, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3104, file: !3079, line: 65, baseType: !406, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3078, file: !3079, line: 153, baseType: !83, size: 64, offset: 1152)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3078, file: !3079, line: 154, baseType: !83, size: 64, offset: 1216)
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !3078, file: !3079, line: 156, baseType: !3112, size: 64, offset: 1280)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3078, file: !3079, line: 156, size: 64, elements: !3113)
!3113 = !{!3114, !3115, !3116}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3112, file: !3079, line: 158, baseType: !137, size: 16)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3112, file: !3079, line: 160, baseType: !406, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3112, file: !3079, line: 162, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3079, line: 69, size: 64, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3117, file: !3079, line: 71, baseType: !406, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3117, file: !3079, line: 73, baseType: !406, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3117, file: !3079, line: 75, baseType: !406, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3117, file: !3079, line: 77, baseType: !406, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3117, file: !3079, line: 80, baseType: !406, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3117, file: !3079, line: 83, baseType: !406, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3117, file: !3079, line: 86, baseType: !406, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3117, file: !3079, line: 88, baseType: !406, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3117, file: !3079, line: 93, baseType: !406, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3117, file: !3079, line: 100, baseType: !406, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3054, file: !2981, line: 96, baseType: !402, size: 32, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2999, file: !2981, line: 352, baseType: !3131, size: 4608, align: 512)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2981, line: 333, size: 4608, align: 512, elements: !3132)
!3132 = !{!3133, !3134, !3141}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3131, file: !2981, line: 334, baseType: !3017, size: 4096, align: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3131, file: !2981, line: 335, baseType: !3135, size: 512, offset: 4096)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2981, line: 312, size: 512, elements: !3136)
!3136 = !{!3137, !3138, !3139}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3135, file: !2981, line: 313, baseType: !406, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3135, file: !2981, line: 314, baseType: !406, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3135, file: !2981, line: 315, baseType: !3140, size: 384, offset: 128)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 384, elements: !859)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3131, file: !2981, line: 336, baseType: !3142, offset: 4608)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, elements: !756)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2999, file: !2981, line: 353, baseType: !3144, size: 32768)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 32768, elements: !2128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2980, file: !2981, line: 484, baseType: !2986, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2980, file: !2981, line: 491, baseType: !3147, size: 128, offset: 256)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2981, line: 404, size: 128, elements: !3148)
!3148 = !{!3149, !3150, !3151}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3147, file: !2981, line: 424, baseType: !406, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3147, file: !2981, line: 432, baseType: !7, size: 32, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3147, file: !2981, line: 440, baseType: !7, size: 32, offset: 96)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2980, file: !2981, line: 498, baseType: !3147, size: 128, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2980, file: !2981, line: 508, baseType: !2987, size: 33280, align: 512, offset: 512)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !995, file: !996, line: 21, baseType: !3155, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !1005}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !995, file: !996, line: 22, baseType: !3159, size: 64, offset: 320)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!66, !3162, !1005}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !1885, line: 53, size: 256, elements: !3164)
!3164 = !{!3165, !3166, !3167, !3168}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3163, file: !1885, line: 54, baseType: !7, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3163, file: !1885, line: 55, baseType: !1883, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3163, file: !1885, line: 56, baseType: !1874, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3163, file: !1885, line: 57, baseType: !763, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !995, file: !996, line: 23, baseType: !3170, size: 64, offset: 384)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!955, !1005}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !995, file: !996, line: 24, baseType: !3174, size: 64, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!1005, !1005}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !988, file: !989, line: 12, baseType: !7, size: 32, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !988, file: !989, line: 13, baseType: !725, size: 32, offset: 160)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !957, line: 77, baseType: !83, size: 64, offset: 2112)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !956, file: !957, line: 80, baseType: !872, size: 8, offset: 2176)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !956, file: !957, line: 88, baseType: !141, size: 128, offset: 2240)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !956, file: !957, line: 89, baseType: !790, size: 64, offset: 2368)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !956, file: !957, line: 90, baseType: !813, size: 320, offset: 2432)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !956, file: !957, line: 97, baseType: !1692, size: 256, offset: 2752)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !956, file: !957, line: 99, baseType: !3186, size: 768, offset: 3008)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !56, line: 199, size: 768, elements: !3187)
!3187 = !{!3188, !3193}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !3186, file: !56, line: 200, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!66, !3192}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3186, file: !56, line: 201, baseType: !3194, size: 704, offset: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !56, line: 193, size: 704, elements: !3195)
!3195 = !{!3196, !3243}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3194, file: !56, line: 195, baseType: !3197, size: 640)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !56, line: 173, size: 640, elements: !3198)
!3198 = !{!3199, !3211, !3212, !3213, !3233, !3234, !3236, !3242}
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3197, file: !56, line: 174, baseType: !3200, size: 192)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3197, file: !56, line: 174, size: 192, elements: !3201)
!3201 = !{!3202, !3210}
!3202 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !56, line: 175, baseType: !3203, size: 192)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3200, file: !56, line: 175, size: 192, elements: !3204)
!3204 = !{!3205, !3206, !3207, !3208, !3209}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !3203, file: !56, line: 176, baseType: !77, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !3203, file: !56, line: 177, baseType: !66, size: 32, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3203, file: !56, line: 178, baseType: !66, size: 32, offset: 96)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3203, file: !56, line: 179, baseType: !66, size: 32, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !3203, file: !56, line: 180, baseType: !66, size: 32, offset: 160)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3200, file: !56, line: 182, baseType: !660, size: 128, align: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3197, file: !56, line: 184, baseType: !1802, size: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !3197, file: !56, line: 185, baseType: !77, size: 64, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3197, file: !56, line: 186, baseType: !3214, size: 64, offset: 320)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !56, line: 204, size: 960, elements: !3216)
!3216 = !{!3217, !3218, !3222, !3229}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !3215, file: !56, line: 205, baseType: !3186, size: 768)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3215, file: !56, line: 206, baseType: !3219, size: 64, offset: 768)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!3192, !3214}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !3215, file: !56, line: 207, baseType: !3223, size: 64, offset: 832)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !3215, file: !56, line: 209, baseType: !3230, size: 64, offset: 896)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!66, !3226, !77}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3197, file: !56, line: 187, baseType: !3192, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3197, file: !56, line: 188, baseType: !3235, size: 64, offset: 448)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3197, file: !56, line: 189, baseType: !3237, size: 64, offset: 512)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !56, line: 157, size: 256, elements: !3239)
!3239 = !{!3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3238, file: !56, line: 158, baseType: !805, size: 192, align: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3238, file: !56, line: 159, baseType: !3226, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3197, file: !56, line: 190, baseType: !734, size: 64, offset: 576)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3194, file: !56, line: 196, baseType: !1180, size: 64, offset: 640)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !956, file: !957, line: 100, baseType: !3226, size: 64, offset: 3776)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !956, file: !957, line: 102, baseType: !1913, size: 64, offset: 3840)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !956, file: !957, line: 103, baseType: !3247, size: 640, offset: 3904)
!3247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 640, elements: !1922)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !956, file: !957, line: 104, baseType: !3249, size: 256, offset: 4544)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 256, elements: !743)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !765, file: !766, line: 139, baseType: !1913, size: 64, offset: 1216)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !765, file: !766, line: 140, baseType: !3252, size: 64, offset: 1280)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !766, line: 25, size: 64, elements: !3254)
!3254 = !{!3255, !3256, !3257}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3253, file: !766, line: 26, baseType: !93, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !3253, file: !766, line: 27, baseType: !66, size: 32, offset: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3253, file: !766, line: 28, baseType: !3258, offset: 64)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, elements: !756)
!3259 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !766, line: 142, baseType: !3260, size: 128, offset: 1344)
!3260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !766, line: 142, size: 128, elements: !3261)
!3261 = !{!3262, !3263}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !3260, file: !766, line: 143, baseType: !66, size: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3260, file: !766, line: 144, baseType: !660, size: 128, align: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !648, file: !163, line: 1013, baseType: !3265, size: 256, offset: 960)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !163, line: 970, size: 256, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3265, file: !163, line: 971, baseType: !83, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3265, file: !163, line: 972, baseType: !7, size: 32, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3265, file: !163, line: 973, baseType: !7, size: 32, offset: 96)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3265, file: !163, line: 974, baseType: !7, size: 32, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3265, file: !163, line: 975, baseType: !7, size: 32, offset: 160)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3265, file: !163, line: 976, baseType: !85, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !648, file: !163, line: 1014, baseType: !3274, size: 128, offset: 1216)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3275, line: 8, size: 128, elements: !3276)
!3275 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3276 = !{!3277, !3278}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3274, file: !3275, line: 9, baseType: !479, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3274, file: !3275, line: 10, baseType: !368, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !648, file: !163, line: 1015, baseType: !333, size: 64, offset: 1344)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !648, file: !163, line: 1016, baseType: !3281, size: 64, offset: 1408)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3283)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !163, line: 1914, size: 2112, elements: !3284)
!3284 = !{!3285, !3286, !3290, !3294, !3298, !3409, !3410, !3416, !3429, !3433, !3437, !3438, !3442, !3443, !3447, !3452, !3453, !3457, !3461, !3467, !3468, !3472, !3473, !3477, !3481, !3485, !3491, !3495, !3499, !3503, !3507, !3508, !3514}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3283, file: !163, line: 1915, baseType: !520, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3283, file: !163, line: 1916, baseType: !3287, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!85, !647, !85, !66}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3283, file: !163, line: 1917, baseType: !3291, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!605, !647, !474, !79, !84}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3283, file: !163, line: 1918, baseType: !3295, size: 64, offset: 192)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!605, !647, !60, !79, !84}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3283, file: !163, line: 1919, baseType: !3299, size: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!605, !3302, !3407}
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !163, line: 373, size: 384, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3311, !3312, !3313, !3314}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3303, file: !163, line: 374, baseType: !647, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3303, file: !163, line: 375, baseType: !85, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3303, file: !163, line: 376, baseType: !3308, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{null, !3302, !608}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3303, file: !163, line: 377, baseType: !64, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3303, file: !163, line: 378, baseType: !66, size: 32, offset: 256)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3303, file: !163, line: 379, baseType: !137, size: 16, offset: 288)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !3303, file: !163, line: 380, baseType: !3315, size: 64, offset: 320)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3303, file: !163, line: 380, size: 64, elements: !3316)
!3316 = !{!3317, !3403}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3315, file: !163, line: 386, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !3320, line: 998, size: 448, elements: !3321)
!3320 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!3321 = !{!3322, !3389, !3390}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !3319, file: !3320, line: 999, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !3325)
!3325 = !{!3326, !3356, !3370}
!3326 = !DIDerivedType(tag: DW_TAG_member, scope: !3324, file: !27, line: 295, baseType: !3327, size: 512)
!3327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3324, file: !27, line: 295, size: 512, elements: !3328)
!3328 = !{!3329, !3355}
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !27, line: 296, baseType: !3330, size: 448)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3327, file: !27, line: 296, size: 448, elements: !3331)
!3331 = !{!3332, !3333, !3342, !3343, !3344, !3353, !3354}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3330, file: !27, line: 298, baseType: !83, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !27, line: 299, baseType: !3334, size: 128, offset: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !27, line: 299, size: 128, elements: !3335)
!3335 = !{!3336, !3337}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3334, file: !27, line: 300, baseType: !141, size: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, scope: !3334, file: !27, line: 302, baseType: !3338, size: 128)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3334, file: !27, line: 302, size: 128, elements: !3339)
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3338, file: !27, line: 303, baseType: !64, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3338, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3330, file: !27, line: 310, baseType: !329, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3330, file: !27, line: 311, baseType: !83, size: 64, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !27, line: 312, baseType: !3345, size: 64, offset: 320)
!3345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !27, line: 312, size: 64, elements: !3346)
!3346 = !{!3347, !3348}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3345, file: !27, line: 313, baseType: !64, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3345, file: !27, line: 314, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !3350)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !3351)
!3351 = !{!3352}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3350, file: !27, line: 256, baseType: !83, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3330, file: !27, line: 316, baseType: !93, size: 32, offset: 384)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3330, file: !27, line: 317, baseType: !93, size: 32, offset: 416)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3327, file: !27, line: 323, baseType: !308, size: 512, align: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !3324, file: !27, line: 325, baseType: !3357, size: 512, offset: 512)
!3357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3324, file: !27, line: 325, size: 512, elements: !3358)
!3358 = !{!3359, !3369}
!3359 = !DIDerivedType(tag: DW_TAG_member, scope: !3357, file: !27, line: 326, baseType: !3360, size: 320)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3357, file: !27, line: 326, size: 320, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367, !3368}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3360, file: !27, line: 327, baseType: !83, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3360, file: !27, line: 328, baseType: !83, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3360, file: !27, line: 329, baseType: !83, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3360, file: !27, line: 331, baseType: !93, size: 32, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3360, file: !27, line: 332, baseType: !93, size: 32, offset: 224)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3360, file: !27, line: 333, baseType: !93, size: 32, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3360, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3357, file: !27, line: 339, baseType: !308, size: 512, align: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, scope: !3324, file: !27, line: 341, baseType: !3371, size: 512, offset: 1024)
!3371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3324, file: !27, line: 341, size: 512, elements: !3372)
!3372 = !{!3373, !3382, !3388}
!3373 = !DIDerivedType(tag: DW_TAG_member, scope: !3371, file: !27, line: 342, baseType: !3374, size: 384)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3371, file: !27, line: 342, size: 384, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3374, file: !27, line: 343, baseType: !83, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3374, file: !27, line: 344, baseType: !83, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3374, file: !27, line: 346, baseType: !64, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3374, file: !27, line: 347, baseType: !64, size: 64, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3374, file: !27, line: 348, baseType: !64, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3374, file: !27, line: 349, baseType: !64, size: 64, offset: 320)
!3382 = !DIDerivedType(tag: DW_TAG_member, scope: !3371, file: !27, line: 352, baseType: !3383, size: 256)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3371, file: !27, line: 352, size: 256, elements: !3384)
!3384 = !{!3385, !3386, !3387}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3383, file: !27, line: 353, baseType: !83, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3383, file: !27, line: 354, baseType: !83, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3383, file: !27, line: 356, baseType: !141, size: 128, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3371, file: !27, line: 359, baseType: !308, size: 512, align: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !3319, file: !3320, line: 1000, baseType: !66, size: 32, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3319, file: !3320, line: 1001, baseType: !3391, size: 320, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !99, line: 14, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !99, line: 30, size: 320, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3402}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3392, file: !99, line: 31, baseType: !7, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3392, file: !99, line: 32, baseType: !64, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3392, file: !99, line: 33, baseType: !3397, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !99, line: 16, baseType: !3398)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!66, !3401, !7, !66, !64}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3392, file: !99, line: 34, baseType: !141, size: 128, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3315, file: !163, line: 395, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!605, !64}
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !163, line: 69, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3283, file: !163, line: 1920, baseType: !3299, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3283, file: !163, line: 1921, baseType: !3411, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!66, !3302, !3414, !7}
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !163, line: 53, flags: DIFlagFwdDecl)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3283, file: !163, line: 1923, baseType: !3417, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!66, !647, !3420}
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !163, line: 1858, size: 128, elements: !3422)
!3422 = !{!3423, !3428}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3421, file: !163, line: 1859, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !163, line: 1855, baseType: !3425)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!872, !3420, !60, !66, !85, !406, !7}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3421, file: !163, line: 1860, baseType: !85, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3283, file: !163, line: 1924, baseType: !3430, size: 64, offset: 512)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!2065, !647, !2067}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3283, file: !163, line: 1925, baseType: !3434, size: 64, offset: 576)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!608, !647, !7, !83}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3283, file: !163, line: 1926, baseType: !3434, size: 64, offset: 640)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3283, file: !163, line: 1927, baseType: !3439, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!66, !647, !1394}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3283, file: !163, line: 1928, baseType: !83, size: 64, offset: 768)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3283, file: !163, line: 1929, baseType: !3444, size: 64, offset: 832)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!66, !333, !647}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3283, file: !163, line: 1930, baseType: !3448, size: 64, offset: 896)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!66, !647, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !163, line: 1061, baseType: !64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3283, file: !163, line: 1931, baseType: !3444, size: 64, offset: 960)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3283, file: !163, line: 1932, baseType: !3454, size: 64, offset: 1024)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!66, !647, !85, !85, !66}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3283, file: !163, line: 1933, baseType: !3458, size: 64, offset: 1088)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!66, !66, !647, !66}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3283, file: !163, line: 1934, baseType: !3462, size: 64, offset: 1152)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!66, !647, !66, !3465}
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !163, line: 1063, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3283, file: !163, line: 1935, baseType: !1319, size: 64, offset: 1216)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3283, file: !163, line: 1936, baseType: !3469, size: 64, offset: 1280)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!66, !66}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3283, file: !163, line: 1937, baseType: !3462, size: 64, offset: 1344)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3283, file: !163, line: 1938, baseType: !3474, size: 64, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!605, !2804, !647, !84, !79, !7}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3283, file: !163, line: 1939, baseType: !3478, size: 64, offset: 1472)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!605, !647, !84, !2804, !79, !7}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3283, file: !163, line: 1940, baseType: !3482, size: 64, offset: 1536)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !647}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3283, file: !163, line: 1941, baseType: !3486, size: 64, offset: 1600)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!66, !647, !66, !3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3283, file: !163, line: 1942, baseType: !3492, size: 64, offset: 1664)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!608, !647, !66, !85, !85}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3283, file: !163, line: 1944, baseType: !3496, size: 64, offset: 1728)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{null, !1998, !647}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3283, file: !163, line: 1948, baseType: !3500, size: 64, offset: 1792)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!605, !647, !85, !647, !85, !79, !7}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3283, file: !163, line: 1950, baseType: !3504, size: 64, offset: 1856)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!85, !647, !85, !647, !85, !85, !7}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3283, file: !163, line: 1953, baseType: !3454, size: 64, offset: 1920)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3283, file: !163, line: 1954, baseType: !3509, size: 64, offset: 1984)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!66, !3512, !7}
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !163, line: 1911, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3283, file: !163, line: 1955, baseType: !3515, size: 64, offset: 2048)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!66, !3512, !3414, !7}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !648, file: !163, line: 1018, baseType: !406, size: 64, offset: 1472)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !648, file: !163, line: 1020, baseType: !64, size: 64, offset: 1536)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !648, file: !163, line: 1023, baseType: !64, size: 64, offset: 1600)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !648, file: !163, line: 1027, baseType: !3522, size: 64, offset: 1664)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !648, file: !163, line: 1029, baseType: !329, size: 64, offset: 1728)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !648, file: !163, line: 1030, baseType: !3525, size: 32, offset: 1792)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3526, line: 8, baseType: !402)
!3526 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !648, file: !163, line: 1031, baseType: !3525, size: 32, offset: 1824)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !634, file: !599, line: 182, baseType: !644, size: 64, offset: 384)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !634, file: !599, line: 184, baseType: !3530, size: 64, offset: 448)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!66, !647, !539, !633, !1394}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !622, file: !599, line: 90, baseType: !3534, size: 64, offset: 192)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !622, file: !599, line: 91, baseType: !3536, size: 64, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !589, file: !534, line: 120, baseType: !3538, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!3541, !557}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !152, line: 39, size: 384, elements: !3544)
!3544 = !{!3545, !3546, !3550, !3554, !3560, !3564}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3543, file: !152, line: 40, baseType: !151, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3543, file: !152, line: 41, baseType: !3547, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!872}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3543, file: !152, line: 42, baseType: !3551, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!64}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3543, file: !152, line: 43, baseType: !3555, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!1653, !3558}
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !152, line: 19, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3543, file: !152, line: 44, baseType: !3561, size: 64, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!1653}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3543, file: !152, line: 45, baseType: !3565, size: 64, offset: 320)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !64}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !589, file: !534, line: 121, baseType: !3569, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!1653, !557}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !589, file: !534, line: 122, baseType: !3573, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{null, !557, !3227, !3228}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !533, file: !534, line: 70, baseType: !1953, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !533, file: !534, line: 71, baseType: !3578, size: 32, offset: 448)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3579, line: 19, size: 32, elements: !3580)
!3579 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3580 = !{!3581}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3578, file: !3579, line: 20, baseType: !725, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !533, file: !534, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !533, file: !534, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !533, file: !534, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !533, file: !534, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !533, file: !534, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !530, file: !6, line: 47, baseType: !520, size: 64, offset: 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !530, file: !6, line: 48, baseType: !539, size: 64, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !530, file: !6, line: 49, baseType: !3590, size: 64, offset: 640)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !530, file: !6, line: 50, baseType: !1802, size: 64, offset: 704)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !521, file: !6, line: 418, baseType: !3594, size: 64, offset: 1408)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3596)
!3596 = !{!3597, !3598, !3603, !3607, !3611, !3615}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3595, file: !6, line: 54, baseType: !610, size: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3595, file: !6, line: 55, baseType: !3599, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!605, !3594, !3602, !474}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3595, file: !6, line: 57, baseType: !3604, size: 64, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!605, !3594, !3602, !60, !79}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3595, file: !6, line: 59, baseType: !3608, size: 64, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{null, !520, !60}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3595, file: !6, line: 60, baseType: !3612, size: 64, offset: 320)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!66, !520}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3595, file: !6, line: 61, baseType: !3616, size: 64, offset: 384)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !520}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !521, file: !6, line: 419, baseType: !60, size: 64, offset: 1472)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !521, file: !6, line: 420, baseType: !60, size: 64, offset: 1536)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !521, file: !6, line: 421, baseType: !539, size: 64, offset: 1600)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !521, file: !6, line: 424, baseType: !3623, size: 64, offset: 1664)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3625)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !521, file: !6, line: 425, baseType: !3627, size: 64, offset: 1728)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !521, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !521, file: !6, line: 435, baseType: !682, size: 256, offset: 1856)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !521, file: !6, line: 437, baseType: !3632, size: 64, offset: 2112)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3634, line: 69, size: 320, elements: !3635)
!3634 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3635 = !{!3636, !3637, !3638, !3655, !3657, !3661, !3662}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3633, file: !3634, line: 70, baseType: !60, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3633, file: !3634, line: 71, baseType: !520, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3633, file: !3634, line: 72, baseType: !3639, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3641)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3634, line: 47, size: 256, elements: !3642)
!3642 = !{!3643, !3644, !3650, !3654}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3641, file: !3634, line: 49, baseType: !7, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3641, file: !3634, line: 51, baseType: !3645, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!66, !60, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3633)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3641, file: !3634, line: 53, baseType: !3651, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!66, !474, !3648}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3641, file: !3634, line: 55, baseType: !3565, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3633, file: !3634, line: 73, baseType: !3656, size: 16, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3633, file: !3634, line: 74, baseType: !3658, size: 8, offset: 208)
!3658 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !128, line: 16, baseType: !3659)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !130, line: 20, baseType: !3660)
!3660 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3633, file: !3634, line: 75, baseType: !127, size: 8, offset: 216)
!3662 = !DIDerivedType(tag: DW_TAG_member, scope: !3633, file: !3634, line: 76, baseType: !3663, size: 64, offset: 256)
!3663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3633, file: !3634, line: 76, size: 64, elements: !3664)
!3664 = !{!3665, !3666, !3673}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3663, file: !3634, line: 77, baseType: !64, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3663, file: !3634, line: 78, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3669)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3634, line: 86, size: 128, elements: !3670)
!3670 = !{!3671, !3672}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3669, file: !3634, line: 87, baseType: !7, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3669, file: !3634, line: 88, baseType: !474, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3663, file: !3634, line: 79, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3676)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3634, line: 92, size: 256, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3682, !3683}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3676, file: !3634, line: 94, baseType: !7, size: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3676, file: !3634, line: 95, baseType: !7, size: 32, offset: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3676, file: !3634, line: 96, baseType: !3681, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3676, file: !3634, line: 97, baseType: !3639, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3676, file: !3634, line: 98, baseType: !64, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !521, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !521, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !521, file: !6, line: 442, baseType: !3623, size: 64, offset: 2240)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !521, file: !6, line: 443, baseType: !3627, size: 64, offset: 2304)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !521, file: !6, line: 444, baseType: !872, size: 8, offset: 2368)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !521, file: !6, line: 451, baseType: !872, size: 8, offset: 2376)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !521, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !521, file: !6, line: 455, baseType: !3692, size: 64, offset: 2432)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3694, line: 23, size: 96, elements: !3695)
!3694 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3695 = !{!3696, !3697, !3698}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3693, file: !3694, line: 24, baseType: !66, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3693, file: !3694, line: 24, baseType: !66, size: 32, offset: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3693, file: !3694, line: 24, baseType: !66, size: 32, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !521, file: !6, line: 458, baseType: !3700, size: 64, offset: 2496)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!66}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !521, file: !6, line: 460, baseType: !3704, size: 4032, align: 512, offset: 2560)
!3704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3705, size: 4032, elements: !3719)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3706)
!3706 = !{!3707, !3708, !3709}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3705, file: !6, line: 363, baseType: !64, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3705, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3705, file: !6, line: 367, baseType: !3710, size: 448, offset: 128)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3711)
!3711 = !{!3712, !3713}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3710, file: !6, line: 320, baseType: !520, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3710, file: !6, line: 321, baseType: !3714, size: 384, offset: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3715, line: 40, size: 384, elements: !3716)
!3715 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3716 = !{!3717}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3714, file: !3715, line: 41, baseType: !3718, size: 384, align: 64)
!3718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 384, align: 64, elements: !2416)
!3719 = !{!3720}
!3720 = !DISubrange(count: 7)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !521, file: !6, line: 463, baseType: !3722, size: 192, offset: 6592)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3723, line: 8, size: 192, elements: !3724)
!3723 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3724 = !{!3725, !3726, !3727}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3722, file: !3723, line: 10, baseType: !7, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3722, file: !3723, line: 11, baseType: !1814, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3722, file: !3723, line: 12, baseType: !3728, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3730, line: 59, size: 48, elements: !3731)
!3730 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3729, file: !3730, line: 60, baseType: !1670, size: 16)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3729, file: !3730, line: 61, baseType: !1670, size: 16, offset: 16)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3729, file: !3730, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3729, file: !3730, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3729, file: !3730, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3729, file: !3730, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !521, file: !6, line: 465, baseType: !83, size: 64, offset: 6784)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !521, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !521, file: !6, line: 470, baseType: !141, size: 128, offset: 6912)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !521, file: !6, line: 471, baseType: !3742, size: 64, offset: 7040)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3744, line: 33, size: 96, elements: !3745)
!3744 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3745 = !{!3746, !3747, !3748, !3749}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3743, file: !3744, line: 37, baseType: !66, size: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3743, file: !3744, line: 43, baseType: !66, size: 32, offset: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3743, file: !3744, line: 45, baseType: !70, size: 16, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3743, file: !3744, line: 47, baseType: !70, size: 16, offset: 80)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !521, file: !6, line: 476, baseType: !3751, size: 64, offset: 7104)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3753)
!3753 = !{!3754, !3770, !3771, !3772}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3752, file: !6, line: 379, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3757, line: 204, baseType: !3758)
!3757 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3757, line: 197, size: 192, elements: !3759)
!3759 = !{!3760, !3762, !3763, !3764, !3766, !3768}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3758, file: !3757, line: 198, baseType: !3761, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3757, line: 21, baseType: !403)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3758, file: !3757, line: 199, baseType: !131, size: 8, offset: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3758, file: !3757, line: 200, baseType: !131, size: 8, offset: 40)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3758, file: !3757, line: 201, baseType: !3765, size: 16, offset: 48)
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3757, line: 17, baseType: !138)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3758, file: !3757, line: 202, baseType: !3767, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3757, line: 16, baseType: !407)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3758, file: !3757, line: 203, baseType: !3769, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3757, line: 22, baseType: !407)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3752, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3752, file: !6, line: 381, baseType: !474, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3752, file: !6, line: 382, baseType: !474, size: 64, offset: 192)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !521, file: !6, line: 477, baseType: !3752, size: 256, offset: 7168)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !521, file: !6, line: 480, baseType: !3775, size: 64, offset: 7424)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !521, file: !6, line: 483, baseType: !3778, size: 64, offset: 7488)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !521, file: !6, line: 488, baseType: !474, size: 64, offset: 7552)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !521, file: !6, line: 492, baseType: !64, size: 64, offset: 7616)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !521, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !521, file: !6, line: 495, baseType: !64, size: 64, offset: 7744)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !521, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !521, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !521, file: !6, line: 500, baseType: !3787, size: 64, offset: 7872)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3789, line: 45, baseType: !3790)
!3789 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !521, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !521, file: !6, line: 504, baseType: !3793, size: 64, offset: 8000)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3796, line: 96, size: 192, elements: !3797)
!3796 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3797 = !{!3798, !3799, !3841, !3844}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3795, file: !3796, line: 97, baseType: !7, size: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3795, file: !3796, line: 98, baseType: !3800, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3796, line: 24, size: 3072, elements: !3802)
!3802 = !{!3803, !3805, !3806, !3807, !3808, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3838, !3839, !3840}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3801, file: !3796, line: 26, baseType: !3804, size: 128)
!3804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 128, elements: !2416)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3801, file: !3796, line: 27, baseType: !3804, size: 128, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3801, file: !3796, line: 28, baseType: !66, size: 32, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3801, file: !3796, line: 31, baseType: !103, size: 32, align: 512, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3801, file: !3796, line: 32, baseType: !3809, size: 960, offset: 576)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3810, line: 206, size: 960, elements: !3811)
!3810 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3811 = !{!3812, !3813, !3816, !3818, !3819, !3820}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3809, file: !3810, line: 207, baseType: !663, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3809, file: !3810, line: 208, baseType: !3814, size: 256, offset: 64)
!3814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3815, size: 256, elements: !743)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3809, file: !3810, line: 209, baseType: !3817, size: 256, offset: 320)
!3817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 256, elements: !743)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3809, file: !3810, line: 213, baseType: !608, size: 64, offset: 576)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3809, file: !3810, line: 215, baseType: !3249, size: 256, offset: 640)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3809, file: !3810, line: 216, baseType: !127, size: 8, offset: 896)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3801, file: !3796, line: 33, baseType: !83, size: 64, offset: 1536)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3801, file: !3796, line: 34, baseType: !83, size: 64, offset: 1600)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3801, file: !3796, line: 35, baseType: !872, size: 8, offset: 1664)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3801, file: !3796, line: 36, baseType: !2092, size: 320, offset: 1728)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3801, file: !3796, line: 37, baseType: !1692, size: 256, offset: 2048)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3801, file: !3796, line: 38, baseType: !660, size: 128, align: 64, offset: 2304)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3801, file: !3796, line: 39, baseType: !3828, size: 64, offset: 2432)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3796, line: 49, size: 768, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3829, file: !3796, line: 50, baseType: !103, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3829, file: !3796, line: 51, baseType: !3817, size: 256, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3829, file: !3796, line: 53, baseType: !3817, size: 256, offset: 320)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3829, file: !3796, line: 54, baseType: !83, size: 64, offset: 576)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3829, file: !3796, line: 55, baseType: !3828, size: 64, offset: 640)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3829, file: !3796, line: 56, baseType: !66, size: 32, offset: 704)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3829, file: !3796, line: 57, baseType: !66, size: 32, offset: 736)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3801, file: !3796, line: 40, baseType: !83, size: 64, offset: 2496)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3801, file: !3796, line: 42, baseType: !66, size: 32, offset: 2560)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3801, file: !3796, line: 43, baseType: !3794, size: 64, offset: 2624)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3795, file: !3796, line: 99, baseType: !3842, offset: 128)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3843, line: 211, elements: !1315)
!3843 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3795, file: !3796, line: 100, baseType: !3845, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3796, line: 63, size: 3008, elements: !3847)
!3847 = !{!3848, !3849, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3877}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3846, file: !3796, line: 64, baseType: !3828, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3846, file: !3796, line: 65, baseType: !3850, size: 192, offset: 64)
!3850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3828, size: 192, elements: !574)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3846, file: !3796, line: 67, baseType: !66, size: 32, offset: 256)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3846, file: !3796, line: 68, baseType: !682, size: 256, offset: 320)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3846, file: !3796, line: 69, baseType: !103, size: 32, offset: 576)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3846, file: !3796, line: 70, baseType: !682, size: 256, offset: 640)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3846, file: !3796, line: 71, baseType: !83, size: 64, offset: 896)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3846, file: !3796, line: 72, baseType: !83, size: 64, offset: 960)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3846, file: !3796, line: 73, baseType: !83, size: 64, offset: 1024)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3846, file: !3796, line: 74, baseType: !83, size: 64, offset: 1088)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3846, file: !3796, line: 75, baseType: !83, size: 64, offset: 1152)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3846, file: !3796, line: 76, baseType: !83, size: 64, offset: 1216)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3846, file: !3796, line: 77, baseType: !83, size: 64, offset: 1280)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3846, file: !3796, line: 78, baseType: !83, size: 64, offset: 1344)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3846, file: !3796, line: 79, baseType: !872, size: 8, offset: 1408)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3846, file: !3796, line: 80, baseType: !83, size: 64, offset: 1472)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3846, file: !3796, line: 81, baseType: !682, size: 256, offset: 1536)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3846, file: !3796, line: 82, baseType: !1803, size: 256, offset: 1792)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3846, file: !3796, line: 84, baseType: !93, size: 32, offset: 2048)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3846, file: !3796, line: 87, baseType: !83, size: 64, offset: 2112)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3846, file: !3796, line: 88, baseType: !83, size: 64, offset: 2176)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3846, file: !3796, line: 89, baseType: !3871, size: 704, offset: 2240)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1693, line: 111, size: 704, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3871, file: !1693, line: 112, baseType: !1692, size: 256)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3871, file: !1693, line: 113, baseType: !2092, size: 320, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3871, file: !1693, line: 116, baseType: !2339, size: 64, offset: 576)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3871, file: !1693, line: 117, baseType: !66, size: 32, offset: 640)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3846, file: !3796, line: 90, baseType: !3794, size: 64, offset: 2944)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !521, file: !6, line: 515, baseType: !3879, size: 64, offset: 8064)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3881, line: 117, size: 128, elements: !3882)
!3881 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3880, file: !3881, line: 118, baseType: !798, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3880, file: !3881, line: 119, baseType: !798, size: 32, offset: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3880, file: !3881, line: 120, baseType: !608, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !521, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !521, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !521, file: !6, line: 520, baseType: !3889, size: 64, offset: 8192)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !521, file: !6, line: 523, baseType: !3891, size: 64, offset: 8256)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !521, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !521, file: !6, line: 525, baseType: !3896, size: 64, offset: 8384)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !521, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !521, file: !6, line: 533, baseType: !64, size: 64, offset: 8512)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !521, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !521, file: !6, line: 535, baseType: !3903, size: 64, offset: 8640)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !521, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !521, file: !6, line: 539, baseType: !66, size: 32, offset: 8736)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !521, file: !6, line: 540, baseType: !3907, size: 64, offset: 8768)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3909, line: 32, size: 64, elements: !3910)
!3909 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3910 = !{!3911, !3912}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3908, file: !3909, line: 33, baseType: !798, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3908, file: !3909, line: 34, baseType: !798, size: 32, offset: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !521, file: !6, line: 563, baseType: !141, size: 128, offset: 8832)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !521, file: !6, line: 565, baseType: !141, size: 128, offset: 8960)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !521, file: !6, line: 568, baseType: !2226, size: 64, offset: 9088)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !521, file: !6, line: 570, baseType: !93, size: 32, offset: 9152)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !163, line: 2382, baseType: !496, size: 64, offset: 448)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !497, file: !163, line: 2383, baseType: !734, size: 64, offset: 512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !497, file: !163, line: 2385, baseType: !3920, offset: 576)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3843, line: 206, elements: !1315)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !497, file: !163, line: 2386, baseType: !3920, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !497, file: !163, line: 2387, baseType: !3920, offset: 576)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !497, file: !163, line: 2388, baseType: !3924, offset: 576)
!3924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3920, elements: !574)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !497, file: !163, line: 2390, baseType: !3920, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !497, file: !163, line: 2391, baseType: !3920, offset: 576)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !497, file: !163, line: 2392, baseType: !3920, offset: 576)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !497, file: !163, line: 2393, baseType: !3920, offset: 576)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !486, file: !163, line: 1197, baseType: !3930, size: 64, offset: 384)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3932)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !163, line: 2057, size: 1664, elements: !3933)
!3933 = !{!3934, !3938, !3942, !3943, !3947, !3971, !3975, !3976, !3977, !3981, !3985, !3989, !3990, !3991, !3997, !4001, !4002, !4006, !4007, !4008, !4009, !4013, !4017, !4064, !4079, !4080}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3932, file: !163, line: 2058, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!333, !485}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3932, file: !163, line: 2059, baseType: !3939, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !333}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3932, file: !163, line: 2060, baseType: !3939, size: 64, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3932, file: !163, line: 2062, baseType: !3944, size: 64, offset: 192)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !333, !66}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3932, file: !163, line: 2063, baseType: !3948, size: 64, offset: 256)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!66, !333, !3951}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !158, line: 42, size: 384, elements: !3953)
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !3952, file: !158, line: 43, baseType: !608, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !3952, file: !158, line: 45, baseType: !608, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !3952, file: !158, line: 52, baseType: !85, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !3952, file: !158, line: 53, baseType: !85, size: 64, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !3952, file: !158, line: 55, baseType: !157, size: 32, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !3952, file: !158, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !3952, file: !158, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !3952, file: !158, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !3952, file: !158, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !3952, file: !158, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !3952, file: !158, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !3952, file: !158, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !3952, file: !158, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !3952, file: !158, line: 78, baseType: !3968, size: 64, offset: 320)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !158, line: 78, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3932, file: !163, line: 2064, baseType: !3972, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!66, !333}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3932, file: !163, line: 2065, baseType: !3939, size: 64, offset: 384)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3932, file: !163, line: 2066, baseType: !516, size: 64, offset: 448)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3932, file: !163, line: 2067, baseType: !3978, size: 64, offset: 512)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!66, !485, !66}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3932, file: !163, line: 2068, baseType: !3982, size: 64, offset: 576)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!66, !485, !162}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3932, file: !163, line: 2069, baseType: !3986, size: 64, offset: 640)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!66, !485}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3932, file: !163, line: 2070, baseType: !3982, size: 64, offset: 704)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3932, file: !163, line: 2071, baseType: !3986, size: 64, offset: 768)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3932, file: !163, line: 2072, baseType: !3992, size: 64, offset: 832)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!66, !368, !3995}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !163, line: 62, flags: DIFlagFwdDecl)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3932, file: !163, line: 2073, baseType: !3998, size: 64, offset: 896)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!66, !485, !1814, !474}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3932, file: !163, line: 2074, baseType: !516, size: 64, offset: 960)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3932, file: !163, line: 2076, baseType: !4003, size: 64, offset: 1024)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!66, !1998, !368}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3932, file: !163, line: 2077, baseType: !4003, size: 64, offset: 1088)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3932, file: !163, line: 2078, baseType: !4003, size: 64, offset: 1152)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3932, file: !163, line: 2079, baseType: !4003, size: 64, offset: 1216)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3932, file: !163, line: 2081, baseType: !4010, size: 64, offset: 1280)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!605, !485, !66, !474, !79, !85}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3932, file: !163, line: 2082, baseType: !4014, size: 64, offset: 1344)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!605, !485, !66, !60, !79, !85}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3932, file: !163, line: 2083, baseType: !4018, size: 64, offset: 1408)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!4021, !333}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !168, line: 296, size: 1664, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4049, !4050, !4051}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4023, file: !168, line: 297, baseType: !738, size: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4023, file: !168, line: 298, baseType: !141, size: 128, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4023, file: !168, line: 299, baseType: !141, size: 128, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4023, file: !168, line: 300, baseType: !141, size: 128, offset: 384)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4023, file: !168, line: 301, baseType: !682, size: 256, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4023, file: !168, line: 302, baseType: !103, size: 32, offset: 768)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4023, file: !168, line: 303, baseType: !93, size: 32, offset: 800)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4023, file: !168, line: 304, baseType: !485, size: 64, offset: 832)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4023, file: !168, line: 305, baseType: !4034, size: 64, offset: 896)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !168, line: 68, size: 64, elements: !4035)
!4035 = !{!4036, !4048}
!4036 = !DIDerivedType(tag: DW_TAG_member, scope: !4034, file: !168, line: 69, baseType: !4037, size: 32)
!4037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4034, file: !168, line: 69, size: 32, elements: !4038)
!4038 = !{!4039, !4040, !4041}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4037, file: !168, line: 70, baseType: !339, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4037, file: !168, line: 71, baseType: !348, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4037, file: !168, line: 72, baseType: !4042, size: 32)
!4042 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4043, line: 24, baseType: !4044)
!4043 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4043, line: 22, size: 32, elements: !4045)
!4045 = !{!4046}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4044, file: !4043, line: 23, baseType: !4047, size: 32)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4043, line: 20, baseType: !345)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4034, file: !168, line: 74, baseType: !167, size: 32, offset: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4023, file: !168, line: 306, baseType: !85, size: 64, offset: 960)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4023, file: !168, line: 307, baseType: !83, size: 64, offset: 1024)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4023, file: !168, line: 308, baseType: !4052, size: 576, offset: 1088)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !168, line: 205, size: 576, elements: !4053)
!4053 = !{!4054, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4052, file: !168, line: 206, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !168, line: 66, baseType: !87)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4052, file: !168, line: 207, baseType: !4055, size: 64, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4052, file: !168, line: 208, baseType: !4055, size: 64, offset: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4052, file: !168, line: 209, baseType: !4055, size: 64, offset: 192)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4052, file: !168, line: 210, baseType: !4055, size: 64, offset: 256)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4052, file: !168, line: 211, baseType: !4055, size: 64, offset: 320)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4052, file: !168, line: 212, baseType: !4055, size: 64, offset: 384)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4052, file: !168, line: 213, baseType: !829, size: 64, offset: 448)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4052, file: !168, line: 214, baseType: !829, size: 64, offset: 512)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3932, file: !163, line: 2085, baseType: !4065, size: 64, offset: 1472)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!608, !485, !4068}
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4070, line: 15, size: 256, elements: !4071)
!4070 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4071 = !{!4072, !4073, !4074, !4075, !4076}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4069, file: !4070, line: 16, baseType: !1481, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4069, file: !4070, line: 19, baseType: !66, size: 32, offset: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4069, file: !4070, line: 26, baseType: !83, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4069, file: !4070, line: 33, baseType: !83, size: 64, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4069, file: !4070, line: 36, baseType: !4077, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3932, file: !163, line: 2087, baseType: !4065, size: 64, offset: 1536)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3932, file: !163, line: 2089, baseType: !516, size: 64, offset: 1600)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !486, file: !163, line: 1198, baseType: !4082, size: 64, offset: 448)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4084)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !168, line: 324, size: 704, elements: !4085)
!4085 = !{!4086, !4090, !4094, !4098, !4099, !4100, !4101, !4102, !4107, !4112, !4116}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4084, file: !168, line: 325, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!66, !4022}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4084, file: !168, line: 326, baseType: !4091, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!4022, !485, !66}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4084, file: !168, line: 327, baseType: !4095, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !4022}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4084, file: !168, line: 328, baseType: !4087, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4084, file: !168, line: 329, baseType: !4087, size: 64, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4084, file: !168, line: 330, baseType: !4087, size: 64, offset: 320)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4084, file: !168, line: 331, baseType: !3978, size: 64, offset: 384)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4084, file: !168, line: 334, baseType: !4103, size: 64, offset: 448)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!4106, !333}
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4084, file: !168, line: 335, baseType: !4108, size: 64, offset: 512)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!66, !333, !4111}
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4084, file: !168, line: 337, baseType: !4113, size: 64, offset: 576)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!66, !333, !4106}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4084, file: !168, line: 339, baseType: !4117, size: 64, offset: 640)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!66, !485, !4120}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !486, file: !163, line: 1199, baseType: !4122, size: 64, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4124)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !168, line: 430, size: 704, elements: !4125)
!4125 = !{!4126, !4132, !4133, !4137, !4138, !4139, !4154, !4177, !4181, !4182, !4205}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4124, file: !168, line: 431, baseType: !4127, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!66, !485, !66, !66, !4130}
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3274)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4124, file: !168, line: 432, baseType: !3978, size: 64, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4124, file: !168, line: 433, baseType: !4134, size: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!66, !485, !7}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4124, file: !168, line: 434, baseType: !4134, size: 64, offset: 192)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4124, file: !168, line: 435, baseType: !3978, size: 64, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4124, file: !168, line: 436, baseType: !4140, size: 64, offset: 320)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!66, !485, !66, !4143}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !168, line: 417, size: 256, elements: !4145)
!4145 = !{!4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4144, file: !168, line: 418, baseType: !66, size: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4144, file: !168, line: 419, baseType: !7, size: 32, offset: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4144, file: !168, line: 420, baseType: !7, size: 32, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4144, file: !168, line: 422, baseType: !7, size: 32, offset: 96)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4144, file: !168, line: 423, baseType: !7, size: 32, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4144, file: !168, line: 424, baseType: !7, size: 32, offset: 160)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4144, file: !168, line: 425, baseType: !7, size: 32, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4144, file: !168, line: 426, baseType: !7, size: 32, offset: 224)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4124, file: !168, line: 437, baseType: !4155, size: 64, offset: 384)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!66, !485, !4034, !4158}
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !168, line: 345, size: 960, elements: !4160)
!4160 = !{!4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4159, file: !168, line: 346, baseType: !66, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4159, file: !168, line: 347, baseType: !406, size: 64, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4159, file: !168, line: 348, baseType: !406, size: 64, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4159, file: !168, line: 349, baseType: !406, size: 64, offset: 192)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4159, file: !168, line: 350, baseType: !406, size: 64, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4159, file: !168, line: 351, baseType: !406, size: 64, offset: 320)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4159, file: !168, line: 352, baseType: !406, size: 64, offset: 384)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4159, file: !168, line: 353, baseType: !679, size: 64, offset: 448)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4159, file: !168, line: 355, baseType: !679, size: 64, offset: 512)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4159, file: !168, line: 356, baseType: !66, size: 32, offset: 576)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4159, file: !168, line: 357, baseType: !66, size: 32, offset: 608)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4159, file: !168, line: 358, baseType: !406, size: 64, offset: 640)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4159, file: !168, line: 359, baseType: !406, size: 64, offset: 704)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4159, file: !168, line: 360, baseType: !406, size: 64, offset: 768)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4159, file: !168, line: 361, baseType: !679, size: 64, offset: 832)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4159, file: !168, line: 362, baseType: !66, size: 32, offset: 896)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4124, file: !168, line: 438, baseType: !4178, size: 64, offset: 448)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!66, !485, !4120, !4158}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4124, file: !168, line: 440, baseType: !4155, size: 64, offset: 512)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4124, file: !168, line: 441, baseType: !4183, size: 64, offset: 576)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!66, !485, !4186}
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !168, line: 411, size: 1408, elements: !4188)
!4188 = !{!4189, !4190}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4187, file: !168, line: 412, baseType: !7, size: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4187, file: !168, line: 413, baseType: !4191, size: 1344, offset: 64)
!4191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4192, size: 1344, elements: !574)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !168, line: 397, size: 448, elements: !4193)
!4193 = !{!4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4204}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4192, file: !168, line: 398, baseType: !7, size: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4192, file: !168, line: 399, baseType: !7, size: 32, offset: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4192, file: !168, line: 401, baseType: !7, size: 32, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4192, file: !168, line: 402, baseType: !7, size: 32, offset: 96)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4192, file: !168, line: 403, baseType: !7, size: 32, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4192, file: !168, line: 404, baseType: !7, size: 32, offset: 160)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4192, file: !168, line: 405, baseType: !7, size: 32, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4192, file: !168, line: 406, baseType: !408, size: 64, offset: 256)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4192, file: !168, line: 407, baseType: !4203, size: 64, offset: 320)
!4203 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !69, line: 132, baseType: !406)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4192, file: !168, line: 408, baseType: !4203, size: 64, offset: 384)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4124, file: !168, line: 442, baseType: !4134, size: 64, offset: 640)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !486, file: !163, line: 1200, baseType: !4207, size: 64, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4209)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !163, line: 54, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !486, file: !163, line: 1201, baseType: !83, size: 64, offset: 640)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !486, file: !163, line: 1202, baseType: !83, size: 64, offset: 704)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !486, file: !163, line: 1203, baseType: !83, size: 64, offset: 768)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !486, file: !163, line: 1204, baseType: !368, size: 64, offset: 832)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !486, file: !163, line: 1205, baseType: !813, size: 320, offset: 896)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !486, file: !163, line: 1206, baseType: !66, size: 32, offset: 1216)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !486, file: !163, line: 1207, baseType: !93, size: 32, offset: 1248)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !486, file: !163, line: 1209, baseType: !64, size: 64, offset: 1280)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !486, file: !163, line: 1211, baseType: !4219, size: 64, offset: 1344)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4222)
!4222 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !163, line: 1211, flags: DIFlagFwdDecl)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !486, file: !163, line: 1223, baseType: !4224, size: 64, offset: 1408)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !385, line: 34, size: 64, elements: !4225)
!4225 = !{!4226}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4224, file: !385, line: 35, baseType: !388, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !486, file: !163, line: 1224, baseType: !141, size: 128, offset: 1472)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !486, file: !163, line: 1225, baseType: !4229, size: 64, offset: 1600)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !4231, line: 40, size: 7424, elements: !4232)
!4231 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!4232 = !{!4233, !4235, !4236, !4237, !4240, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4267, !4268}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !4230, file: !4231, line: 41, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !69, line: 131, baseType: !406)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !4230, file: !4231, line: 42, baseType: !4234, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !4230, file: !4231, line: 43, baseType: !2822, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !4230, file: !4231, line: 44, baseType: !4238, size: 64, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2646, line: 74, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !4230, file: !4231, line: 45, baseType: !4241, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !4231, line: 45, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !4230, file: !4231, line: 46, baseType: !83, size: 64, offset: 320)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !4230, file: !4231, line: 47, baseType: !872, size: 8, offset: 384)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !4230, file: !4231, line: 48, baseType: !127, size: 8, offset: 392)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !4230, file: !4231, line: 49, baseType: !872, size: 8, offset: 400)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !4230, file: !4231, line: 50, baseType: !872, size: 8, offset: 408)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !4230, file: !4231, line: 51, baseType: !490, size: 32, offset: 416)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !4230, file: !4231, line: 52, baseType: !93, size: 32, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !4230, file: !4231, line: 53, baseType: !103, size: 32, offset: 480)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !4230, file: !4231, line: 54, baseType: !333, size: 64, offset: 512)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !4230, file: !4231, line: 55, baseType: !64, size: 64, offset: 576)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !4230, file: !4231, line: 56, baseType: !64, size: 64, offset: 640)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !4230, file: !4231, line: 57, baseType: !4255, size: 64, offset: 704)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4257)
!4257 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !4231, line: 57, flags: DIFlagFwdDecl)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !4230, file: !4231, line: 58, baseType: !682, size: 256, offset: 768)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !4230, file: !4231, line: 60, baseType: !66, size: 32, offset: 1024)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !4230, file: !4231, line: 61, baseType: !66, size: 32, offset: 1056)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !4230, file: !4231, line: 62, baseType: !539, size: 64, offset: 1088)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !4230, file: !4231, line: 65, baseType: !682, size: 256, offset: 1152)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !4230, file: !4231, line: 66, baseType: !485, size: 64, offset: 1408)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !4230, file: !4231, line: 68, baseType: !4265, size: 64, offset: 1472)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !4231, line: 68, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !4230, file: !4231, line: 72, baseType: !872, size: 8, offset: 1536)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !4230, file: !4231, line: 77, baseType: !4269, size: 5824, offset: 1600)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !180, line: 705, size: 5824, elements: !4270)
!4270 = !{!4271, !4272, !4274, !4277, !4278, !4331, !4401, !4402, !4403, !4404, !4405, !4412, !4504, !4517, !4527, !4531, !4533, !4534, !4535, !4539, !4546, !4547, !4550, !4553, !4557, !4661, !4662, !4663, !4664, !4665, !4666, !4696, !4697, !4698, !4701, !4704, !4713, !4714, !4715, !4716, !4717, !4718}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4269, file: !180, line: 706, baseType: !533, size: 512)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4269, file: !180, line: 707, baseType: !4273, size: 64, offset: 512)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4269, file: !180, line: 709, baseType: !4275, size: 64, offset: 576)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !180, line: 37, flags: DIFlagFwdDecl)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4269, file: !180, line: 711, baseType: !60, size: 64, offset: 640)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4269, file: !180, line: 712, baseType: !4279, size: 64, offset: 704)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4281)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !180, line: 89, size: 384, elements: !4282)
!4282 = !{!4283, !4284, !4285, !4291, !4296, !4300}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4281, file: !180, line: 90, baseType: !60, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4281, file: !180, line: 91, baseType: !619, size: 64, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4281, file: !180, line: 92, baseType: !4286, size: 64, offset: 128)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!66, !4289, !569}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4269)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4281, file: !180, line: 93, baseType: !4292, size: 64, offset: 192)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!474, !4289, !4295, !3227, !3228}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4281, file: !180, line: 95, baseType: !4297, size: 64, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !4273}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4281, file: !180, line: 97, baseType: !4301, size: 64, offset: 320)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4303)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !187, line: 286, size: 1472, elements: !4304)
!4304 = !{!4305, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4303, file: !187, line: 287, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!66, !4273}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4303, file: !187, line: 288, baseType: !4297, size: 64, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4303, file: !187, line: 289, baseType: !4306, size: 64, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4303, file: !187, line: 290, baseType: !4306, size: 64, offset: 192)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4303, file: !187, line: 291, baseType: !4306, size: 64, offset: 256)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4303, file: !187, line: 292, baseType: !4306, size: 64, offset: 320)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4303, file: !187, line: 293, baseType: !4306, size: 64, offset: 384)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4303, file: !187, line: 294, baseType: !4306, size: 64, offset: 448)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4303, file: !187, line: 295, baseType: !4306, size: 64, offset: 512)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4303, file: !187, line: 296, baseType: !4306, size: 64, offset: 576)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4303, file: !187, line: 297, baseType: !4306, size: 64, offset: 640)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4303, file: !187, line: 298, baseType: !4306, size: 64, offset: 704)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4303, file: !187, line: 299, baseType: !4306, size: 64, offset: 768)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4303, file: !187, line: 300, baseType: !4306, size: 64, offset: 832)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4303, file: !187, line: 301, baseType: !4306, size: 64, offset: 896)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4303, file: !187, line: 302, baseType: !4306, size: 64, offset: 960)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4303, file: !187, line: 303, baseType: !4306, size: 64, offset: 1024)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4303, file: !187, line: 304, baseType: !4306, size: 64, offset: 1088)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4303, file: !187, line: 305, baseType: !4306, size: 64, offset: 1152)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4303, file: !187, line: 306, baseType: !4306, size: 64, offset: 1216)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4303, file: !187, line: 307, baseType: !4306, size: 64, offset: 1280)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4303, file: !187, line: 308, baseType: !4306, size: 64, offset: 1344)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4303, file: !187, line: 309, baseType: !4306, size: 64, offset: 1408)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4269, file: !180, line: 714, baseType: !4332, size: 64, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4334)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4335, line: 80, size: 1344, elements: !4336)
!4335 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4336 = !{!4337, !4338, !4339, !4340, !4341, !4342, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4400}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4334, file: !4335, line: 81, baseType: !60, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4334, file: !4335, line: 82, baseType: !60, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4334, file: !4335, line: 83, baseType: !619, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4334, file: !4335, line: 84, baseType: !619, size: 64, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4334, file: !4335, line: 85, baseType: !619, size: 64, offset: 256)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4334, file: !4335, line: 87, baseType: !4343, size: 64, offset: 320)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!66, !4273, !4346}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !174, line: 96, size: 1152, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352, !4353, !4354, !4355, !4359, !4363, !4364, !4365, !4366, !4367, !4375, !4376, !4377, !4378, !4379, !4380}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4347, file: !174, line: 97, baseType: !60, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4347, file: !174, line: 98, baseType: !4332, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4347, file: !174, line: 100, baseType: !520, size: 64, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4347, file: !174, line: 101, baseType: !60, size: 64, offset: 192)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4347, file: !174, line: 103, baseType: !872, size: 8, offset: 256)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4347, file: !174, line: 104, baseType: !173, size: 32, offset: 288)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4347, file: !174, line: 106, baseType: !4356, size: 64, offset: 320)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4358)
!4358 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !174, line: 106, flags: DIFlagFwdDecl)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4347, file: !174, line: 107, baseType: !4360, size: 64, offset: 384)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !174, line: 107, flags: DIFlagFwdDecl)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4347, file: !174, line: 109, baseType: !4306, size: 64, offset: 448)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4347, file: !174, line: 110, baseType: !4297, size: 64, offset: 512)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4347, file: !174, line: 111, baseType: !4306, size: 64, offset: 576)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4347, file: !174, line: 112, baseType: !4297, size: 64, offset: 640)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4347, file: !174, line: 113, baseType: !4368, size: 64, offset: 704)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!66, !4273, !4371}
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !187, line: 60, baseType: !4372)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !187, line: 58, size: 32, elements: !4373)
!4373 = !{!4374}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4372, file: !187, line: 59, baseType: !66, size: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4347, file: !174, line: 114, baseType: !4306, size: 64, offset: 768)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4347, file: !174, line: 115, baseType: !619, size: 64, offset: 832)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4347, file: !174, line: 116, baseType: !619, size: 64, offset: 896)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4347, file: !174, line: 118, baseType: !4301, size: 64, offset: 960)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4347, file: !174, line: 119, baseType: !4297, size: 64, offset: 1024)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4347, file: !174, line: 121, baseType: !4381, size: 64, offset: 1088)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !174, line: 121, flags: DIFlagFwdDecl)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4334, file: !4335, line: 88, baseType: !4286, size: 64, offset: 384)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4334, file: !4335, line: 89, baseType: !4306, size: 64, offset: 448)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4334, file: !4335, line: 90, baseType: !4297, size: 64, offset: 512)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4334, file: !4335, line: 91, baseType: !4297, size: 64, offset: 576)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4334, file: !4335, line: 92, baseType: !4297, size: 64, offset: 640)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4334, file: !4335, line: 94, baseType: !4306, size: 64, offset: 704)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4334, file: !4335, line: 95, baseType: !4306, size: 64, offset: 768)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4334, file: !4335, line: 97, baseType: !4368, size: 64, offset: 832)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4334, file: !4335, line: 98, baseType: !4306, size: 64, offset: 896)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4334, file: !4335, line: 100, baseType: !4306, size: 64, offset: 960)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4334, file: !4335, line: 102, baseType: !4306, size: 64, offset: 1024)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4334, file: !4335, line: 103, baseType: !4297, size: 64, offset: 1088)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4334, file: !4335, line: 105, baseType: !4301, size: 64, offset: 1152)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4334, file: !4335, line: 107, baseType: !4397, size: 64, offset: 1216)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4399)
!4399 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4335, line: 107, flags: DIFlagFwdDecl)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4334, file: !4335, line: 109, baseType: !872, size: 8, offset: 1280)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4269, file: !180, line: 715, baseType: !4346, size: 64, offset: 832)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4269, file: !180, line: 717, baseType: !64, size: 64, offset: 896)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4269, file: !180, line: 719, baseType: !64, size: 64, offset: 960)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4269, file: !180, line: 721, baseType: !682, size: 256, offset: 1024)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4269, file: !180, line: 725, baseType: !4406, size: 448, offset: 1280)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !180, line: 517, size: 448, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4406, file: !180, line: 518, baseType: !141, size: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4406, file: !180, line: 519, baseType: !141, size: 128, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4406, file: !180, line: 520, baseType: !141, size: 128, offset: 256)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4406, file: !180, line: 521, baseType: !179, size: 32, offset: 384)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4269, file: !180, line: 726, baseType: !4413, size: 2496, offset: 1728)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !187, line: 663, size: 2496, elements: !4414)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4497, !4501}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4413, file: !187, line: 664, baseType: !4371, size: 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4413, file: !187, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4413, file: !187, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4413, file: !187, line: 667, baseType: !872, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4413, file: !187, line: 668, baseType: !872, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4413, file: !187, line: 669, baseType: !872, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4413, file: !187, line: 670, baseType: !872, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4413, file: !187, line: 671, baseType: !872, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4413, file: !187, line: 672, baseType: !872, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4413, file: !187, line: 673, baseType: !872, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4413, file: !187, line: 674, baseType: !872, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4413, file: !187, line: 675, baseType: !402, size: 32, offset: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4413, file: !187, line: 676, baseType: !103, size: 32, offset: 96)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4413, file: !187, line: 678, baseType: !141, size: 128, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4413, file: !187, line: 679, baseType: !1803, size: 256, offset: 256)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4413, file: !187, line: 680, baseType: !4431, size: 64, offset: 512)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4433, line: 43, size: 1536, elements: !4434)
!4433 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4434 = !{!4435, !4436, !4437, !4438, !4439, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4432, file: !4433, line: 44, baseType: !60, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4432, file: !4433, line: 45, baseType: !66, size: 32, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4432, file: !4433, line: 46, baseType: !141, size: 128, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4432, file: !4433, line: 47, baseType: !103, size: 32, offset: 256)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4432, file: !4433, line: 48, baseType: !4440, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !187, line: 629, flags: DIFlagFwdDecl)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4432, file: !4433, line: 49, baseType: !2092, size: 320, offset: 384)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4432, file: !4433, line: 50, baseType: !83, size: 64, offset: 704)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4432, file: !4433, line: 51, baseType: !1126, size: 64, offset: 768)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4432, file: !4433, line: 52, baseType: !1126, size: 64, offset: 832)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4432, file: !4433, line: 53, baseType: !1126, size: 64, offset: 896)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4432, file: !4433, line: 54, baseType: !1126, size: 64, offset: 960)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4432, file: !4433, line: 55, baseType: !1126, size: 64, offset: 1024)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4432, file: !4433, line: 56, baseType: !83, size: 64, offset: 1088)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4432, file: !4433, line: 57, baseType: !83, size: 64, offset: 1152)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4432, file: !4433, line: 58, baseType: !83, size: 64, offset: 1216)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4432, file: !4433, line: 59, baseType: !83, size: 64, offset: 1280)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4432, file: !4433, line: 60, baseType: !83, size: 64, offset: 1344)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4432, file: !4433, line: 61, baseType: !4273, size: 64, offset: 1408)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4432, file: !4433, line: 62, baseType: !872, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4432, file: !4433, line: 63, baseType: !872, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4413, file: !187, line: 681, baseType: !872, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4413, file: !187, line: 682, baseType: !872, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4413, file: !187, line: 683, baseType: !872, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4413, file: !187, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4413, file: !187, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4413, file: !187, line: 690, baseType: !1118, size: 512, offset: 640)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4413, file: !187, line: 691, baseType: !406, size: 64, offset: 1152)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4413, file: !187, line: 692, baseType: !1692, size: 256, offset: 1216)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4413, file: !187, line: 693, baseType: !98, size: 192, offset: 1472)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4413, file: !187, line: 694, baseType: !4440, size: 64, offset: 1664)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4413, file: !187, line: 695, baseType: !93, size: 32, offset: 1728)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4413, file: !187, line: 696, baseType: !93, size: 32, offset: 1760)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4413, file: !187, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4413, file: !187, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4413, file: !187, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4413, file: !187, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4413, file: !187, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4413, file: !187, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4413, file: !187, line: 703, baseType: !872, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4413, file: !187, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4413, file: !187, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4413, file: !187, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4413, file: !187, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4413, file: !187, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4413, file: !187, line: 709, baseType: !7, size: 32, offset: 1824)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4413, file: !187, line: 710, baseType: !186, size: 32, offset: 1856)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4413, file: !187, line: 711, baseType: !194, size: 32, offset: 1888)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4413, file: !187, line: 712, baseType: !194, size: 32, offset: 1920)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4413, file: !187, line: 713, baseType: !66, size: 32, offset: 1952)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4413, file: !187, line: 714, baseType: !66, size: 32, offset: 1984)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4413, file: !187, line: 715, baseType: !406, size: 64, offset: 2048)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4413, file: !187, line: 716, baseType: !406, size: 64, offset: 2112)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4413, file: !187, line: 717, baseType: !406, size: 64, offset: 2176)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4413, file: !187, line: 718, baseType: !406, size: 64, offset: 2240)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4413, file: !187, line: 720, baseType: !4492, size: 64, offset: 2304)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !187, line: 632, size: 64, elements: !4494)
!4494 = !{!4495, !4496}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4493, file: !187, line: 633, baseType: !103, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4493, file: !187, line: 634, baseType: !7, size: 32, offset: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4413, file: !187, line: 721, baseType: !4498, size: 64, offset: 2368)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{null, !4273, !798}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4413, file: !187, line: 722, baseType: !4502, size: 64, offset: 2432)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !187, line: 722, flags: DIFlagFwdDecl)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4269, file: !180, line: 727, baseType: !4505, size: 64, offset: 4224)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !187, line: 742, size: 1792, elements: !4507)
!4507 = !{!4508, !4509, !4510, !4514, !4515, !4516}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4506, file: !187, line: 743, baseType: !4303, size: 1472)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4506, file: !187, line: 744, baseType: !4306, size: 64, offset: 1472)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4506, file: !187, line: 745, baseType: !4511, size: 64, offset: 1536)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !4273, !872}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4506, file: !187, line: 746, baseType: !4306, size: 64, offset: 1600)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4506, file: !187, line: 747, baseType: !4297, size: 64, offset: 1664)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4506, file: !187, line: 748, baseType: !4297, size: 64, offset: 1728)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4269, file: !180, line: 736, baseType: !4518, size: 128, offset: 4288)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !180, line: 529, size: 128, elements: !4519)
!4519 = !{!4520, !4524}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4518, file: !180, line: 531, baseType: !4521, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4523, line: 13, flags: DIFlagFwdDecl)
!4523 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4518, file: !180, line: 532, baseType: !4525, size: 64, offset: 64)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !180, line: 49, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4269, file: !180, line: 738, baseType: !4528, size: 64, offset: 4416)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4530)
!4530 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !180, line: 738, flags: DIFlagFwdDecl)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4269, file: !180, line: 740, baseType: !4532, size: 64, offset: 4480)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4269, file: !180, line: 741, baseType: !406, size: 64, offset: 4544)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4269, file: !180, line: 746, baseType: !406, size: 64, offset: 4608)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4269, file: !180, line: 747, baseType: !4536, size: 64, offset: 4672)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4538)
!4538 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !180, line: 747, flags: DIFlagFwdDecl)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4269, file: !180, line: 749, baseType: !4540, size: 64, offset: 4736)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !180, line: 428, size: 128, elements: !4542)
!4542 = !{!4543, !4544, !4545}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4541, file: !180, line: 433, baseType: !7, size: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4541, file: !180, line: 434, baseType: !7, size: 32, offset: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4541, file: !180, line: 435, baseType: !83, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4269, file: !180, line: 751, baseType: !141, size: 128, offset: 4800)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4269, file: !180, line: 762, baseType: !4548, size: 64, offset: 4928)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !180, line: 762, flags: DIFlagFwdDecl)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4269, file: !180, line: 770, baseType: !4551, offset: 4992)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4552, line: 5, elements: !1315)
!4552 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4269, file: !180, line: 772, baseType: !4554, size: 64, offset: 4992)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4556, line: 18, flags: DIFlagFwdDecl)
!4556 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4269, file: !180, line: 773, baseType: !4558, size: 64, offset: 5056)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4560, line: 41, size: 512, elements: !4561)
!4560 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4561 = !{!4562, !4563, !4657, !4658, !4659, !4660}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4559, file: !4560, line: 42, baseType: !4558, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4559, file: !4560, line: 43, baseType: !4564, size: 64, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4566)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4560, line: 125, size: 1408, elements: !4567)
!4567 = !{!4568, !4572, !4576, !4582, !4586, !4587, !4592, !4596, !4600, !4604, !4608, !4609, !4613, !4617, !4621, !4632, !4633, !4634, !4635, !4645, !4649, !4653}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4566, file: !4560, line: 126, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!4558, !4558}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4566, file: !4560, line: 127, baseType: !4573, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{null, !4558}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4566, file: !4560, line: 128, baseType: !4577, size: 64, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!872, !4580}
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4559)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4566, file: !4560, line: 129, baseType: !4583, size: 64, offset: 192)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!1653, !4580, !4289}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4566, file: !4560, line: 131, baseType: !4577, size: 64, offset: 256)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4566, file: !4560, line: 133, baseType: !4588, size: 64, offset: 320)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!4591, !4580}
!4591 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4560, line: 132, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4566, file: !4560, line: 134, baseType: !4593, size: 64, offset: 384)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!872, !4580, !60}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4566, file: !4560, line: 136, baseType: !4597, size: 64, offset: 448)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!66, !4580, !60, !7, !64, !79}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4566, file: !4560, line: 141, baseType: !4601, size: 64, offset: 512)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!66, !4580, !60, !3889, !79}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4566, file: !4560, line: 144, baseType: !4605, size: 64, offset: 576)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!60, !4580}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4566, file: !4560, line: 145, baseType: !4605, size: 64, offset: 640)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4566, file: !4560, line: 146, baseType: !4610, size: 64, offset: 704)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!4558, !4580}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4566, file: !4560, line: 148, baseType: !4614, size: 64, offset: 768)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!4558, !4580, !4558}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4566, file: !4560, line: 151, baseType: !4618, size: 64, offset: 832)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!4558, !4580, !60}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4566, file: !4560, line: 153, baseType: !4622, size: 64, offset: 896)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!66, !4580, !60, !60, !7, !7, !4625}
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4560, line: 94, size: 640, elements: !4627)
!4627 = !{!4628, !4629, !4630}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4626, file: !4560, line: 95, baseType: !4558, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4626, file: !4560, line: 96, baseType: !7, size: 32, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4626, file: !4560, line: 97, baseType: !4631, size: 512, offset: 128)
!4631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 512, elements: !1161)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4566, file: !4560, line: 158, baseType: !4614, size: 64, offset: 960)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4566, file: !4560, line: 161, baseType: !4610, size: 64, offset: 1024)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4566, file: !4560, line: 163, baseType: !4569, size: 64, offset: 1088)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4566, file: !4560, line: 164, baseType: !4636, size: 64, offset: 1152)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!66, !4580, !4639}
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4560, line: 73, size: 128, elements: !4641)
!4641 = !{!4642, !4643, !4644}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4640, file: !4560, line: 74, baseType: !7, size: 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4640, file: !4560, line: 75, baseType: !7, size: 32, offset: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4640, file: !4560, line: 76, baseType: !4580, size: 64, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4566, file: !4560, line: 166, baseType: !4646, size: 64, offset: 1216)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!64, !4558, !66}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4566, file: !4560, line: 167, baseType: !4650, size: 64, offset: 1280)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!66, !4580, !7}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4566, file: !4560, line: 168, baseType: !4654, size: 64, offset: 1344)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!66, !4558}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4559, file: !4560, line: 44, baseType: !4273, size: 64, offset: 128)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4559, file: !4560, line: 45, baseType: !141, size: 128, offset: 192)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4559, file: !4560, line: 46, baseType: !141, size: 128, offset: 320)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4559, file: !4560, line: 47, baseType: !127, size: 8, offset: 448)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4269, file: !180, line: 776, baseType: !66, size: 32, offset: 5120)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4269, file: !180, line: 778, baseType: !490, size: 32, offset: 5152)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4269, file: !180, line: 779, baseType: !402, size: 32, offset: 5184)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4269, file: !180, line: 781, baseType: !103, size: 32, offset: 5216)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4269, file: !180, line: 782, baseType: !141, size: 128, offset: 5248)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4269, file: !180, line: 784, baseType: !4667, size: 64, offset: 5376)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4669)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4670, line: 52, size: 768, elements: !4671)
!4670 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4671 = !{!4672, !4673, !4674, !4675, !4676, !4680, !4684, !4685, !4686, !4687, !4691, !4695}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4669, file: !4670, line: 53, baseType: !60, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4669, file: !4670, line: 55, baseType: !619, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4669, file: !4670, line: 56, baseType: !619, size: 64, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4669, file: !4670, line: 58, baseType: !4286, size: 64, offset: 192)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4669, file: !4670, line: 59, baseType: !4677, size: 64, offset: 256)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!474, !4289, !4295}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4669, file: !4670, line: 61, baseType: !4681, size: 64, offset: 320)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{null, !4667}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4669, file: !4670, line: 62, baseType: !4297, size: 64, offset: 384)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4669, file: !4670, line: 64, baseType: !4306, size: 64, offset: 448)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4669, file: !4670, line: 66, baseType: !3541, size: 64, offset: 512)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4669, file: !4670, line: 67, baseType: !4688, size: 64, offset: 576)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!1653, !4289}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4669, file: !4670, line: 69, baseType: !4692, size: 64, offset: 640)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{null, !4289, !3227, !3228}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4669, file: !4670, line: 71, baseType: !4301, size: 64, offset: 704)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4269, file: !180, line: 785, baseType: !619, size: 64, offset: 5440)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4269, file: !180, line: 787, baseType: !4297, size: 64, offset: 5504)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4269, file: !180, line: 788, baseType: !4699, size: 64, offset: 5568)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !180, line: 46, flags: DIFlagFwdDecl)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4269, file: !180, line: 789, baseType: !4702, size: 64, offset: 5632)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !180, line: 48, flags: DIFlagFwdDecl)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4269, file: !180, line: 791, baseType: !4705, size: 64, offset: 5696)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !180, line: 597, size: 128, elements: !4707)
!4707 = !{!4708, !4709, !4710, !4711, !4712}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4706, file: !180, line: 598, baseType: !201, size: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4706, file: !180, line: 599, baseType: !210, size: 32, offset: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4706, file: !180, line: 600, baseType: !215, size: 32, offset: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4706, file: !180, line: 601, baseType: !872, size: 8, offset: 96)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4706, file: !180, line: 602, baseType: !872, size: 8, offset: 104)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4269, file: !180, line: 793, baseType: !220, size: 32, offset: 5760)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4269, file: !180, line: 795, baseType: !872, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4269, file: !180, line: 796, baseType: !872, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4269, file: !180, line: 797, baseType: !872, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4269, file: !180, line: 798, baseType: !872, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4269, file: !180, line: 799, baseType: !872, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !486, file: !163, line: 1226, baseType: !4720, size: 64, offset: 1664)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !163, line: 1226, flags: DIFlagFwdDecl)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !486, file: !163, line: 1227, baseType: !4723, size: 64, offset: 1728)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !227, line: 163, size: 6848, elements: !4725)
!4725 = !{!4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4772, !4773, !4774, !4775, !4776, !4777, !4778}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4724, file: !227, line: 164, baseType: !406, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4724, file: !227, line: 165, baseType: !805, size: 192, align: 64, offset: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4724, file: !227, line: 166, baseType: !141, size: 128, offset: 256)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4724, file: !227, line: 167, baseType: !83, size: 64, offset: 384)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4724, file: !227, line: 168, baseType: !83, size: 64, offset: 448)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4724, file: !227, line: 170, baseType: !3578, size: 32, offset: 512)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4724, file: !227, line: 171, baseType: !7, size: 32, offset: 544)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4724, file: !227, line: 172, baseType: !7, size: 32, offset: 576)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4724, file: !227, line: 173, baseType: !7, size: 32, offset: 608)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4724, file: !227, line: 173, baseType: !7, size: 32, offset: 640)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4724, file: !227, line: 179, baseType: !673, size: 64, offset: 704)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4724, file: !227, line: 184, baseType: !83, size: 64, offset: 768)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4724, file: !227, line: 186, baseType: !4739, size: 4672, offset: 832)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !227, line: 105, size: 4672, elements: !4740)
!4740 = !{!4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4765, !4766, !4767, !4768, !4769, !4770, !4771}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4739, file: !227, line: 106, baseType: !4723, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4739, file: !227, line: 108, baseType: !83, size: 64, offset: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4739, file: !227, line: 109, baseType: !83, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4739, file: !227, line: 111, baseType: !141, size: 128, offset: 192)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4739, file: !227, line: 112, baseType: !141, size: 128, offset: 320)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4739, file: !227, line: 113, baseType: !141, size: 128, offset: 448)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4739, file: !227, line: 114, baseType: !141, size: 128, offset: 576)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4739, file: !227, line: 115, baseType: !103, size: 32, offset: 704)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4739, file: !227, line: 117, baseType: !93, size: 32, offset: 736)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4739, file: !227, line: 118, baseType: !1378, size: 1280, offset: 768)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4739, file: !227, line: 120, baseType: !83, size: 64, offset: 2048)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4739, file: !227, line: 121, baseType: !83, size: 64, offset: 2112)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4739, file: !227, line: 122, baseType: !83, size: 64, offset: 2176)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4739, file: !227, line: 123, baseType: !83, size: 64, offset: 2240)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4739, file: !227, line: 124, baseType: !83, size: 64, offset: 2304)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4739, file: !227, line: 132, baseType: !83, size: 64, offset: 2368)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4739, file: !227, line: 133, baseType: !83, size: 64, offset: 2432)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4739, file: !227, line: 135, baseType: !4759, size: 384, offset: 2496)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4760, line: 76, size: 384, elements: !4761)
!4760 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4761 = !{!4762, !4763, !4764}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4759, file: !4760, line: 78, baseType: !930, size: 320)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4759, file: !4760, line: 80, baseType: !7, size: 32, offset: 320)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4759, file: !4760, line: 81, baseType: !687, size: 32, offset: 352)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4739, file: !227, line: 136, baseType: !66, size: 32, offset: 2880)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4739, file: !227, line: 137, baseType: !226, size: 32, offset: 2912)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4739, file: !227, line: 139, baseType: !103, size: 32, offset: 2944)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4739, file: !227, line: 140, baseType: !141, size: 128, offset: 3008)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4739, file: !227, line: 141, baseType: !3871, size: 704, offset: 3136)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4739, file: !227, line: 142, baseType: !3871, size: 704, offset: 3840)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4739, file: !227, line: 144, baseType: !141, size: 128, offset: 4544)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4724, file: !227, line: 187, baseType: !141, size: 128, offset: 5504)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4724, file: !227, line: 193, baseType: !98, size: 192, offset: 5632)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4724, file: !227, line: 195, baseType: !4273, size: 64, offset: 5824)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4724, file: !227, line: 196, baseType: !2131, size: 512, offset: 5888)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4724, file: !227, line: 197, baseType: !4273, size: 64, offset: 6400)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4724, file: !227, line: 199, baseType: !2092, size: 320, offset: 6464)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4724, file: !227, line: 202, baseType: !368, size: 64, offset: 6784)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !486, file: !163, line: 1228, baseType: !4780, size: 64, offset: 1792)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !163, line: 1228, flags: DIFlagFwdDecl)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !486, file: !163, line: 1229, baseType: !738, size: 128, offset: 1856)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !486, file: !163, line: 1230, baseType: !7, size: 32, offset: 1984)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !486, file: !163, line: 1231, baseType: !4785, size: 2496, offset: 2048)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !168, line: 521, size: 2496, elements: !4786)
!4786 = !{!4787, !4788, !4789, !4791, !4823}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4785, file: !168, line: 522, baseType: !7, size: 32)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4785, file: !168, line: 523, baseType: !813, size: 320, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4785, file: !168, line: 524, baseType: !4790, size: 192, offset: 384)
!4790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 192, elements: !574)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4785, file: !168, line: 525, baseType: !4792, size: 1728, offset: 576)
!4792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4793, size: 1728, elements: !574)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !168, line: 222, size: 576, elements: !4794)
!4794 = !{!4795, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4793, file: !168, line: 223, baseType: !4796, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !168, line: 445, size: 256, elements: !4798)
!4798 = !{!4799, !4800, !4813, !4814}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4797, file: !168, line: 446, baseType: !66, size: 32)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4797, file: !168, line: 447, baseType: !4801, size: 64, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4803)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !168, line: 312, size: 512, elements: !4804)
!4804 = !{!4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4803, file: !168, line: 313, baseType: !3978, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4803, file: !168, line: 314, baseType: !3978, size: 64, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4803, file: !168, line: 315, baseType: !3978, size: 64, offset: 128)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4803, file: !168, line: 316, baseType: !3978, size: 64, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4803, file: !168, line: 317, baseType: !4087, size: 64, offset: 256)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4803, file: !168, line: 318, baseType: !4087, size: 64, offset: 320)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4803, file: !168, line: 319, baseType: !4087, size: 64, offset: 384)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4803, file: !168, line: 320, baseType: !4117, size: 64, offset: 448)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4797, file: !168, line: 448, baseType: !520, size: 64, offset: 128)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4797, file: !168, line: 449, baseType: !4796, size: 64, offset: 192)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4793, file: !168, line: 224, baseType: !66, size: 32, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4793, file: !168, line: 226, baseType: !141, size: 128, offset: 128)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4793, file: !168, line: 227, baseType: !83, size: 64, offset: 256)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4793, file: !168, line: 228, baseType: !7, size: 32, offset: 320)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4793, file: !168, line: 229, baseType: !7, size: 32, offset: 352)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4793, file: !168, line: 230, baseType: !4055, size: 64, offset: 384)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4793, file: !168, line: 231, baseType: !4055, size: 64, offset: 448)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4793, file: !168, line: 232, baseType: !64, size: 64, offset: 512)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4785, file: !168, line: 526, baseType: !4824, size: 192, offset: 2304)
!4824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4801, size: 192, elements: !574)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !486, file: !163, line: 1233, baseType: !4826, size: 2368, offset: 4544)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !163, line: 1184, size: 2368, elements: !4827)
!4827 = !{!4828, !4829, !4830}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4826, file: !163, line: 1185, baseType: !70, size: 16)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4826, file: !163, line: 1186, baseType: !70, size: 16, offset: 16)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4826, file: !163, line: 1187, baseType: !4831, size: 2304, offset: 64)
!4831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4832, size: 2304, elements: !574)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4833, line: 12, size: 768, elements: !4834)
!4833 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4834 = !{!4835, !4843, !4844, !4849, !4850}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4832, file: !4833, line: 13, baseType: !4836, size: 384)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4837, line: 17, size: 384, elements: !4838)
!4837 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4838 = !{!4839, !4840, !4841, !4842}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4836, file: !4837, line: 18, baseType: !66, size: 32)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4836, file: !4837, line: 19, baseType: !66, size: 32, offset: 32)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4836, file: !4837, line: 20, baseType: !98, size: 192, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4836, file: !4837, line: 22, baseType: !660, size: 128, align: 64, offset: 256)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4832, file: !4833, line: 14, baseType: !3681, size: 64, offset: 384)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4832, file: !4833, line: 15, baseType: !4845, size: 64, offset: 448)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4846, line: 16, size: 64, elements: !4847)
!4846 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4847 = !{!4848}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4845, file: !4846, line: 17, baseType: !1006, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4832, file: !4833, line: 16, baseType: !98, size: 192, offset: 512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4832, file: !4833, line: 17, baseType: !93, size: 32, offset: 704)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !486, file: !163, line: 1240, baseType: !64, size: 64, offset: 6912)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !486, file: !163, line: 1243, baseType: !402, size: 32, offset: 6976)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !486, file: !163, line: 1245, baseType: !829, size: 64, offset: 7040)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !486, file: !163, line: 1246, baseType: !829, size: 64, offset: 7104)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !486, file: !163, line: 1248, baseType: !403, size: 32, offset: 7168)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !486, file: !163, line: 1249, baseType: !4857, size: 64, offset: 7232)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !163, line: 634, flags: DIFlagFwdDecl)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !486, file: !163, line: 1252, baseType: !2504, size: 256, offset: 7296)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !486, file: !163, line: 1253, baseType: !4861, size: 128, offset: 7552)
!4861 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4862, line: 21, baseType: !4863)
!4862 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4862, line: 19, size: 128, elements: !4864)
!4864 = !{!4865}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4863, file: !4862, line: 20, baseType: !4866, size: 128)
!4866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !1856)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !486, file: !163, line: 1255, baseType: !7, size: 32, offset: 7680)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !486, file: !163, line: 1261, baseType: !682, size: 256, offset: 7744)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !486, file: !163, line: 1267, baseType: !60, size: 64, offset: 8000)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !486, file: !163, line: 1269, baseType: !431, size: 64, offset: 8064)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !486, file: !163, line: 1271, baseType: !4872, size: 448, offset: 8128)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4070, line: 63, size: 448, elements: !4873)
!4873 = !{!4874, !4879, !4880, !4881, !4882, !4883, !4884}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4872, file: !4070, line: 64, baseType: !4875, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!83, !4878, !4068}
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4872, file: !4070, line: 66, baseType: !4875, size: 64, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4872, file: !4070, line: 69, baseType: !608, size: 64, offset: 128)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4872, file: !4070, line: 70, baseType: !66, size: 32, offset: 192)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4872, file: !4070, line: 71, baseType: !7, size: 32, offset: 224)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4872, file: !4070, line: 74, baseType: !141, size: 128, offset: 256)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4872, file: !4070, line: 85, baseType: !4885, size: 64, offset: 384)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !486, file: !163, line: 1274, baseType: !673, size: 64, offset: 8576)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !486, file: !163, line: 1280, baseType: !673, size: 64, offset: 8640)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !486, file: !163, line: 1283, baseType: !66, size: 32, offset: 8704)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !486, file: !163, line: 1286, baseType: !3525, size: 32, offset: 8736)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !486, file: !163, line: 1289, baseType: !2339, size: 64, offset: 8768)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !486, file: !163, line: 1290, baseType: !734, size: 64, offset: 8832)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !486, file: !163, line: 1297, baseType: !955, size: 64, offset: 8896)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !486, file: !163, line: 1304, baseType: !4894, size: 64, offset: 8960)
!4894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4895, line: 49, size: 64, elements: !4896)
!4895 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4896 = !{!4897}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4894, file: !4895, line: 50, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4895, line: 41, size: 512, align: 512, elements: !4900)
!4900 = !{!4901, !4902, !4907}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4899, file: !4895, line: 43, baseType: !103, size: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4899, file: !4895, line: 45, baseType: !4903, size: 192, offset: 64)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4895, line: 29, size: 192, elements: !4904)
!4904 = !{!4905, !4906}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4903, file: !4895, line: 30, baseType: !141, size: 128)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4903, file: !4895, line: 32, baseType: !608, size: 64, offset: 128)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4899, file: !4895, line: 46, baseType: !608, size: 64, offset: 256)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !486, file: !163, line: 1305, baseType: !4894, size: 64, offset: 9024)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !486, file: !163, line: 1306, baseType: !660, size: 128, align: 64, offset: 9088)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !486, file: !163, line: 1307, baseType: !1692, size: 256, offset: 9216)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !486, file: !163, line: 1309, baseType: !682, size: 256, offset: 9472)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !486, file: !163, line: 1314, baseType: !66, size: 32, offset: 9728)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !486, file: !163, line: 1317, baseType: !103, size: 32, align: 512, offset: 10240)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !486, file: !163, line: 1318, baseType: !141, size: 128, offset: 10304)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !486, file: !163, line: 1320, baseType: !103, size: 32, offset: 10432)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !486, file: !163, line: 1321, baseType: !141, size: 128, offset: 10496)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !480, file: !481, line: 73, baseType: !66, size: 32, offset: 128)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !480, file: !481, line: 74, baseType: !4919, size: 64, offset: 192)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !780, line: 42, flags: DIFlagFwdDecl)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !433, file: !370, line: 141, baseType: !4923, size: 64, offset: 704)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!66, !4130, !872}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !433, file: !370, line: 142, baseType: !4927, size: 64, offset: 768)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!368, !368, !4930}
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !369, file: !370, line: 96, baseType: !485, size: 64, offset: 832)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !369, file: !370, line: 97, baseType: !83, size: 64, offset: 896)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !369, file: !370, line: 98, baseType: !64, size: 64, offset: 960)
!4935 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !370, line: 100, baseType: !4936, size: 128, offset: 1024)
!4936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !370, line: 100, size: 128, elements: !4937)
!4937 = !{!4938, !4939}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4936, file: !370, line: 101, baseType: !141, size: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4936, file: !370, line: 102, baseType: !4940, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !369, file: !370, line: 104, baseType: !141, size: 128, offset: 1152)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !369, file: !370, line: 105, baseType: !141, size: 128, offset: 1280)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !369, file: !370, line: 113, baseType: !4944, size: 128, offset: 1408)
!4944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !370, line: 109, size: 128, elements: !4945)
!4945 = !{!4946, !4947, !4948}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4944, file: !370, line: 110, baseType: !738, size: 128)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4944, file: !370, line: 111, baseType: !384, size: 128)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4944, file: !370, line: 112, baseType: !660, size: 128, align: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !362, file: !163, line: 1968, baseType: !4950, size: 64, offset: 64)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!60, !368, !333, !4953}
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4955, line: 10, size: 128, elements: !4956)
!4955 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4956 = !{!4957, !4958}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4954, file: !4955, line: 11, baseType: !3565, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4954, file: !4955, line: 12, baseType: !64, size: 64, offset: 64)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !362, file: !163, line: 1969, baseType: !4960, size: 64, offset: 128)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!66, !4919, !333, !66}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !362, file: !163, line: 1970, baseType: !4964, size: 64, offset: 192)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!356, !333, !66, !872}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !362, file: !163, line: 1972, baseType: !4968, size: 64, offset: 256)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!66, !368, !474, !66}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !362, file: !163, line: 1974, baseType: !4972, size: 64, offset: 320)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!66, !4919, !333, !368, !68, !872}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !362, file: !163, line: 1976, baseType: !4976, size: 64, offset: 384)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!66, !368, !333, !368}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !362, file: !163, line: 1977, baseType: !4980, size: 64, offset: 448)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!66, !333, !368}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !362, file: !163, line: 1978, baseType: !4984, size: 64, offset: 512)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!66, !4919, !333, !368, !60}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !362, file: !163, line: 1980, baseType: !4988, size: 64, offset: 576)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!66, !4919, !333, !368, !68}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !362, file: !163, line: 1982, baseType: !4980, size: 64, offset: 640)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !362, file: !163, line: 1983, baseType: !4993, size: 64, offset: 704)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!66, !4919, !333, !368, !68, !490}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !362, file: !163, line: 1985, baseType: !4997, size: 64, offset: 768)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!66, !4919, !333, !368, !333, !368, !7}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !362, file: !163, line: 1987, baseType: !5001, size: 64, offset: 832)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!66, !4919, !368, !5004}
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !163, line: 226, size: 640, elements: !5006)
!5006 = !{!5007, !5008, !5009, !5019, !5028, !5029, !5034, !5035, !5036}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5005, file: !163, line: 227, baseType: !7, size: 32)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5005, file: !163, line: 228, baseType: !68, size: 16, offset: 32)
!5009 = !DIDerivedType(tag: DW_TAG_member, scope: !5005, file: !163, line: 241, baseType: !5010, size: 32, offset: 64)
!5010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5005, file: !163, line: 241, size: 32, elements: !5011)
!5011 = !{!5012, !5013}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5010, file: !163, line: 242, baseType: !339, size: 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5010, file: !163, line: 243, baseType: !5014, size: 32)
!5014 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5015, line: 16, baseType: !5016)
!5015 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5015, line: 14, size: 32, elements: !5017)
!5017 = !{!5018}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5016, file: !5015, line: 15, baseType: !344, size: 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, scope: !5005, file: !163, line: 245, baseType: !5020, size: 32, offset: 96)
!5020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5005, file: !163, line: 245, size: 32, elements: !5021)
!5021 = !{!5022, !5023}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5020, file: !163, line: 246, baseType: !348, size: 32)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5020, file: !163, line: 247, baseType: !5024, size: 32)
!5024 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5015, line: 20, baseType: !5025)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5015, line: 18, size: 32, elements: !5026)
!5026 = !{!5027}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5025, file: !5015, line: 19, baseType: !352, size: 32)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5005, file: !163, line: 249, baseType: !85, size: 64, offset: 128)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5005, file: !163, line: 250, baseType: !5030, size: 128, offset: 192)
!5030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !830, line: 13, size: 128, elements: !5031)
!5031 = !{!5032, !5033}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5030, file: !830, line: 14, baseType: !829, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5030, file: !830, line: 15, baseType: !608, size: 64, offset: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5005, file: !163, line: 251, baseType: !5030, size: 128, offset: 320)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5005, file: !163, line: 252, baseType: !5030, size: 128, offset: 448)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5005, file: !163, line: 259, baseType: !647, size: 64, offset: 576)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !362, file: !163, line: 1988, baseType: !5038, size: 64, offset: 896)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!66, !4919, !4130, !5041, !402, !7}
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5043, line: 22, size: 1280, elements: !5044)
!5043 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5044 = !{!5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5042, file: !5043, line: 23, baseType: !402, size: 32)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5042, file: !5043, line: 24, baseType: !68, size: 16, offset: 32)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5042, file: !5043, line: 25, baseType: !7, size: 32, offset: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5042, file: !5043, line: 26, baseType: !837, size: 32, offset: 96)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5042, file: !5043, line: 27, baseType: !406, size: 64, offset: 128)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5042, file: !5043, line: 28, baseType: !406, size: 64, offset: 192)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5042, file: !5043, line: 41, baseType: !406, size: 64, offset: 256)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5042, file: !5043, line: 42, baseType: !490, size: 32, offset: 320)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5042, file: !5043, line: 43, baseType: !490, size: 32, offset: 352)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5042, file: !5043, line: 44, baseType: !339, size: 32, offset: 384)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5042, file: !5043, line: 45, baseType: !348, size: 32, offset: 416)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5042, file: !5043, line: 46, baseType: !85, size: 64, offset: 448)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5042, file: !5043, line: 47, baseType: !5030, size: 128, offset: 512)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5042, file: !5043, line: 48, baseType: !5030, size: 128, offset: 640)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5042, file: !5043, line: 49, baseType: !5030, size: 128, offset: 768)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5042, file: !5043, line: 50, baseType: !5030, size: 128, offset: 896)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5042, file: !5043, line: 51, baseType: !406, size: 64, offset: 1024)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5042, file: !5043, line: 52, baseType: !406, size: 64, offset: 1088)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5042, file: !5043, line: 53, baseType: !402, size: 32, offset: 1152)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5042, file: !5043, line: 54, baseType: !402, size: 32, offset: 1184)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5042, file: !5043, line: 55, baseType: !406, size: 64, offset: 1216)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !362, file: !163, line: 1990, baseType: !5067, size: 64, offset: 960)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!605, !368, !474, !79}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !362, file: !163, line: 1991, baseType: !5071, size: 64, offset: 1024)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!66, !333, !5074, !406, !406}
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !163, line: 55, flags: DIFlagFwdDecl)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !362, file: !163, line: 1993, baseType: !5077, size: 64, offset: 1088)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!66, !333, !66}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !362, file: !163, line: 1994, baseType: !5081, size: 64, offset: 1152)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!66, !333, !368, !647, !7, !68}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !362, file: !163, line: 1997, baseType: !5085, size: 64, offset: 1216)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!66, !4919, !333, !647, !68}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !362, file: !163, line: 1999, baseType: !5089, size: 64, offset: 1280)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!356, !4919, !368, !66}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !362, file: !163, line: 2001, baseType: !5093, size: 64, offset: 1344)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!66, !4919, !368, !356, !66}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !362, file: !163, line: 2003, baseType: !5097, size: 64, offset: 1408)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!66, !4919, !368, !5100}
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !163, line: 76, flags: DIFlagFwdDecl)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !362, file: !163, line: 2005, baseType: !5103, size: 64, offset: 1472)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!66, !368, !5100}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !362, file: !163, line: 2006, baseType: !5107, size: 64, offset: 1536)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!5110, !333}
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !163, line: 3192, size: 192, elements: !5112)
!5112 = !{!5113, !5114}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5111, file: !163, line: 3193, baseType: !2256, size: 128)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5111, file: !163, line: 3194, baseType: !402, size: 32, offset: 128)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !334, file: !163, line: 655, baseType: !485, size: 64, offset: 448)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !334, file: !163, line: 656, baseType: !329, size: 64, offset: 512)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !334, file: !163, line: 659, baseType: !64, size: 64, offset: 576)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !334, file: !163, line: 663, baseType: !83, size: 64, offset: 640)
!5119 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !163, line: 671, baseType: !5120, size: 32, offset: 704)
!5120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !163, line: 671, size: 32, elements: !5121)
!5121 = !{!5122, !5124}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5120, file: !163, line: 672, baseType: !5123, size: 32)
!5123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5120, file: !163, line: 673, baseType: !7, size: 32)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !334, file: !163, line: 675, baseType: !490, size: 32, offset: 736)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !334, file: !163, line: 676, baseType: !85, size: 64, offset: 768)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !334, file: !163, line: 677, baseType: !5030, size: 128, offset: 832)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !334, file: !163, line: 678, baseType: !5030, size: 128, offset: 960)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !334, file: !163, line: 679, baseType: !5030, size: 128, offset: 1088)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !334, file: !163, line: 680, baseType: !103, size: 32, offset: 1216)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !334, file: !163, line: 681, baseType: !70, size: 16, offset: 1248)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !334, file: !163, line: 682, baseType: !127, size: 8, offset: 1264)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !334, file: !163, line: 683, baseType: !127, size: 8, offset: 1272)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !334, file: !163, line: 684, baseType: !4203, size: 64, offset: 1280)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !334, file: !163, line: 691, baseType: !83, size: 64, offset: 1344)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !334, file: !163, line: 692, baseType: !813, size: 320, offset: 1408)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !334, file: !163, line: 694, baseType: !83, size: 64, offset: 1728)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !334, file: !163, line: 695, baseType: !83, size: 64, offset: 1792)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !334, file: !163, line: 697, baseType: !738, size: 128, offset: 1856)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !334, file: !163, line: 698, baseType: !141, size: 128, offset: 1984)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !334, file: !163, line: 707, baseType: !141, size: 128, offset: 2112)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !334, file: !163, line: 708, baseType: !141, size: 128, offset: 2240)
!5143 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !163, line: 709, baseType: !5144, size: 128, offset: 2368)
!5144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !163, line: 709, size: 128, elements: !5145)
!5145 = !{!5146, !5147}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5144, file: !163, line: 710, baseType: !734, size: 64)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5144, file: !163, line: 711, baseType: !660, size: 128, align: 64)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !334, file: !163, line: 713, baseType: !675, size: 64, offset: 2496)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !334, file: !163, line: 714, baseType: !675, size: 64, offset: 2560)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !334, file: !163, line: 715, baseType: !93, size: 32, offset: 2624)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !334, file: !163, line: 716, baseType: !93, size: 32, offset: 2656)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !334, file: !163, line: 717, baseType: !93, size: 32, offset: 2688)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !334, file: !163, line: 719, baseType: !93, size: 32, offset: 2720)
!5154 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !163, line: 721, baseType: !5155, size: 64, offset: 2752)
!5155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !163, line: 721, size: 64, elements: !5156)
!5156 = !{!5157, !5158}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5155, file: !163, line: 722, baseType: !3281, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5155, file: !163, line: 723, baseType: !3939, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !334, file: !163, line: 725, baseType: !5160, size: 64, offset: 2816)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !163, line: 725, flags: DIFlagFwdDecl)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !334, file: !163, line: 726, baseType: !330, size: 1536, align: 64, offset: 2880)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !334, file: !163, line: 727, baseType: !141, size: 128, offset: 4416)
!5164 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !163, line: 728, baseType: !5165, size: 64, offset: 4544)
!5165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !163, line: 728, size: 64, elements: !5166)
!5166 = !{!5167, !5168, !5171, !5172}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5165, file: !163, line: 729, baseType: !2804, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5165, file: !163, line: 730, baseType: !5169, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !163, line: 730, flags: DIFlagFwdDecl)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5165, file: !163, line: 731, baseType: !474, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5165, file: !163, line: 732, baseType: !7, size: 32)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !334, file: !163, line: 735, baseType: !403, size: 32, offset: 4608)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !334, file: !163, line: 738, baseType: !403, size: 32, offset: 4640)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !334, file: !163, line: 739, baseType: !4857, size: 64, offset: 4672)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !334, file: !163, line: 750, baseType: !64, size: 64, offset: 4736)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !330, file: !163, line: 474, baseType: !2256, size: 128, offset: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !330, file: !163, line: 475, baseType: !813, size: 320, offset: 192)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !330, file: !163, line: 476, baseType: !1481, size: 32, offset: 512)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !330, file: !163, line: 477, baseType: !93, size: 32, offset: 544)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !330, file: !163, line: 482, baseType: !1177, size: 128, offset: 576)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !330, file: !163, line: 483, baseType: !83, size: 64, offset: 704)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !330, file: !163, line: 484, baseType: !83, size: 64, offset: 768)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !330, file: !163, line: 485, baseType: !5185, size: 64, offset: 832)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5187)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !163, line: 404, size: 1280, elements: !5188)
!5188 = !{!5189, !5193, !5197, !5201, !5205, !5221, !5225, !5229, !5233, !5237, !5241, !5245, !5246, !5250, !5254, !5258, !5263, !5267, !5319, !5320}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5187, file: !163, line: 405, baseType: !5190, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!66, !307, !3951}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5187, file: !163, line: 406, baseType: !5194, size: 64, offset: 64)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!66, !647, !3323}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5187, file: !163, line: 409, baseType: !5198, size: 64, offset: 128)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!66, !329, !3951}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5187, file: !163, line: 412, baseType: !5202, size: 64, offset: 192)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!872, !329, !3323}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5187, file: !163, line: 414, baseType: !5206, size: 64, offset: 256)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{null, !5209}
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !3320, line: 1276, size: 448, elements: !5211)
!5211 = !{!5212, !5213, !5214, !5216, !5217, !5218, !5219, !5220}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5210, file: !3320, line: 1277, baseType: !647, size: 64)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5210, file: !3320, line: 1278, baseType: !329, size: 64, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5210, file: !3320, line: 1279, baseType: !5215, size: 64, offset: 128)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5210, file: !3320, line: 1281, baseType: !83, size: 64, offset: 192)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5210, file: !3320, line: 1282, baseType: !7, size: 32, offset: 256)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5210, file: !3320, line: 1283, baseType: !7, size: 32, offset: 288)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5210, file: !3320, line: 1284, baseType: !872, size: 8, offset: 320)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5210, file: !3320, line: 1285, baseType: !83, size: 64, offset: 384)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5187, file: !163, line: 416, baseType: !5222, size: 64, offset: 320)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!66, !647, !329, !85, !7, !2913, !3490}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5187, file: !163, line: 419, baseType: !5226, size: 64, offset: 384)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!66, !647, !329, !85, !7, !7, !307, !64}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5187, file: !163, line: 424, baseType: !5230, size: 64, offset: 448)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!4234, !329, !4234}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5187, file: !163, line: 425, baseType: !5234, size: 64, offset: 512)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{null, !3323, !79, !79}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5187, file: !163, line: 426, baseType: !5238, size: 64, offset: 576)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!872, !3323, !1481}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5187, file: !163, line: 427, baseType: !5242, size: 64, offset: 640)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{null, !3323}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5187, file: !163, line: 428, baseType: !3299, size: 64, offset: 704)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5187, file: !163, line: 433, baseType: !5247, size: 64, offset: 768)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!66, !329, !3323, !3323, !238}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5187, file: !163, line: 435, baseType: !5251, size: 64, offset: 832)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{!66, !3323}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5187, file: !163, line: 436, baseType: !5255, size: 64, offset: 896)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!872, !3323, !79, !79}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5187, file: !163, line: 438, baseType: !5259, size: 64, offset: 960)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{null, !3323, !5262, !5262}
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5187, file: !163, line: 439, baseType: !5264, size: 64, offset: 1024)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!66, !329, !307}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5187, file: !163, line: 442, baseType: !5268, size: 64, offset: 1088)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!66, !5271, !647, !5318}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2640, line: 282, size: 2176, elements: !5273)
!5273 = !{!5274, !5275, !5276, !5277, !5278, !5279, !5280, !5282, !5289, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5272, file: !2640, line: 283, baseType: !2305, size: 128)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5272, file: !2640, line: 284, baseType: !83, size: 64, offset: 128)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5272, file: !2640, line: 285, baseType: !841, size: 16, offset: 192)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5272, file: !2640, line: 286, baseType: !1286, size: 320, offset: 256)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5272, file: !2640, line: 287, baseType: !3660, size: 8, offset: 576)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5272, file: !2640, line: 288, baseType: !7, size: 32, offset: 608)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5272, file: !2640, line: 289, baseType: !5281, size: 64, offset: 640)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5272, file: !2640, line: 290, baseType: !5283, size: 64, offset: 704)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2640, line: 250, size: 64, elements: !5285)
!5285 = !{!5286, !5287, !5288}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5284, file: !2640, line: 251, baseType: !103, size: 32)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5284, file: !2640, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5284, file: !2640, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5272, file: !2640, line: 291, baseType: !5290, size: 128, offset: 768)
!5290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2640, line: 274, size: 128, elements: !5291)
!5291 = !{!5292, !5293}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5290, file: !2640, line: 275, baseType: !5284, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5290, file: !2640, line: 276, baseType: !5284, size: 64, offset: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5272, file: !2640, line: 292, baseType: !7, size: 32, offset: 896)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5272, file: !2640, line: 293, baseType: !7, size: 32, offset: 928)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5272, file: !2640, line: 294, baseType: !7, size: 32, offset: 960)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5272, file: !2640, line: 295, baseType: !7, size: 32, offset: 992)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5272, file: !2640, line: 296, baseType: !7, size: 32, offset: 1024)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5272, file: !2640, line: 297, baseType: !7, size: 32, offset: 1056)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5272, file: !2640, line: 298, baseType: !3681, size: 64, offset: 1088)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5272, file: !2640, line: 299, baseType: !5302, size: 64, offset: 1152)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2640, line: 269, size: 96, elements: !5304)
!5304 = !{!5305, !5306}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5303, file: !2640, line: 270, baseType: !5284, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5303, file: !2640, line: 271, baseType: !7, size: 32, offset: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5272, file: !2640, line: 300, baseType: !1180, size: 64, offset: 1216)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5272, file: !2640, line: 301, baseType: !4229, size: 64, offset: 1280)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5272, file: !2640, line: 302, baseType: !647, size: 64, offset: 1344)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5272, file: !2640, line: 303, baseType: !7, size: 32, offset: 1408)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5272, file: !2640, line: 304, baseType: !1803, size: 256, offset: 1472)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5272, file: !2640, line: 305, baseType: !103, size: 32, offset: 1728)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5272, file: !2640, line: 318, baseType: !103, size: 32, offset: 1760)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5272, file: !2640, line: 322, baseType: !1692, size: 256, offset: 1792)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5272, file: !2640, line: 323, baseType: !5290, size: 128, offset: 2048)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5272, file: !2640, line: 324, baseType: !5317, offset: 2176)
!5317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1286, elements: !756)
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5187, file: !163, line: 444, baseType: !3482, size: 64, offset: 1152)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5187, file: !163, line: 445, baseType: !5321, size: 64, offset: 1216)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!66, !3302, !3407}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !163, line: 486, baseType: !83, size: 64, offset: 896)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !330, file: !163, line: 487, baseType: !813, size: 320, offset: 960)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !330, file: !163, line: 488, baseType: !3525, size: 32, offset: 1280)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !330, file: !163, line: 489, baseType: !103, size: 32, offset: 1312)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !330, file: !163, line: 490, baseType: !141, size: 128, offset: 1344)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !330, file: !163, line: 491, baseType: !64, size: 64, offset: 1472)
!5330 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !27, line: 107, baseType: !5331, size: 64, offset: 192)
!5331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !27, line: 107, size: 64, elements: !5332)
!5332 = !{!5333, !5334}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5331, file: !27, line: 108, baseType: !83, size: 64)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5331, file: !27, line: 109, baseType: !83, size: 64)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !315, file: !27, line: 117, baseType: !83, size: 64, offset: 256)
!5336 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !27, line: 119, baseType: !5337, size: 320)
!5337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !27, line: 119, size: 320, elements: !5338)
!5338 = !{!5339, !5340, !5343, !5344, !5345}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5337, file: !27, line: 124, baseType: !83, size: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5337, file: !27, line: 125, baseType: !5341, size: 64, offset: 64)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5337, file: !27, line: 126, baseType: !83, size: 64, offset: 128)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5337, file: !27, line: 127, baseType: !83, size: 64, offset: 192)
!5345 = !DIDerivedType(tag: DW_TAG_member, scope: !5337, file: !27, line: 128, baseType: !5346, size: 64, offset: 256)
!5346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5337, file: !27, line: 128, size: 64, elements: !5347)
!5347 = !{!5348, !5349}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5346, file: !27, line: 133, baseType: !83, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5346, file: !27, line: 138, baseType: !673, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !27, line: 141, baseType: !5351, size: 64)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !27, line: 141, size: 64, elements: !5352)
!5352 = !{!5353}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5351, file: !27, line: 142, baseType: !83, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !27, line: 144, baseType: !5355, size: 128)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !27, line: 144, size: 128, elements: !5356)
!5356 = !{!5357, !5408}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5355, file: !27, line: 146, baseType: !5358, size: 64)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !246, line: 126, size: 1216, elements: !5360)
!5360 = !{!5361, !5371, !5372, !5373, !5374, !5375, !5376, !5390, !5391, !5392}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5359, file: !246, line: 127, baseType: !5362, size: 384)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !246, line: 21, size: 384, elements: !5363)
!5363 = !{!5364, !5365, !5367, !5368, !5369, !5370}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5362, file: !246, line: 22, baseType: !83, size: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5362, file: !246, line: 23, baseType: !5366, size: 64, offset: 64)
!5366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5362, file: !246, line: 24, baseType: !5366, size: 64, offset: 128)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5362, file: !246, line: 25, baseType: !83, size: 64, offset: 192)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5362, file: !246, line: 26, baseType: !83, size: 64, offset: 256)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5362, file: !246, line: 27, baseType: !83, size: 64, offset: 320)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5359, file: !246, line: 128, baseType: !2305, size: 128, offset: 384)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5359, file: !246, line: 129, baseType: !1803, size: 256, offset: 512)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5359, file: !246, line: 130, baseType: !245, size: 32, offset: 768)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5359, file: !246, line: 131, baseType: !7, size: 32, offset: 800)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5359, file: !246, line: 132, baseType: !83, size: 64, offset: 832)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5359, file: !246, line: 133, baseType: !5377, size: 64, offset: 896)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5379)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !246, line: 77, size: 192, elements: !5380)
!5380 = !{!5381, !5385, !5386}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5379, file: !246, line: 83, baseType: !5382, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{null, !307}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5379, file: !246, line: 89, baseType: !1469, size: 64, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5379, file: !246, line: 100, baseType: !5387, size: 64, offset: 128)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!66, !5358, !83, !83, !66}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5359, file: !246, line: 134, baseType: !64, size: 64, offset: 960)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5359, file: !246, line: 135, baseType: !66, size: 32, offset: 1024)
!5392 = !DIDerivedType(tag: DW_TAG_member, scope: !5359, file: !246, line: 136, baseType: !5393, size: 128, offset: 1088)
!5393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5359, file: !246, line: 136, size: 128, elements: !5394)
!5394 = !{!5395, !5401}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5393, file: !246, line: 137, baseType: !5396, size: 128)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5397, line: 6, size: 128, elements: !5398)
!5397 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5398 = !{!5399, !5400}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5396, file: !5397, line: 7, baseType: !406, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5396, file: !5397, line: 8, baseType: !406, size: 64, offset: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, scope: !5393, file: !246, line: 138, baseType: !5402)
!5402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5393, file: !246, line: 138, elements: !5403)
!5403 = !{!5404, !5406}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5402, file: !246, line: 138, baseType: !5405)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5402, file: !246, line: 138, elements: !1315)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5402, file: !246, line: 138, baseType: !5407)
!5407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5396, elements: !756)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5355, file: !27, line: 147, baseType: !64, size: 64, offset: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !312, file: !27, line: 161, baseType: !660, size: 128, align: 64)
!5410 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !27, line: 164, baseType: !5411, size: 32, offset: 384)
!5411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !27, line: 164, size: 32, elements: !5412)
!5412 = !{!5413, !5414}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5411, file: !27, line: 169, baseType: !93, size: 32)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5411, file: !27, line: 177, baseType: !7, size: 32)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !308, file: !27, line: 181, baseType: !93, size: 32, offset: 416)
!5416 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !69, line: 42, baseType: !83)
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5366, size: 64)
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5419, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5420)
!5420 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5423)
!5423 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !66)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3324)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5430)
!5430 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5431)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_section_usage", file: !299, line: 1777, size: 192, elements: !5433)
!5433 = !{!5434, !5435, !5436}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5432, file: !299, line: 1778, baseType: !660, size: 128, align: 64)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "subsection_map", scope: !5432, file: !299, line: 1780, baseType: !1245, size: 64, offset: 128)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "pageblock_flags", scope: !5432, file: !299, line: 1783, baseType: !5437, offset: 192)
!5437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !2106)
!5438 = !{!0, !5439, !5444, !5446, !5464, !5469, !5473, !5476}
!5439 = !DIGlobalVariableExpression(var: !5440, expr: !DIExpression())
!5440 = distinct !DIGlobalVariable(scope: null, file: !3, line: 332, type: !5441, isLocal: true, isDefinition: true)
!5441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 88, elements: !5442)
!5442 = !{!5443}
!5443 = !DISubrange(count: 11)
!5444 = !DIGlobalVariableExpression(var: !5445, expr: !DIExpression())
!5445 = distinct !DIGlobalVariable(scope: null, file: !3, line: 333, type: !5441, isLocal: true, isDefinition: true)
!5446 = !DIGlobalVariableExpression(var: !5447, expr: !DIExpression())
!5447 = distinct !DIGlobalVariable(name: "kpagecount_proc_ops", scope: !2, file: !3, line: 93, type: !5448, isLocal: true, isDefinition: true)
!5448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5449)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !5450, line: 29, size: 768, elements: !5451)
!5450 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!5451 = !{!5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !5449, file: !5450, line: 30, baseType: !7, size: 32)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !5449, file: !5450, line: 31, baseType: !3444, size: 64, offset: 64)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !5449, file: !5450, line: 32, baseType: !3291, size: 64, offset: 128)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !5449, file: !5450, line: 33, baseType: !3299, size: 64, offset: 192)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !5449, file: !5450, line: 34, baseType: !3295, size: 64, offset: 256)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !5449, file: !5450, line: 36, baseType: !3287, size: 64, offset: 320)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !5449, file: !5450, line: 37, baseType: !3444, size: 64, offset: 384)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !5449, file: !5450, line: 38, baseType: !3430, size: 64, offset: 448)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !5449, file: !5450, line: 39, baseType: !3434, size: 64, offset: 512)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !5449, file: !5450, line: 41, baseType: !3434, size: 64, offset: 576)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !5449, file: !5450, line: 43, baseType: !3439, size: 64, offset: 640)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !5449, file: !5450, line: 44, baseType: !1319, size: 64, offset: 704)
!5464 = !DIGlobalVariableExpression(var: !5465, expr: !DIExpression())
!5465 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !5466, isLocal: true, isDefinition: true)
!5466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 120, elements: !5467)
!5467 = !{!5468}
!5468 = !DISubrange(count: 15)
!5469 = !DIGlobalVariableExpression(var: !5470, expr: !DIExpression())
!5470 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule89", scope: !5471, file: !5472, line: 901, type: !64, isLocal: true, isDefinition: true)
!5471 = distinct !DISubprogram(name: "rcu_read_unlock_sched", scope: !5472, file: !5472, line: 895, type: !2227, scopeLine: 896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5472 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5473 = !DIGlobalVariableExpression(var: !5474, expr: !DIExpression())
!5474 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched175", scope: !5475, file: !1008, line: 2104, type: !64, isLocal: true, isDefinition: true)
!5475 = distinct !DISubprogram(name: "_cond_resched", scope: !1008, file: !1008, line: 2102, type: !3701, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5476 = !DIGlobalVariableExpression(var: !5477, expr: !DIExpression())
!5477 = distinct !DIGlobalVariable(name: "kpageflags_proc_ops", scope: !2, file: !3, line: 268, type: !5448, isLocal: true, isDefinition: true)
!5478 = !{!"rsp"}
!5479 = !{i32 7, !"Dwarf Version", i32 5}
!5480 = !{i32 2, !"Debug Info Version", i32 3}
!5481 = !{i32 1, !"wchar_size", i32 2}
!5482 = !{i32 8, !"cf-protection-branch", i32 1}
!5483 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5484 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5485 = !{i32 1, !"Code Model", i32 2}
!5486 = !{i32 1, !"override-stack-alignment", i32 8}
!5487 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5488 = distinct !DISubprogram(name: "stable_page_flags", scope: !3, file: !3, line: 110, type: !5489, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5491)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!406, !307}
!5491 = !{!5492, !5493, !5494, !5495}
!5492 = !DILocalVariable(name: "page", arg: 1, scope: !5488, file: !3, line: 110, type: !307)
!5493 = !DILocalVariable(name: "k", scope: !5488, file: !3, line: 112, type: !406)
!5494 = !DILocalVariable(name: "u", scope: !5488, file: !3, line: 113, type: !406)
!5495 = !DILocalVariable(name: "head", scope: !5496, file: !3, line: 152, type: !307)
!5496 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 151, column: 36)
!5497 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 151, column: 11)
!5498 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 143, column: 6)
!5499 = !DILocation(line: 110, column: 36, scope: !5488)
!5500 = !DILocation(line: 112, column: 2, scope: !5488)
!5501 = !DILocation(line: 112, column: 6, scope: !5488)
!5502 = !DILocation(line: 113, column: 2, scope: !5488)
!5503 = !DILocation(line: 113, column: 6, scope: !5488)
!5504 = !DILocation(line: 119, column: 7, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 119, column: 6)
!5506 = !DILocation(line: 119, column: 6, scope: !5488)
!5507 = !DILocation(line: 120, column: 3, scope: !5505)
!5508 = !DILocation(line: 122, column: 6, scope: !5488)
!5509 = !DILocation(line: 122, column: 12, scope: !5488)
!5510 = !DILocation(line: 122, column: 4, scope: !5488)
!5511 = !DILocation(line: 123, column: 4, scope: !5488)
!5512 = !DILocation(line: 128, column: 18, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 128, column: 6)
!5514 = !DILocation(line: 128, column: 6, scope: !5513)
!5515 = !DILocation(line: 128, column: 6, scope: !5488)
!5516 = !DILocation(line: 129, column: 5, scope: !5513)
!5517 = !DILocation(line: 129, column: 3, scope: !5513)
!5518 = !DILocation(line: 130, column: 15, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 130, column: 6)
!5520 = !DILocation(line: 130, column: 6, scope: !5519)
!5521 = !DILocation(line: 130, column: 6, scope: !5488)
!5522 = !DILocation(line: 131, column: 5, scope: !5519)
!5523 = !DILocation(line: 131, column: 3, scope: !5519)
!5524 = !DILocation(line: 132, column: 14, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 132, column: 6)
!5526 = !DILocation(line: 132, column: 6, scope: !5525)
!5527 = !DILocation(line: 132, column: 6, scope: !5488)
!5528 = !DILocation(line: 133, column: 5, scope: !5525)
!5529 = !DILocation(line: 133, column: 3, scope: !5525)
!5530 = !DILocation(line: 139, column: 15, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 139, column: 6)
!5532 = !DILocation(line: 139, column: 6, scope: !5531)
!5533 = !DILocation(line: 139, column: 6, scope: !5488)
!5534 = !DILocation(line: 140, column: 5, scope: !5531)
!5535 = !DILocation(line: 140, column: 3, scope: !5531)
!5536 = !DILocation(line: 141, column: 15, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 141, column: 6)
!5538 = !DILocation(line: 141, column: 6, scope: !5537)
!5539 = !DILocation(line: 141, column: 6, scope: !5488)
!5540 = !DILocation(line: 142, column: 5, scope: !5537)
!5541 = !DILocation(line: 142, column: 3, scope: !5537)
!5542 = !DILocation(line: 143, column: 15, scope: !5498)
!5543 = !DILocation(line: 143, column: 6, scope: !5498)
!5544 = !DILocation(line: 143, column: 6, scope: !5488)
!5545 = !DILocation(line: 144, column: 5, scope: !5498)
!5546 = !DILocation(line: 144, column: 3, scope: !5498)
!5547 = !DILocation(line: 151, column: 29, scope: !5497)
!5548 = !DILocation(line: 151, column: 11, scope: !5497)
!5549 = !DILocation(line: 151, column: 11, scope: !5498)
!5550 = !DILocation(line: 152, column: 3, scope: !5496)
!5551 = !DILocation(line: 152, column: 16, scope: !5496)
!5552 = !DILocation(line: 152, column: 23, scope: !5496)
!5553 = !DILocation(line: 154, column: 15, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 154, column: 7)
!5555 = !DILocation(line: 154, column: 7, scope: !5554)
!5556 = !DILocation(line: 154, column: 21, scope: !5554)
!5557 = !DILocation(line: 154, column: 33, scope: !5554)
!5558 = !DILocation(line: 154, column: 24, scope: !5554)
!5559 = !DILocation(line: 154, column: 7, scope: !5496)
!5560 = !DILocation(line: 155, column: 6, scope: !5554)
!5561 = !DILocation(line: 155, column: 4, scope: !5554)
!5562 = !DILocation(line: 156, column: 30, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 156, column: 12)
!5564 = !DILocation(line: 156, column: 12, scope: !5563)
!5565 = !DILocation(line: 156, column: 12, scope: !5554)
!5566 = !DILocation(line: 157, column: 6, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 156, column: 37)
!5568 = !DILocation(line: 158, column: 6, scope: !5567)
!5569 = !DILocation(line: 159, column: 3, scope: !5567)
!5570 = !DILocation(line: 160, column: 2, scope: !5497)
!5571 = !DILocation(line: 160, column: 2, scope: !5496)
!5572 = !DILocation(line: 160, column: 25, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 160, column: 13)
!5574 = !DILocation(line: 160, column: 13, scope: !5573)
!5575 = !DILocation(line: 160, column: 13, scope: !5497)
!5576 = !DILocation(line: 161, column: 5, scope: !5573)
!5577 = !DILocation(line: 161, column: 3, scope: !5573)
!5578 = !DILocation(line: 168, column: 16, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 168, column: 6)
!5580 = !DILocation(line: 168, column: 6, scope: !5579)
!5581 = !DILocation(line: 168, column: 6, scope: !5488)
!5582 = !DILocation(line: 169, column: 5, scope: !5579)
!5583 = !DILocation(line: 169, column: 3, scope: !5579)
!5584 = !DILocation(line: 170, column: 22, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 170, column: 11)
!5586 = !DILocation(line: 170, column: 11, scope: !5585)
!5587 = !DILocation(line: 170, column: 28, scope: !5585)
!5588 = !DILocation(line: 170, column: 33, scope: !5585)
!5589 = !DILocation(line: 170, column: 55, scope: !5585)
!5590 = !DILocation(line: 170, column: 36, scope: !5585)
!5591 = !DILocation(line: 170, column: 11, scope: !5579)
!5592 = !DILocation(line: 171, column: 5, scope: !5585)
!5593 = !DILocation(line: 171, column: 3, scope: !5585)
!5594 = !DILocation(line: 173, column: 18, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 173, column: 6)
!5596 = !DILocation(line: 173, column: 6, scope: !5595)
!5597 = !DILocation(line: 173, column: 6, scope: !5488)
!5598 = !DILocation(line: 174, column: 5, scope: !5595)
!5599 = !DILocation(line: 174, column: 3, scope: !5595)
!5600 = !DILocation(line: 175, column: 16, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 175, column: 6)
!5602 = !DILocation(line: 175, column: 6, scope: !5601)
!5603 = !DILocation(line: 175, column: 6, scope: !5488)
!5604 = !DILocation(line: 176, column: 5, scope: !5601)
!5605 = !DILocation(line: 176, column: 3, scope: !5601)
!5606 = !DILocation(line: 178, column: 19, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 178, column: 6)
!5608 = !DILocation(line: 178, column: 6, scope: !5607)
!5609 = !DILocation(line: 178, column: 6, scope: !5488)
!5610 = !DILocation(line: 179, column: 5, scope: !5607)
!5611 = !DILocation(line: 179, column: 3, scope: !5607)
!5612 = !DILocation(line: 181, column: 20, scope: !5488)
!5613 = !DILocation(line: 181, column: 7, scope: !5488)
!5614 = !DILocation(line: 181, column: 4, scope: !5488)
!5615 = !DILocation(line: 183, column: 20, scope: !5488)
!5616 = !DILocation(line: 183, column: 7, scope: !5488)
!5617 = !DILocation(line: 183, column: 4, scope: !5488)
!5618 = !DILocation(line: 184, column: 15, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 184, column: 6)
!5620 = !DILocation(line: 184, column: 6, scope: !5619)
!5621 = !DILocation(line: 184, column: 21, scope: !5619)
!5622 = !DILocation(line: 184, column: 33, scope: !5619)
!5623 = !DILocation(line: 184, column: 24, scope: !5619)
!5624 = !DILocation(line: 184, column: 6, scope: !5488)
!5625 = !DILocation(line: 185, column: 5, scope: !5619)
!5626 = !DILocation(line: 185, column: 3, scope: !5619)
!5627 = !DILocation(line: 187, column: 20, scope: !5488)
!5628 = !DILocation(line: 187, column: 7, scope: !5488)
!5629 = !DILocation(line: 187, column: 4, scope: !5488)
!5630 = !DILocation(line: 188, column: 20, scope: !5488)
!5631 = !DILocation(line: 188, column: 7, scope: !5488)
!5632 = !DILocation(line: 188, column: 4, scope: !5488)
!5633 = !DILocation(line: 189, column: 20, scope: !5488)
!5634 = !DILocation(line: 189, column: 7, scope: !5488)
!5635 = !DILocation(line: 189, column: 4, scope: !5488)
!5636 = !DILocation(line: 190, column: 20, scope: !5488)
!5637 = !DILocation(line: 190, column: 7, scope: !5488)
!5638 = !DILocation(line: 190, column: 4, scope: !5488)
!5639 = !DILocation(line: 192, column: 20, scope: !5488)
!5640 = !DILocation(line: 192, column: 7, scope: !5488)
!5641 = !DILocation(line: 192, column: 4, scope: !5488)
!5642 = !DILocation(line: 193, column: 20, scope: !5488)
!5643 = !DILocation(line: 193, column: 7, scope: !5488)
!5644 = !DILocation(line: 193, column: 4, scope: !5488)
!5645 = !DILocation(line: 194, column: 20, scope: !5488)
!5646 = !DILocation(line: 194, column: 7, scope: !5488)
!5647 = !DILocation(line: 194, column: 4, scope: !5488)
!5648 = !DILocation(line: 195, column: 20, scope: !5488)
!5649 = !DILocation(line: 195, column: 7, scope: !5488)
!5650 = !DILocation(line: 195, column: 4, scope: !5488)
!5651 = !DILocation(line: 197, column: 20, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 197, column: 6)
!5653 = !DILocation(line: 197, column: 6, scope: !5652)
!5654 = !DILocation(line: 197, column: 6, scope: !5488)
!5655 = !DILocation(line: 198, column: 5, scope: !5652)
!5656 = !DILocation(line: 198, column: 3, scope: !5652)
!5657 = !DILocation(line: 199, column: 20, scope: !5488)
!5658 = !DILocation(line: 199, column: 7, scope: !5488)
!5659 = !DILocation(line: 199, column: 4, scope: !5488)
!5660 = !DILocation(line: 201, column: 20, scope: !5488)
!5661 = !DILocation(line: 201, column: 7, scope: !5488)
!5662 = !DILocation(line: 201, column: 4, scope: !5488)
!5663 = !DILocation(line: 202, column: 20, scope: !5488)
!5664 = !DILocation(line: 202, column: 7, scope: !5488)
!5665 = !DILocation(line: 202, column: 4, scope: !5488)
!5666 = !DILocation(line: 209, column: 20, scope: !5488)
!5667 = !DILocation(line: 209, column: 7, scope: !5488)
!5668 = !DILocation(line: 209, column: 4, scope: !5488)
!5669 = !DILocation(line: 212, column: 20, scope: !5488)
!5670 = !DILocation(line: 212, column: 7, scope: !5488)
!5671 = !DILocation(line: 212, column: 4, scope: !5488)
!5672 = !DILocation(line: 213, column: 20, scope: !5488)
!5673 = !DILocation(line: 213, column: 7, scope: !5488)
!5674 = !DILocation(line: 213, column: 4, scope: !5488)
!5675 = !DILocation(line: 214, column: 20, scope: !5488)
!5676 = !DILocation(line: 214, column: 7, scope: !5488)
!5677 = !DILocation(line: 214, column: 4, scope: !5488)
!5678 = !DILocation(line: 215, column: 20, scope: !5488)
!5679 = !DILocation(line: 215, column: 7, scope: !5488)
!5680 = !DILocation(line: 215, column: 4, scope: !5488)
!5681 = !DILocation(line: 216, column: 20, scope: !5488)
!5682 = !DILocation(line: 216, column: 7, scope: !5488)
!5683 = !DILocation(line: 216, column: 4, scope: !5488)
!5684 = !DILocation(line: 217, column: 20, scope: !5488)
!5685 = !DILocation(line: 217, column: 7, scope: !5488)
!5686 = !DILocation(line: 217, column: 4, scope: !5488)
!5687 = !DILocation(line: 223, column: 9, scope: !5488)
!5688 = !DILocation(line: 223, column: 2, scope: !5488)
!5689 = !DILocation(line: 224, column: 1, scope: !5488)
!5690 = distinct !DISubprogram(name: "page_mapped", scope: !1449, file: !1449, line: 1262, type: !5691, scopeLine: 1263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5693)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!872, !307}
!5693 = !{!5694}
!5694 = !DILocalVariable(name: "page", arg: 1, scope: !5690, file: !1449, line: 1262, type: !307)
!5695 = !DILocation(line: 1262, column: 45, scope: !5690)
!5696 = !DILocation(line: 1264, column: 6, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5690, file: !1449, line: 1264, column: 6)
!5698 = !DILocation(line: 1264, column: 6, scope: !5690)
!5699 = !DILocation(line: 1265, column: 23, scope: !5697)
!5700 = !DILocation(line: 1265, column: 29, scope: !5697)
!5701 = !DILocation(line: 1265, column: 10, scope: !5697)
!5702 = !DILocation(line: 1265, column: 40, scope: !5697)
!5703 = !DILocation(line: 1265, column: 3, scope: !5697)
!5704 = !DILocation(line: 1266, column: 31, scope: !5690)
!5705 = !DILocation(line: 1266, column: 9, scope: !5690)
!5706 = !DILocation(line: 1266, column: 2, scope: !5690)
!5707 = !DILocation(line: 1267, column: 1, scope: !5690)
!5708 = distinct !DISubprogram(name: "PageAnon", scope: !254, file: !254, line: 675, type: !5691, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5709)
!5709 = !{!5710}
!5710 = !DILocalVariable(name: "page", arg: 1, scope: !5708, file: !254, line: 675, type: !307)
!5711 = !DILocation(line: 675, column: 51, scope: !5708)
!5712 = !DILocation(line: 677, column: 25, scope: !5708)
!5713 = !DILocation(line: 677, column: 9, scope: !5708)
!5714 = !DILocation(line: 677, column: 2, scope: !5708)
!5715 = distinct !DISubprogram(name: "PageKsm", scope: !254, file: !254, line: 710, type: !5716, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5718)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!66, !5424}
!5718 = !{!5719}
!5719 = !DILocalVariable(name: "page", arg: 1, scope: !5715, file: !254, line: 710, type: !5424)
!5720 = !DILocation(line: 710, column: 1, scope: !5715)
!5721 = distinct !DISubprogram(name: "PageHead", scope: !254, file: !254, line: 794, type: !5722, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5724)
!5722 = !DISubroutineType(types: !5723)
!5723 = !{!66, !307}
!5724 = !{!5725}
!5725 = !DILocalVariable(name: "page", arg: 1, scope: !5721, file: !254, line: 794, type: !307)
!5726 = !DILocation(line: 794, column: 50, scope: !5721)
!5727 = !DILocation(line: 796, column: 2, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5721, file: !254, line: 796, column: 2)
!5729 = !DILocation(line: 797, column: 9, scope: !5721)
!5730 = !DILocation(line: 797, column: 41, scope: !5721)
!5731 = !DILocation(line: 797, column: 63, scope: !5721)
!5732 = !DILocation(line: 797, column: 45, scope: !5721)
!5733 = !DILocation(line: 797, column: 44, scope: !5721)
!5734 = !DILocation(line: 0, scope: !5721)
!5735 = !DILocation(line: 797, column: 2, scope: !5721)
!5736 = distinct !DISubprogram(name: "PageTail", scope: !254, file: !254, line: 283, type: !5722, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5737)
!5737 = !{!5738}
!5738 = !DILocalVariable(name: "page", arg: 1, scope: !5736, file: !254, line: 283, type: !307)
!5739 = !DILocation(line: 283, column: 50, scope: !5736)
!5740 = !DILocation(line: 285, column: 9, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5736, file: !254, line: 285, column: 9)
!5742 = !DILocation(line: 285, column: 9, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5741, file: !254, line: 285, column: 9)
!5744 = !DILocation(line: 285, column: 40, scope: !5736)
!5745 = !DILocation(line: 285, column: 44, scope: !5736)
!5746 = !DILocation(line: 285, column: 65, scope: !5736)
!5747 = !DILocation(line: 285, column: 47, scope: !5736)
!5748 = !DILocation(line: 285, column: 2, scope: !5736)
!5749 = distinct !DISubprogram(name: "PageHuge", scope: !254, file: !254, line: 1018, type: !5750, scopeLine: 1019, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5752)
!5750 = !DISubroutineType(types: !5751)
!5751 = !{!872, !5424}
!5752 = !{!5753}
!5753 = !DILocalVariable(name: "page", arg: 1, scope: !5749, file: !254, line: 1018, type: !5424)
!5754 = !DILocation(line: 1018, column: 48, scope: !5749)
!5755 = !DILocation(line: 1020, column: 28, scope: !5749)
!5756 = !DILocation(line: 1020, column: 9, scope: !5749)
!5757 = !DILocation(line: 1020, column: 2, scope: !5749)
!5758 = distinct !DISubprogram(name: "PageTransCompound", scope: !254, file: !254, line: 874, type: !5716, scopeLine: 874, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5759)
!5759 = !{!5760}
!5760 = !DILocalVariable(name: "page", arg: 1, scope: !5758, file: !254, line: 874, type: !5424)
!5761 = !DILocation(line: 874, column: 1, scope: !5758)
!5762 = distinct !DISubprogram(name: "_compound_head", scope: !254, file: !254, line: 244, type: !5763, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5765)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!83, !5424}
!5765 = !{!5766, !5767}
!5766 = !DILocalVariable(name: "page", arg: 1, scope: !5762, file: !254, line: 244, type: !5424)
!5767 = !DILocalVariable(name: "head", scope: !5762, file: !254, line: 246, type: !83)
!5768 = !DILocation(line: 244, column: 63, scope: !5762)
!5769 = !DILocation(line: 246, column: 2, scope: !5762)
!5770 = !DILocation(line: 246, column: 16, scope: !5762)
!5771 = !DILocation(line: 246, column: 23, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5762, file: !254, line: 246, column: 23)
!5773 = !DILocation(line: 246, column: 23, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5772, file: !254, line: 246, column: 23)
!5775 = !DILocation(line: 248, column: 6, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5762, file: !254, line: 248, column: 6)
!5777 = !DILocation(line: 248, column: 6, scope: !5762)
!5778 = !DILocation(line: 249, column: 10, scope: !5776)
!5779 = !DILocation(line: 249, column: 15, scope: !5776)
!5780 = !DILocation(line: 249, column: 3, scope: !5776)
!5781 = !DILocation(line: 250, column: 45, scope: !5762)
!5782 = !DILocation(line: 250, column: 24, scope: !5762)
!5783 = !DILocation(line: 250, column: 9, scope: !5762)
!5784 = !DILocation(line: 250, column: 2, scope: !5762)
!5785 = !DILocation(line: 251, column: 1, scope: !5762)
!5786 = distinct !DISubprogram(name: "PageLRU", scope: !254, file: !254, line: 495, type: !5722, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5787)
!5787 = !{!5788}
!5788 = !DILocalVariable(name: "page", arg: 1, scope: !5786, file: !254, line: 495, type: !307)
!5789 = !DILocation(line: 495, column: 1, scope: !5786)
!5790 = !DILocation(line: 495, column: 1, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5786, file: !254, line: 495, column: 1)
!5792 = distinct !DISubprogram(name: "is_huge_zero_page", scope: !5793, file: !5793, line: 372, type: !5691, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5794)
!5793 = !DIFile(filename: "./include/linux/huge_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b6833a58b709ea55ac9e4c63c9931c7")
!5794 = !{!5795}
!5795 = !DILocalVariable(name: "page", arg: 1, scope: !5792, file: !5793, line: 372, type: !307)
!5796 = !DILocation(line: 372, column: 51, scope: !5792)
!5797 = !DILocation(line: 374, column: 2, scope: !5792)
!5798 = distinct !DISubprogram(name: "is_zero_pfn", scope: !5799, file: !5799, line: 1339, type: !5800, scopeLine: 1340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5802)
!5799 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!5800 = !DISubroutineType(types: !5801)
!5801 = !{!66, !83}
!5802 = !{!5803}
!5803 = !DILocalVariable(name: "pfn", arg: 1, scope: !5798, file: !5799, line: 1339, type: !83)
!5804 = !DILocation(line: 1339, column: 45, scope: !5798)
!5805 = !DILocation(line: 1342, column: 9, scope: !5798)
!5806 = !DILocation(line: 1342, column: 16, scope: !5798)
!5807 = !DILocation(line: 1342, column: 13, scope: !5798)
!5808 = !DILocation(line: 1342, column: 2, scope: !5798)
!5809 = distinct !DISubprogram(name: "PageBuddy", scope: !254, file: !254, line: 963, type: !5716, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5810)
!5810 = !{!5811}
!5811 = !DILocalVariable(name: "page", arg: 1, scope: !5809, file: !254, line: 963, type: !5424)
!5812 = !DILocation(line: 963, column: 1, scope: !5809)
!5813 = distinct !DISubprogram(name: "page_count", scope: !5814, file: !5814, line: 92, type: !5716, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5815)
!5814 = !DIFile(filename: "./include/linux/page_ref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed1500ef964c39be8e0b4c715e2a9d4")
!5815 = !{!5816}
!5816 = !DILocalVariable(name: "page", arg: 1, scope: !5813, file: !5814, line: 92, type: !5424)
!5817 = !DILocation(line: 92, column: 49, scope: !5813)
!5818 = !DILocation(line: 94, column: 25, scope: !5813)
!5819 = !DILocation(line: 94, column: 9, scope: !5813)
!5820 = !DILocation(line: 94, column: 2, scope: !5813)
!5821 = !DISubprogram(name: "is_free_buddy_page", scope: !254, file: !254, line: 1035, type: !5691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5822 = distinct !DISubprogram(name: "PageOffline", scope: !254, file: !254, line: 987, type: !5716, scopeLine: 987, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5823)
!5823 = !{!5824}
!5824 = !DILocalVariable(name: "page", arg: 1, scope: !5822, file: !254, line: 987, type: !5424)
!5825 = !DILocation(line: 987, column: 1, scope: !5822)
!5826 = distinct !DISubprogram(name: "PageTable", scope: !254, file: !254, line: 997, type: !5716, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5827)
!5827 = !{!5828}
!5828 = !DILocalVariable(name: "page", arg: 1, scope: !5826, file: !254, line: 997, type: !5424)
!5829 = !DILocation(line: 997, column: 1, scope: !5826)
!5830 = distinct !DISubprogram(name: "page_is_idle", scope: !5831, file: !5831, line: 138, type: !5691, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5832)
!5831 = !DIFile(filename: "./include/linux/page_idle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3112478e2f3f7cf781632890072390e3")
!5832 = !{!5833}
!5833 = !DILocalVariable(name: "page", arg: 1, scope: !5830, file: !5831, line: 138, type: !307)
!5834 = !DILocation(line: 138, column: 46, scope: !5830)
!5835 = !DILocation(line: 140, column: 25, scope: !5830)
!5836 = !DILocation(line: 140, column: 9, scope: !5830)
!5837 = !DILocation(line: 140, column: 2, scope: !5830)
!5838 = distinct !DISubprogram(name: "kpf_copy_bit", scope: !3, file: !3, line: 105, type: !5839, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5841)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!406, !406, !66, !66}
!5841 = !{!5842, !5843, !5844}
!5842 = !DILocalVariable(name: "kflags", arg: 1, scope: !5838, file: !3, line: 105, type: !406)
!5843 = !DILocalVariable(name: "ubit", arg: 2, scope: !5838, file: !3, line: 105, type: !66)
!5844 = !DILocalVariable(name: "kbit", arg: 3, scope: !5838, file: !3, line: 105, type: !66)
!5845 = !DILocation(line: 105, column: 36, scope: !5838)
!5846 = !DILocation(line: 105, column: 48, scope: !5838)
!5847 = !DILocation(line: 105, column: 58, scope: !5838)
!5848 = !DILocation(line: 107, column: 11, scope: !5838)
!5849 = !DILocation(line: 107, column: 21, scope: !5838)
!5850 = !DILocation(line: 107, column: 18, scope: !5838)
!5851 = !DILocation(line: 107, column: 27, scope: !5838)
!5852 = !DILocation(line: 107, column: 35, scope: !5838)
!5853 = !DILocation(line: 107, column: 32, scope: !5838)
!5854 = !DILocation(line: 107, column: 2, scope: !5838)
!5855 = distinct !DISubprogram(name: "PageSlab", scope: !254, file: !254, line: 501, type: !5722, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5856)
!5856 = !{!5857}
!5857 = !DILocalVariable(name: "page", arg: 1, scope: !5855, file: !254, line: 501, type: !307)
!5858 = !DILocation(line: 501, column: 1, scope: !5855)
!5859 = !DILocation(line: 501, column: 1, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5861, file: !254, line: 501, column: 1)
!5861 = distinct !DILexicalBlock(scope: !5855, file: !254, line: 501, column: 1)
!5862 = !DILocation(line: 501, column: 1, scope: !5861)
!5863 = distinct !DISubprogram(name: "PageSwapCache", scope: !254, file: !254, line: 561, type: !5691, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5864)
!5864 = !{!5865}
!5865 = !DILocalVariable(name: "page", arg: 1, scope: !5863, file: !254, line: 561, type: !307)
!5866 = !DILocation(line: 561, column: 56, scope: !5863)
!5867 = !DILocation(line: 563, column: 30, scope: !5863)
!5868 = !DILocation(line: 563, column: 9, scope: !5863)
!5869 = !DILocation(line: 563, column: 2, scope: !5863)
!5870 = distinct !DISubprogram(name: "__initstub__kmod_proc__340_339_proc_page_init5", scope: !3, file: !3, line: 339, type: !3701, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5871 = !DILocation(line: 339, column: 1, scope: !5870)
!5872 = distinct !DISubprogram(name: "proc_page_init", scope: !3, file: !3, line: 330, type: !3701, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5873 = !DILocation(line: 332, column: 2, scope: !5872)
!5874 = !DILocation(line: 333, column: 2, scope: !5872)
!5875 = !DILocation(line: 337, column: 2, scope: !5872)
!5876 = distinct !DISubprogram(name: "PageCompound", scope: !254, file: !254, line: 288, type: !5722, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5877)
!5877 = !{!5878}
!5878 = !DILocalVariable(name: "page", arg: 1, scope: !5876, file: !254, line: 288, type: !307)
!5879 = !DILocation(line: 288, column: 54, scope: !5876)
!5880 = !DILocation(line: 290, column: 9, scope: !5876)
!5881 = !DILocation(line: 290, column: 41, scope: !5876)
!5882 = !DILocation(line: 291, column: 9, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5876, file: !254, line: 291, column: 9)
!5884 = !DILocation(line: 291, column: 9, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5883, file: !254, line: 291, column: 9)
!5886 = !DILocation(line: 291, column: 40, scope: !5876)
!5887 = !DILocation(line: 290, column: 2, scope: !5876)
!5888 = distinct !DISubprogram(name: "atomic_read", scope: !5889, file: !5889, line: 30, type: !5890, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5894)
!5889 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!66, !5892}
!5892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!5893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!5894 = !{!5895}
!5895 = !DILocalVariable(name: "v", arg: 1, scope: !5888, file: !5889, line: 30, type: !5892)
!5896 = !DILocation(line: 30, column: 29, scope: !5888)
!5897 = !DILocation(line: 32, column: 25, scope: !5888)
!5898 = !DILocation(line: 32, column: 2, scope: !5888)
!5899 = !DILocation(line: 33, column: 25, scope: !5888)
!5900 = !DILocation(line: 33, column: 9, scope: !5888)
!5901 = !DILocation(line: 33, column: 2, scope: !5888)
!5902 = distinct !DISubprogram(name: "folio_large_is_mapped", scope: !1449, file: !1449, line: 1234, type: !5903, scopeLine: 1235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5905)
!5903 = !DISubroutineType(types: !5904)
!5904 = !{!872, !3323}
!5905 = !{!5906}
!5906 = !DILocalVariable(name: "folio", arg: 1, scope: !5902, file: !1449, line: 1234, type: !3323)
!5907 = !DILocation(line: 1234, column: 56, scope: !5902)
!5908 = !DILocation(line: 1240, column: 22, scope: !5902)
!5909 = !DILocation(line: 1240, column: 29, scope: !5902)
!5910 = !DILocation(line: 1240, column: 9, scope: !5902)
!5911 = !DILocation(line: 1240, column: 47, scope: !5902)
!5912 = !DILocation(line: 1240, column: 51, scope: !5902)
!5913 = !DILocation(line: 1241, column: 16, scope: !5902)
!5914 = !DILocation(line: 1241, column: 23, scope: !5902)
!5915 = !DILocation(line: 1241, column: 3, scope: !5902)
!5916 = !DILocation(line: 1241, column: 41, scope: !5902)
!5917 = !DILocation(line: 1240, column: 2, scope: !5902)
!5918 = distinct !DISubprogram(name: "const_test_bit", scope: !5919, file: !5919, line: 166, type: !5920, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5922)
!5919 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!872, !83, !5418}
!5922 = !{!5923, !5924, !5925, !5926, !5927}
!5923 = !DILocalVariable(name: "nr", arg: 1, scope: !5918, file: !5919, line: 166, type: !83)
!5924 = !DILocalVariable(name: "addr", arg: 2, scope: !5918, file: !5919, line: 166, type: !5418)
!5925 = !DILocalVariable(name: "p", scope: !5918, file: !5919, line: 168, type: !5417)
!5926 = !DILocalVariable(name: "mask", scope: !5918, file: !5919, line: 169, type: !83)
!5927 = !DILocalVariable(name: "val", scope: !5918, file: !5919, line: 170, type: !83)
!5928 = !DILocation(line: 166, column: 30, scope: !5918)
!5929 = !DILocation(line: 166, column: 64, scope: !5918)
!5930 = !DILocation(line: 168, column: 2, scope: !5918)
!5931 = !DILocation(line: 168, column: 23, scope: !5918)
!5932 = !DILocation(line: 168, column: 50, scope: !5918)
!5933 = !DILocation(line: 168, column: 57, scope: !5918)
!5934 = !DILocation(line: 168, column: 55, scope: !5918)
!5935 = !DILocation(line: 169, column: 2, scope: !5918)
!5936 = !DILocation(line: 169, column: 16, scope: !5918)
!5937 = !DILocation(line: 169, column: 23, scope: !5918)
!5938 = !DILocation(line: 170, column: 2, scope: !5918)
!5939 = !DILocation(line: 170, column: 16, scope: !5918)
!5940 = !DILocation(line: 170, column: 23, scope: !5918)
!5941 = !DILocation(line: 170, column: 22, scope: !5918)
!5942 = !DILocation(line: 172, column: 12, scope: !5918)
!5943 = !DILocation(line: 172, column: 18, scope: !5918)
!5944 = !DILocation(line: 172, column: 16, scope: !5918)
!5945 = !DILocation(line: 172, column: 10, scope: !5918)
!5946 = !DILocation(line: 172, column: 9, scope: !5918)
!5947 = !DILocation(line: 173, column: 1, scope: !5918)
!5948 = !DILocation(line: 172, column: 2, scope: !5918)
!5949 = distinct !DISubprogram(name: "_test_bit", scope: !5950, file: !5950, line: 139, type: !5920, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5951)
!5950 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5951 = !{!5952, !5953}
!5952 = !DILocalVariable(name: "nr", arg: 1, scope: !5949, file: !5950, line: 139, type: !83)
!5953 = !DILocalVariable(name: "addr", arg: 2, scope: !5949, file: !5950, line: 139, type: !5418)
!5954 = !DILocation(line: 139, column: 25, scope: !5949)
!5955 = !DILocation(line: 139, column: 59, scope: !5949)
!5956 = !DILocation(line: 141, column: 25, scope: !5949)
!5957 = !DILocation(line: 141, column: 32, scope: !5949)
!5958 = !DILocation(line: 141, column: 30, scope: !5949)
!5959 = !DILocation(line: 141, column: 2, scope: !5949)
!5960 = !DILocation(line: 142, column: 23, scope: !5949)
!5961 = !DILocation(line: 142, column: 27, scope: !5949)
!5962 = !DILocation(line: 142, column: 9, scope: !5949)
!5963 = !DILocation(line: 142, column: 2, scope: !5949)
!5964 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5965, file: !5965, line: 66, type: !5966, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5971)
!5965 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5966 = !DISubroutineType(types: !5967)
!5967 = !{null, !5968, !79}
!5968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5969, size: 64)
!5969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5970)
!5970 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5971 = !{!5972, !5973}
!5972 = !DILocalVariable(name: "v", arg: 1, scope: !5964, file: !5965, line: 66, type: !5968)
!5973 = !DILocalVariable(name: "size", arg: 2, scope: !5964, file: !5965, line: 66, type: !79)
!5974 = !DILocation(line: 66, column: 73, scope: !5964)
!5975 = !DILocation(line: 66, column: 83, scope: !5964)
!5976 = !DILocation(line: 68, column: 19, scope: !5964)
!5977 = !DILocation(line: 68, column: 22, scope: !5964)
!5978 = !DILocation(line: 68, column: 2, scope: !5964)
!5979 = !DILocation(line: 69, column: 2, scope: !5964)
!5980 = !DILocation(line: 70, column: 1, scope: !5964)
!5981 = distinct !DISubprogram(name: "arch_test_bit", scope: !5982, file: !5982, line: 237, type: !5920, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5983)
!5982 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5983 = !{!5984, !5985}
!5984 = !DILocalVariable(name: "nr", arg: 1, scope: !5981, file: !5982, line: 237, type: !83)
!5985 = !DILocalVariable(name: "addr", arg: 2, scope: !5981, file: !5982, line: 237, type: !5418)
!5986 = !DILocation(line: 237, column: 29, scope: !5981)
!5987 = !DILocation(line: 237, column: 63, scope: !5981)
!5988 = !DILocation(line: 239, column: 30, scope: !5981)
!5989 = !DILocation(line: 239, column: 9, scope: !5981)
!5990 = !DILocation(line: 239, column: 54, scope: !5981)
!5991 = !DILocation(line: 239, column: 58, scope: !5981)
!5992 = !DILocation(line: 239, column: 36, scope: !5981)
!5993 = !DILocation(line: 240, column: 26, scope: !5981)
!5994 = !DILocation(line: 240, column: 30, scope: !5981)
!5995 = !DILocation(line: 240, column: 8, scope: !5981)
!5996 = !DILocation(line: 239, column: 2, scope: !5981)
!5997 = distinct !DISubprogram(name: "kasan_check_read", scope: !5998, file: !5998, line: 40, type: !5999, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6001)
!5998 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5999 = !DISubroutineType(types: !6000)
!6000 = !{!872, !5968, !7}
!6001 = !{!6002, !6003}
!6002 = !DILocalVariable(name: "p", arg: 1, scope: !5997, file: !5998, line: 40, type: !5968)
!6003 = !DILocalVariable(name: "size", arg: 2, scope: !5997, file: !5998, line: 40, type: !7)
!6004 = !DILocation(line: 40, column: 58, scope: !5997)
!6005 = !DILocation(line: 40, column: 74, scope: !5997)
!6006 = !DILocation(line: 42, column: 2, scope: !5997)
!6007 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6008, file: !6008, line: 229, type: !6009, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6011)
!6008 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6009 = !DISubroutineType(types: !6010)
!6010 = !{null, !5968, !79, !66}
!6011 = !{!6012, !6013, !6014}
!6012 = !DILocalVariable(name: "ptr", arg: 1, scope: !6007, file: !6008, line: 229, type: !5968)
!6013 = !DILocalVariable(name: "size", arg: 2, scope: !6007, file: !6008, line: 229, type: !79)
!6014 = !DILocalVariable(name: "type", arg: 3, scope: !6007, file: !6008, line: 230, type: !66)
!6015 = !DILocation(line: 229, column: 60, scope: !6007)
!6016 = !DILocation(line: 229, column: 72, scope: !6007)
!6017 = !DILocation(line: 230, column: 15, scope: !6007)
!6018 = !DILocation(line: 230, column: 23, scope: !6007)
!6019 = distinct !DISubprogram(name: "constant_test_bit", scope: !5982, file: !5982, line: 204, type: !6020, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6022)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{!872, !608, !5418}
!6022 = !{!6023, !6024}
!6023 = !DILocalVariable(name: "nr", arg: 1, scope: !6019, file: !5982, line: 204, type: !608)
!6024 = !DILocalVariable(name: "addr", arg: 2, scope: !6019, file: !5982, line: 204, type: !5418)
!6025 = !DILocation(line: 204, column: 52, scope: !6019)
!6026 = !DILocation(line: 204, column: 86, scope: !6019)
!6027 = !DILocation(line: 206, column: 19, scope: !6019)
!6028 = !DILocation(line: 206, column: 22, scope: !6019)
!6029 = !DILocation(line: 206, column: 15, scope: !6019)
!6030 = !DILocation(line: 207, column: 4, scope: !6019)
!6031 = !DILocation(line: 207, column: 9, scope: !6019)
!6032 = !DILocation(line: 207, column: 12, scope: !6019)
!6033 = !DILocation(line: 206, column: 44, scope: !6019)
!6034 = !DILocation(line: 207, column: 37, scope: !6019)
!6035 = !DILocation(line: 206, column: 2, scope: !6019)
!6036 = distinct !DISubprogram(name: "variable_test_bit", scope: !5982, file: !5982, line: 224, type: !6020, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6037)
!6037 = !{!6038, !6039, !6040}
!6038 = !DILocalVariable(name: "nr", arg: 1, scope: !6036, file: !5982, line: 224, type: !608)
!6039 = !DILocalVariable(name: "addr", arg: 2, scope: !6036, file: !5982, line: 224, type: !5418)
!6040 = !DILocalVariable(name: "oldbit", scope: !6036, file: !5982, line: 226, type: !872)
!6041 = !DILocation(line: 224, column: 52, scope: !6036)
!6042 = !DILocation(line: 224, column: 86, scope: !6036)
!6043 = !DILocation(line: 226, column: 2, scope: !6036)
!6044 = !DILocation(line: 226, column: 7, scope: !6036)
!6045 = !DILocation(line: 231, column: 33, scope: !6036)
!6046 = !DILocation(line: 231, column: 46, scope: !6036)
!6047 = !DILocation(line: 228, column: 2, scope: !6036)
!6048 = !{i64 2148330765, i64 2148330839}
!6049 = !DILocation(line: 233, column: 9, scope: !6036)
!6050 = !{i8 0, i8 2}
!6051 = !DILocation(line: 234, column: 1, scope: !6036)
!6052 = !DILocation(line: 233, column: 2, scope: !6036)
!6053 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6054, file: !6054, line: 442, type: !5890, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6055)
!6054 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6055 = !{!6056}
!6056 = !DILocalVariable(name: "v", arg: 1, scope: !6053, file: !6054, line: 442, type: !5892)
!6057 = !DILocation(line: 442, column: 33, scope: !6053)
!6058 = !DILocation(line: 444, column: 26, scope: !6053)
!6059 = !DILocation(line: 444, column: 9, scope: !6053)
!6060 = !DILocation(line: 444, column: 2, scope: !6053)
!6061 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6062, file: !6062, line: 17, type: !5890, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6063)
!6062 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6063 = !{!6064}
!6064 = !DILocalVariable(name: "v", arg: 1, scope: !6061, file: !6062, line: 17, type: !5892)
!6065 = !DILocation(line: 17, column: 61, scope: !6061)
!6066 = !DILocation(line: 23, column: 9, scope: !6061)
!6067 = !DILocation(line: 23, column: 2, scope: !6061)
!6068 = distinct !DISubprogram(name: "folio_test_anon", scope: !254, file: !254, line: 670, type: !5903, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6069)
!6069 = !{!6070}
!6070 = !DILocalVariable(name: "folio", arg: 1, scope: !6068, file: !254, line: 670, type: !3323)
!6071 = !DILocation(line: 670, column: 59, scope: !6068)
!6072 = !DILocation(line: 672, column: 25, scope: !6068)
!6073 = !DILocation(line: 672, column: 32, scope: !6068)
!6074 = !DILocation(line: 672, column: 10, scope: !6068)
!6075 = !DILocation(line: 672, column: 40, scope: !6068)
!6076 = !DILocation(line: 672, column: 61, scope: !6068)
!6077 = !DILocation(line: 672, column: 2, scope: !6068)
!6078 = distinct !DISubprogram(name: "page_is_fake_head", scope: !254, file: !254, line: 239, type: !5722, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6079)
!6079 = !{!6080}
!6080 = !DILocalVariable(name: "page", arg: 1, scope: !6078, file: !254, line: 239, type: !307)
!6081 = !DILocation(line: 239, column: 59, scope: !6078)
!6082 = !DILocation(line: 241, column: 30, scope: !6078)
!6083 = !DILocation(line: 241, column: 9, scope: !6078)
!6084 = !DILocation(line: 241, column: 39, scope: !6078)
!6085 = !DILocation(line: 241, column: 36, scope: !6078)
!6086 = !DILocation(line: 241, column: 2, scope: !6078)
!6087 = distinct !DISubprogram(name: "page_fixed_fake_head", scope: !254, file: !254, line: 207, type: !6088, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6090)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!5424, !5424}
!6090 = !{!6091, !6092, !6095}
!6091 = !DILocalVariable(name: "page", arg: 1, scope: !6087, file: !254, line: 207, type: !5424)
!6092 = !DILocalVariable(name: "branch", scope: !6093, file: !254, line: 209, type: !872)
!6093 = distinct !DILexicalBlock(scope: !6094, file: !254, line: 209, column: 7)
!6094 = distinct !DILexicalBlock(scope: !6087, file: !254, line: 209, column: 6)
!6095 = !DILocalVariable(name: "head", scope: !6096, file: !254, line: 225, type: !83)
!6096 = distinct !DILexicalBlock(scope: !6097, file: !254, line: 219, column: 39)
!6097 = distinct !DILexicalBlock(scope: !6087, file: !254, line: 218, column: 6)
!6098 = !DILocation(line: 207, column: 83, scope: !6087)
!6099 = !DILocation(line: 209, column: 7, scope: !6093)
!6100 = !DILocation(line: 209, column: 7, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6102, file: !254, line: 209, column: 7)
!6102 = distinct !DILexicalBlock(scope: !6093, file: !254, line: 209, column: 7)
!6103 = !DILocation(line: 209, column: 7, scope: !6102)
!6104 = !DILocation(line: 209, column: 7, scope: !6094)
!6105 = !DILocation(line: 209, column: 6, scope: !6087)
!6106 = !DILocation(line: 210, column: 10, scope: !6094)
!6107 = !DILocation(line: 210, column: 3, scope: !6094)
!6108 = !DILocation(line: 218, column: 6, scope: !6097)
!6109 = !DILocation(line: 218, column: 49, scope: !6097)
!6110 = !DILocation(line: 219, column: 6, scope: !6097)
!6111 = !DILocation(line: 218, column: 6, scope: !6087)
!6112 = !DILocation(line: 225, column: 3, scope: !6096)
!6113 = !DILocation(line: 225, column: 17, scope: !6096)
!6114 = !DILocation(line: 225, column: 24, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6096, file: !254, line: 225, column: 24)
!6116 = !DILocation(line: 225, column: 24, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6115, file: !254, line: 225, column: 24)
!6118 = !DILocation(line: 227, column: 7, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6096, file: !254, line: 227, column: 7)
!6120 = !DILocation(line: 227, column: 7, scope: !6096)
!6121 = !DILocation(line: 228, column: 33, scope: !6119)
!6122 = !DILocation(line: 228, column: 38, scope: !6119)
!6123 = !DILocation(line: 228, column: 11, scope: !6119)
!6124 = !DILocation(line: 228, column: 4, scope: !6119)
!6125 = !DILocation(line: 229, column: 2, scope: !6097)
!6126 = !DILocation(line: 229, column: 2, scope: !6096)
!6127 = !DILocation(line: 230, column: 9, scope: !6087)
!6128 = !DILocation(line: 230, column: 2, scope: !6087)
!6129 = !DILocation(line: 231, column: 1, scope: !6087)
!6130 = distinct !DISubprogram(name: "arch_static_branch", scope: !6131, file: !6131, line: 25, type: !6132, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6146)
!6131 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6132 = !DISubroutineType(types: !6133)
!6133 = !{!872, !6134, !872}
!6134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6135, size: 64)
!6135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3881, line: 85, size: 128, elements: !6136)
!6136 = !{!6137, !6138}
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6135, file: !3881, line: 86, baseType: !93, size: 32)
!6138 = !DIDerivedType(tag: DW_TAG_member, scope: !6135, file: !3881, line: 101, baseType: !6139, size: 64, offset: 64)
!6139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6135, file: !3881, line: 101, size: 64, elements: !6140)
!6140 = !{!6141, !6142, !6143}
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6139, file: !3881, line: 102, baseType: !83, size: 64)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6139, file: !3881, line: 103, baseType: !3879, size: 64)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6139, file: !3881, line: 104, baseType: !6144, size: 64)
!6144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6145, size: 64)
!6145 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3881, line: 104, flags: DIFlagFwdDecl)
!6146 = !{!6147, !6148, !6149}
!6147 = !DILocalVariable(name: "key", arg: 1, scope: !6130, file: !6131, line: 25, type: !6134)
!6148 = !DILocalVariable(name: "branch", arg: 2, scope: !6130, file: !6131, line: 25, type: !872)
!6149 = !DILabel(scope: !6130, name: "l_yes", file: !6131, line: 33)
!6150 = !DILocation(line: 25, column: 67, scope: !6130)
!6151 = !DILocation(line: 25, column: 77, scope: !6130)
!6152 = !DILocation(line: 30, column: 13, scope: !6130)
!6153 = !DILocation(line: 30, column: 28, scope: !6130)
!6154 = !DILocation(line: 30, column: 26, scope: !6130)
!6155 = !DILocation(line: 27, column: 2, scope: !6130)
!6156 = !{i64 1291477, i64 1291521, i64 2148776204, i64 2148776225, i64 2148776251, i64 2148776284, i64 2148776318, i64 2148776342}
!6157 = !DILocation(line: 32, column: 2, scope: !6130)
!6158 = !DILocation(line: 33, column: 1, scope: !6130)
!6159 = !DILocation(line: 34, column: 2, scope: !6130)
!6160 = !DILocation(line: 35, column: 1, scope: !6130)
!6161 = distinct !DISubprogram(name: "folio_test_hugetlb", scope: !254, file: !254, line: 1005, type: !6162, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6164)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!872, !5426}
!6164 = !{!6165}
!6165 = !DILocalVariable(name: "folio", arg: 1, scope: !6161, file: !254, line: 1005, type: !5426)
!6166 = !DILocation(line: 1005, column: 1, scope: !6161)
!6167 = distinct !DISubprogram(name: "folio_ref_count", scope: !5814, file: !5814, line: 87, type: !6168, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6170)
!6168 = !DISubroutineType(types: !6169)
!6169 = !{!66, !5426}
!6170 = !{!6171}
!6171 = !DILocalVariable(name: "folio", arg: 1, scope: !6167, file: !5814, line: 87, type: !5426)
!6172 = !DILocation(line: 87, column: 55, scope: !6167)
!6173 = !DILocation(line: 89, column: 25, scope: !6167)
!6174 = !DILocation(line: 89, column: 32, scope: !6167)
!6175 = !DILocation(line: 89, column: 9, scope: !6167)
!6176 = !DILocation(line: 89, column: 2, scope: !6167)
!6177 = distinct !DISubprogram(name: "page_ref_count", scope: !5814, file: !5814, line: 65, type: !5716, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6178)
!6178 = !{!6179}
!6179 = !DILocalVariable(name: "page", arg: 1, scope: !6177, file: !5814, line: 65, type: !5424)
!6180 = !DILocation(line: 65, column: 53, scope: !6177)
!6181 = !DILocation(line: 67, column: 22, scope: !6177)
!6182 = !DILocation(line: 67, column: 28, scope: !6177)
!6183 = !DILocation(line: 67, column: 9, scope: !6177)
!6184 = !DILocation(line: 67, column: 2, scope: !6177)
!6185 = distinct !DISubprogram(name: "folio_test_idle", scope: !5831, file: !5831, line: 108, type: !5903, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6186)
!6186 = !{!6187}
!6187 = !DILocalVariable(name: "folio", arg: 1, scope: !6185, file: !5831, line: 108, type: !3323)
!6188 = !DILocation(line: 108, column: 50, scope: !6185)
!6189 = !DILocation(line: 110, column: 2, scope: !6185)
!6190 = distinct !DISubprogram(name: "folio_test_swapcache", scope: !254, file: !254, line: 555, type: !5903, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6191)
!6191 = !{!6192}
!6192 = !DILocalVariable(name: "folio", arg: 1, scope: !6190, file: !254, line: 555, type: !3323)
!6193 = !DILocation(line: 555, column: 64, scope: !6190)
!6194 = !DILocation(line: 557, column: 31, scope: !6190)
!6195 = !DILocation(line: 557, column: 9, scope: !6190)
!6196 = !DILocation(line: 557, column: 38, scope: !6190)
!6197 = !DILocation(line: 558, column: 4, scope: !6190)
!6198 = !DILocation(line: 0, scope: !6190)
!6199 = !DILocation(line: 557, column: 2, scope: !6190)
!6200 = distinct !DISubprogram(name: "folio_test_swapbacked", scope: !254, file: !254, line: 515, type: !5903, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6201)
!6201 = !{!6202}
!6202 = !DILocalVariable(name: "folio", arg: 1, scope: !6200, file: !254, line: 515, type: !3323)
!6203 = !DILocation(line: 515, column: 1, scope: !6200)
!6204 = distinct !DISubprogram(name: "folio_flags", scope: !254, file: !254, line: 308, type: !6205, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6207)
!6205 = !DISubroutineType(types: !6206)
!6206 = !{!3903, !3323, !7}
!6207 = !{!6208, !6209, !6210}
!6208 = !DILocalVariable(name: "folio", arg: 1, scope: !6204, file: !254, line: 308, type: !3323)
!6209 = !DILocalVariable(name: "n", arg: 2, scope: !6204, file: !254, line: 308, type: !7)
!6210 = !DILocalVariable(name: "page", scope: !6204, file: !254, line: 310, type: !307)
!6211 = !DILocation(line: 308, column: 49, scope: !6204)
!6212 = !DILocation(line: 308, column: 65, scope: !6204)
!6213 = !DILocation(line: 310, column: 2, scope: !6204)
!6214 = !DILocation(line: 310, column: 15, scope: !6204)
!6215 = !DILocation(line: 310, column: 23, scope: !6204)
!6216 = !DILocation(line: 310, column: 30, scope: !6204)
!6217 = !DILocation(line: 314, column: 10, scope: !6204)
!6218 = !DILocation(line: 314, column: 15, scope: !6204)
!6219 = !DILocation(line: 314, column: 18, scope: !6204)
!6220 = !DILocation(line: 315, column: 1, scope: !6204)
!6221 = !DILocation(line: 314, column: 2, scope: !6204)
!6222 = !DISubprogram(name: "proc_create", scope: !5450, file: !5450, line: 110, type: !6223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6223 = !DISubroutineType(types: !6224)
!6224 = !{!6225, !60, !68, !6225, !6239}
!6225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6226, size: 64)
!6226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !6227, line: 30, size: 1408, elements: !6228)
!6227 = !DIFile(filename: "fs/proc/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5901c10530dd4e261f60d4f1b5caf1e")
!6228 = !{!6229, !6230, !6231, !6232, !6233, !6234, !6235, !6241, !6242, !6247, !6252, !6253, !6254, !6255, !6257, !6258, !6259, !6260, !6261, !6262, !6263, !6264, !6265, !6266, !6267}
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !6226, file: !6227, line: 35, baseType: !93, size: 32)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !6226, file: !6227, line: 36, baseType: !725, size: 32, offset: 32)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "pde_openers", scope: !6226, file: !6227, line: 37, baseType: !141, size: 128, offset: 64)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_lock", scope: !6226, file: !6227, line: 39, baseType: !103, size: 32, offset: 192)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_completion", scope: !6226, file: !6227, line: 40, baseType: !1802, size: 64, offset: 256)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "proc_iops", scope: !6226, file: !6227, line: 41, baseType: !360, size: 64, offset: 320)
!6235 = !DIDerivedType(tag: DW_TAG_member, scope: !6226, file: !6227, line: 42, baseType: !6236, size: 64, offset: 384)
!6236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6226, file: !6227, line: 42, size: 64, elements: !6237)
!6237 = !{!6238, !6240}
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ops", scope: !6236, file: !6227, line: 43, baseType: !6239, size: 64)
!6239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5448, size: 64)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dir_ops", scope: !6236, file: !6227, line: 44, baseType: !3281, size: 64)
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dops", scope: !6226, file: !6227, line: 46, baseType: !431, size: 64, offset: 448)
!6242 = !DIDerivedType(tag: DW_TAG_member, scope: !6226, file: !6227, line: 47, baseType: !6243, size: 64, offset: 512)
!6243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6226, file: !6227, line: 47, size: 64, elements: !6244)
!6244 = !{!6245, !6246}
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ops", scope: !6243, file: !6227, line: 48, baseType: !2011, size: 64)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "single_show", scope: !6243, file: !6227, line: 49, baseType: !2028, size: 64)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !6226, file: !6227, line: 51, baseType: !6248, size: 64, offset: 576)
!6248 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_write_t", file: !5450, line: 77, baseType: !6249)
!6249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6250, size: 64)
!6250 = !DISubroutineType(types: !6251)
!6251 = !{!66, !647, !474, !79}
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6226, file: !6227, line: 52, baseType: !64, size: 64, offset: 640)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "state_size", scope: !6226, file: !6227, line: 53, baseType: !7, size: 32, offset: 704)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "low_ino", scope: !6226, file: !6227, line: 54, baseType: !7, size: 32, offset: 736)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !6226, file: !6227, line: 55, baseType: !6256, size: 32, offset: 768)
!6256 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !69, line: 25, baseType: !402)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !6226, file: !6227, line: 56, baseType: !339, size: 32, offset: 800)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !6226, file: !6227, line: 57, baseType: !348, size: 32, offset: 832)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6226, file: !6227, line: 58, baseType: !85, size: 64, offset: 896)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6226, file: !6227, line: 59, baseType: !6225, size: 64, offset: 960)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "subdir", scope: !6226, file: !6227, line: 60, baseType: !1180, size: 64, offset: 1024)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "subdir_node", scope: !6226, file: !6227, line: 61, baseType: !805, size: 192, align: 64, offset: 1088)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6226, file: !6227, line: 62, baseType: !474, size: 64, offset: 1280)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6226, file: !6227, line: 63, baseType: !68, size: 16, offset: 1344)
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6226, file: !6227, line: 64, baseType: !127, size: 8, offset: 1360)
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !6226, file: !6227, line: 65, baseType: !127, size: 8, offset: 1368)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "inline_name", scope: !6226, file: !6227, line: 66, baseType: !2783, offset: 1376)
!6268 = distinct !DISubprogram(name: "kpagecount_read", scope: !3, file: !3, line: 45, type: !3292, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6269)
!6269 = !{!6270, !6271, !6272, !6273, !6274, !6275, !6276, !6277, !6278, !6279, !6280, !6281, !6283, !6284, !6287, !6291, !6292, !6293, !6294}
!6270 = !DILocalVariable(name: "file", arg: 1, scope: !6268, file: !3, line: 45, type: !647)
!6271 = !DILocalVariable(name: "buf", arg: 2, scope: !6268, file: !3, line: 45, type: !474)
!6272 = !DILocalVariable(name: "count", arg: 3, scope: !6268, file: !3, line: 46, type: !79)
!6273 = !DILocalVariable(name: "ppos", arg: 4, scope: !6268, file: !3, line: 46, type: !84)
!6274 = !DILocalVariable(name: "max_dump_pfn", scope: !6268, file: !3, line: 48, type: !5366)
!6275 = !DILocalVariable(name: "out", scope: !6268, file: !3, line: 49, type: !4532)
!6276 = !DILocalVariable(name: "ppage", scope: !6268, file: !3, line: 50, type: !307)
!6277 = !DILocalVariable(name: "src", scope: !6268, file: !3, line: 51, type: !83)
!6278 = !DILocalVariable(name: "pfn", scope: !6268, file: !3, line: 52, type: !83)
!6279 = !DILocalVariable(name: "ret", scope: !6268, file: !3, line: 53, type: !605)
!6280 = !DILocalVariable(name: "pcount", scope: !6268, file: !3, line: 54, type: !406)
!6281 = !DILocalVariable(name: "__UNIQUE_ID___x336", scope: !6282, file: !3, line: 61, type: !83)
!6282 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 61, column: 10)
!6283 = !DILocalVariable(name: "__UNIQUE_ID___y337", scope: !6282, file: !3, line: 61, type: !83)
!6284 = !DILocalVariable(name: "___page", scope: !6285, file: !3, line: 68, type: !307)
!6285 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 68, column: 11)
!6286 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 63, column: 20)
!6287 = !DILocalVariable(name: "__ret_pu", scope: !6288, file: !3, line: 75, type: !66)
!6288 = distinct !DILexicalBlock(scope: !6289, file: !3, line: 75, column: 7)
!6289 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 75, column: 7)
!6290 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 75, column: 7)
!6291 = !DILocalVariable(name: "__ptr_pu", scope: !6288, file: !3, line: 75, type: !64)
!6292 = !DILocalVariable(name: "__val_pu", scope: !6288, file: !3, line: 75, type: !406)
!6293 = !DILocalVariable(name: "__x", scope: !6288, file: !3, line: 75, type: !406)
!6294 = !DILocalVariable(name: "__ptr", scope: !6288, file: !3, line: 75, type: !4532)
!6295 = !DILocation(line: 45, column: 45, scope: !6268)
!6296 = !DILocation(line: 45, column: 64, scope: !6268)
!6297 = !DILocation(line: 46, column: 16, scope: !6268)
!6298 = !DILocation(line: 46, column: 31, scope: !6268)
!6299 = !DILocation(line: 48, column: 2, scope: !6268)
!6300 = !DILocation(line: 48, column: 22, scope: !6268)
!6301 = !DILocation(line: 48, column: 37, scope: !6268)
!6302 = !DILocation(line: 49, column: 2, scope: !6268)
!6303 = !DILocation(line: 49, column: 14, scope: !6268)
!6304 = !DILocation(line: 49, column: 34, scope: !6268)
!6305 = !DILocation(line: 50, column: 2, scope: !6268)
!6306 = !DILocation(line: 50, column: 15, scope: !6268)
!6307 = !DILocation(line: 51, column: 2, scope: !6268)
!6308 = !DILocation(line: 51, column: 16, scope: !6268)
!6309 = !DILocation(line: 51, column: 23, scope: !6268)
!6310 = !DILocation(line: 51, column: 22, scope: !6268)
!6311 = !DILocation(line: 52, column: 2, scope: !6268)
!6312 = !DILocation(line: 52, column: 16, scope: !6268)
!6313 = !DILocation(line: 53, column: 2, scope: !6268)
!6314 = !DILocation(line: 53, column: 10, scope: !6268)
!6315 = !DILocation(line: 54, column: 2, scope: !6268)
!6316 = !DILocation(line: 54, column: 6, scope: !6268)
!6317 = !DILocation(line: 56, column: 8, scope: !6268)
!6318 = !DILocation(line: 56, column: 12, scope: !6268)
!6319 = !DILocation(line: 56, column: 6, scope: !6268)
!6320 = !DILocation(line: 57, column: 6, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 57, column: 6)
!6322 = !DILocation(line: 57, column: 10, scope: !6321)
!6323 = !DILocation(line: 57, column: 20, scope: !6321)
!6324 = !DILocation(line: 57, column: 23, scope: !6321)
!6325 = !DILocation(line: 57, column: 29, scope: !6321)
!6326 = !DILocation(line: 57, column: 6, scope: !6268)
!6327 = !DILocation(line: 58, column: 3, scope: !6321)
!6328 = !DILocation(line: 59, column: 6, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 59, column: 6)
!6330 = !DILocation(line: 59, column: 13, scope: !6329)
!6331 = !DILocation(line: 59, column: 26, scope: !6329)
!6332 = !DILocation(line: 59, column: 10, scope: !6329)
!6333 = !DILocation(line: 59, column: 6, scope: !6268)
!6334 = !DILocation(line: 60, column: 3, scope: !6329)
!6335 = !DILocation(line: 61, column: 10, scope: !6282)
!6336 = !DILocation(line: 61, column: 10, scope: !6268)
!6337 = !DILocation(line: 61, column: 8, scope: !6268)
!6338 = !DILocation(line: 63, column: 2, scope: !6268)
!6339 = !DILocation(line: 63, column: 9, scope: !6268)
!6340 = !DILocation(line: 63, column: 15, scope: !6268)
!6341 = !DILocation(line: 68, column: 11, scope: !6285)
!6342 = !DILocation(line: 68, column: 11, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 68, column: 11)
!6344 = !DILocation(line: 68, column: 11, scope: !6286)
!6345 = !DILocation(line: 68, column: 9, scope: !6286)
!6346 = !DILocation(line: 70, column: 8, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 70, column: 7)
!6348 = !DILocation(line: 70, column: 7, scope: !6286)
!6349 = !DILocation(line: 71, column: 11, scope: !6347)
!6350 = !DILocation(line: 71, column: 4, scope: !6347)
!6351 = !DILocation(line: 73, column: 27, scope: !6347)
!6352 = !DILocation(line: 73, column: 13, scope: !6347)
!6353 = !DILocation(line: 73, column: 11, scope: !6347)
!6354 = !DILocation(line: 75, column: 7, scope: !6289)
!6355 = !DILocation(line: 75, column: 7, scope: !6288)
!6356 = !{i64 2155611490}
!6357 = !DILocation(line: 75, column: 7, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 75, column: 7)
!6359 = !DILocation(line: 75, column: 7, scope: !6290)
!6360 = !DILocation(line: 75, column: 7, scope: !6286)
!6361 = !DILocation(line: 76, column: 8, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 75, column: 30)
!6363 = !DILocation(line: 77, column: 4, scope: !6362)
!6364 = !DILocation(line: 80, column: 6, scope: !6286)
!6365 = !DILocation(line: 81, column: 6, scope: !6286)
!6366 = !DILocation(line: 82, column: 9, scope: !6286)
!6367 = !DILocation(line: 84, column: 3, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 84, column: 3)
!6369 = distinct !{!6369, !6338, !6370, !6371, !6372}
!6370 = !DILocation(line: 85, column: 2, scope: !6268)
!6371 = !{!"llvm.loop.mustprogress"}
!6372 = !{!"llvm.loop.unroll.disable"}
!6373 = !DILocation(line: 87, column: 26, scope: !6268)
!6374 = !DILocation(line: 87, column: 32, scope: !6268)
!6375 = !DILocation(line: 87, column: 30, scope: !6268)
!6376 = !DILocation(line: 87, column: 3, scope: !6268)
!6377 = !DILocation(line: 87, column: 8, scope: !6268)
!6378 = !DILocation(line: 88, column: 7, scope: !6379)
!6379 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 88, column: 6)
!6380 = !DILocation(line: 88, column: 6, scope: !6268)
!6381 = !DILocation(line: 89, column: 24, scope: !6379)
!6382 = !DILocation(line: 89, column: 30, scope: !6379)
!6383 = !DILocation(line: 89, column: 28, scope: !6379)
!6384 = !DILocation(line: 89, column: 7, scope: !6379)
!6385 = !DILocation(line: 89, column: 3, scope: !6379)
!6386 = !DILocation(line: 90, column: 9, scope: !6268)
!6387 = !DILocation(line: 90, column: 2, scope: !6268)
!6388 = !DILocation(line: 91, column: 1, scope: !6268)
!6389 = distinct !DISubprogram(name: "get_max_dump_pfn", scope: !3, file: !3, line: 25, type: !6390, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6390 = !DISubroutineType(types: !6391)
!6391 = !{!83}
!6392 = !DILocation(line: 34, column: 9, scope: !6389)
!6393 = !DILocation(line: 34, column: 2, scope: !6389)
!6394 = distinct !DISubprogram(name: "pfn_valid", scope: !299, file: !299, line: 1994, type: !5800, scopeLine: 1995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6395)
!6395 = !{!6396, !6397, !6403}
!6396 = !DILocalVariable(name: "pfn", arg: 1, scope: !6394, file: !299, line: 1994, type: !83)
!6397 = !DILocalVariable(name: "ms", scope: !6394, file: !299, line: 1996, type: !6398)
!6398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6399, size: 64)
!6399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_section", file: !299, line: 1790, size: 128, elements: !6400)
!6400 = !{!6401, !6402}
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "section_mem_map", scope: !6399, file: !299, line: 1803, baseType: !83, size: 64)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !6399, file: !299, line: 1805, baseType: !5431, size: 64, offset: 64)
!6403 = !DILocalVariable(name: "ret", scope: !6394, file: !299, line: 1997, type: !66)
!6404 = !DILocation(line: 1994, column: 43, scope: !6394)
!6405 = !DILocation(line: 1996, column: 2, scope: !6394)
!6406 = !DILocation(line: 1996, column: 22, scope: !6394)
!6407 = !DILocation(line: 1997, column: 2, scope: !6394)
!6408 = !DILocation(line: 1997, column: 6, scope: !6394)
!6409 = !DILocation(line: 2005, column: 6, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6394, file: !299, line: 2005, column: 6)
!6411 = !DILocation(line: 2005, column: 33, scope: !6410)
!6412 = !DILocation(line: 2005, column: 30, scope: !6410)
!6413 = !DILocation(line: 2005, column: 6, scope: !6394)
!6414 = !DILocation(line: 2006, column: 3, scope: !6410)
!6415 = !DILocation(line: 2008, column: 24, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6394, file: !299, line: 2008, column: 6)
!6417 = !DILocation(line: 2008, column: 6, scope: !6416)
!6418 = !DILocation(line: 2008, column: 32, scope: !6416)
!6419 = !DILocation(line: 2008, column: 29, scope: !6416)
!6420 = !DILocation(line: 2008, column: 6, scope: !6394)
!6421 = !DILocation(line: 2009, column: 3, scope: !6416)
!6422 = !DILocation(line: 2010, column: 24, scope: !6394)
!6423 = !DILocation(line: 2010, column: 7, scope: !6394)
!6424 = !DILocation(line: 2010, column: 5, scope: !6394)
!6425 = !DILocation(line: 2011, column: 2, scope: !6394)
!6426 = !DILocation(line: 2012, column: 21, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6394, file: !299, line: 2012, column: 6)
!6428 = !DILocation(line: 2012, column: 7, scope: !6427)
!6429 = !DILocation(line: 2012, column: 6, scope: !6394)
!6430 = !DILocation(line: 2013, column: 3, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6427, file: !299, line: 2012, column: 26)
!6432 = !DILocation(line: 2014, column: 3, scope: !6431)
!6433 = !DILocation(line: 2020, column: 22, scope: !6394)
!6434 = !DILocation(line: 2020, column: 8, scope: !6394)
!6435 = !DILocation(line: 2020, column: 26, scope: !6394)
!6436 = !DILocation(line: 2020, column: 47, scope: !6394)
!6437 = !DILocation(line: 2020, column: 51, scope: !6394)
!6438 = !DILocation(line: 2020, column: 29, scope: !6394)
!6439 = !DILocation(line: 2020, column: 6, scope: !6394)
!6440 = !DILocation(line: 2021, column: 2, scope: !6394)
!6441 = !DILocation(line: 2023, column: 9, scope: !6394)
!6442 = !DILocation(line: 2023, column: 2, scope: !6394)
!6443 = !DILocation(line: 2024, column: 1, scope: !6394)
!6444 = distinct !DISubprogram(name: "page_mapcount", scope: !1449, file: !1449, line: 1194, type: !5722, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6445)
!6445 = !{!6446, !6447}
!6446 = !DILocalVariable(name: "page", arg: 1, scope: !6444, file: !1449, line: 1194, type: !307)
!6447 = !DILocalVariable(name: "mapcount", scope: !6444, file: !1449, line: 1196, type: !66)
!6448 = !DILocation(line: 1194, column: 46, scope: !6444)
!6449 = !DILocation(line: 1196, column: 2, scope: !6444)
!6450 = !DILocation(line: 1196, column: 6, scope: !6444)
!6451 = !DILocation(line: 1196, column: 30, scope: !6444)
!6452 = !DILocation(line: 1196, column: 36, scope: !6444)
!6453 = !DILocation(line: 1196, column: 17, scope: !6444)
!6454 = !DILocation(line: 1196, column: 47, scope: !6444)
!6455 = !DILocation(line: 1199, column: 6, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !6444, file: !1449, line: 1199, column: 6)
!6457 = !DILocation(line: 1199, column: 15, scope: !6456)
!6458 = !DILocation(line: 1199, column: 6, scope: !6444)
!6459 = !DILocation(line: 1200, column: 12, scope: !6456)
!6460 = !DILocation(line: 1200, column: 3, scope: !6456)
!6461 = !DILocation(line: 1201, column: 6, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6444, file: !1449, line: 1201, column: 6)
!6463 = !DILocation(line: 1201, column: 6, scope: !6444)
!6464 = !DILocation(line: 1202, column: 37, scope: !6462)
!6465 = !DILocation(line: 1202, column: 15, scope: !6462)
!6466 = !DILocation(line: 1202, column: 12, scope: !6462)
!6467 = !DILocation(line: 1202, column: 3, scope: !6462)
!6468 = !DILocation(line: 1204, column: 9, scope: !6444)
!6469 = !DILocation(line: 1205, column: 1, scope: !6444)
!6470 = !DILocation(line: 1204, column: 2, scope: !6444)
!6471 = distinct !DISubprogram(name: "might_fault", scope: !6472, file: !6472, line: 202, type: !2227, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6472 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6473 = !DILocation(line: 202, column: 40, scope: !6471)
!6474 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6475, file: !6475, line: 76, type: !6476, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6478)
!6475 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6476 = !DISubroutineType(types: !6477)
!6477 = !{null, !64, !1653, !79, !79}
!6478 = !{!6479, !6480, !6481, !6482}
!6479 = !DILocalVariable(name: "to", arg: 1, scope: !6474, file: !6475, line: 76, type: !64)
!6480 = !DILocalVariable(name: "from", arg: 2, scope: !6474, file: !6475, line: 76, type: !1653)
!6481 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6474, file: !6475, line: 77, type: !79)
!6482 = !DILocalVariable(name: "left", arg: 4, scope: !6474, file: !6475, line: 77, type: !79)
!6483 = !DILocation(line: 76, column: 52, scope: !6474)
!6484 = !DILocation(line: 76, column: 68, scope: !6474)
!6485 = !DILocation(line: 77, column: 18, scope: !6474)
!6486 = !DILocation(line: 77, column: 34, scope: !6474)
!6487 = !DILocation(line: 79, column: 1, scope: !6474)
!6488 = distinct !DISubprogram(name: "__might_resched", scope: !6472, file: !6472, line: 184, type: !6489, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6491)
!6489 = !DISubroutineType(types: !6490)
!6490 = !{null, !60, !66, !7}
!6491 = !{!6492, !6493, !6494}
!6492 = !DILocalVariable(name: "file", arg: 1, scope: !6488, file: !6472, line: 184, type: !60)
!6493 = !DILocalVariable(name: "line", arg: 2, scope: !6488, file: !6472, line: 184, type: !66)
!6494 = !DILocalVariable(name: "offsets", arg: 3, scope: !6488, file: !6472, line: 185, type: !7)
!6495 = !DILocation(line: 184, column: 50, scope: !6488)
!6496 = !DILocation(line: 184, column: 60, scope: !6488)
!6497 = !DILocation(line: 185, column: 23, scope: !6488)
!6498 = !DILocation(line: 185, column: 34, scope: !6488)
!6499 = !DILocation(line: 2104, column: 9, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !5475, file: !1008, line: 2104, column: 9)
!6501 = !DILocation(line: 2104, column: 9, scope: !5475)
!6502 = !DILocation(line: 2104, column: 2, scope: !5475)
!6503 = distinct !DISubprogram(name: "pfn_to_section_nr", scope: !299, file: !299, line: 1749, type: !6504, scopeLine: 1750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6506)
!6504 = !DISubroutineType(types: !6505)
!6505 = !{!83, !83}
!6506 = !{!6507}
!6507 = !DILocalVariable(name: "pfn", arg: 1, scope: !6503, file: !299, line: 1749, type: !83)
!6508 = !DILocation(line: 1749, column: 61, scope: !6503)
!6509 = !DILocation(line: 1751, column: 9, scope: !6503)
!6510 = !DILocation(line: 1751, column: 13, scope: !6503)
!6511 = !DILocation(line: 1751, column: 2, scope: !6503)
!6512 = distinct !DISubprogram(name: "_static_cpu_has", scope: !6513, file: !6513, line: 173, type: !6514, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6516)
!6513 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!6514 = !DISubroutineType(types: !6515)
!6515 = !{!872, !137}
!6516 = !{!6517, !6518, !6519}
!6517 = !DILocalVariable(name: "bit", arg: 1, scope: !6512, file: !6513, line: 173, type: !137)
!6518 = !DILabel(scope: !6512, name: "t_yes", file: !6513, line: 187)
!6519 = !DILabel(scope: !6512, name: "t_no", file: !6513, line: 189)
!6520 = !DILocation(line: 173, column: 49, scope: !6512)
!6521 = !DILocation(line: 183, column: 24, scope: !6512)
!6522 = !DILocation(line: 184, column: 30, scope: !6512)
!6523 = !DILocation(line: 184, column: 34, scope: !6512)
!6524 = !DILocation(line: 184, column: 26, scope: !6512)
!6525 = !DILocation(line: 185, column: 70, scope: !6512)
!6526 = !DILocation(line: 185, column: 74, scope: !6512)
!6527 = !DILocation(line: 185, column: 25, scope: !6512)
!6528 = !DILocation(line: 175, column: 2, scope: !6512)
!6529 = !{i64 2149663081, i64 2149663114, i64 2149663120, i64 2149663136, i64 2149663155, i64 2149663186, i64 2149664139, i64 2149662728, i64 2149664145, i64 2149664193, i64 2149664257, i64 2149664321, i64 2149664378, i64 2149664585, i64 2149664633, i64 2149664697, i64 2149664761, i64 2149664818, i64 2149662846, i64 2149662871, i64 2149665028, i64 2149665156, i64 2149665089, i64 2149665170, i64 2149665184, i64 2149665300, i64 2149665245, i64 2149665314, i64 2149663005, i64 1141918, i64 1141958, i64 1141967, i64 1142017, i64 1142038, i64 1142058}
!6530 = !DILocation(line: 187, column: 1, scope: !6512)
!6531 = !DILocation(line: 188, column: 2, scope: !6512)
!6532 = !DILocation(line: 189, column: 1, scope: !6512)
!6533 = !DILocation(line: 190, column: 2, scope: !6512)
!6534 = !DILocation(line: 191, column: 1, scope: !6512)
!6535 = distinct !DISubprogram(name: "__pfn_to_section", scope: !299, file: !299, line: 1955, type: !6536, scopeLine: 1956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6538)
!6536 = !DISubroutineType(types: !6537)
!6537 = !{!6398, !83}
!6538 = !{!6539}
!6539 = !DILocalVariable(name: "pfn", arg: 1, scope: !6535, file: !299, line: 1955, type: !83)
!6540 = !DILocation(line: 1955, column: 66, scope: !6535)
!6541 = !DILocation(line: 1957, column: 43, scope: !6535)
!6542 = !DILocation(line: 1957, column: 25, scope: !6535)
!6543 = !DILocation(line: 1957, column: 9, scope: !6535)
!6544 = !DILocation(line: 1957, column: 2, scope: !6535)
!6545 = distinct !DISubprogram(name: "rcu_read_lock_sched", scope: !5472, file: !5472, line: 874, type: !2227, scopeLine: 875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6546 = !DILocation(line: 876, column: 2, scope: !6545)
!6547 = !DILocation(line: 876, column: 2, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6545, file: !5472, line: 876, column: 2)
!6549 = !{i64 2150413886}
!6550 = !DILocation(line: 878, column: 2, scope: !6545)
!6551 = !DILocation(line: 878, column: 2, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6545, file: !5472, line: 878, column: 2)
!6553 = !DILocation(line: 879, column: 2, scope: !6545)
!6554 = !DILocation(line: 879, column: 2, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6545, file: !5472, line: 879, column: 2)
!6556 = !DILocation(line: 881, column: 1, scope: !6545)
!6557 = distinct !DISubprogram(name: "valid_section", scope: !299, file: !299, line: 1911, type: !6558, scopeLine: 1912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6560)
!6558 = !DISubroutineType(types: !6559)
!6559 = !{!66, !6398}
!6560 = !{!6561}
!6561 = !DILocalVariable(name: "section", arg: 1, scope: !6557, file: !299, line: 1911, type: !6398)
!6562 = !DILocation(line: 1911, column: 53, scope: !6557)
!6563 = !DILocation(line: 1913, column: 10, scope: !6557)
!6564 = !DILocation(line: 1913, column: 18, scope: !6557)
!6565 = !DILocation(line: 1913, column: 22, scope: !6557)
!6566 = !DILocation(line: 1913, column: 31, scope: !6557)
!6567 = !DILocation(line: 1913, column: 47, scope: !6557)
!6568 = !DILocation(line: 0, scope: !6557)
!6569 = !DILocation(line: 1913, column: 2, scope: !6557)
!6570 = !DILocation(line: 897, column: 2, scope: !5471)
!6571 = !DILocation(line: 897, column: 2, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !5471, file: !5472, line: 897, column: 2)
!6573 = !DILocation(line: 899, column: 2, scope: !5471)
!6574 = !DILocation(line: 899, column: 2, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !5471, file: !5472, line: 899, column: 2)
!6576 = !DILocation(line: 901, column: 2, scope: !5471)
!6577 = !DILocation(line: 901, column: 2, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !5471, file: !5472, line: 901, column: 2)
!6579 = !{i64 2150414668}
!6580 = !DILocation(line: 901, column: 2, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6578, file: !5472, line: 901, column: 2)
!6582 = !DILocation(line: 901, column: 2, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6581, file: !5472, line: 901, column: 2)
!6584 = !{i64 2150414850}
!6585 = !DILocation(line: 902, column: 1, scope: !5471)
!6586 = distinct !DISubprogram(name: "early_section", scope: !299, file: !299, line: 1916, type: !6558, scopeLine: 1917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6587)
!6587 = !{!6588}
!6588 = !DILocalVariable(name: "section", arg: 1, scope: !6586, file: !299, line: 1916, type: !6398)
!6589 = !DILocation(line: 1916, column: 53, scope: !6586)
!6590 = !DILocation(line: 1918, column: 10, scope: !6586)
!6591 = !DILocation(line: 1918, column: 18, scope: !6586)
!6592 = !DILocation(line: 1918, column: 22, scope: !6586)
!6593 = !DILocation(line: 1918, column: 31, scope: !6586)
!6594 = !DILocation(line: 1918, column: 47, scope: !6586)
!6595 = !DILocation(line: 0, scope: !6586)
!6596 = !DILocation(line: 1918, column: 2, scope: !6586)
!6597 = distinct !DISubprogram(name: "pfn_section_valid", scope: !299, file: !299, line: 1968, type: !6598, scopeLine: 1969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6600)
!6598 = !DISubroutineType(types: !6599)
!6599 = !{!66, !6398, !83}
!6600 = !{!6601, !6602, !6603, !6604}
!6601 = !DILocalVariable(name: "ms", arg: 1, scope: !6597, file: !299, line: 1968, type: !6398)
!6602 = !DILocalVariable(name: "pfn", arg: 2, scope: !6597, file: !299, line: 1968, type: !83)
!6603 = !DILocalVariable(name: "idx", scope: !6597, file: !299, line: 1970, type: !66)
!6604 = !DILocalVariable(name: "usage", scope: !6597, file: !299, line: 1971, type: !5431)
!6605 = !DILocation(line: 1968, column: 57, scope: !6597)
!6606 = !DILocation(line: 1968, column: 75, scope: !6597)
!6607 = !DILocation(line: 1970, column: 2, scope: !6597)
!6608 = !DILocation(line: 1970, column: 6, scope: !6597)
!6609 = !DILocation(line: 1970, column: 33, scope: !6597)
!6610 = !DILocation(line: 1970, column: 12, scope: !6597)
!6611 = !DILocation(line: 1971, column: 2, scope: !6597)
!6612 = !DILocation(line: 1971, column: 28, scope: !6597)
!6613 = !DILocation(line: 1971, column: 36, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6597, file: !299, line: 1971, column: 36)
!6615 = !DILocation(line: 1971, column: 36, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6614, file: !299, line: 1971, column: 36)
!6617 = !DILocation(line: 1973, column: 9, scope: !6597)
!6618 = !DILocation(line: 1973, column: 17, scope: !6597)
!6619 = !DILocation(line: 1974, column: 1, scope: !6597)
!6620 = !DILocation(line: 1973, column: 2, scope: !6597)
!6621 = distinct !DISubprogram(name: "__nr_to_section", scope: !299, file: !299, line: 1841, type: !6536, scopeLine: 1842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6622)
!6622 = !{!6623, !6624}
!6623 = !DILocalVariable(name: "nr", arg: 1, scope: !6621, file: !299, line: 1841, type: !83)
!6624 = !DILocalVariable(name: "root", scope: !6621, file: !299, line: 1843, type: !83)
!6625 = !DILocation(line: 1841, column: 65, scope: !6621)
!6626 = !DILocation(line: 1843, column: 2, scope: !6621)
!6627 = !DILocation(line: 1843, column: 16, scope: !6621)
!6628 = !DILocation(line: 1843, column: 23, scope: !6621)
!6629 = !DILocation(line: 1845, column: 6, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6621, file: !299, line: 1845, column: 6)
!6631 = !DILocation(line: 1845, column: 6, scope: !6621)
!6632 = !DILocation(line: 1846, column: 3, scope: !6630)
!6633 = !DILocation(line: 1849, column: 7, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6621, file: !299, line: 1849, column: 6)
!6635 = !DILocation(line: 1849, column: 19, scope: !6634)
!6636 = !DILocation(line: 1849, column: 23, scope: !6634)
!6637 = !DILocation(line: 1849, column: 35, scope: !6634)
!6638 = !DILocation(line: 1849, column: 6, scope: !6621)
!6639 = !DILocation(line: 1850, column: 3, scope: !6634)
!6640 = !DILocation(line: 1852, column: 10, scope: !6621)
!6641 = !DILocation(line: 1852, column: 22, scope: !6621)
!6642 = !DILocation(line: 1852, column: 28, scope: !6621)
!6643 = !DILocation(line: 1852, column: 31, scope: !6621)
!6644 = !DILocation(line: 1852, column: 2, scope: !6621)
!6645 = !DILocation(line: 1853, column: 1, scope: !6621)
!6646 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6647, file: !6647, line: 78, type: !2578, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6648)
!6647 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6648 = !{!6649, !6650, !6652}
!6649 = !DILocalVariable(name: "val", arg: 1, scope: !6646, file: !6647, line: 78, type: !66)
!6650 = !DILocalVariable(name: "pao_ID__", scope: !6651, file: !6647, line: 80, type: !3790)
!6651 = distinct !DILexicalBlock(scope: !6646, file: !6647, line: 80, column: 2)
!6652 = !DILocalVariable(name: "pto_val__", scope: !6653, file: !6647, line: 80, type: !402)
!6653 = distinct !DILexicalBlock(scope: !6654, file: !6647, line: 80, column: 2)
!6654 = distinct !DILexicalBlock(scope: !6655, file: !6647, line: 80, column: 2)
!6655 = distinct !DILexicalBlock(scope: !6651, file: !6647, line: 80, column: 2)
!6656 = !DILocation(line: 78, column: 53, scope: !6646)
!6657 = !DILocation(line: 80, column: 2, scope: !6646)
!6658 = !DILocation(line: 80, column: 2, scope: !6651)
!6659 = !DILocation(line: 80, column: 2, scope: !6655)
!6660 = !DILocation(line: 80, column: 2, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6655, file: !6647, line: 80, column: 2)
!6662 = !{i64 2149684170}
!6663 = !DILocation(line: 80, column: 2, scope: !6654)
!6664 = !DILocation(line: 80, column: 2, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6654, file: !6647, line: 80, column: 2)
!6666 = !{i64 2149684465}
!6667 = !DILocation(line: 80, column: 2, scope: !6653)
!6668 = !{i64 2149685170}
!6669 = !DILocation(line: 81, column: 1, scope: !6646)
!6670 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6647, file: !6647, line: 93, type: !3548, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6671)
!6671 = !{!6672}
!6672 = !DILocalVariable(name: "c", scope: !6673, file: !6647, line: 95, type: !872)
!6673 = distinct !DILexicalBlock(scope: !6670, file: !6647, line: 95, column: 9)
!6674 = !DILocation(line: 95, column: 9, scope: !6673)
!6675 = !{i64 2149688526, i64 2149688619}
!6676 = !DILocation(line: 95, column: 9, scope: !6670)
!6677 = !DILocation(line: 95, column: 2, scope: !6670)
!6678 = distinct !DISubprogram(name: "subsection_map_index", scope: !299, file: !299, line: 1962, type: !5800, scopeLine: 1963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6679)
!6679 = !{!6680}
!6680 = !DILocalVariable(name: "pfn", arg: 1, scope: !6678, file: !299, line: 1962, type: !83)
!6681 = !DILocation(line: 1962, column: 54, scope: !6678)
!6682 = !DILocation(line: 1964, column: 10, scope: !6678)
!6683 = !DILocation(line: 1964, column: 14, scope: !6678)
!6684 = !DILocation(line: 1964, column: 38, scope: !6678)
!6685 = !DILocation(line: 1964, column: 9, scope: !6678)
!6686 = !DILocation(line: 1964, column: 2, scope: !6678)
!6687 = distinct !DISubprogram(name: "folio_entire_mapcount", scope: !1449, file: !1449, line: 1167, type: !5252, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6688)
!6688 = !{!6689}
!6689 = !DILocalVariable(name: "folio", arg: 1, scope: !6687, file: !1449, line: 1167, type: !3323)
!6690 = !DILocation(line: 1167, column: 55, scope: !6687)
!6691 = !DILocation(line: 1170, column: 22, scope: !6687)
!6692 = !DILocation(line: 1170, column: 29, scope: !6687)
!6693 = !DILocation(line: 1170, column: 9, scope: !6687)
!6694 = !DILocation(line: 1170, column: 47, scope: !6687)
!6695 = !DILocation(line: 1170, column: 2, scope: !6687)
!6696 = distinct !DISubprogram(name: "kpageflags_read", scope: !3, file: !3, line: 226, type: !3292, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6697)
!6697 = !{!6698, !6699, !6700, !6701, !6702, !6703, !6704, !6705, !6706, !6707, !6708, !6710, !6711, !6714, !6718, !6719, !6720, !6721}
!6698 = !DILocalVariable(name: "file", arg: 1, scope: !6696, file: !3, line: 226, type: !647)
!6699 = !DILocalVariable(name: "buf", arg: 2, scope: !6696, file: !3, line: 226, type: !474)
!6700 = !DILocalVariable(name: "count", arg: 3, scope: !6696, file: !3, line: 227, type: !79)
!6701 = !DILocalVariable(name: "ppos", arg: 4, scope: !6696, file: !3, line: 227, type: !84)
!6702 = !DILocalVariable(name: "max_dump_pfn", scope: !6696, file: !3, line: 229, type: !5366)
!6703 = !DILocalVariable(name: "out", scope: !6696, file: !3, line: 230, type: !4532)
!6704 = !DILocalVariable(name: "ppage", scope: !6696, file: !3, line: 231, type: !307)
!6705 = !DILocalVariable(name: "src", scope: !6696, file: !3, line: 232, type: !83)
!6706 = !DILocalVariable(name: "pfn", scope: !6696, file: !3, line: 233, type: !83)
!6707 = !DILocalVariable(name: "ret", scope: !6696, file: !3, line: 234, type: !605)
!6708 = !DILocalVariable(name: "__UNIQUE_ID___x338", scope: !6709, file: !3, line: 241, type: !83)
!6709 = distinct !DILexicalBlock(scope: !6696, file: !3, line: 241, column: 10)
!6710 = !DILocalVariable(name: "__UNIQUE_ID___y339", scope: !6709, file: !3, line: 241, type: !83)
!6711 = !DILocalVariable(name: "___page", scope: !6712, file: !3, line: 248, type: !307)
!6712 = distinct !DILexicalBlock(scope: !6713, file: !3, line: 248, column: 11)
!6713 = distinct !DILexicalBlock(scope: !6696, file: !3, line: 243, column: 20)
!6714 = !DILocalVariable(name: "__ret_pu", scope: !6715, file: !3, line: 250, type: !66)
!6715 = distinct !DILexicalBlock(scope: !6716, file: !3, line: 250, column: 7)
!6716 = distinct !DILexicalBlock(scope: !6717, file: !3, line: 250, column: 7)
!6717 = distinct !DILexicalBlock(scope: !6713, file: !3, line: 250, column: 7)
!6718 = !DILocalVariable(name: "__ptr_pu", scope: !6715, file: !3, line: 250, type: !64)
!6719 = !DILocalVariable(name: "__val_pu", scope: !6715, file: !3, line: 250, type: !406)
!6720 = !DILocalVariable(name: "__x", scope: !6715, file: !3, line: 250, type: !406)
!6721 = !DILocalVariable(name: "__ptr", scope: !6715, file: !3, line: 250, type: !4532)
!6722 = !DILocation(line: 226, column: 45, scope: !6696)
!6723 = !DILocation(line: 226, column: 64, scope: !6696)
!6724 = !DILocation(line: 227, column: 16, scope: !6696)
!6725 = !DILocation(line: 227, column: 31, scope: !6696)
!6726 = !DILocation(line: 229, column: 2, scope: !6696)
!6727 = !DILocation(line: 229, column: 22, scope: !6696)
!6728 = !DILocation(line: 229, column: 37, scope: !6696)
!6729 = !DILocation(line: 230, column: 2, scope: !6696)
!6730 = !DILocation(line: 230, column: 14, scope: !6696)
!6731 = !DILocation(line: 230, column: 34, scope: !6696)
!6732 = !DILocation(line: 231, column: 2, scope: !6696)
!6733 = !DILocation(line: 231, column: 15, scope: !6696)
!6734 = !DILocation(line: 232, column: 2, scope: !6696)
!6735 = !DILocation(line: 232, column: 16, scope: !6696)
!6736 = !DILocation(line: 232, column: 23, scope: !6696)
!6737 = !DILocation(line: 232, column: 22, scope: !6696)
!6738 = !DILocation(line: 233, column: 2, scope: !6696)
!6739 = !DILocation(line: 233, column: 16, scope: !6696)
!6740 = !DILocation(line: 234, column: 2, scope: !6696)
!6741 = !DILocation(line: 234, column: 10, scope: !6696)
!6742 = !DILocation(line: 236, column: 8, scope: !6696)
!6743 = !DILocation(line: 236, column: 12, scope: !6696)
!6744 = !DILocation(line: 236, column: 6, scope: !6696)
!6745 = !DILocation(line: 237, column: 6, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6696, file: !3, line: 237, column: 6)
!6747 = !DILocation(line: 237, column: 10, scope: !6746)
!6748 = !DILocation(line: 237, column: 20, scope: !6746)
!6749 = !DILocation(line: 237, column: 23, scope: !6746)
!6750 = !DILocation(line: 237, column: 29, scope: !6746)
!6751 = !DILocation(line: 237, column: 6, scope: !6696)
!6752 = !DILocation(line: 238, column: 3, scope: !6746)
!6753 = !DILocation(line: 239, column: 6, scope: !6754)
!6754 = distinct !DILexicalBlock(scope: !6696, file: !3, line: 239, column: 6)
!6755 = !DILocation(line: 239, column: 13, scope: !6754)
!6756 = !DILocation(line: 239, column: 26, scope: !6754)
!6757 = !DILocation(line: 239, column: 10, scope: !6754)
!6758 = !DILocation(line: 239, column: 6, scope: !6696)
!6759 = !DILocation(line: 240, column: 3, scope: !6754)
!6760 = !DILocation(line: 241, column: 10, scope: !6709)
!6761 = !DILocation(line: 241, column: 10, scope: !6696)
!6762 = !DILocation(line: 241, column: 8, scope: !6696)
!6763 = !DILocation(line: 243, column: 2, scope: !6696)
!6764 = !DILocation(line: 243, column: 9, scope: !6696)
!6765 = !DILocation(line: 243, column: 15, scope: !6696)
!6766 = !DILocation(line: 248, column: 11, scope: !6712)
!6767 = !DILocation(line: 248, column: 11, scope: !6768)
!6768 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 248, column: 11)
!6769 = !DILocation(line: 248, column: 11, scope: !6713)
!6770 = !DILocation(line: 248, column: 9, scope: !6713)
!6771 = !DILocation(line: 250, column: 7, scope: !6716)
!6772 = !DILocation(line: 250, column: 7, scope: !6715)
!6773 = !{i64 2155630274}
!6774 = !DILocation(line: 250, column: 7, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 250, column: 7)
!6776 = !DILocation(line: 250, column: 7, scope: !6717)
!6777 = !DILocation(line: 250, column: 7, scope: !6713)
!6778 = !DILocation(line: 251, column: 8, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6717, file: !3, line: 250, column: 48)
!6780 = !DILocation(line: 252, column: 4, scope: !6779)
!6781 = !DILocation(line: 255, column: 6, scope: !6713)
!6782 = !DILocation(line: 256, column: 6, scope: !6713)
!6783 = !DILocation(line: 257, column: 9, scope: !6713)
!6784 = !DILocation(line: 259, column: 3, scope: !6785)
!6785 = distinct !DILexicalBlock(scope: !6713, file: !3, line: 259, column: 3)
!6786 = distinct !{!6786, !6763, !6787, !6371, !6372}
!6787 = !DILocation(line: 260, column: 2, scope: !6696)
!6788 = !DILocation(line: 262, column: 26, scope: !6696)
!6789 = !DILocation(line: 262, column: 32, scope: !6696)
!6790 = !DILocation(line: 262, column: 30, scope: !6696)
!6791 = !DILocation(line: 262, column: 3, scope: !6696)
!6792 = !DILocation(line: 262, column: 8, scope: !6696)
!6793 = !DILocation(line: 263, column: 7, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6696, file: !3, line: 263, column: 6)
!6795 = !DILocation(line: 263, column: 6, scope: !6696)
!6796 = !DILocation(line: 264, column: 24, scope: !6794)
!6797 = !DILocation(line: 264, column: 30, scope: !6794)
!6798 = !DILocation(line: 264, column: 28, scope: !6794)
!6799 = !DILocation(line: 264, column: 7, scope: !6794)
!6800 = !DILocation(line: 264, column: 3, scope: !6794)
!6801 = !DILocation(line: 265, column: 9, scope: !6696)
!6802 = !DILocation(line: 265, column: 2, scope: !6696)
!6803 = !DILocation(line: 266, column: 1, scope: !6696)
