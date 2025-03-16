; ModuleID = 'src/z18.c'
source_filename = "src/z18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.STYLE = type { %union.anon, %union.anon.0, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.0 = type { %struct.GAP }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.4 }
%struct.anon.4 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%union.anon.13 = type { ptr }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.anon.12 = type { ptr }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }

@initial_constraint = internal global %struct.CONSTRAINT zeroinitializer, align 4
@InitialEnvironment = dso_local local_unnamed_addr global ptr null, align 8
@InitialStyle = dso_local global %struct.STYLE zeroinitializer, align 4
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@no_fpos = external local_unnamed_addr global ptr, align 8
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@PrintSym = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@root_galley = internal unnamed_addr global ptr null, align 8
@InputSym = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"TransferInit: recs   != nilobj!\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"TransferInit: inners != nilobj!\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"TransferInit: initial galley!\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"TransferInit: input sym not external!\00", align 1
@itop = internal unnamed_addr global i32 0, align 4
@targets = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@constraints = internal global [30 x %struct.CONSTRAINT] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [28 x i8] c"TransferBegin: non-CLOSURE!\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"cannot attach galley %s\00", align 1
@xx_hold = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"galley nested too deeply (max is %d)\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"galley %s deleted (insufficient width at target)\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"right parameter of %s is vertically constrained\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"TransferComponent: internal!\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"TransferComponent: input child!\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"TransferEnd: input child!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @TransferInit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  store i32 8388606, ptr @initial_constraint, align 4, !tbaa !5
  store i32 8388606, ptr getelementptr inbounds (%struct.CONSTRAINT, ptr @initial_constraint, i64 0, i32 1), align 4, !tbaa !10
  store i32 8388606, ptr getelementptr inbounds (%struct.CONSTRAINT, ptr @initial_constraint, i64 0, i32 2), align 4, !tbaa !11
  store ptr %0, ptr @InitialEnvironment, align 8, !tbaa !12
  %6 = load i16, ptr @InitialStyle, align 4
  %7 = and i16 %6, 127
  %8 = or disjoint i16 %7, 25600
  store i16 %8, ptr @InitialStyle, align 4
  store i16 360, ptr getelementptr inbounds (%struct.STYLE, ptr @InitialStyle, i64 0, i32 0, i32 0, i32 1), align 2, !tbaa !14
  %9 = load i16, ptr getelementptr inbounds (%struct.STYLE, ptr @InitialStyle, i64 0, i32 1), align 4
  %10 = and i16 %9, 127
  %11 = or disjoint i16 %10, 9728
  store i16 %11, ptr getelementptr inbounds (%struct.STYLE, ptr @InitialStyle, i64 0, i32 1), align 4
  store i16 120, ptr getelementptr inbounds (%struct.STYLE, ptr @InitialStyle, i64 0, i32 1, i32 0, i32 1), align 2, !tbaa !14
  store i8 0, ptr getelementptr inbounds (%struct.STYLE, ptr @InitialStyle, i64 0, i32 1), align 4
  store i8 0, ptr @InitialStyle, align 4
  store i64 0, ptr getelementptr inbounds (%struct.STYLE, ptr @InitialStyle, i64 0, i32 2), align 4
  %12 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 8), align 1, !tbaa !14
  %13 = zext i8 %12 to i32
  store i32 %13, ptr @zz_size, align 4, !tbaa !15
  %14 = zext i8 %12 to i64
  %15 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %20 = tail call ptr @GetMemory(i32 noundef %13, ptr noundef %19) #4
  store ptr %20, ptr @zz_hold, align 8, !tbaa !12
  br label %23

21:                                               ; preds = %1
  store ptr %16, ptr @zz_hold, align 8, !tbaa !12
  %22 = load ptr, ptr %16, align 8, !tbaa !14
  store ptr %22, ptr %15, align 8, !tbaa !12
  br label %23

23:                                               ; preds = %18, %21
  %24 = phi ptr [ %20, %18 ], [ %16, %21 ]
  %25 = getelementptr inbounds %struct.word_type, ptr %24, i64 0, i32 1
  store i8 8, ptr %25, align 8, !tbaa !14
  %26 = getelementptr inbounds [2 x %struct.LIST], ptr %24, i64 0, i64 1, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !14
  %27 = getelementptr inbounds [2 x %struct.LIST], ptr %24, i64 0, i64 1
  store ptr %24, ptr %27, align 8, !tbaa !14
  %28 = getelementptr inbounds %struct.LIST, ptr %24, i64 0, i32 1
  store ptr %24, ptr %28, align 8, !tbaa !14
  store ptr %24, ptr %24, align 8, !tbaa !14
  %29 = getelementptr inbounds i8, ptr %24, i64 42
  %30 = load i16, ptr %29, align 2
  %31 = and i16 %30, -4353
  %32 = getelementptr inbounds %struct.head_type, ptr %24, i64 0, i32 11
  %33 = getelementptr inbounds %struct.closure_type, ptr %24, i64 0, i32 5
  store ptr null, ptr %33, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.head_type, ptr %24, i64 0, i32 8
  %35 = or disjoint i16 %31, 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, i8 0, i64 32, i1 false)
  store i16 %35, ptr %29, align 2
  %36 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 122), align 1, !tbaa !14
  %37 = zext i8 %36 to i32
  store i32 %37, ptr @zz_size, align 4, !tbaa !15
  %38 = zext i8 %36 to i64
  %39 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %44 = tail call ptr @GetMemory(i32 noundef %37, ptr noundef %43) #4
  store ptr %44, ptr @zz_hold, align 8, !tbaa !12
  br label %47

45:                                               ; preds = %23
  store ptr %40, ptr @zz_hold, align 8, !tbaa !12
  %46 = load ptr, ptr %40, align 8, !tbaa !14
  store ptr %46, ptr %39, align 8, !tbaa !12
  br label %47

47:                                               ; preds = %42, %45
  %48 = phi ptr [ %44, %42 ], [ %40, %45 ]
  %49 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 1
  store i8 122, ptr %49, align 8, !tbaa !14
  %50 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %48, i64 0, i64 1, i32 1
  store ptr %48, ptr %51, align 8, !tbaa !14
  store ptr %48, ptr %50, align 8, !tbaa !14
  %52 = getelementptr inbounds %struct.LIST, ptr %48, i64 0, i32 1
  store ptr %48, ptr %52, align 8, !tbaa !14
  store ptr %48, ptr %48, align 8, !tbaa !14
  %53 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !14
  %54 = zext i8 %53 to i32
  store i32 %54, ptr @zz_size, align 4, !tbaa !15
  %55 = zext i8 %53 to i64
  %56 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %61 = tail call ptr @GetMemory(i32 noundef %54, ptr noundef %60) #4
  store ptr %61, ptr @zz_hold, align 8, !tbaa !12
  br label %64

62:                                               ; preds = %47
  store ptr %57, ptr @zz_hold, align 8, !tbaa !12
  %63 = load ptr, ptr %57, align 8, !tbaa !14
  store ptr %63, ptr %56, align 8, !tbaa !12
  br label %64

64:                                               ; preds = %59, %62
  %65 = phi ptr [ %61, %59 ], [ %57, %62 ]
  %66 = getelementptr inbounds %struct.word_type, ptr %65, i64 0, i32 1
  store i8 2, ptr %66, align 8, !tbaa !14
  %67 = getelementptr inbounds [2 x %struct.LIST], ptr %65, i64 0, i64 1, i32 1
  store ptr %65, ptr %67, align 8, !tbaa !14
  %68 = getelementptr inbounds [2 x %struct.LIST], ptr %65, i64 0, i64 1
  store ptr %65, ptr %68, align 8, !tbaa !14
  %69 = getelementptr inbounds %struct.LIST, ptr %65, i64 0, i32 1
  store ptr %65, ptr %69, align 8, !tbaa !14
  store ptr %65, ptr %65, align 8, !tbaa !14
  %70 = load ptr, ptr @PrintSym, align 8, !tbaa !12
  %71 = getelementptr inbounds %struct.closure_type, ptr %65, i64 0, i32 5
  store ptr %70, ptr %71, align 8, !tbaa !14
  %72 = getelementptr inbounds %struct.closure_type, ptr %48, i64 0, i32 5
  store ptr %65, ptr %72, align 8, !tbaa !14
  %73 = getelementptr inbounds i8, ptr %65, i64 42
  %74 = load i16, ptr %73, align 2
  %75 = and i16 %74, -29
  %76 = or disjoint i16 %75, 16
  store i16 %76, ptr %73, align 2
  %77 = getelementptr inbounds i8, ptr %48, i64 42
  %78 = load i16, ptr %77, align 2
  %79 = and i16 %78, -33
  store i16 %79, ptr %77, align 2
  %80 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %81 = zext i8 %80 to i32
  store i32 %81, ptr @zz_size, align 4, !tbaa !15
  %82 = zext i8 %80 to i64
  %83 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %64
  %87 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %88 = tail call ptr @GetMemory(i32 noundef %81, ptr noundef %87) #4
  br label %91

89:                                               ; preds = %64
  store ptr %84, ptr @zz_hold, align 8, !tbaa !12
  %90 = load ptr, ptr %84, align 8, !tbaa !14
  store ptr %90, ptr %83, align 8, !tbaa !12
  br label %91

91:                                               ; preds = %86, %89
  %92 = phi ptr [ %88, %86 ], [ %84, %89 ]
  %93 = getelementptr inbounds %struct.word_type, ptr %92, i64 0, i32 1
  store i8 0, ptr %93, align 8, !tbaa !14
  %94 = getelementptr inbounds [2 x %struct.LIST], ptr %92, i64 0, i64 1, i32 1
  store ptr %92, ptr %94, align 8, !tbaa !14
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %92, i64 0, i64 1
  store ptr %92, ptr %95, align 8, !tbaa !14
  %96 = getelementptr inbounds %struct.LIST, ptr %92, i64 0, i32 1
  store ptr %92, ptr %96, align 8, !tbaa !14
  store ptr %92, ptr %92, align 8, !tbaa !14
  store ptr %92, ptr @xx_link, align 8, !tbaa !12
  store ptr %92, ptr @zz_res, align 8, !tbaa !12
  store ptr %24, ptr @zz_hold, align 8, !tbaa !12
  %97 = load ptr, ptr %24, align 8, !tbaa !14
  store ptr %97, ptr @zz_tmp, align 8, !tbaa !12
  %98 = load ptr, ptr %92, align 8, !tbaa !14
  store ptr %98, ptr %24, align 8, !tbaa !14
  %99 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %100 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %101 = load ptr, ptr %100, align 8, !tbaa !14
  %102 = getelementptr inbounds %struct.LIST, ptr %101, i64 0, i32 1
  store ptr %99, ptr %102, align 8, !tbaa !14
  %103 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %103, ptr %100, align 8, !tbaa !14
  %104 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %105 = getelementptr inbounds %struct.LIST, ptr %103, i64 0, i32 1
  store ptr %104, ptr %105, align 8, !tbaa !14
  %106 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %106, ptr @zz_res, align 8, !tbaa !12
  store ptr %48, ptr @zz_hold, align 8, !tbaa !12
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %91
  %109 = load ptr, ptr %50, align 8, !tbaa !14
  store ptr %109, ptr @zz_tmp, align 8, !tbaa !12
  %110 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !14
  store ptr %111, ptr %50, align 8, !tbaa !14
  %112 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1, i32 1
  store ptr %48, ptr %112, align 8, !tbaa !14
  store ptr %109, ptr %110, align 8, !tbaa !14
  %113 = getelementptr inbounds [2 x %struct.LIST], ptr %109, i64 0, i64 1, i32 1
  store ptr %106, ptr %113, align 8, !tbaa !14
  br label %114

114:                                              ; preds = %91, %108
  %115 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 8), align 1, !tbaa !14
  %116 = zext i8 %115 to i32
  store i32 %116, ptr @zz_size, align 4, !tbaa !15
  %117 = zext i8 %115 to i64
  %118 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !12
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %123 = tail call ptr @GetMemory(i32 noundef %116, ptr noundef %122) #4
  store ptr %123, ptr @zz_hold, align 8, !tbaa !12
  br label %126

124:                                              ; preds = %114
  store ptr %119, ptr @zz_hold, align 8, !tbaa !12
  %125 = load ptr, ptr %119, align 8, !tbaa !14
  store ptr %125, ptr %118, align 8, !tbaa !12
  br label %126

126:                                              ; preds = %121, %124
  %127 = phi ptr [ %123, %121 ], [ %119, %124 ]
  %128 = getelementptr inbounds %struct.word_type, ptr %127, i64 0, i32 1
  store i8 8, ptr %128, align 8, !tbaa !14
  %129 = getelementptr inbounds [2 x %struct.LIST], ptr %127, i64 0, i64 1, i32 1
  store ptr %127, ptr %129, align 8, !tbaa !14
  %130 = getelementptr inbounds [2 x %struct.LIST], ptr %127, i64 0, i64 1
  store ptr %127, ptr %130, align 8, !tbaa !14
  %131 = getelementptr inbounds %struct.LIST, ptr %127, i64 0, i32 1
  store ptr %127, ptr %131, align 8, !tbaa !14
  store ptr %127, ptr %127, align 8, !tbaa !14
  store ptr %127, ptr @root_galley, align 8, !tbaa !12
  %132 = getelementptr inbounds i8, ptr %127, i64 42
  %133 = load i16, ptr %132, align 2
  %134 = and i16 %133, -4353
  %135 = getelementptr inbounds %struct.head_type, ptr %127, i64 0, i32 11
  %136 = getelementptr inbounds %struct.head_type, ptr %127, i64 0, i32 8
  %137 = or disjoint i16 %134, 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %136, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %135, i8 0, i64 32, i1 false)
  store i16 %137, ptr %132, align 2
  %138 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %139 = getelementptr inbounds %struct.FILE_POS, ptr %138, i64 0, i32 2
  %140 = load i16, ptr %139, align 2, !tbaa !16
  %141 = getelementptr inbounds %struct.word_type, ptr %127, i64 0, i32 1, i32 0, i32 2
  store i16 %140, ptr %141, align 2, !tbaa !14
  %142 = getelementptr inbounds %struct.FILE_POS, ptr %138, i64 0, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 1048575
  %145 = getelementptr inbounds %struct.word_type, ptr %127, i64 0, i32 1, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, -1048576
  %148 = or disjoint i32 %147, %144
  store i32 %148, ptr %145, align 4
  %149 = load i32, ptr %142, align 4
  %150 = and i32 %149, -1048576
  %151 = or disjoint i32 %150, %144
  store i32 %151, ptr %145, align 4
  %152 = getelementptr inbounds %struct.closure_type, ptr %127, i64 0, i32 5
  %153 = and i16 %137, -4227
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %152, i8 0, i64 24, i1 false)
  store i16 %153, ptr %132, align 2
  %154 = getelementptr inbounds %struct.word_type, ptr %127, i64 0, i32 2
  store i8 -127, ptr %154, align 8, !tbaa !14
  %155 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !14
  %156 = zext i8 %155 to i32
  store i32 %156, ptr @zz_size, align 4, !tbaa !15
  %157 = zext i8 %155 to i64
  %158 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !12
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %126
  %162 = tail call ptr @GetMemory(i32 noundef %156, ptr noundef nonnull %138) #4
  store ptr %162, ptr @zz_hold, align 8, !tbaa !12
  br label %165

163:                                              ; preds = %126
  store ptr %159, ptr @zz_hold, align 8, !tbaa !12
  %164 = load ptr, ptr %159, align 8, !tbaa !14
  store ptr %164, ptr %158, align 8, !tbaa !12
  br label %165

165:                                              ; preds = %161, %163
  %166 = phi ptr [ %162, %161 ], [ %159, %163 ]
  %167 = getelementptr inbounds %struct.word_type, ptr %166, i64 0, i32 1
  store i8 2, ptr %167, align 8, !tbaa !14
  %168 = getelementptr inbounds [2 x %struct.LIST], ptr %166, i64 0, i64 1
  %169 = getelementptr inbounds [2 x %struct.LIST], ptr %166, i64 0, i64 1, i32 1
  store ptr %166, ptr %169, align 8, !tbaa !14
  store ptr %166, ptr %168, align 8, !tbaa !14
  %170 = getelementptr inbounds %struct.LIST, ptr %166, i64 0, i32 1
  store ptr %166, ptr %170, align 8, !tbaa !14
  store ptr %166, ptr %166, align 8, !tbaa !14
  %171 = load ptr, ptr @InputSym, align 8, !tbaa !12
  %172 = getelementptr inbounds %struct.closure_type, ptr %166, i64 0, i32 5
  store ptr %171, ptr %172, align 8, !tbaa !14
  %173 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %174 = zext i8 %173 to i32
  store i32 %174, ptr @zz_size, align 4, !tbaa !15
  %175 = zext i8 %173 to i64
  %176 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !12
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %165
  %180 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %181 = tail call ptr @GetMemory(i32 noundef %174, ptr noundef %180) #4
  br label %184

182:                                              ; preds = %165
  store ptr %177, ptr @zz_hold, align 8, !tbaa !12
  %183 = load ptr, ptr %177, align 8, !tbaa !14
  store ptr %183, ptr %176, align 8, !tbaa !12
  br label %184

184:                                              ; preds = %179, %182
  %185 = phi ptr [ %181, %179 ], [ %177, %182 ]
  %186 = getelementptr inbounds %struct.word_type, ptr %185, i64 0, i32 1
  store i8 0, ptr %186, align 8, !tbaa !14
  %187 = getelementptr inbounds [2 x %struct.LIST], ptr %185, i64 0, i64 1, i32 1
  store ptr %185, ptr %187, align 8, !tbaa !14
  %188 = getelementptr inbounds [2 x %struct.LIST], ptr %185, i64 0, i64 1
  store ptr %185, ptr %188, align 8, !tbaa !14
  %189 = getelementptr inbounds %struct.LIST, ptr %185, i64 0, i32 1
  store ptr %185, ptr %189, align 8, !tbaa !14
  store ptr %185, ptr %185, align 8, !tbaa !14
  store ptr %185, ptr @xx_link, align 8, !tbaa !12
  store ptr %185, ptr @zz_res, align 8, !tbaa !12
  %190 = load ptr, ptr @root_galley, align 8, !tbaa !12
  store ptr %190, ptr @zz_hold, align 8, !tbaa !12
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  store ptr %166, ptr @zz_hold, align 8, !tbaa !12
  br label %208

193:                                              ; preds = %184
  %194 = load ptr, ptr %190, align 8, !tbaa !14
  store ptr %194, ptr @zz_tmp, align 8, !tbaa !12
  %195 = load ptr, ptr %185, align 8, !tbaa !14
  store ptr %195, ptr %190, align 8, !tbaa !14
  %196 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %197 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %198 = load ptr, ptr %197, align 8, !tbaa !14
  %199 = getelementptr inbounds %struct.LIST, ptr %198, i64 0, i32 1
  store ptr %196, ptr %199, align 8, !tbaa !14
  %200 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %200, ptr %197, align 8, !tbaa !14
  %201 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %202 = getelementptr inbounds %struct.LIST, ptr %200, i64 0, i32 1
  store ptr %201, ptr %202, align 8, !tbaa !14
  %203 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %203, ptr @zz_res, align 8, !tbaa !12
  store ptr %166, ptr @zz_hold, align 8, !tbaa !12
  %204 = icmp eq ptr %203, null
  br i1 %204, label %216, label %205

205:                                              ; preds = %193
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %203, i64 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !14
  br label %208

208:                                              ; preds = %205, %192
  %209 = phi ptr [ %185, %192 ], [ %207, %205 ]
  %210 = phi ptr [ %185, %192 ], [ %203, %205 ]
  %211 = load ptr, ptr %168, align 8, !tbaa !14
  store ptr %211, ptr @zz_tmp, align 8, !tbaa !12
  %212 = getelementptr inbounds [2 x %struct.LIST], ptr %210, i64 0, i64 1
  store ptr %209, ptr %168, align 8, !tbaa !14
  %213 = load ptr, ptr %212, align 8, !tbaa !14
  %214 = getelementptr inbounds [2 x %struct.LIST], ptr %213, i64 0, i64 1, i32 1
  store ptr %166, ptr %214, align 8, !tbaa !14
  store ptr %211, ptr %212, align 8, !tbaa !14
  %215 = getelementptr inbounds [2 x %struct.LIST], ptr %211, i64 0, i64 1, i32 1
  store ptr %210, ptr %215, align 8, !tbaa !14
  br label %216

216:                                              ; preds = %193, %208
  call void @SizeGalley(ptr noundef %190, ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @InitialStyle, ptr noundef nonnull @initial_constraint, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null) #4
  %217 = load ptr, ptr %2, align 8, !tbaa !12
  %218 = icmp eq ptr %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %221 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %220, ptr noundef nonnull @.str.2) #4
  br label %222

222:                                              ; preds = %219, %216
  %223 = load ptr, ptr %3, align 8, !tbaa !12
  %224 = icmp eq ptr %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %227 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %226, ptr noundef nonnull @.str.3) #4
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %230 = zext i8 %229 to i32
  store i32 %230, ptr @zz_size, align 4, !tbaa !15
  %231 = zext i8 %229 to i64
  %232 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !12
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %237 = call ptr @GetMemory(i32 noundef %230, ptr noundef %236) #4
  br label %240

238:                                              ; preds = %228
  store ptr %233, ptr @zz_hold, align 8, !tbaa !12
  %239 = load ptr, ptr %233, align 8, !tbaa !14
  store ptr %239, ptr %232, align 8, !tbaa !12
  br label %240

240:                                              ; preds = %235, %238
  %241 = phi ptr [ %237, %235 ], [ %233, %238 ]
  %242 = getelementptr inbounds %struct.word_type, ptr %241, i64 0, i32 1
  store i8 0, ptr %242, align 8, !tbaa !14
  %243 = getelementptr inbounds [2 x %struct.LIST], ptr %241, i64 0, i64 1, i32 1
  store ptr %241, ptr %243, align 8, !tbaa !14
  %244 = getelementptr inbounds [2 x %struct.LIST], ptr %241, i64 0, i64 1
  store ptr %241, ptr %244, align 8, !tbaa !14
  %245 = getelementptr inbounds %struct.LIST, ptr %241, i64 0, i32 1
  store ptr %241, ptr %245, align 8, !tbaa !14
  store ptr %241, ptr %241, align 8, !tbaa !14
  store ptr %241, ptr @xx_link, align 8, !tbaa !12
  store ptr %241, ptr @zz_res, align 8, !tbaa !12
  store ptr %48, ptr @zz_hold, align 8, !tbaa !12
  %246 = load ptr, ptr %48, align 8, !tbaa !14
  store ptr %246, ptr @zz_tmp, align 8, !tbaa !12
  %247 = load ptr, ptr %241, align 8, !tbaa !14
  store ptr %247, ptr %48, align 8, !tbaa !14
  %248 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %249 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %250 = load ptr, ptr %249, align 8, !tbaa !14
  %251 = getelementptr inbounds %struct.LIST, ptr %250, i64 0, i32 1
  store ptr %248, ptr %251, align 8, !tbaa !14
  %252 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %252, ptr %249, align 8, !tbaa !14
  %253 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %254 = getelementptr inbounds %struct.LIST, ptr %252, i64 0, i32 1
  store ptr %253, ptr %254, align 8, !tbaa !14
  %255 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %255, ptr @zz_res, align 8, !tbaa !12
  %256 = load ptr, ptr @root_galley, align 8, !tbaa !12
  store ptr %256, ptr @zz_hold, align 8, !tbaa !12
  %257 = icmp eq ptr %256, null
  %258 = icmp eq ptr %255, null
  %259 = select i1 %257, i1 true, i1 %258
  br i1 %259, label %267, label %260

260:                                              ; preds = %240
  %261 = getelementptr inbounds [2 x %struct.LIST], ptr %256, i64 0, i64 1
  %262 = load ptr, ptr %261, align 8, !tbaa !14
  store ptr %262, ptr @zz_tmp, align 8, !tbaa !12
  %263 = getelementptr inbounds [2 x %struct.LIST], ptr %255, i64 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !14
  store ptr %264, ptr %261, align 8, !tbaa !14
  %265 = getelementptr inbounds [2 x %struct.LIST], ptr %264, i64 0, i64 1, i32 1
  store ptr %256, ptr %265, align 8, !tbaa !14
  store ptr %262, ptr %263, align 8, !tbaa !14
  %266 = getelementptr inbounds [2 x %struct.LIST], ptr %262, i64 0, i64 1, i32 1
  store ptr %255, ptr %266, align 8, !tbaa !14
  br label %267

267:                                              ; preds = %240, %260
  %268 = getelementptr inbounds %struct.LIST, ptr %256, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !14
  br label %270

270:                                              ; preds = %270, %267
  %271 = phi ptr [ %269, %267 ], [ %273, %270 ]
  %272 = getelementptr inbounds [2 x %struct.LIST], ptr %271, i64 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !14
  %274 = getelementptr inbounds %struct.word_type, ptr %273, i64 0, i32 1
  %275 = load i8, ptr %274, align 8, !tbaa !14
  switch i8 %275, label %287 [
    i8 0, label %270
    i8 121, label %276
  ]

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.closure_type, ptr %273, i64 0, i32 5
  %278 = load ptr, ptr %277, align 8, !tbaa !14
  %279 = getelementptr inbounds %struct.word_type, ptr %278, i64 0, i32 1
  %280 = load i8, ptr %279, align 8, !tbaa !14
  %281 = icmp eq i8 %280, 2
  br i1 %281, label %282, label %287

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.closure_type, ptr %278, i64 0, i32 5
  %284 = load ptr, ptr %283, align 8, !tbaa !14
  %285 = load ptr, ptr @InputSym, align 8, !tbaa !12
  %286 = icmp eq ptr %284, %285
  br i1 %286, label %292, label %287

287:                                              ; preds = %270, %282, %276
  %288 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %289 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %288, ptr noundef nonnull @.str.4) #4
  %290 = getelementptr inbounds %struct.closure_type, ptr %273, i64 0, i32 5
  %291 = load ptr, ptr %290, align 8, !tbaa !14
  br label %292

292:                                              ; preds = %287, %282
  %293 = phi ptr [ %291, %287 ], [ %278, %282 ]
  %294 = getelementptr inbounds i8, ptr %293, i64 42
  %295 = load i16, ptr %294, align 2
  %296 = and i16 %295, 16
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %292
  %299 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %300 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %299, ptr noundef nonnull @.str.5) #4
  br label %301

301:                                              ; preds = %298, %292
  %302 = getelementptr inbounds i8, ptr %273, i64 42
  %303 = load i16, ptr %302, align 2
  %304 = or i16 %303, 32
  store i16 %304, ptr %302, align 2
  store i32 0, ptr @itop, align 4, !tbaa !15
  %305 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !14
  %306 = zext i8 %305 to i32
  store i32 %306, ptr @zz_size, align 4, !tbaa !15
  %307 = zext i8 %305 to i64
  %308 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !12
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %316

311:                                              ; preds = %301
  %312 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %313 = call ptr @GetMemory(i32 noundef %306, ptr noundef %312) #4
  store ptr %313, ptr @zz_hold, align 8, !tbaa !12
  %314 = load i32, ptr @itop, align 4, !tbaa !15
  %315 = sext i32 %314 to i64
  br label %318

316:                                              ; preds = %301
  store ptr %309, ptr @zz_hold, align 8, !tbaa !12
  %317 = load ptr, ptr %309, align 8, !tbaa !14
  store ptr %317, ptr %308, align 8, !tbaa !12
  br label %318

318:                                              ; preds = %311, %316
  %319 = phi i64 [ %315, %311 ], [ 0, %316 ]
  %320 = phi ptr [ %313, %311 ], [ %309, %316 ]
  %321 = getelementptr inbounds %struct.word_type, ptr %320, i64 0, i32 1
  store i8 17, ptr %321, align 8, !tbaa !14
  %322 = getelementptr inbounds [2 x %struct.LIST], ptr %320, i64 0, i64 1, i32 1
  store ptr %320, ptr %322, align 8, !tbaa !14
  %323 = getelementptr inbounds [2 x %struct.LIST], ptr %320, i64 0, i64 1
  store ptr %320, ptr %323, align 8, !tbaa !14
  %324 = getelementptr inbounds %struct.LIST, ptr %320, i64 0, i32 1
  store ptr %320, ptr %324, align 8, !tbaa !14
  store ptr %320, ptr %320, align 8, !tbaa !14
  %325 = getelementptr inbounds [30 x ptr], ptr @targets, i64 0, i64 %319
  store ptr %320, ptr %325, align 8, !tbaa !12
  %326 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %327 = zext i8 %326 to i32
  store i32 %327, ptr @zz_size, align 4, !tbaa !15
  %328 = zext i8 %326 to i64
  %329 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %328
  %330 = load ptr, ptr %329, align 8, !tbaa !12
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %339

332:                                              ; preds = %318
  %333 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %334 = call ptr @GetMemory(i32 noundef %327, ptr noundef %333) #4
  %335 = load i32, ptr @itop, align 4, !tbaa !15
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [30 x ptr], ptr @targets, i64 0, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !12
  br label %341

339:                                              ; preds = %318
  store ptr %330, ptr @zz_hold, align 8, !tbaa !12
  %340 = load ptr, ptr %330, align 8, !tbaa !14
  store ptr %340, ptr %329, align 8, !tbaa !12
  br label %341

341:                                              ; preds = %332, %339
  %342 = phi i64 [ %336, %332 ], [ %319, %339 ]
  %343 = phi ptr [ %338, %332 ], [ %320, %339 ]
  %344 = phi ptr [ %334, %332 ], [ %330, %339 ]
  %345 = getelementptr inbounds %struct.word_type, ptr %344, i64 0, i32 1
  store i8 0, ptr %345, align 8, !tbaa !14
  %346 = getelementptr inbounds [2 x %struct.LIST], ptr %344, i64 0, i64 1, i32 1
  store ptr %344, ptr %346, align 8, !tbaa !14
  %347 = getelementptr inbounds [2 x %struct.LIST], ptr %344, i64 0, i64 1
  store ptr %344, ptr %347, align 8, !tbaa !14
  %348 = getelementptr inbounds %struct.LIST, ptr %344, i64 0, i32 1
  store ptr %344, ptr %348, align 8, !tbaa !14
  store ptr %344, ptr %344, align 8, !tbaa !14
  store ptr %344, ptr @xx_link, align 8, !tbaa !12
  store ptr %344, ptr @zz_res, align 8, !tbaa !12
  store ptr %343, ptr @zz_hold, align 8, !tbaa !12
  %349 = icmp eq ptr %343, null
  br i1 %349, label %350, label %351

350:                                              ; preds = %341
  store ptr %273, ptr @zz_hold, align 8, !tbaa !12
  br label %363

351:                                              ; preds = %341
  %352 = load ptr, ptr %343, align 8, !tbaa !14
  store ptr %352, ptr @zz_tmp, align 8, !tbaa !12
  %353 = load ptr, ptr %344, align 8, !tbaa !14
  store ptr %353, ptr %343, align 8, !tbaa !14
  %354 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %355 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %356 = load ptr, ptr %355, align 8, !tbaa !14
  %357 = getelementptr inbounds %struct.LIST, ptr %356, i64 0, i32 1
  store ptr %354, ptr %357, align 8, !tbaa !14
  %358 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %358, ptr %355, align 8, !tbaa !14
  %359 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %360 = getelementptr inbounds %struct.LIST, ptr %358, i64 0, i32 1
  store ptr %359, ptr %360, align 8, !tbaa !14
  %361 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %361, ptr @zz_res, align 8, !tbaa !12
  store ptr %273, ptr @zz_hold, align 8, !tbaa !12
  %362 = icmp eq ptr %361, null
  br i1 %362, label %371, label %363

363:                                              ; preds = %350, %351
  %364 = phi ptr [ %344, %350 ], [ %361, %351 ]
  %365 = getelementptr inbounds [2 x %struct.LIST], ptr %273, i64 0, i64 1
  %366 = load ptr, ptr %365, align 8, !tbaa !14
  store ptr %366, ptr @zz_tmp, align 8, !tbaa !12
  %367 = getelementptr inbounds [2 x %struct.LIST], ptr %364, i64 0, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !14
  store ptr %368, ptr %365, align 8, !tbaa !14
  %369 = getelementptr inbounds [2 x %struct.LIST], ptr %368, i64 0, i64 1, i32 1
  store ptr %273, ptr %369, align 8, !tbaa !14
  store ptr %366, ptr %367, align 8, !tbaa !14
  %370 = getelementptr inbounds [2 x %struct.LIST], ptr %366, i64 0, i64 1, i32 1
  store ptr %364, ptr %370, align 8, !tbaa !14
  br label %371

371:                                              ; preds = %351, %363
  %372 = getelementptr inbounds %struct.closure_type, ptr %273, i64 0, i32 5
  %373 = load ptr, ptr %372, align 8, !tbaa !14
  %374 = getelementptr inbounds [30 x %struct.CONSTRAINT], ptr @constraints, i64 0, i64 %342
  call void @Constrained(ptr noundef %373, ptr noundef nonnull %374, i32 noundef 0, ptr noundef nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @SizeGalley(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Constrained(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @TransferBegin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.CONSTRAINT, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !14
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.6) #4
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds i8, ptr %12, i64 41
  %14 = load i24, ptr %13, align 1
  %15 = and i24 %14, 2
  %16 = icmp eq i24 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @CrossAddTag(ptr noundef nonnull %0) #4
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i32, ptr @itop, align 4, !tbaa !15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [30 x ptr], ptr @targets, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.LIST, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  %25 = icmp eq ptr %24, %22
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load ptr, ptr %11, align 8, !tbaa !14
  %28 = tail call ptr @SymName(ptr noundef %27) #4
  %29 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 18, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef nonnull %4, ptr noundef %28) #4
  %30 = load i32, ptr @itop, align 4, !tbaa !15
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [30 x ptr], ptr @targets, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.LIST, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !14
  br label %36

36:                                               ; preds = %26, %18
  %37 = phi ptr [ %24, %18 ], [ %35, %26 ]
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi ptr [ %41, %38 ], [ %37, %36 ]
  %40 = getelementptr inbounds [2 x %struct.LIST], ptr %39, i64 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !14
  %42 = getelementptr inbounds %struct.word_type, ptr %41, i64 0, i32 1
  %43 = load i8, ptr %42, align 8, !tbaa !14
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %38, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %11, align 8, !tbaa !14
  %47 = getelementptr inbounds %struct.closure_type, ptr %41, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !14
  %49 = tail call ptr @GetEnv(ptr noundef %48) #4
  %50 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 2
  %51 = getelementptr inbounds i8, ptr %46, i64 41
  %52 = load i24, ptr %51, align 1
  %53 = and i24 %52, 256
  %54 = icmp eq i24 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %57 = tail call ptr @CopyObject(ptr noundef nonnull %0, ptr noundef %56) #4
  tail call void @AttachEnv(ptr noundef %49, ptr noundef %57) #4
  %58 = tail call ptr @SetEnv(ptr noundef %57, ptr noundef null) #4
  br label %59

59:                                               ; preds = %45, %55
  %60 = phi ptr [ %58, %55 ], [ %49, %45 ]
  %61 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !14
  %62 = zext i8 %61 to i32
  store i32 %62, ptr @zz_size, align 4, !tbaa !15
  %63 = zext i8 %61 to i64
  %64 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !12
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %69 = tail call ptr @GetMemory(i32 noundef %62, ptr noundef %68) #4
  store ptr %69, ptr @zz_hold, align 8, !tbaa !12
  br label %72

70:                                               ; preds = %59
  store ptr %65, ptr @zz_hold, align 8, !tbaa !12
  %71 = load ptr, ptr %65, align 8, !tbaa !14
  store ptr %71, ptr %64, align 8, !tbaa !12
  br label %72

72:                                               ; preds = %67, %70
  %73 = phi ptr [ %69, %67 ], [ %65, %70 ]
  %74 = getelementptr inbounds %struct.word_type, ptr %73, i64 0, i32 1
  store i8 17, ptr %74, align 8, !tbaa !14
  %75 = getelementptr inbounds [2 x %struct.LIST], ptr %73, i64 0, i64 1, i32 1
  store ptr %73, ptr %75, align 8, !tbaa !14
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %73, i64 0, i64 1
  store ptr %73, ptr %76, align 8, !tbaa !14
  %77 = getelementptr inbounds %struct.LIST, ptr %73, i64 0, i32 1
  store ptr %73, ptr %77, align 8, !tbaa !14
  store ptr %73, ptr %73, align 8, !tbaa !14
  %78 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %79 = zext i8 %78 to i32
  store i32 %79, ptr @zz_size, align 4, !tbaa !15
  %80 = zext i8 %78 to i64
  %81 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !12
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %86 = tail call ptr @GetMemory(i32 noundef %79, ptr noundef %85) #4
  br label %89

87:                                               ; preds = %72
  store ptr %82, ptr @zz_hold, align 8, !tbaa !12
  %88 = load ptr, ptr %82, align 8, !tbaa !14
  store ptr %88, ptr %81, align 8, !tbaa !12
  br label %89

89:                                               ; preds = %84, %87
  %90 = phi ptr [ %86, %84 ], [ %82, %87 ]
  %91 = getelementptr inbounds %struct.word_type, ptr %90, i64 0, i32 1
  store i8 0, ptr %91, align 8, !tbaa !14
  %92 = getelementptr inbounds [2 x %struct.LIST], ptr %90, i64 0, i64 1, i32 1
  store ptr %90, ptr %92, align 8, !tbaa !14
  %93 = getelementptr inbounds [2 x %struct.LIST], ptr %90, i64 0, i64 1
  store ptr %90, ptr %93, align 8, !tbaa !14
  %94 = getelementptr inbounds %struct.LIST, ptr %90, i64 0, i32 1
  store ptr %90, ptr %94, align 8, !tbaa !14
  store ptr %90, ptr %90, align 8, !tbaa !14
  store ptr %90, ptr @xx_link, align 8, !tbaa !12
  store ptr %90, ptr @zz_res, align 8, !tbaa !12
  store ptr %73, ptr @zz_hold, align 8, !tbaa !12
  %95 = load ptr, ptr %73, align 8, !tbaa !14
  store ptr %95, ptr @zz_tmp, align 8, !tbaa !12
  %96 = load ptr, ptr %90, align 8, !tbaa !14
  store ptr %96, ptr %73, align 8, !tbaa !14
  %97 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %98 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %99 = load ptr, ptr %98, align 8, !tbaa !14
  %100 = getelementptr inbounds %struct.LIST, ptr %99, i64 0, i32 1
  store ptr %97, ptr %100, align 8, !tbaa !14
  %101 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %101, ptr %98, align 8, !tbaa !14
  %102 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %103 = getelementptr inbounds %struct.LIST, ptr %101, i64 0, i32 1
  store ptr %102, ptr %103, align 8, !tbaa !14
  %104 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %104, ptr @zz_res, align 8, !tbaa !12
  store ptr %60, ptr @zz_hold, align 8, !tbaa !12
  %105 = icmp eq ptr %60, null
  %106 = icmp eq ptr %104, null
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %89
  %109 = getelementptr inbounds [2 x %struct.LIST], ptr %60, i64 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !14
  store ptr %110, ptr @zz_tmp, align 8, !tbaa !12
  %111 = getelementptr inbounds [2 x %struct.LIST], ptr %104, i64 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !14
  store ptr %112, ptr %109, align 8, !tbaa !14
  %113 = getelementptr inbounds [2 x %struct.LIST], ptr %112, i64 0, i64 1, i32 1
  store ptr %60, ptr %113, align 8, !tbaa !14
  store ptr %110, ptr %111, align 8, !tbaa !14
  %114 = getelementptr inbounds [2 x %struct.LIST], ptr %110, i64 0, i64 1, i32 1
  store ptr %104, ptr %114, align 8, !tbaa !14
  br label %115

115:                                              ; preds = %89, %108
  %116 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 120), align 1, !tbaa !14
  %117 = zext i8 %116 to i32
  store i32 %117, ptr @zz_size, align 4, !tbaa !15
  %118 = zext i8 %116 to i64
  %119 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !12
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %124 = tail call ptr @GetMemory(i32 noundef %117, ptr noundef %123) #4
  store ptr %124, ptr @zz_hold, align 8, !tbaa !12
  br label %127

125:                                              ; preds = %115
  store ptr %120, ptr @zz_hold, align 8, !tbaa !12
  %126 = load ptr, ptr %120, align 8, !tbaa !14
  store ptr %126, ptr %119, align 8, !tbaa !12
  br label %127

127:                                              ; preds = %122, %125
  %128 = phi ptr [ %124, %122 ], [ %120, %125 ]
  %129 = getelementptr inbounds %struct.word_type, ptr %128, i64 0, i32 1
  store i8 120, ptr %129, align 8, !tbaa !14
  %130 = getelementptr inbounds [2 x %struct.LIST], ptr %128, i64 0, i64 1
  %131 = getelementptr inbounds [2 x %struct.LIST], ptr %128, i64 0, i64 1, i32 1
  store ptr %128, ptr %131, align 8, !tbaa !14
  store ptr %128, ptr %130, align 8, !tbaa !14
  %132 = getelementptr inbounds %struct.LIST, ptr %128, i64 0, i32 1
  store ptr %128, ptr %132, align 8, !tbaa !14
  store ptr %128, ptr %128, align 8, !tbaa !14
  %133 = getelementptr inbounds %struct.closure_type, ptr %128, i64 0, i32 6
  store ptr null, ptr %133, align 8, !tbaa !14
  %134 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 8), align 1, !tbaa !14
  %135 = zext i8 %134 to i32
  store i32 %135, ptr @zz_size, align 4, !tbaa !15
  %136 = zext i8 %134 to i64
  %137 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !12
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %127
  %141 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %142 = tail call ptr @GetMemory(i32 noundef %135, ptr noundef %141) #4
  store ptr %142, ptr @zz_hold, align 8, !tbaa !12
  br label %145

143:                                              ; preds = %127
  store ptr %138, ptr @zz_hold, align 8, !tbaa !12
  %144 = load ptr, ptr %138, align 8, !tbaa !14
  store ptr %144, ptr %137, align 8, !tbaa !12
  br label %145

145:                                              ; preds = %140, %143
  %146 = phi ptr [ %142, %140 ], [ %138, %143 ]
  %147 = getelementptr inbounds %struct.word_type, ptr %146, i64 0, i32 1
  store i8 8, ptr %147, align 8, !tbaa !14
  %148 = getelementptr inbounds [2 x %struct.LIST], ptr %146, i64 0, i64 1
  %149 = getelementptr inbounds [2 x %struct.LIST], ptr %146, i64 0, i64 1, i32 1
  store ptr %146, ptr %149, align 8, !tbaa !14
  store ptr %146, ptr %148, align 8, !tbaa !14
  %150 = getelementptr inbounds %struct.LIST, ptr %146, i64 0, i32 1
  store ptr %146, ptr %150, align 8, !tbaa !14
  store ptr %146, ptr %146, align 8, !tbaa !14
  %151 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %152 = load i16, ptr %151, align 2, !tbaa !14
  %153 = getelementptr inbounds %struct.word_type, ptr %146, i64 0, i32 1, i32 0, i32 2
  store i16 %152, ptr %153, align 2, !tbaa !14
  %154 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 1048575
  %157 = getelementptr inbounds %struct.word_type, ptr %146, i64 0, i32 1, i32 0, i32 3
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, -1048576
  %160 = or disjoint i32 %159, %156
  store i32 %160, ptr %157, align 4
  %161 = load i32, ptr %154, align 4
  %162 = and i32 %161, -1048576
  %163 = or disjoint i32 %162, %156
  store i32 %163, ptr %157, align 4
  %164 = getelementptr inbounds %struct.closure_type, ptr %146, i64 0, i32 5
  store ptr %46, ptr %164, align 8, !tbaa !14
  %165 = getelementptr inbounds %struct.head_type, ptr %146, i64 0, i32 8
  %166 = getelementptr inbounds %struct.head_type, ptr %146, i64 0, i32 11
  store ptr null, ptr %166, align 8, !tbaa !14
  %167 = getelementptr inbounds i8, ptr %146, i64 42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %165, i8 0, i64 16, i1 false)
  %168 = load i16, ptr %167, align 2
  %169 = getelementptr inbounds %struct.head_type, ptr %146, i64 0, i32 7
  store ptr null, ptr %169, align 8, !tbaa !14
  %170 = and i16 %168, -387
  %171 = or disjoint i16 %170, 384
  store i16 %171, ptr %167, align 2
  %172 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %173 = zext i8 %172 to i32
  store i32 %173, ptr @zz_size, align 4, !tbaa !15
  %174 = zext i8 %172 to i64
  %175 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !12
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %145
  %179 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %180 = tail call ptr @GetMemory(i32 noundef %173, ptr noundef %179) #4
  br label %183

181:                                              ; preds = %145
  store ptr %176, ptr @zz_hold, align 8, !tbaa !12
  %182 = load ptr, ptr %176, align 8, !tbaa !14
  store ptr %182, ptr %175, align 8, !tbaa !12
  br label %183

183:                                              ; preds = %178, %181
  %184 = phi ptr [ %180, %178 ], [ %176, %181 ]
  %185 = getelementptr inbounds %struct.word_type, ptr %184, i64 0, i32 1
  store i8 0, ptr %185, align 8, !tbaa !14
  %186 = getelementptr inbounds [2 x %struct.LIST], ptr %184, i64 0, i64 1, i32 1
  store ptr %184, ptr %186, align 8, !tbaa !14
  %187 = getelementptr inbounds [2 x %struct.LIST], ptr %184, i64 0, i64 1
  store ptr %184, ptr %187, align 8, !tbaa !14
  %188 = getelementptr inbounds %struct.LIST, ptr %184, i64 0, i32 1
  store ptr %184, ptr %188, align 8, !tbaa !14
  store ptr %184, ptr %184, align 8, !tbaa !14
  store ptr %184, ptr @xx_link, align 8, !tbaa !12
  store ptr %184, ptr @zz_res, align 8, !tbaa !12
  store ptr %128, ptr @zz_hold, align 8, !tbaa !12
  %189 = load ptr, ptr %128, align 8, !tbaa !14
  store ptr %189, ptr @zz_tmp, align 8, !tbaa !12
  %190 = load ptr, ptr %184, align 8, !tbaa !14
  store ptr %190, ptr %128, align 8, !tbaa !14
  %191 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %192 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %193 = load ptr, ptr %192, align 8, !tbaa !14
  %194 = getelementptr inbounds %struct.LIST, ptr %193, i64 0, i32 1
  store ptr %191, ptr %194, align 8, !tbaa !14
  %195 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %195, ptr %192, align 8, !tbaa !14
  %196 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %197 = getelementptr inbounds %struct.LIST, ptr %195, i64 0, i32 1
  store ptr %196, ptr %197, align 8, !tbaa !14
  %198 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %198, ptr @zz_res, align 8, !tbaa !12
  store ptr %146, ptr @zz_hold, align 8, !tbaa !12
  %199 = icmp eq ptr %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %183
  %201 = load ptr, ptr %148, align 8, !tbaa !14
  store ptr %201, ptr @zz_tmp, align 8, !tbaa !12
  %202 = getelementptr inbounds [2 x %struct.LIST], ptr %198, i64 0, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !14
  store ptr %203, ptr %148, align 8, !tbaa !14
  %204 = getelementptr inbounds [2 x %struct.LIST], ptr %203, i64 0, i64 1, i32 1
  store ptr %146, ptr %204, align 8, !tbaa !14
  store ptr %201, ptr %202, align 8, !tbaa !14
  %205 = getelementptr inbounds [2 x %struct.LIST], ptr %201, i64 0, i64 1, i32 1
  store ptr %198, ptr %205, align 8, !tbaa !14
  br label %206

206:                                              ; preds = %183, %200
  %207 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %208 = zext i8 %207 to i32
  store i32 %208, ptr @zz_size, align 4, !tbaa !15
  %209 = zext i8 %207 to i64
  %210 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !12
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %215 = tail call ptr @GetMemory(i32 noundef %208, ptr noundef %214) #4
  br label %218

216:                                              ; preds = %206
  store ptr %211, ptr @zz_hold, align 8, !tbaa !12
  %217 = load ptr, ptr %211, align 8, !tbaa !14
  store ptr %217, ptr %210, align 8, !tbaa !12
  br label %218

218:                                              ; preds = %213, %216
  %219 = phi ptr [ %215, %213 ], [ %211, %216 ]
  %220 = getelementptr inbounds %struct.word_type, ptr %219, i64 0, i32 1
  store i8 0, ptr %220, align 8, !tbaa !14
  %221 = getelementptr inbounds [2 x %struct.LIST], ptr %219, i64 0, i64 1, i32 1
  store ptr %219, ptr %221, align 8, !tbaa !14
  %222 = getelementptr inbounds [2 x %struct.LIST], ptr %219, i64 0, i64 1
  store ptr %219, ptr %222, align 8, !tbaa !14
  %223 = getelementptr inbounds %struct.LIST, ptr %219, i64 0, i32 1
  store ptr %219, ptr %223, align 8, !tbaa !14
  store ptr %219, ptr %219, align 8, !tbaa !14
  store ptr %219, ptr @xx_link, align 8, !tbaa !12
  store ptr %219, ptr @zz_res, align 8, !tbaa !12
  store ptr %146, ptr @zz_hold, align 8, !tbaa !12
  %224 = load ptr, ptr %146, align 8, !tbaa !14
  store ptr %224, ptr @zz_tmp, align 8, !tbaa !12
  %225 = load ptr, ptr %219, align 8, !tbaa !14
  store ptr %225, ptr %146, align 8, !tbaa !14
  %226 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %227 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %228 = load ptr, ptr %227, align 8, !tbaa !14
  %229 = getelementptr inbounds %struct.LIST, ptr %228, i64 0, i32 1
  store ptr %226, ptr %229, align 8, !tbaa !14
  %230 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %230, ptr %227, align 8, !tbaa !14
  %231 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %232 = getelementptr inbounds %struct.LIST, ptr %230, i64 0, i32 1
  store ptr %231, ptr %232, align 8, !tbaa !14
  %233 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %233, ptr @zz_res, align 8, !tbaa !12
  store ptr %0, ptr @zz_hold, align 8, !tbaa !12
  %234 = icmp eq ptr %233, null
  br i1 %234, label %242, label %235

235:                                              ; preds = %218
  %236 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !14
  store ptr %237, ptr @zz_tmp, align 8, !tbaa !12
  %238 = getelementptr inbounds [2 x %struct.LIST], ptr %233, i64 0, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !14
  store ptr %239, ptr %236, align 8, !tbaa !14
  %240 = getelementptr inbounds [2 x %struct.LIST], ptr %239, i64 0, i64 1, i32 1
  store ptr %0, ptr %240, align 8, !tbaa !14
  store ptr %237, ptr %238, align 8, !tbaa !14
  %241 = getelementptr inbounds [2 x %struct.LIST], ptr %237, i64 0, i64 1, i32 1
  store ptr %233, ptr %241, align 8, !tbaa !14
  br label %242

242:                                              ; preds = %218, %235
  tail call void @AttachEnv(ptr noundef %49, ptr noundef nonnull %0) #4
  tail call void @SetTarget(ptr noundef nonnull %146) #4
  %243 = load ptr, ptr %164, align 8, !tbaa !14
  %244 = getelementptr inbounds %struct.symbol_type, ptr %243, i64 0, i32 16
  %245 = load i8, ptr %244, align 2
  %246 = and i8 %245, 32
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %242
  %249 = tail call ptr @BuildEnclose(ptr noundef nonnull %146) #4
  br label %250

250:                                              ; preds = %242, %248
  %251 = phi ptr [ %249, %248 ], [ null, %242 ]
  %252 = getelementptr inbounds %struct.head_type, ptr %146, i64 0, i32 12
  store ptr %251, ptr %252, align 8, !tbaa !14
  %253 = getelementptr inbounds %struct.head_type, ptr %146, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %253, i8 0, i64 16, i1 false)
  %254 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %255 = zext i8 %254 to i32
  store i32 %255, ptr @zz_size, align 4, !tbaa !15
  %256 = zext i8 %254 to i64
  %257 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !12
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %250
  %261 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %262 = tail call ptr @GetMemory(i32 noundef %255, ptr noundef %261) #4
  br label %265

263:                                              ; preds = %250
  store ptr %258, ptr @zz_hold, align 8, !tbaa !12
  %264 = load ptr, ptr %258, align 8, !tbaa !14
  store ptr %264, ptr %257, align 8, !tbaa !12
  br label %265

265:                                              ; preds = %260, %263
  %266 = phi ptr [ %262, %260 ], [ %258, %263 ]
  %267 = getelementptr inbounds %struct.word_type, ptr %266, i64 0, i32 1
  store i8 0, ptr %267, align 8, !tbaa !14
  %268 = getelementptr inbounds [2 x %struct.LIST], ptr %266, i64 0, i64 1, i32 1
  store ptr %266, ptr %268, align 8, !tbaa !14
  %269 = getelementptr inbounds [2 x %struct.LIST], ptr %266, i64 0, i64 1
  store ptr %266, ptr %269, align 8, !tbaa !14
  %270 = getelementptr inbounds %struct.LIST, ptr %266, i64 0, i32 1
  store ptr %266, ptr %270, align 8, !tbaa !14
  store ptr %266, ptr %266, align 8, !tbaa !14
  store ptr %266, ptr @xx_link, align 8, !tbaa !12
  store ptr %266, ptr @zz_res, align 8, !tbaa !12
  %271 = getelementptr inbounds [2 x %struct.LIST], ptr %41, i64 0, i64 1, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !14
  store ptr %272, ptr @zz_hold, align 8, !tbaa !12
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %265
  store ptr %128, ptr @zz_hold, align 8, !tbaa !12
  br label %287

275:                                              ; preds = %265
  %276 = load ptr, ptr %272, align 8, !tbaa !14
  store ptr %276, ptr @zz_tmp, align 8, !tbaa !12
  %277 = load ptr, ptr %266, align 8, !tbaa !14
  store ptr %277, ptr %272, align 8, !tbaa !14
  %278 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %279 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %280 = load ptr, ptr %279, align 8, !tbaa !14
  %281 = getelementptr inbounds %struct.LIST, ptr %280, i64 0, i32 1
  store ptr %278, ptr %281, align 8, !tbaa !14
  %282 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %282, ptr %279, align 8, !tbaa !14
  %283 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %284 = getelementptr inbounds %struct.LIST, ptr %282, i64 0, i32 1
  store ptr %283, ptr %284, align 8, !tbaa !14
  %285 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %285, ptr @zz_res, align 8, !tbaa !12
  store ptr %128, ptr @zz_hold, align 8, !tbaa !12
  %286 = icmp eq ptr %285, null
  br i1 %286, label %294, label %287

287:                                              ; preds = %274, %275
  %288 = phi ptr [ %266, %274 ], [ %285, %275 ]
  %289 = load ptr, ptr %130, align 8, !tbaa !14
  store ptr %289, ptr @zz_tmp, align 8, !tbaa !12
  %290 = getelementptr inbounds [2 x %struct.LIST], ptr %288, i64 0, i64 1
  %291 = load ptr, ptr %290, align 8, !tbaa !14
  store ptr %291, ptr %130, align 8, !tbaa !14
  %292 = getelementptr inbounds [2 x %struct.LIST], ptr %291, i64 0, i64 1, i32 1
  store ptr %128, ptr %292, align 8, !tbaa !14
  store ptr %289, ptr %290, align 8, !tbaa !14
  %293 = getelementptr inbounds [2 x %struct.LIST], ptr %289, i64 0, i64 1, i32 1
  store ptr %288, ptr %293, align 8, !tbaa !14
  br label %294

294:                                              ; preds = %275, %287
  %295 = getelementptr inbounds %struct.closure_type, ptr %146, i64 0, i32 6
  %296 = load ptr, ptr %295, align 8, !tbaa !14
  %297 = icmp eq ptr %296, null
  br i1 %297, label %303, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds i8, ptr %296, i64 41
  %300 = load i24, ptr %299, align 1
  %301 = and i24 %300, 2048
  %302 = icmp eq i24 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %298, %294
  tail call void @FlushGalley(ptr noundef nonnull %146) #4
  br label %304

304:                                              ; preds = %303, %298
  %305 = load ptr, ptr %149, align 8, !tbaa !14
  br label %306

306:                                              ; preds = %306, %304
  %307 = phi ptr [ %305, %304 ], [ %308, %306 ]
  %308 = load ptr, ptr %307, align 8, !tbaa !14
  %309 = getelementptr inbounds %struct.word_type, ptr %308, i64 0, i32 1
  %310 = load i8, ptr %309, align 8, !tbaa !14
  switch i8 %310, label %489 [
    i8 0, label %306
    i8 120, label %311
  ]

311:                                              ; preds = %306
  %312 = load i16, ptr %167, align 2
  %313 = and i16 %312, 2
  %314 = icmp eq i16 %313, 0
  br i1 %314, label %315, label %489

315:                                              ; preds = %311
  store ptr %308, ptr @xx_hold, align 8, !tbaa !12
  %316 = getelementptr inbounds [2 x %struct.LIST], ptr %308, i64 0, i64 1, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !14
  %318 = icmp eq ptr %317, %308
  br i1 %318, label %319, label %324

319:                                              ; preds = %346, %315
  %320 = phi ptr [ %308, %315 ], [ %365, %346 ]
  %321 = getelementptr inbounds %struct.LIST, ptr %320, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !14
  %323 = icmp eq ptr %322, %320
  br i1 %323, label %414, label %369

324:                                              ; preds = %315, %346
  %325 = phi ptr [ %367, %346 ], [ %317, %315 ]
  store ptr %325, ptr @xx_link, align 8, !tbaa !12
  %326 = getelementptr inbounds [2 x %struct.LIST], ptr %325, i64 0, i64 1, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !14
  %328 = icmp eq ptr %327, %325
  br i1 %328, label %334, label %329

329:                                              ; preds = %324
  store ptr %327, ptr @zz_res, align 8, !tbaa !12
  %330 = getelementptr inbounds [2 x %struct.LIST], ptr %325, i64 0, i64 1
  %331 = load ptr, ptr %330, align 8, !tbaa !14
  %332 = getelementptr inbounds [2 x %struct.LIST], ptr %327, i64 0, i64 1
  store ptr %331, ptr %332, align 8, !tbaa !14
  %333 = getelementptr inbounds [2 x %struct.LIST], ptr %331, i64 0, i64 1, i32 1
  store ptr %327, ptr %333, align 8, !tbaa !14
  store ptr %325, ptr %326, align 8, !tbaa !14
  store ptr %325, ptr %330, align 8, !tbaa !14
  br label %334

334:                                              ; preds = %324, %329
  store ptr %325, ptr @zz_hold, align 8, !tbaa !12
  %335 = getelementptr inbounds %struct.LIST, ptr %325, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !14
  %337 = icmp eq ptr %336, %325
  br i1 %337, label %346, label %338

338:                                              ; preds = %334
  store ptr %336, ptr @zz_res, align 8, !tbaa !12
  %339 = load ptr, ptr %325, align 8, !tbaa !14
  store ptr %339, ptr %336, align 8, !tbaa !14
  %340 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %341 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %342 = load ptr, ptr %341, align 8, !tbaa !14
  %343 = getelementptr inbounds %struct.LIST, ptr %342, i64 0, i32 1
  store ptr %340, ptr %343, align 8, !tbaa !14
  %344 = getelementptr inbounds %struct.LIST, ptr %341, i64 0, i32 1
  store ptr %341, ptr %344, align 8, !tbaa !14
  store ptr %341, ptr %341, align 8, !tbaa !14
  %345 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %346

346:                                              ; preds = %334, %338
  %347 = phi ptr [ %325, %334 ], [ %345, %338 ]
  store ptr %347, ptr @zz_hold, align 8, !tbaa !12
  %348 = getelementptr inbounds %struct.word_type, ptr %347, i64 0, i32 1
  %349 = load i8, ptr %348, align 8, !tbaa !14
  %350 = add i8 %349, -11
  %351 = icmp ult i8 %350, 2
  %352 = getelementptr inbounds %struct.word_type, ptr %347, i64 0, i32 1, i32 0, i32 1
  %353 = zext i8 %349 to i64
  %354 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %353
  %355 = select i1 %351, ptr %352, ptr %354
  %356 = load i8, ptr %355, align 1, !tbaa !14
  %357 = zext i8 %356 to i32
  store i32 %357, ptr @zz_size, align 4, !tbaa !15
  %358 = zext i8 %356 to i64
  %359 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !12
  store ptr %360, ptr %347, align 8, !tbaa !14
  %361 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %362 = load i32, ptr @zz_size, align 4, !tbaa !15
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %363
  store ptr %361, ptr %364, align 8, !tbaa !12
  %365 = load ptr, ptr @xx_hold, align 8, !tbaa !12
  %366 = getelementptr inbounds [2 x %struct.LIST], ptr %365, i64 0, i64 1, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !14
  %368 = icmp eq ptr %367, %365
  br i1 %368, label %319, label %324

369:                                              ; preds = %319, %391
  %370 = phi ptr [ %412, %391 ], [ %322, %319 ]
  store ptr %370, ptr @xx_link, align 8, !tbaa !12
  %371 = getelementptr inbounds [2 x %struct.LIST], ptr %370, i64 0, i64 1, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !14
  %373 = icmp eq ptr %372, %370
  br i1 %373, label %379, label %374

374:                                              ; preds = %369
  store ptr %372, ptr @zz_res, align 8, !tbaa !12
  %375 = getelementptr inbounds [2 x %struct.LIST], ptr %370, i64 0, i64 1
  %376 = load ptr, ptr %375, align 8, !tbaa !14
  %377 = getelementptr inbounds [2 x %struct.LIST], ptr %372, i64 0, i64 1
  store ptr %376, ptr %377, align 8, !tbaa !14
  %378 = getelementptr inbounds [2 x %struct.LIST], ptr %376, i64 0, i64 1, i32 1
  store ptr %372, ptr %378, align 8, !tbaa !14
  store ptr %370, ptr %371, align 8, !tbaa !14
  store ptr %370, ptr %375, align 8, !tbaa !14
  br label %379

379:                                              ; preds = %369, %374
  store ptr %370, ptr @zz_hold, align 8, !tbaa !12
  %380 = getelementptr inbounds %struct.LIST, ptr %370, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !14
  %382 = icmp eq ptr %381, %370
  br i1 %382, label %391, label %383

383:                                              ; preds = %379
  store ptr %381, ptr @zz_res, align 8, !tbaa !12
  %384 = load ptr, ptr %370, align 8, !tbaa !14
  store ptr %384, ptr %381, align 8, !tbaa !14
  %385 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %386 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %387 = load ptr, ptr %386, align 8, !tbaa !14
  %388 = getelementptr inbounds %struct.LIST, ptr %387, i64 0, i32 1
  store ptr %385, ptr %388, align 8, !tbaa !14
  %389 = getelementptr inbounds %struct.LIST, ptr %386, i64 0, i32 1
  store ptr %386, ptr %389, align 8, !tbaa !14
  store ptr %386, ptr %386, align 8, !tbaa !14
  %390 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %391

391:                                              ; preds = %379, %383
  %392 = phi ptr [ %370, %379 ], [ %390, %383 ]
  store ptr %392, ptr @zz_hold, align 8, !tbaa !12
  %393 = getelementptr inbounds %struct.word_type, ptr %392, i64 0, i32 1
  %394 = load i8, ptr %393, align 8, !tbaa !14
  %395 = add i8 %394, -11
  %396 = icmp ult i8 %395, 2
  %397 = getelementptr inbounds %struct.word_type, ptr %392, i64 0, i32 1, i32 0, i32 1
  %398 = zext i8 %394 to i64
  %399 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %398
  %400 = select i1 %396, ptr %397, ptr %399
  %401 = load i8, ptr %400, align 1, !tbaa !14
  %402 = zext i8 %401 to i32
  store i32 %402, ptr @zz_size, align 4, !tbaa !15
  %403 = zext i8 %401 to i64
  %404 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !12
  store ptr %405, ptr %392, align 8, !tbaa !14
  %406 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %407 = load i32, ptr @zz_size, align 4, !tbaa !15
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %408
  store ptr %406, ptr %409, align 8, !tbaa !12
  %410 = load ptr, ptr @xx_hold, align 8, !tbaa !12
  %411 = getelementptr inbounds %struct.LIST, ptr %410, i64 0, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !14
  %413 = icmp eq ptr %412, %410
  br i1 %413, label %414, label %369

414:                                              ; preds = %391, %319
  %415 = phi ptr [ %320, %319 ], [ %410, %391 ]
  store ptr %415, ptr @zz_hold, align 8, !tbaa !12
  %416 = getelementptr inbounds %struct.word_type, ptr %415, i64 0, i32 1
  %417 = load i8, ptr %416, align 8, !tbaa !14
  %418 = add i8 %417, -11
  %419 = icmp ult i8 %418, 2
  %420 = getelementptr inbounds %struct.word_type, ptr %415, i64 0, i32 1, i32 0, i32 1
  %421 = zext i8 %417 to i64
  %422 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %421
  %423 = select i1 %419, ptr %420, ptr %422
  %424 = load i8, ptr %423, align 1, !tbaa !14
  %425 = zext i8 %424 to i32
  store i32 %425, ptr @zz_size, align 4, !tbaa !15
  %426 = zext i8 %424 to i64
  %427 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !12
  store ptr %428, ptr %415, align 8, !tbaa !14
  %429 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %430 = load i32, ptr @zz_size, align 4, !tbaa !15
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %431
  store ptr %429, ptr %432, align 8, !tbaa !12
  %433 = tail call i32 @DisposeObject(ptr noundef nonnull %73) #4
  %434 = load ptr, ptr %0, align 8, !tbaa !14
  %435 = icmp eq ptr %434, %0
  br i1 %435, label %648, label %436

436:                                              ; preds = %414, %436
  %437 = phi ptr [ %439, %436 ], [ %434, %414 ]
  %438 = getelementptr inbounds [2 x %struct.LIST], ptr %437, i64 0, i64 1
  %439 = load ptr, ptr %438, align 8, !tbaa !14
  %440 = getelementptr inbounds %struct.word_type, ptr %439, i64 0, i32 1
  %441 = load i8, ptr %440, align 8, !tbaa !14
  switch i8 %441, label %648 [
    i8 0, label %436
    i8 82, label %442
  ]

442:                                              ; preds = %436
  store ptr %434, ptr @xx_link, align 8, !tbaa !12
  %443 = getelementptr inbounds [2 x %struct.LIST], ptr %434, i64 0, i64 1, i32 1
  %444 = load ptr, ptr %443, align 8, !tbaa !14
  %445 = icmp eq ptr %444, %434
  br i1 %445, label %451, label %446

446:                                              ; preds = %442
  store ptr %444, ptr @zz_res, align 8, !tbaa !12
  %447 = getelementptr inbounds [2 x %struct.LIST], ptr %434, i64 0, i64 1
  %448 = load ptr, ptr %447, align 8, !tbaa !14
  %449 = getelementptr inbounds [2 x %struct.LIST], ptr %444, i64 0, i64 1
  store ptr %448, ptr %449, align 8, !tbaa !14
  %450 = getelementptr inbounds [2 x %struct.LIST], ptr %448, i64 0, i64 1, i32 1
  store ptr %444, ptr %450, align 8, !tbaa !14
  store ptr %434, ptr %443, align 8, !tbaa !14
  store ptr %434, ptr %447, align 8, !tbaa !14
  br label %451

451:                                              ; preds = %442, %446
  %452 = phi ptr [ %444, %446 ], [ null, %442 ]
  store ptr %452, ptr @xx_tmp, align 8, !tbaa !12
  store ptr %434, ptr @zz_hold, align 8, !tbaa !12
  %453 = getelementptr inbounds %struct.LIST, ptr %434, i64 0, i32 1
  %454 = load ptr, ptr %453, align 8, !tbaa !14
  %455 = icmp eq ptr %454, %434
  br i1 %455, label %464, label %456

456:                                              ; preds = %451
  store ptr %454, ptr @zz_res, align 8, !tbaa !12
  %457 = load ptr, ptr %434, align 8, !tbaa !14
  store ptr %457, ptr %454, align 8, !tbaa !14
  %458 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %459 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %460 = load ptr, ptr %459, align 8, !tbaa !14
  %461 = getelementptr inbounds %struct.LIST, ptr %460, i64 0, i32 1
  store ptr %458, ptr %461, align 8, !tbaa !14
  %462 = getelementptr inbounds %struct.LIST, ptr %459, i64 0, i32 1
  store ptr %459, ptr %462, align 8, !tbaa !14
  store ptr %459, ptr %459, align 8, !tbaa !14
  %463 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %464

464:                                              ; preds = %451, %456
  %465 = phi ptr [ %434, %451 ], [ %463, %456 ]
  store ptr %465, ptr @zz_hold, align 8, !tbaa !12
  %466 = getelementptr inbounds %struct.word_type, ptr %465, i64 0, i32 1
  %467 = load i8, ptr %466, align 8, !tbaa !14
  %468 = add i8 %467, -11
  %469 = icmp ult i8 %468, 2
  %470 = getelementptr inbounds %struct.word_type, ptr %465, i64 0, i32 1, i32 0, i32 1
  %471 = zext i8 %467 to i64
  %472 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %471
  %473 = select i1 %469, ptr %470, ptr %472
  %474 = load i8, ptr %473, align 1, !tbaa !14
  %475 = zext i8 %474 to i32
  store i32 %475, ptr @zz_size, align 4, !tbaa !15
  %476 = zext i8 %474 to i64
  %477 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %476
  %478 = load ptr, ptr %477, align 8, !tbaa !12
  store ptr %478, ptr %465, align 8, !tbaa !14
  %479 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %480 = load i32, ptr @zz_size, align 4, !tbaa !15
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %481
  store ptr %479, ptr %482, align 8, !tbaa !12
  %483 = load ptr, ptr @xx_tmp, align 8, !tbaa !12
  %484 = getelementptr inbounds [2 x %struct.LIST], ptr %483, i64 0, i64 1, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !14
  %486 = icmp eq ptr %485, %483
  br i1 %486, label %487, label %648

487:                                              ; preds = %464
  %488 = tail call i32 @DisposeObject(ptr noundef nonnull %483) #4
  br label %648

489:                                              ; preds = %306, %311
  %490 = load ptr, ptr %164, align 8, !tbaa !14
  %491 = getelementptr inbounds i8, ptr %490, i64 41
  %492 = load i24, ptr %491, align 1
  %493 = and i24 %492, 8
  %494 = icmp eq i24 %493, 0
  br i1 %494, label %641, label %495

495:                                              ; preds = %489
  %496 = load i32, ptr @itop, align 4, !tbaa !15
  %497 = add nsw i32 %496, 1
  store i32 %497, ptr @itop, align 4, !tbaa !15
  %498 = icmp sgt i32 %496, 28
  br i1 %498, label %499, label %501

499:                                              ; preds = %495
  %500 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 18, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 30) #4
  br label %501

501:                                              ; preds = %499, %495
  %502 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !14
  %503 = zext i8 %502 to i32
  store i32 %503, ptr @zz_size, align 4, !tbaa !15
  %504 = zext i8 %502 to i64
  %505 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %504
  %506 = load ptr, ptr %505, align 8, !tbaa !12
  %507 = icmp eq ptr %506, null
  br i1 %507, label %508, label %511

508:                                              ; preds = %501
  %509 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %510 = tail call ptr @GetMemory(i32 noundef %503, ptr noundef %509) #4
  store ptr %510, ptr @zz_hold, align 8, !tbaa !12
  br label %513

511:                                              ; preds = %501
  store ptr %506, ptr @zz_hold, align 8, !tbaa !12
  %512 = load ptr, ptr %506, align 8, !tbaa !14
  store ptr %512, ptr %505, align 8, !tbaa !12
  br label %513

513:                                              ; preds = %508, %511
  %514 = phi ptr [ %510, %508 ], [ %506, %511 ]
  %515 = getelementptr inbounds %struct.word_type, ptr %514, i64 0, i32 1
  store i8 17, ptr %515, align 8, !tbaa !14
  %516 = getelementptr inbounds [2 x %struct.LIST], ptr %514, i64 0, i64 1, i32 1
  store ptr %514, ptr %516, align 8, !tbaa !14
  %517 = getelementptr inbounds [2 x %struct.LIST], ptr %514, i64 0, i64 1
  store ptr %514, ptr %517, align 8, !tbaa !14
  %518 = getelementptr inbounds %struct.LIST, ptr %514, i64 0, i32 1
  store ptr %514, ptr %518, align 8, !tbaa !14
  store ptr %514, ptr %514, align 8, !tbaa !14
  %519 = load i32, ptr @itop, align 4, !tbaa !15
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [30 x ptr], ptr @targets, i64 0, i64 %520
  store ptr %514, ptr %521, align 8, !tbaa !12
  %522 = load ptr, ptr %150, align 8, !tbaa !14
  %523 = icmp eq ptr %522, %146
  br i1 %523, label %619, label %524

524:                                              ; preds = %513
  %525 = load ptr, ptr @InputSym, align 8
  br label %526

526:                                              ; preds = %524, %606
  %527 = phi ptr [ %522, %524 ], [ %608, %606 ]
  br label %528

528:                                              ; preds = %526, %528
  %529 = phi ptr [ %531, %528 ], [ %527, %526 ]
  %530 = getelementptr inbounds [2 x %struct.LIST], ptr %529, i64 0, i64 1
  %531 = load ptr, ptr %530, align 8, !tbaa !14
  %532 = getelementptr inbounds %struct.word_type, ptr %531, i64 0, i32 1
  %533 = load i8, ptr %532, align 8, !tbaa !14
  switch i8 %533, label %606 [
    i8 0, label %528
    i8 121, label %534
  ]

534:                                              ; preds = %528
  %535 = getelementptr inbounds %struct.closure_type, ptr %531, i64 0, i32 5
  %536 = load ptr, ptr %535, align 8, !tbaa !14
  %537 = getelementptr inbounds %struct.closure_type, ptr %536, i64 0, i32 5
  %538 = load ptr, ptr %537, align 8, !tbaa !14
  %539 = icmp eq ptr %538, %525
  br i1 %539, label %540, label %606

540:                                              ; preds = %534
  %541 = getelementptr inbounds %struct.word_type, ptr %531, i64 0, i32 1
  %542 = getelementptr inbounds %struct.closure_type, ptr %531, i64 0, i32 5
  %543 = getelementptr inbounds [30 x %struct.CONSTRAINT], ptr @constraints, i64 0, i64 %520
  call void @Constrained(ptr noundef nonnull %536, ptr noundef nonnull %543, i32 noundef 0, ptr noundef nonnull %2) #4
  %544 = load i32, ptr @itop, align 4, !tbaa !15
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds [30 x %struct.CONSTRAINT], ptr @constraints, i64 0, i64 %545
  %547 = load i32, ptr %546, align 16, !tbaa !5
  %548 = icmp sgt i32 %547, -1
  br i1 %548, label %549, label %602

549:                                              ; preds = %540
  %550 = getelementptr inbounds [30 x %struct.CONSTRAINT], ptr @constraints, i64 0, i64 %545, i32 1
  %551 = load i32, ptr %550, align 4, !tbaa !10
  %552 = icmp sgt i32 %551, -1
  br i1 %552, label %553, label %602

553:                                              ; preds = %549
  %554 = getelementptr inbounds [30 x %struct.CONSTRAINT], ptr @constraints, i64 0, i64 %545, i32 2
  %555 = load i32, ptr %554, align 8, !tbaa !11
  %556 = icmp sgt i32 %555, -1
  br i1 %556, label %557, label %602

557:                                              ; preds = %553
  %558 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %559 = zext i8 %558 to i32
  store i32 %559, ptr @zz_size, align 4, !tbaa !15
  %560 = zext i8 %558 to i64
  %561 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %560
  %562 = load ptr, ptr %561, align 8, !tbaa !12
  %563 = icmp eq ptr %562, null
  br i1 %563, label %564, label %569

564:                                              ; preds = %557
  %565 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %566 = call ptr @GetMemory(i32 noundef %559, ptr noundef %565) #4
  %567 = load i32, ptr @itop, align 4, !tbaa !15
  %568 = sext i32 %567 to i64
  br label %571

569:                                              ; preds = %557
  store ptr %562, ptr @zz_hold, align 8, !tbaa !12
  %570 = load ptr, ptr %562, align 8, !tbaa !14
  store ptr %570, ptr %561, align 8, !tbaa !12
  br label %571

571:                                              ; preds = %564, %569
  %572 = phi i64 [ %568, %564 ], [ %545, %569 ]
  %573 = phi ptr [ %566, %564 ], [ %562, %569 ]
  %574 = getelementptr inbounds %struct.word_type, ptr %573, i64 0, i32 1
  store i8 0, ptr %574, align 8, !tbaa !14
  %575 = getelementptr inbounds [2 x %struct.LIST], ptr %573, i64 0, i64 1, i32 1
  store ptr %573, ptr %575, align 8, !tbaa !14
  %576 = getelementptr inbounds [2 x %struct.LIST], ptr %573, i64 0, i64 1
  store ptr %573, ptr %576, align 8, !tbaa !14
  %577 = getelementptr inbounds %struct.LIST, ptr %573, i64 0, i32 1
  store ptr %573, ptr %577, align 8, !tbaa !14
  store ptr %573, ptr %573, align 8, !tbaa !14
  store ptr %573, ptr @xx_link, align 8, !tbaa !12
  store ptr %573, ptr @zz_res, align 8, !tbaa !12
  %578 = getelementptr inbounds [30 x ptr], ptr @targets, i64 0, i64 %572
  %579 = load ptr, ptr %578, align 8, !tbaa !12
  store ptr %579, ptr @zz_hold, align 8, !tbaa !12
  %580 = icmp eq ptr %579, null
  br i1 %580, label %581, label %582

581:                                              ; preds = %571
  store ptr %531, ptr @zz_hold, align 8, !tbaa !12
  br label %594

582:                                              ; preds = %571
  %583 = load ptr, ptr %579, align 8, !tbaa !14
  store ptr %583, ptr @zz_tmp, align 8, !tbaa !12
  %584 = load ptr, ptr %573, align 8, !tbaa !14
  store ptr %584, ptr %579, align 8, !tbaa !14
  %585 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %586 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %587 = load ptr, ptr %586, align 8, !tbaa !14
  %588 = getelementptr inbounds %struct.LIST, ptr %587, i64 0, i32 1
  store ptr %585, ptr %588, align 8, !tbaa !14
  %589 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %589, ptr %586, align 8, !tbaa !14
  %590 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %591 = getelementptr inbounds %struct.LIST, ptr %589, i64 0, i32 1
  store ptr %590, ptr %591, align 8, !tbaa !14
  %592 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %592, ptr @zz_res, align 8, !tbaa !12
  store ptr %531, ptr @zz_hold, align 8, !tbaa !12
  %593 = icmp eq ptr %592, null
  br i1 %593, label %610, label %594

594:                                              ; preds = %581, %582
  %595 = phi ptr [ %573, %581 ], [ %592, %582 ]
  %596 = getelementptr inbounds [2 x %struct.LIST], ptr %531, i64 0, i64 1
  %597 = load ptr, ptr %596, align 8, !tbaa !14
  store ptr %597, ptr @zz_tmp, align 8, !tbaa !12
  %598 = getelementptr inbounds [2 x %struct.LIST], ptr %595, i64 0, i64 1
  %599 = load ptr, ptr %598, align 8, !tbaa !14
  store ptr %599, ptr %596, align 8, !tbaa !14
  %600 = getelementptr inbounds [2 x %struct.LIST], ptr %599, i64 0, i64 1, i32 1
  store ptr %531, ptr %600, align 8, !tbaa !14
  store ptr %597, ptr %598, align 8, !tbaa !14
  %601 = getelementptr inbounds [2 x %struct.LIST], ptr %597, i64 0, i64 1, i32 1
  store ptr %595, ptr %601, align 8, !tbaa !14
  br label %610

602:                                              ; preds = %553, %549, %540
  %603 = load ptr, ptr %164, align 8, !tbaa !14
  %604 = call ptr @SymName(ptr noundef %603) #4
  %605 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 18, i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef 2, ptr noundef nonnull %147, ptr noundef %604) #4
  br label %619

606:                                              ; preds = %528, %534
  %607 = getelementptr inbounds %struct.LIST, ptr %527, i64 0, i32 1
  %608 = load ptr, ptr %607, align 8, !tbaa !14
  %609 = icmp eq ptr %608, %146
  br i1 %609, label %619, label %526

610:                                              ; preds = %582, %594
  %611 = load ptr, ptr %542, align 8, !tbaa !14
  %612 = call ptr @DetachEnv(ptr noundef %611) #4
  %613 = load ptr, ptr %542, align 8, !tbaa !14
  call void @AttachEnv(ptr noundef %60, ptr noundef %613) #4
  %614 = load ptr, ptr %542, align 8, !tbaa !14
  %615 = getelementptr inbounds i8, ptr %614, i64 42
  %616 = load i16, ptr %615, align 2
  %617 = and i16 %616, 16
  %618 = icmp eq i16 %617, 0
  br i1 %618, label %623, label %619

619:                                              ; preds = %606, %513, %602, %610
  %620 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %621 = load i8, ptr %50, align 8, !tbaa !14
  %622 = call ptr @NewToken(i8 noundef zeroext 110, ptr noundef %620, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %621, ptr noundef null) #4
  br label %645

623:                                              ; preds = %610
  call void @Constrained(ptr noundef nonnull %614, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2) #4
  %624 = load i32, ptr %3, align 4, !tbaa !5
  %625 = icmp ne i32 %624, 8388607
  %626 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 1
  %627 = load i32, ptr %626, align 4
  %628 = icmp ne i32 %627, 8388607
  %629 = select i1 %625, i1 true, i1 %628
  %630 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 2
  %631 = load i32, ptr %630, align 4
  %632 = icmp ne i32 %631, 8388607
  %633 = select i1 %629, i1 true, i1 %632
  br i1 %633, label %634, label %637

634:                                              ; preds = %623
  %635 = call ptr @SymName(ptr noundef %46) #4
  %636 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 18, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef nonnull %541, ptr noundef %635) #4
  br label %645

637:                                              ; preds = %623
  %638 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %639 = load i8, ptr %50, align 8, !tbaa !14
  %640 = call ptr @NewToken(i8 noundef zeroext 109, ptr noundef %638, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %639, ptr noundef null) #4
  br label %645

641:                                              ; preds = %489
  %642 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %643 = load i8, ptr %50, align 8, !tbaa !14
  %644 = tail call ptr @NewToken(i8 noundef zeroext 108, ptr noundef %642, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %643, ptr noundef null) #4
  br label %645

645:                                              ; preds = %619, %637, %634, %641
  %646 = phi ptr [ %622, %619 ], [ undef, %634 ], [ %640, %637 ], [ %644, %641 ]
  %647 = call i32 @DisposeObject(ptr noundef nonnull %73) #4
  br label %648

648:                                              ; preds = %436, %414, %464, %487, %645
  %649 = phi ptr [ %646, %645 ], [ %0, %487 ], [ %0, %464 ], [ %0, %414 ], [ %0, %436 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret ptr %649
}

declare void @CrossAddTag(ptr noundef) local_unnamed_addr #2

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

declare ptr @GetEnv(ptr noundef) local_unnamed_addr #2

declare ptr @CopyObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @AttachEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SetEnv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SetTarget(ptr noundef) local_unnamed_addr #2

declare ptr @BuildEnclose(ptr noundef) local_unnamed_addr #2

declare void @FlushGalley(ptr noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare ptr @DetachEnv(ptr noundef) local_unnamed_addr #2

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @TransferComponent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = load i32, ptr @itop, align 4, !tbaa !15
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [30 x ptr], ptr @targets, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.LIST, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = tail call i32 @DisposeObject(ptr noundef %0) #4
  br label %385

14:                                               ; preds = %1, %14
  %15 = phi ptr [ %17, %14 ], [ %10, %1 ]
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %15, i64 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.word_type, ptr %17, i64 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %14, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.closure_type, ptr %17, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds i8, ptr %23, i64 42
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, 16
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %30 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %29, ptr noundef nonnull @.str.11) #4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 8), align 1, !tbaa !14
  %33 = zext i8 %32 to i32
  store i32 %33, ptr @zz_size, align 4, !tbaa !15
  %34 = zext i8 %32 to i64
  %35 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %40 = tail call ptr @GetMemory(i32 noundef %33, ptr noundef %39) #4
  store ptr %40, ptr @zz_hold, align 8, !tbaa !12
  br label %43

41:                                               ; preds = %31
  store ptr %36, ptr @zz_hold, align 8, !tbaa !12
  %42 = load ptr, ptr %36, align 8, !tbaa !14
  store ptr %42, ptr %35, align 8, !tbaa !12
  br label %43

43:                                               ; preds = %38, %41
  %44 = phi ptr [ %40, %38 ], [ %36, %41 ]
  %45 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  store i8 8, ptr %45, align 8, !tbaa !14
  %46 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1, i32 1
  store ptr %44, ptr %46, align 8, !tbaa !14
  %47 = getelementptr inbounds [2 x %struct.LIST], ptr %44, i64 0, i64 1
  store ptr %44, ptr %47, align 8, !tbaa !14
  %48 = getelementptr inbounds %struct.LIST, ptr %44, i64 0, i32 1
  store ptr %44, ptr %48, align 8, !tbaa !14
  store ptr %44, ptr %44, align 8, !tbaa !14
  %49 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 2
  %50 = getelementptr inbounds i8, ptr %44, i64 42
  %51 = load i16, ptr %50, align 2
  %52 = and i16 %51, -4353
  %53 = getelementptr inbounds %struct.head_type, ptr %44, i64 0, i32 11
  %54 = getelementptr inbounds %struct.head_type, ptr %44, i64 0, i32 8
  %55 = or disjoint i16 %52, 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %53, i8 0, i64 32, i1 false)
  store i16 %55, ptr %50, align 2
  %56 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %57 = load i16, ptr %56, align 2, !tbaa !14
  %58 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1, i32 0, i32 2
  store i16 %57, ptr %58, align 2, !tbaa !14
  %59 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1048575
  %62 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, -1048576
  %65 = or disjoint i32 %64, %61
  store i32 %65, ptr %62, align 4
  %66 = load i32, ptr %59, align 4
  %67 = and i32 %66, -1048576
  %68 = or disjoint i32 %67, %61
  store i32 %68, ptr %62, align 4
  %69 = getelementptr inbounds %struct.closure_type, ptr %44, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  store i8 -127, ptr %49, align 8, !tbaa !14
  %70 = and i16 %55, -4227
  store i16 %70, ptr %50, align 2
  %71 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %72 = zext i8 %71 to i32
  store i32 %72, ptr @zz_size, align 4, !tbaa !15
  %73 = zext i8 %71 to i64
  %74 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %43
  %78 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %79 = tail call ptr @GetMemory(i32 noundef %72, ptr noundef %78) #4
  br label %82

80:                                               ; preds = %43
  store ptr %75, ptr @zz_hold, align 8, !tbaa !12
  %81 = load ptr, ptr %75, align 8, !tbaa !14
  store ptr %81, ptr %74, align 8, !tbaa !12
  br label %82

82:                                               ; preds = %77, %80
  %83 = phi ptr [ %79, %77 ], [ %75, %80 ]
  %84 = getelementptr inbounds %struct.word_type, ptr %83, i64 0, i32 1
  store i8 0, ptr %84, align 8, !tbaa !14
  %85 = getelementptr inbounds [2 x %struct.LIST], ptr %83, i64 0, i64 1, i32 1
  store ptr %83, ptr %85, align 8, !tbaa !14
  %86 = getelementptr inbounds [2 x %struct.LIST], ptr %83, i64 0, i64 1
  store ptr %83, ptr %86, align 8, !tbaa !14
  %87 = getelementptr inbounds %struct.LIST, ptr %83, i64 0, i32 1
  store ptr %83, ptr %87, align 8, !tbaa !14
  store ptr %83, ptr %83, align 8, !tbaa !14
  store ptr %83, ptr @xx_link, align 8, !tbaa !12
  store ptr %83, ptr @zz_res, align 8, !tbaa !12
  store ptr %44, ptr @zz_hold, align 8, !tbaa !12
  %88 = load ptr, ptr %44, align 8, !tbaa !14
  store ptr %88, ptr @zz_tmp, align 8, !tbaa !12
  %89 = load ptr, ptr %83, align 8, !tbaa !14
  store ptr %89, ptr %44, align 8, !tbaa !14
  %90 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %91 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %92 = load ptr, ptr %91, align 8, !tbaa !14
  %93 = getelementptr inbounds %struct.LIST, ptr %92, i64 0, i32 1
  store ptr %90, ptr %93, align 8, !tbaa !14
  %94 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %94, ptr %91, align 8, !tbaa !14
  %95 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %96 = getelementptr inbounds %struct.LIST, ptr %94, i64 0, i32 1
  store ptr %95, ptr %96, align 8, !tbaa !14
  %97 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %97, ptr @zz_res, align 8, !tbaa !12
  store ptr %0, ptr @zz_hold, align 8, !tbaa !12
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %82
  %100 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !14
  store ptr %101, ptr @zz_tmp, align 8, !tbaa !12
  %102 = getelementptr inbounds [2 x %struct.LIST], ptr %97, i64 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !14
  store ptr %103, ptr %100, align 8, !tbaa !14
  %104 = getelementptr inbounds [2 x %struct.LIST], ptr %103, i64 0, i64 1, i32 1
  store ptr %0, ptr %104, align 8, !tbaa !14
  store ptr %101, ptr %102, align 8, !tbaa !14
  %105 = getelementptr inbounds [2 x %struct.LIST], ptr %101, i64 0, i64 1, i32 1
  store ptr %97, ptr %105, align 8, !tbaa !14
  br label %106

106:                                              ; preds = %82, %99
  %107 = load ptr, ptr %22, align 8, !tbaa !14
  %108 = tail call ptr @GetEnv(ptr noundef %107) #4
  %109 = getelementptr inbounds i8, ptr %107, i64 42
  %110 = load i16, ptr %109, align 2
  %111 = lshr i16 %110, 2
  %112 = and i16 %111, 1
  %113 = zext nneg i16 %112 to i32
  %114 = getelementptr inbounds %struct.closure_type, ptr %107, i64 0, i32 4
  %115 = load i32, ptr @itop, align 4, !tbaa !15
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [30 x %struct.CONSTRAINT], ptr @constraints, i64 0, i64 %116
  call void @SizeGalley(ptr noundef nonnull %44, ptr noundef %108, i32 noundef 1, i32 noundef %113, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %114, ptr noundef nonnull %117, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null) #4
  %118 = load ptr, ptr %2, align 8, !tbaa !12
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %106
  call void @ExpandRecursives(ptr noundef nonnull %118) #4
  br label %121

121:                                              ; preds = %120, %106
  %122 = getelementptr inbounds [2 x %struct.LIST], ptr %17, i64 0, i64 1, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !14
  %124 = load ptr, ptr %123, align 8, !tbaa !14
  %125 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 3
  %126 = load i32, ptr %125, align 8, !tbaa !14
  %127 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 3, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !14
  call void @AdjustSize(ptr noundef nonnull %107, i32 noundef %126, i32 noundef %128, i32 noundef 0) #4
  call void @Promote(ptr noundef nonnull %44, ptr noundef nonnull %44, ptr noundef nonnull %17, i32 noundef 0) #4
  store ptr %44, ptr @xx_hold, align 8, !tbaa !12
  %129 = load ptr, ptr %46, align 8, !tbaa !14
  %130 = icmp eq ptr %129, %44
  br i1 %130, label %131, label %136

131:                                              ; preds = %158, %121
  %132 = phi ptr [ %44, %121 ], [ %177, %158 ]
  %133 = getelementptr inbounds %struct.LIST, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !14
  %135 = icmp eq ptr %134, %132
  br i1 %135, label %226, label %181

136:                                              ; preds = %121, %158
  %137 = phi ptr [ %179, %158 ], [ %129, %121 ]
  store ptr %137, ptr @xx_link, align 8, !tbaa !12
  %138 = getelementptr inbounds [2 x %struct.LIST], ptr %137, i64 0, i64 1, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !14
  %140 = icmp eq ptr %139, %137
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  store ptr %139, ptr @zz_res, align 8, !tbaa !12
  %142 = getelementptr inbounds [2 x %struct.LIST], ptr %137, i64 0, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !14
  %144 = getelementptr inbounds [2 x %struct.LIST], ptr %139, i64 0, i64 1
  store ptr %143, ptr %144, align 8, !tbaa !14
  %145 = getelementptr inbounds [2 x %struct.LIST], ptr %143, i64 0, i64 1, i32 1
  store ptr %139, ptr %145, align 8, !tbaa !14
  store ptr %137, ptr %138, align 8, !tbaa !14
  store ptr %137, ptr %142, align 8, !tbaa !14
  br label %146

146:                                              ; preds = %136, %141
  store ptr %137, ptr @zz_hold, align 8, !tbaa !12
  %147 = getelementptr inbounds %struct.LIST, ptr %137, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !14
  %149 = icmp eq ptr %148, %137
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  store ptr %148, ptr @zz_res, align 8, !tbaa !12
  %151 = load ptr, ptr %137, align 8, !tbaa !14
  store ptr %151, ptr %148, align 8, !tbaa !14
  %152 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %153 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %154 = load ptr, ptr %153, align 8, !tbaa !14
  %155 = getelementptr inbounds %struct.LIST, ptr %154, i64 0, i32 1
  store ptr %152, ptr %155, align 8, !tbaa !14
  %156 = getelementptr inbounds %struct.LIST, ptr %153, i64 0, i32 1
  store ptr %153, ptr %156, align 8, !tbaa !14
  store ptr %153, ptr %153, align 8, !tbaa !14
  %157 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %158

158:                                              ; preds = %146, %150
  %159 = phi ptr [ %137, %146 ], [ %157, %150 ]
  store ptr %159, ptr @zz_hold, align 8, !tbaa !12
  %160 = getelementptr inbounds %struct.word_type, ptr %159, i64 0, i32 1
  %161 = load i8, ptr %160, align 8, !tbaa !14
  %162 = add i8 %161, -11
  %163 = icmp ult i8 %162, 2
  %164 = getelementptr inbounds %struct.word_type, ptr %159, i64 0, i32 1, i32 0, i32 1
  %165 = zext i8 %161 to i64
  %166 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %165
  %167 = select i1 %163, ptr %164, ptr %166
  %168 = load i8, ptr %167, align 1, !tbaa !14
  %169 = zext i8 %168 to i32
  store i32 %169, ptr @zz_size, align 4, !tbaa !15
  %170 = zext i8 %168 to i64
  %171 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !12
  store ptr %172, ptr %159, align 8, !tbaa !14
  %173 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %174 = load i32, ptr @zz_size, align 4, !tbaa !15
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %175
  store ptr %173, ptr %176, align 8, !tbaa !12
  %177 = load ptr, ptr @xx_hold, align 8, !tbaa !12
  %178 = getelementptr inbounds [2 x %struct.LIST], ptr %177, i64 0, i64 1, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !14
  %180 = icmp eq ptr %179, %177
  br i1 %180, label %131, label %136

181:                                              ; preds = %131, %203
  %182 = phi ptr [ %224, %203 ], [ %134, %131 ]
  store ptr %182, ptr @xx_link, align 8, !tbaa !12
  %183 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !14
  %185 = icmp eq ptr %184, %182
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  store ptr %184, ptr @zz_res, align 8, !tbaa !12
  %187 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !14
  %189 = getelementptr inbounds [2 x %struct.LIST], ptr %184, i64 0, i64 1
  store ptr %188, ptr %189, align 8, !tbaa !14
  %190 = getelementptr inbounds [2 x %struct.LIST], ptr %188, i64 0, i64 1, i32 1
  store ptr %184, ptr %190, align 8, !tbaa !14
  store ptr %182, ptr %183, align 8, !tbaa !14
  store ptr %182, ptr %187, align 8, !tbaa !14
  br label %191

191:                                              ; preds = %181, %186
  store ptr %182, ptr @zz_hold, align 8, !tbaa !12
  %192 = getelementptr inbounds %struct.LIST, ptr %182, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !14
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  store ptr %193, ptr @zz_res, align 8, !tbaa !12
  %196 = load ptr, ptr %182, align 8, !tbaa !14
  store ptr %196, ptr %193, align 8, !tbaa !14
  %197 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %198 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %199 = load ptr, ptr %198, align 8, !tbaa !14
  %200 = getelementptr inbounds %struct.LIST, ptr %199, i64 0, i32 1
  store ptr %197, ptr %200, align 8, !tbaa !14
  %201 = getelementptr inbounds %struct.LIST, ptr %198, i64 0, i32 1
  store ptr %198, ptr %201, align 8, !tbaa !14
  store ptr %198, ptr %198, align 8, !tbaa !14
  %202 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %203

203:                                              ; preds = %191, %195
  %204 = phi ptr [ %182, %191 ], [ %202, %195 ]
  store ptr %204, ptr @zz_hold, align 8, !tbaa !12
  %205 = getelementptr inbounds %struct.word_type, ptr %204, i64 0, i32 1
  %206 = load i8, ptr %205, align 8, !tbaa !14
  %207 = add i8 %206, -11
  %208 = icmp ult i8 %207, 2
  %209 = getelementptr inbounds %struct.word_type, ptr %204, i64 0, i32 1, i32 0, i32 1
  %210 = zext i8 %206 to i64
  %211 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %210
  %212 = select i1 %208, ptr %209, ptr %211
  %213 = load i8, ptr %212, align 1, !tbaa !14
  %214 = zext i8 %213 to i32
  store i32 %214, ptr @zz_size, align 4, !tbaa !15
  %215 = zext i8 %213 to i64
  %216 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !12
  store ptr %217, ptr %204, align 8, !tbaa !14
  %218 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %219 = load i32, ptr @zz_size, align 4, !tbaa !15
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %220
  store ptr %218, ptr %221, align 8, !tbaa !12
  %222 = load ptr, ptr @xx_hold, align 8, !tbaa !12
  %223 = getelementptr inbounds %struct.LIST, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !14
  %225 = icmp eq ptr %224, %222
  br i1 %225, label %226, label %181

226:                                              ; preds = %203, %131
  %227 = phi ptr [ %132, %131 ], [ %222, %203 ]
  store ptr %227, ptr @zz_hold, align 8, !tbaa !12
  %228 = getelementptr inbounds %struct.word_type, ptr %227, i64 0, i32 1
  %229 = load i8, ptr %228, align 8, !tbaa !14
  %230 = add i8 %229, -11
  %231 = icmp ult i8 %230, 2
  %232 = getelementptr inbounds %struct.word_type, ptr %227, i64 0, i32 1, i32 0, i32 1
  %233 = zext i8 %229 to i64
  %234 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %233
  %235 = select i1 %231, ptr %232, ptr %234
  %236 = load i8, ptr %235, align 1, !tbaa !14
  %237 = zext i8 %236 to i32
  store i32 %237, ptr @zz_size, align 4, !tbaa !15
  %238 = zext i8 %236 to i64
  %239 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !12
  store ptr %240, ptr %227, align 8, !tbaa !14
  %241 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %242 = load i32, ptr @zz_size, align 4, !tbaa !15
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %243
  store ptr %241, ptr %244, align 8, !tbaa !12
  %245 = getelementptr inbounds %struct.LIST, ptr %17, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !14
  %247 = icmp eq ptr %246, %17
  br i1 %247, label %366, label %248

248:                                              ; preds = %226
  %249 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !14
  %250 = zext i8 %249 to i32
  store i32 %250, ptr @zz_size, align 4, !tbaa !15
  %251 = zext i8 %249 to i64
  %252 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !12
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %257 = call ptr @GetMemory(i32 noundef %250, ptr noundef %256) #4
  store ptr %257, ptr @zz_hold, align 8, !tbaa !12
  br label %260

258:                                              ; preds = %248
  store ptr %253, ptr @zz_hold, align 8, !tbaa !12
  %259 = load ptr, ptr %253, align 8, !tbaa !14
  store ptr %259, ptr %252, align 8, !tbaa !12
  br label %260

260:                                              ; preds = %255, %258
  %261 = phi ptr [ %257, %255 ], [ %253, %258 ]
  %262 = getelementptr inbounds %struct.word_type, ptr %261, i64 0, i32 1
  store i8 17, ptr %262, align 8, !tbaa !14
  %263 = getelementptr inbounds [2 x %struct.LIST], ptr %261, i64 0, i64 1, i32 1
  store ptr %261, ptr %263, align 8, !tbaa !14
  %264 = getelementptr inbounds [2 x %struct.LIST], ptr %261, i64 0, i64 1
  store ptr %261, ptr %264, align 8, !tbaa !14
  %265 = getelementptr inbounds %struct.LIST, ptr %261, i64 0, i32 1
  store ptr %261, ptr %265, align 8, !tbaa !14
  store ptr %261, ptr %261, align 8, !tbaa !14
  %266 = load ptr, ptr %245, align 8, !tbaa !14
  %267 = icmp eq ptr %266, %17
  br i1 %267, label %365, label %268

268:                                              ; preds = %260
  %269 = getelementptr inbounds %struct.LIST, ptr %124, i64 0, i32 1
  br label %270

270:                                              ; preds = %276, %268
  %271 = phi ptr [ %266, %268 ], [ %277, %276 ]
  %272 = getelementptr inbounds [2 x %struct.LIST], ptr %271, i64 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !14
  %274 = getelementptr inbounds %struct.word_type, ptr %273, i64 0, i32 1
  %275 = load i8, ptr %274, align 8, !tbaa !14
  switch i8 %275, label %278 [
    i8 0, label %276
    i8 8, label %281
  ]

276:                                              ; preds = %270, %362
  %277 = phi ptr [ %273, %270 ], [ %363, %362 ]
  br label %270

278:                                              ; preds = %270
  %279 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %280 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %279, ptr noundef nonnull @.str.12) #4
  br label %281

281:                                              ; preds = %270, %278
  %282 = getelementptr inbounds %struct.head_type, ptr %273, i64 0, i32 8
  %283 = load ptr, ptr %282, align 8, !tbaa !14
  %284 = icmp eq ptr %283, null
  br i1 %284, label %287, label %285

285:                                              ; preds = %281
  %286 = call i32 @DisposeObject(ptr noundef nonnull %283) #4
  store ptr null, ptr %282, align 8, !tbaa !14
  br label %287

287:                                              ; preds = %285, %281
  call void @DetachGalley(ptr noundef nonnull %273) #4
  %288 = getelementptr inbounds [2 x %struct.LIST], ptr %273, i64 0, i64 1, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !14
  br label %290

290:                                              ; preds = %290, %287
  %291 = phi ptr [ %289, %287 ], [ %292, %290 ]
  %292 = load ptr, ptr %291, align 8, !tbaa !14
  %293 = getelementptr inbounds %struct.word_type, ptr %292, i64 0, i32 1
  %294 = load i8, ptr %293, align 8, !tbaa !14
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %290, label %296

296:                                              ; preds = %290
  %297 = getelementptr inbounds [2 x %struct.LIST], ptr %292, i64 0, i64 1
  %298 = getelementptr inbounds [2 x %struct.LIST], ptr %292, i64 0, i64 1, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !14
  store ptr %299, ptr @xx_link, align 8, !tbaa !12
  store ptr %299, ptr @zz_hold, align 8, !tbaa !12
  %300 = getelementptr inbounds %struct.LIST, ptr %299, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !14
  %302 = icmp eq ptr %301, %299
  br i1 %302, label %311, label %303

303:                                              ; preds = %296
  store ptr %301, ptr @zz_res, align 8, !tbaa !12
  %304 = load ptr, ptr %299, align 8, !tbaa !14
  store ptr %304, ptr %301, align 8, !tbaa !14
  %305 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %306 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %307 = load ptr, ptr %306, align 8, !tbaa !14
  %308 = getelementptr inbounds %struct.LIST, ptr %307, i64 0, i32 1
  store ptr %305, ptr %308, align 8, !tbaa !14
  %309 = getelementptr inbounds %struct.LIST, ptr %306, i64 0, i32 1
  store ptr %306, ptr %309, align 8, !tbaa !14
  store ptr %306, ptr %306, align 8, !tbaa !14
  %310 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %311

311:                                              ; preds = %296, %303
  %312 = phi ptr [ %299, %296 ], [ %310, %303 ]
  store ptr %312, ptr @zz_res, align 8, !tbaa !12
  %313 = load ptr, ptr %269, align 8, !tbaa !14
  store ptr %313, ptr @zz_hold, align 8, !tbaa !12
  %314 = icmp eq ptr %313, null
  %315 = icmp eq ptr %312, null
  %316 = select i1 %314, i1 true, i1 %315
  br i1 %316, label %327, label %317

317:                                              ; preds = %311
  %318 = load ptr, ptr %313, align 8, !tbaa !14
  store ptr %318, ptr @zz_tmp, align 8, !tbaa !12
  %319 = load ptr, ptr %312, align 8, !tbaa !14
  store ptr %319, ptr %313, align 8, !tbaa !14
  %320 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %321 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %322 = load ptr, ptr %321, align 8, !tbaa !14
  %323 = getelementptr inbounds %struct.LIST, ptr %322, i64 0, i32 1
  store ptr %320, ptr %323, align 8, !tbaa !14
  %324 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %324, ptr %321, align 8, !tbaa !14
  %325 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %326 = getelementptr inbounds %struct.LIST, ptr %324, i64 0, i32 1
  store ptr %325, ptr %326, align 8, !tbaa !14
  br label %327

327:                                              ; preds = %311, %317
  %328 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %329 = zext i8 %328 to i32
  store i32 %329, ptr @zz_size, align 4, !tbaa !15
  %330 = zext i8 %328 to i64
  %331 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %330
  %332 = load ptr, ptr %331, align 8, !tbaa !12
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %327
  %335 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %336 = call ptr @GetMemory(i32 noundef %329, ptr noundef %335) #4
  br label %339

337:                                              ; preds = %327
  store ptr %332, ptr @zz_hold, align 8, !tbaa !12
  %338 = load ptr, ptr %332, align 8, !tbaa !14
  store ptr %338, ptr %331, align 8, !tbaa !12
  br label %339

339:                                              ; preds = %334, %337
  %340 = phi ptr [ %336, %334 ], [ %332, %337 ]
  %341 = getelementptr inbounds %struct.word_type, ptr %340, i64 0, i32 1
  store i8 0, ptr %341, align 8, !tbaa !14
  %342 = getelementptr inbounds [2 x %struct.LIST], ptr %340, i64 0, i64 1, i32 1
  store ptr %340, ptr %342, align 8, !tbaa !14
  %343 = getelementptr inbounds [2 x %struct.LIST], ptr %340, i64 0, i64 1
  store ptr %340, ptr %343, align 8, !tbaa !14
  %344 = getelementptr inbounds %struct.LIST, ptr %340, i64 0, i32 1
  store ptr %340, ptr %344, align 8, !tbaa !14
  store ptr %340, ptr %340, align 8, !tbaa !14
  store ptr %340, ptr @xx_link, align 8, !tbaa !12
  store ptr %340, ptr @zz_res, align 8, !tbaa !12
  store ptr %261, ptr @zz_hold, align 8, !tbaa !12
  %345 = load ptr, ptr %261, align 8, !tbaa !14
  store ptr %345, ptr @zz_tmp, align 8, !tbaa !12
  %346 = load ptr, ptr %340, align 8, !tbaa !14
  store ptr %346, ptr %261, align 8, !tbaa !14
  %347 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %348 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %349 = load ptr, ptr %348, align 8, !tbaa !14
  %350 = getelementptr inbounds %struct.LIST, ptr %349, i64 0, i32 1
  store ptr %347, ptr %350, align 8, !tbaa !14
  %351 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %351, ptr %348, align 8, !tbaa !14
  %352 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %353 = getelementptr inbounds %struct.LIST, ptr %351, i64 0, i32 1
  store ptr %352, ptr %353, align 8, !tbaa !14
  %354 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %354, ptr @zz_res, align 8, !tbaa !12
  store ptr %292, ptr @zz_hold, align 8, !tbaa !12
  %355 = icmp eq ptr %354, null
  br i1 %355, label %362, label %356

356:                                              ; preds = %339
  %357 = load ptr, ptr %297, align 8, !tbaa !14
  store ptr %357, ptr @zz_tmp, align 8, !tbaa !12
  %358 = getelementptr inbounds [2 x %struct.LIST], ptr %354, i64 0, i64 1
  %359 = load ptr, ptr %358, align 8, !tbaa !14
  store ptr %359, ptr %297, align 8, !tbaa !14
  %360 = getelementptr inbounds [2 x %struct.LIST], ptr %359, i64 0, i64 1, i32 1
  store ptr %292, ptr %360, align 8, !tbaa !14
  store ptr %357, ptr %358, align 8, !tbaa !14
  %361 = getelementptr inbounds [2 x %struct.LIST], ptr %357, i64 0, i64 1, i32 1
  store ptr %354, ptr %361, align 8, !tbaa !14
  br label %362

362:                                              ; preds = %339, %356
  %363 = load ptr, ptr %245, align 8, !tbaa !14
  %364 = icmp eq ptr %363, %17
  br i1 %364, label %365, label %276

365:                                              ; preds = %362, %260
  call void @FlushInners(ptr noundef nonnull %261, ptr noundef null) #4
  br label %366

366:                                              ; preds = %365, %226
  %367 = load ptr, ptr %3, align 8, !tbaa !12
  %368 = icmp eq ptr %367, null
  br i1 %368, label %370, label %369

369:                                              ; preds = %366
  call void @FlushInners(ptr noundef nonnull %367, ptr noundef null) #4
  br label %370

370:                                              ; preds = %369, %366
  %371 = getelementptr inbounds i8, ptr %17, i64 42
  %372 = load i16, ptr %371, align 2
  %373 = and i16 %372, 32
  %374 = icmp eq i16 %373, 0
  br i1 %374, label %385, label %375

375:                                              ; preds = %370
  %376 = and i16 %372, -33
  store i16 %376, ptr %371, align 2
  %377 = load ptr, ptr %122, align 8, !tbaa !14
  br label %378

378:                                              ; preds = %378, %375
  %379 = phi ptr [ %377, %375 ], [ %380, %378 ]
  %380 = load ptr, ptr %379, align 8, !tbaa !14
  %381 = getelementptr inbounds %struct.word_type, ptr %380, i64 0, i32 1
  %382 = load i8, ptr %381, align 8, !tbaa !14
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %378, label %384

384:                                              ; preds = %378
  call void @FlushGalley(ptr noundef nonnull %380) #4
  br label %385

385:                                              ; preds = %370, %384, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret void
}

declare void @ExpandRecursives(ptr noundef) local_unnamed_addr #2

declare void @AdjustSize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Promote(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @DetachGalley(ptr noundef) local_unnamed_addr #2

declare void @FlushInners(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @TransferEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %5 = load i32, ptr @itop, align 4, !tbaa !15
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [30 x ptr], ptr @targets, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.LIST, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = tail call i32 @DisposeObject(ptr noundef %0) #4
  %14 = load i32, ptr @itop, align 4, !tbaa !15
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr @itop, align 4, !tbaa !15
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [30 x ptr], ptr @targets, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = tail call i32 @DisposeObject(ptr noundef %18) #4
  br label %640

20:                                               ; preds = %1, %20
  %21 = phi ptr [ %23, %20 ], [ %10, %1 ]
  %22 = getelementptr inbounds [2 x %struct.LIST], ptr %21, i64 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.word_type, ptr %23, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %20, label %27

27:                                               ; preds = %20
  %28 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 8), align 1, !tbaa !14
  %29 = zext i8 %28 to i32
  store i32 %29, ptr @zz_size, align 4, !tbaa !15
  %30 = zext i8 %28 to i64
  %31 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %36 = tail call ptr @GetMemory(i32 noundef %29, ptr noundef %35) #4
  store ptr %36, ptr @zz_hold, align 8, !tbaa !12
  br label %39

37:                                               ; preds = %27
  store ptr %32, ptr @zz_hold, align 8, !tbaa !12
  %38 = load ptr, ptr %32, align 8, !tbaa !14
  store ptr %38, ptr %31, align 8, !tbaa !12
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %36, %34 ], [ %32, %37 ]
  %41 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1
  store i8 8, ptr %41, align 8, !tbaa !14
  %42 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1, i32 1
  store ptr %40, ptr %42, align 8, !tbaa !14
  %43 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1
  store ptr %40, ptr %43, align 8, !tbaa !14
  %44 = getelementptr inbounds %struct.LIST, ptr %40, i64 0, i32 1
  store ptr %40, ptr %44, align 8, !tbaa !14
  store ptr %40, ptr %40, align 8, !tbaa !14
  %45 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %46 = load i16, ptr %45, align 2, !tbaa !14
  %47 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1, i32 0, i32 2
  store i16 %46, ptr %47, align 2, !tbaa !14
  %48 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1048575
  %51 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -1048576
  %54 = or disjoint i32 %53, %50
  store i32 %54, ptr %51, align 4
  %55 = load i32, ptr %48, align 4
  %56 = and i32 %55, -1048576
  %57 = or disjoint i32 %56, %50
  store i32 %57, ptr %51, align 4
  %58 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 2
  %59 = getelementptr inbounds i8, ptr %40, i64 42
  %60 = load i16, ptr %59, align 2
  %61 = getelementptr inbounds %struct.head_type, ptr %40, i64 0, i32 11
  %62 = getelementptr inbounds %struct.head_type, ptr %40, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %61, i8 0, i64 32, i1 false)
  %63 = getelementptr inbounds %struct.closure_type, ptr %40, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, i8 0, i64 24, i1 false)
  store i8 -127, ptr %58, align 8, !tbaa !14
  %64 = and i16 %60, -4483
  %65 = or disjoint i16 %64, 256
  store i16 %65, ptr %59, align 2
  %66 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %67 = zext i8 %66 to i32
  store i32 %67, ptr @zz_size, align 4, !tbaa !15
  %68 = zext i8 %66 to i64
  %69 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %39
  %73 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %74 = tail call ptr @GetMemory(i32 noundef %67, ptr noundef %73) #4
  br label %77

75:                                               ; preds = %39
  store ptr %70, ptr @zz_hold, align 8, !tbaa !12
  %76 = load ptr, ptr %70, align 8, !tbaa !14
  store ptr %76, ptr %69, align 8, !tbaa !12
  br label %77

77:                                               ; preds = %72, %75
  %78 = phi ptr [ %74, %72 ], [ %70, %75 ]
  %79 = getelementptr inbounds %struct.word_type, ptr %78, i64 0, i32 1
  store i8 0, ptr %79, align 8, !tbaa !14
  %80 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1, i32 1
  store ptr %78, ptr %80, align 8, !tbaa !14
  %81 = getelementptr inbounds [2 x %struct.LIST], ptr %78, i64 0, i64 1
  store ptr %78, ptr %81, align 8, !tbaa !14
  %82 = getelementptr inbounds %struct.LIST, ptr %78, i64 0, i32 1
  store ptr %78, ptr %82, align 8, !tbaa !14
  store ptr %78, ptr %78, align 8, !tbaa !14
  store ptr %78, ptr @xx_link, align 8, !tbaa !12
  store ptr %78, ptr @zz_res, align 8, !tbaa !12
  store ptr %40, ptr @zz_hold, align 8, !tbaa !12
  %83 = load ptr, ptr %40, align 8, !tbaa !14
  store ptr %83, ptr @zz_tmp, align 8, !tbaa !12
  %84 = load ptr, ptr %78, align 8, !tbaa !14
  store ptr %84, ptr %40, align 8, !tbaa !14
  %85 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %86 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %87 = load ptr, ptr %86, align 8, !tbaa !14
  %88 = getelementptr inbounds %struct.LIST, ptr %87, i64 0, i32 1
  store ptr %85, ptr %88, align 8, !tbaa !14
  %89 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %89, ptr %86, align 8, !tbaa !14
  %90 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %91 = getelementptr inbounds %struct.LIST, ptr %89, i64 0, i32 1
  store ptr %90, ptr %91, align 8, !tbaa !14
  %92 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %92, ptr @zz_res, align 8, !tbaa !12
  store ptr %0, ptr @zz_hold, align 8, !tbaa !12
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %77
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !14
  store ptr %96, ptr @zz_tmp, align 8, !tbaa !12
  %97 = getelementptr inbounds [2 x %struct.LIST], ptr %92, i64 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !14
  store ptr %98, ptr %95, align 8, !tbaa !14
  %99 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1, i32 1
  store ptr %0, ptr %99, align 8, !tbaa !14
  store ptr %96, ptr %97, align 8, !tbaa !14
  %100 = getelementptr inbounds [2 x %struct.LIST], ptr %96, i64 0, i64 1, i32 1
  store ptr %92, ptr %100, align 8, !tbaa !14
  br label %101

101:                                              ; preds = %77, %94
  %102 = getelementptr inbounds %struct.closure_type, ptr %23, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !14
  %104 = tail call ptr @GetEnv(ptr noundef %103) #4
  %105 = getelementptr inbounds i8, ptr %103, i64 42
  %106 = load i16, ptr %105, align 2
  %107 = lshr i16 %106, 4
  %108 = and i16 %107, 1
  %109 = zext nneg i16 %108 to i32
  %110 = lshr i16 %106, 2
  %111 = and i16 %110, 1
  %112 = zext nneg i16 %111 to i32
  %113 = getelementptr inbounds %struct.closure_type, ptr %103, i64 0, i32 4
  %114 = load i32, ptr @itop, align 4, !tbaa !15
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [30 x %struct.CONSTRAINT], ptr @constraints, i64 0, i64 %115
  call void @SizeGalley(ptr noundef nonnull %40, ptr noundef %104, i32 noundef %109, i32 noundef %112, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %113, ptr noundef nonnull %116, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null) #4
  %117 = load ptr, ptr %2, align 8, !tbaa !12
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %101
  call void @ExpandRecursives(ptr noundef nonnull %117) #4
  br label %120

120:                                              ; preds = %119, %101
  %121 = getelementptr inbounds [2 x %struct.LIST], ptr %23, i64 0, i64 1, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !14
  %123 = load ptr, ptr %122, align 8, !tbaa !14
  %124 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 3
  %125 = load i32, ptr %124, align 8, !tbaa !14
  %126 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 3, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !14
  call void @AdjustSize(ptr noundef nonnull %103, i32 noundef %125, i32 noundef %127, i32 noundef 0) #4
  %128 = load i16, ptr %105, align 2
  %129 = and i16 %128, 16
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %120
  %132 = load ptr, ptr %40, align 8, !tbaa !14
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi ptr [ %132, %131 ], [ %136, %133 ]
  %135 = getelementptr inbounds [2 x %struct.LIST], ptr %134, i64 0, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !14
  %137 = getelementptr inbounds %struct.word_type, ptr %136, i64 0, i32 1
  %138 = load i8, ptr %137, align 8, !tbaa !14
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %133, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds i8, ptr %136, i64 52
  %142 = load i32, ptr %141, align 4, !tbaa !14
  %143 = getelementptr inbounds %struct.word_type, ptr %136, i64 0, i32 3, i32 1, i64 4
  %144 = load i32, ptr %143, align 4, !tbaa !14
  call void @AdjustSize(ptr noundef %103, i32 noundef %142, i32 noundef %144, i32 noundef 1) #4
  call void @Interpose(ptr noundef %103, i32 noundef 19, ptr noundef nonnull %40, ptr noundef nonnull %136) #4
  br label %145

145:                                              ; preds = %140, %120
  call void @Promote(ptr noundef nonnull %40, ptr noundef nonnull %40, ptr noundef %23, i32 noundef 1) #4
  store ptr %40, ptr @xx_hold, align 8, !tbaa !12
  %146 = load ptr, ptr %42, align 8, !tbaa !14
  %147 = icmp eq ptr %146, %40
  br i1 %147, label %148, label %153

148:                                              ; preds = %175, %145
  %149 = phi ptr [ %40, %145 ], [ %194, %175 ]
  %150 = getelementptr inbounds %struct.LIST, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !14
  %152 = icmp eq ptr %151, %149
  br i1 %152, label %243, label %198

153:                                              ; preds = %145, %175
  %154 = phi ptr [ %196, %175 ], [ %146, %145 ]
  store ptr %154, ptr @xx_link, align 8, !tbaa !12
  %155 = getelementptr inbounds [2 x %struct.LIST], ptr %154, i64 0, i64 1, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !14
  %157 = icmp eq ptr %156, %154
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  store ptr %156, ptr @zz_res, align 8, !tbaa !12
  %159 = getelementptr inbounds [2 x %struct.LIST], ptr %154, i64 0, i64 1
  %160 = load ptr, ptr %159, align 8, !tbaa !14
  %161 = getelementptr inbounds [2 x %struct.LIST], ptr %156, i64 0, i64 1
  store ptr %160, ptr %161, align 8, !tbaa !14
  %162 = getelementptr inbounds [2 x %struct.LIST], ptr %160, i64 0, i64 1, i32 1
  store ptr %156, ptr %162, align 8, !tbaa !14
  store ptr %154, ptr %155, align 8, !tbaa !14
  store ptr %154, ptr %159, align 8, !tbaa !14
  br label %163

163:                                              ; preds = %153, %158
  store ptr %154, ptr @zz_hold, align 8, !tbaa !12
  %164 = getelementptr inbounds %struct.LIST, ptr %154, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !14
  %166 = icmp eq ptr %165, %154
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  store ptr %165, ptr @zz_res, align 8, !tbaa !12
  %168 = load ptr, ptr %154, align 8, !tbaa !14
  store ptr %168, ptr %165, align 8, !tbaa !14
  %169 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %170 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %171 = load ptr, ptr %170, align 8, !tbaa !14
  %172 = getelementptr inbounds %struct.LIST, ptr %171, i64 0, i32 1
  store ptr %169, ptr %172, align 8, !tbaa !14
  %173 = getelementptr inbounds %struct.LIST, ptr %170, i64 0, i32 1
  store ptr %170, ptr %173, align 8, !tbaa !14
  store ptr %170, ptr %170, align 8, !tbaa !14
  %174 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %175

175:                                              ; preds = %163, %167
  %176 = phi ptr [ %154, %163 ], [ %174, %167 ]
  store ptr %176, ptr @zz_hold, align 8, !tbaa !12
  %177 = getelementptr inbounds %struct.word_type, ptr %176, i64 0, i32 1
  %178 = load i8, ptr %177, align 8, !tbaa !14
  %179 = add i8 %178, -11
  %180 = icmp ult i8 %179, 2
  %181 = getelementptr inbounds %struct.word_type, ptr %176, i64 0, i32 1, i32 0, i32 1
  %182 = zext i8 %178 to i64
  %183 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %182
  %184 = select i1 %180, ptr %181, ptr %183
  %185 = load i8, ptr %184, align 1, !tbaa !14
  %186 = zext i8 %185 to i32
  store i32 %186, ptr @zz_size, align 4, !tbaa !15
  %187 = zext i8 %185 to i64
  %188 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !12
  store ptr %189, ptr %176, align 8, !tbaa !14
  %190 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %191 = load i32, ptr @zz_size, align 4, !tbaa !15
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %192
  store ptr %190, ptr %193, align 8, !tbaa !12
  %194 = load ptr, ptr @xx_hold, align 8, !tbaa !12
  %195 = getelementptr inbounds [2 x %struct.LIST], ptr %194, i64 0, i64 1, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !14
  %197 = icmp eq ptr %196, %194
  br i1 %197, label %148, label %153

198:                                              ; preds = %148, %220
  %199 = phi ptr [ %241, %220 ], [ %151, %148 ]
  store ptr %199, ptr @xx_link, align 8, !tbaa !12
  %200 = getelementptr inbounds [2 x %struct.LIST], ptr %199, i64 0, i64 1, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !14
  %202 = icmp eq ptr %201, %199
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  store ptr %201, ptr @zz_res, align 8, !tbaa !12
  %204 = getelementptr inbounds [2 x %struct.LIST], ptr %199, i64 0, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !14
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %201, i64 0, i64 1
  store ptr %205, ptr %206, align 8, !tbaa !14
  %207 = getelementptr inbounds [2 x %struct.LIST], ptr %205, i64 0, i64 1, i32 1
  store ptr %201, ptr %207, align 8, !tbaa !14
  store ptr %199, ptr %200, align 8, !tbaa !14
  store ptr %199, ptr %204, align 8, !tbaa !14
  br label %208

208:                                              ; preds = %198, %203
  store ptr %199, ptr @zz_hold, align 8, !tbaa !12
  %209 = getelementptr inbounds %struct.LIST, ptr %199, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !14
  %211 = icmp eq ptr %210, %199
  br i1 %211, label %220, label %212

212:                                              ; preds = %208
  store ptr %210, ptr @zz_res, align 8, !tbaa !12
  %213 = load ptr, ptr %199, align 8, !tbaa !14
  store ptr %213, ptr %210, align 8, !tbaa !14
  %214 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %215 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %216 = load ptr, ptr %215, align 8, !tbaa !14
  %217 = getelementptr inbounds %struct.LIST, ptr %216, i64 0, i32 1
  store ptr %214, ptr %217, align 8, !tbaa !14
  %218 = getelementptr inbounds %struct.LIST, ptr %215, i64 0, i32 1
  store ptr %215, ptr %218, align 8, !tbaa !14
  store ptr %215, ptr %215, align 8, !tbaa !14
  %219 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %220

220:                                              ; preds = %208, %212
  %221 = phi ptr [ %199, %208 ], [ %219, %212 ]
  store ptr %221, ptr @zz_hold, align 8, !tbaa !12
  %222 = getelementptr inbounds %struct.word_type, ptr %221, i64 0, i32 1
  %223 = load i8, ptr %222, align 8, !tbaa !14
  %224 = add i8 %223, -11
  %225 = icmp ult i8 %224, 2
  %226 = getelementptr inbounds %struct.word_type, ptr %221, i64 0, i32 1, i32 0, i32 1
  %227 = zext i8 %223 to i64
  %228 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %227
  %229 = select i1 %225, ptr %226, ptr %228
  %230 = load i8, ptr %229, align 1, !tbaa !14
  %231 = zext i8 %230 to i32
  store i32 %231, ptr @zz_size, align 4, !tbaa !15
  %232 = zext i8 %230 to i64
  %233 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !12
  store ptr %234, ptr %221, align 8, !tbaa !14
  %235 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %236 = load i32, ptr @zz_size, align 4, !tbaa !15
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %237
  store ptr %235, ptr %238, align 8, !tbaa !12
  %239 = load ptr, ptr @xx_hold, align 8, !tbaa !12
  %240 = getelementptr inbounds %struct.LIST, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !14
  %242 = icmp eq ptr %241, %239
  br i1 %242, label %243, label %198

243:                                              ; preds = %220, %148
  %244 = phi ptr [ %149, %148 ], [ %239, %220 ]
  store ptr %244, ptr @zz_hold, align 8, !tbaa !12
  %245 = getelementptr inbounds %struct.word_type, ptr %244, i64 0, i32 1
  %246 = load i8, ptr %245, align 8, !tbaa !14
  %247 = add i8 %246, -11
  %248 = icmp ult i8 %247, 2
  %249 = getelementptr inbounds %struct.word_type, ptr %244, i64 0, i32 1, i32 0, i32 1
  %250 = zext i8 %246 to i64
  %251 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %250
  %252 = select i1 %248, ptr %249, ptr %251
  %253 = load i8, ptr %252, align 1, !tbaa !14
  %254 = zext i8 %253 to i32
  store i32 %254, ptr @zz_size, align 4, !tbaa !15
  %255 = zext i8 %253 to i64
  %256 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !12
  store ptr %257, ptr %244, align 8, !tbaa !14
  %258 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %259 = load i32, ptr @zz_size, align 4, !tbaa !15
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %260
  store ptr %258, ptr %261, align 8, !tbaa !12
  %262 = getelementptr inbounds %struct.LIST, ptr %23, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !14
  %264 = icmp eq ptr %263, %23
  br i1 %264, label %383, label %265

265:                                              ; preds = %243
  %266 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !14
  %267 = zext i8 %266 to i32
  store i32 %267, ptr @zz_size, align 4, !tbaa !15
  %268 = zext i8 %266 to i64
  %269 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !12
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %274 = call ptr @GetMemory(i32 noundef %267, ptr noundef %273) #4
  store ptr %274, ptr @zz_hold, align 8, !tbaa !12
  br label %277

275:                                              ; preds = %265
  store ptr %270, ptr @zz_hold, align 8, !tbaa !12
  %276 = load ptr, ptr %270, align 8, !tbaa !14
  store ptr %276, ptr %269, align 8, !tbaa !12
  br label %277

277:                                              ; preds = %272, %275
  %278 = phi ptr [ %274, %272 ], [ %270, %275 ]
  %279 = getelementptr inbounds %struct.word_type, ptr %278, i64 0, i32 1
  store i8 17, ptr %279, align 8, !tbaa !14
  %280 = getelementptr inbounds [2 x %struct.LIST], ptr %278, i64 0, i64 1, i32 1
  store ptr %278, ptr %280, align 8, !tbaa !14
  %281 = getelementptr inbounds [2 x %struct.LIST], ptr %278, i64 0, i64 1
  store ptr %278, ptr %281, align 8, !tbaa !14
  %282 = getelementptr inbounds %struct.LIST, ptr %278, i64 0, i32 1
  store ptr %278, ptr %282, align 8, !tbaa !14
  store ptr %278, ptr %278, align 8, !tbaa !14
  %283 = load ptr, ptr %262, align 8, !tbaa !14
  %284 = icmp eq ptr %283, %23
  br i1 %284, label %382, label %285

285:                                              ; preds = %277
  %286 = getelementptr inbounds %struct.LIST, ptr %123, i64 0, i32 1
  br label %287

287:                                              ; preds = %293, %285
  %288 = phi ptr [ %283, %285 ], [ %294, %293 ]
  %289 = getelementptr inbounds [2 x %struct.LIST], ptr %288, i64 0, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !14
  %291 = getelementptr inbounds %struct.word_type, ptr %290, i64 0, i32 1
  %292 = load i8, ptr %291, align 8, !tbaa !14
  switch i8 %292, label %295 [
    i8 0, label %293
    i8 8, label %298
  ]

293:                                              ; preds = %287, %379
  %294 = phi ptr [ %290, %287 ], [ %380, %379 ]
  br label %287

295:                                              ; preds = %287
  %296 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %297 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef %296, ptr noundef nonnull @.str.13) #4
  br label %298

298:                                              ; preds = %287, %295
  %299 = getelementptr inbounds %struct.head_type, ptr %290, i64 0, i32 8
  %300 = load ptr, ptr %299, align 8, !tbaa !14
  %301 = icmp eq ptr %300, null
  br i1 %301, label %304, label %302

302:                                              ; preds = %298
  %303 = call i32 @DisposeObject(ptr noundef nonnull %300) #4
  store ptr null, ptr %299, align 8, !tbaa !14
  br label %304

304:                                              ; preds = %302, %298
  call void @DetachGalley(ptr noundef nonnull %290) #4
  %305 = getelementptr inbounds [2 x %struct.LIST], ptr %290, i64 0, i64 1, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !14
  br label %307

307:                                              ; preds = %307, %304
  %308 = phi ptr [ %306, %304 ], [ %309, %307 ]
  %309 = load ptr, ptr %308, align 8, !tbaa !14
  %310 = getelementptr inbounds %struct.word_type, ptr %309, i64 0, i32 1
  %311 = load i8, ptr %310, align 8, !tbaa !14
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %307, label %313

313:                                              ; preds = %307
  %314 = getelementptr inbounds [2 x %struct.LIST], ptr %309, i64 0, i64 1
  %315 = getelementptr inbounds [2 x %struct.LIST], ptr %309, i64 0, i64 1, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !14
  store ptr %316, ptr @xx_link, align 8, !tbaa !12
  store ptr %316, ptr @zz_hold, align 8, !tbaa !12
  %317 = getelementptr inbounds %struct.LIST, ptr %316, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !14
  %319 = icmp eq ptr %318, %316
  br i1 %319, label %328, label %320

320:                                              ; preds = %313
  store ptr %318, ptr @zz_res, align 8, !tbaa !12
  %321 = load ptr, ptr %316, align 8, !tbaa !14
  store ptr %321, ptr %318, align 8, !tbaa !14
  %322 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %323 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %324 = load ptr, ptr %323, align 8, !tbaa !14
  %325 = getelementptr inbounds %struct.LIST, ptr %324, i64 0, i32 1
  store ptr %322, ptr %325, align 8, !tbaa !14
  %326 = getelementptr inbounds %struct.LIST, ptr %323, i64 0, i32 1
  store ptr %323, ptr %326, align 8, !tbaa !14
  store ptr %323, ptr %323, align 8, !tbaa !14
  %327 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %328

328:                                              ; preds = %313, %320
  %329 = phi ptr [ %316, %313 ], [ %327, %320 ]
  store ptr %329, ptr @zz_res, align 8, !tbaa !12
  %330 = load ptr, ptr %286, align 8, !tbaa !14
  store ptr %330, ptr @zz_hold, align 8, !tbaa !12
  %331 = icmp eq ptr %330, null
  %332 = icmp eq ptr %329, null
  %333 = select i1 %331, i1 true, i1 %332
  br i1 %333, label %344, label %334

334:                                              ; preds = %328
  %335 = load ptr, ptr %330, align 8, !tbaa !14
  store ptr %335, ptr @zz_tmp, align 8, !tbaa !12
  %336 = load ptr, ptr %329, align 8, !tbaa !14
  store ptr %336, ptr %330, align 8, !tbaa !14
  %337 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %338 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %339 = load ptr, ptr %338, align 8, !tbaa !14
  %340 = getelementptr inbounds %struct.LIST, ptr %339, i64 0, i32 1
  store ptr %337, ptr %340, align 8, !tbaa !14
  %341 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %341, ptr %338, align 8, !tbaa !14
  %342 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %343 = getelementptr inbounds %struct.LIST, ptr %341, i64 0, i32 1
  store ptr %342, ptr %343, align 8, !tbaa !14
  br label %344

344:                                              ; preds = %328, %334
  %345 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %346 = zext i8 %345 to i32
  store i32 %346, ptr @zz_size, align 4, !tbaa !15
  %347 = zext i8 %345 to i64
  %348 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !12
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %354

351:                                              ; preds = %344
  %352 = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %353 = call ptr @GetMemory(i32 noundef %346, ptr noundef %352) #4
  br label %356

354:                                              ; preds = %344
  store ptr %349, ptr @zz_hold, align 8, !tbaa !12
  %355 = load ptr, ptr %349, align 8, !tbaa !14
  store ptr %355, ptr %348, align 8, !tbaa !12
  br label %356

356:                                              ; preds = %351, %354
  %357 = phi ptr [ %353, %351 ], [ %349, %354 ]
  %358 = getelementptr inbounds %struct.word_type, ptr %357, i64 0, i32 1
  store i8 0, ptr %358, align 8, !tbaa !14
  %359 = getelementptr inbounds [2 x %struct.LIST], ptr %357, i64 0, i64 1, i32 1
  store ptr %357, ptr %359, align 8, !tbaa !14
  %360 = getelementptr inbounds [2 x %struct.LIST], ptr %357, i64 0, i64 1
  store ptr %357, ptr %360, align 8, !tbaa !14
  %361 = getelementptr inbounds %struct.LIST, ptr %357, i64 0, i32 1
  store ptr %357, ptr %361, align 8, !tbaa !14
  store ptr %357, ptr %357, align 8, !tbaa !14
  store ptr %357, ptr @xx_link, align 8, !tbaa !12
  store ptr %357, ptr @zz_res, align 8, !tbaa !12
  store ptr %278, ptr @zz_hold, align 8, !tbaa !12
  %362 = load ptr, ptr %278, align 8, !tbaa !14
  store ptr %362, ptr @zz_tmp, align 8, !tbaa !12
  %363 = load ptr, ptr %357, align 8, !tbaa !14
  store ptr %363, ptr %278, align 8, !tbaa !14
  %364 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %365 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %366 = load ptr, ptr %365, align 8, !tbaa !14
  %367 = getelementptr inbounds %struct.LIST, ptr %366, i64 0, i32 1
  store ptr %364, ptr %367, align 8, !tbaa !14
  %368 = load ptr, ptr @zz_tmp, align 8, !tbaa !12
  store ptr %368, ptr %365, align 8, !tbaa !14
  %369 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %370 = getelementptr inbounds %struct.LIST, ptr %368, i64 0, i32 1
  store ptr %369, ptr %370, align 8, !tbaa !14
  %371 = load ptr, ptr @xx_link, align 8, !tbaa !12
  store ptr %371, ptr @zz_res, align 8, !tbaa !12
  store ptr %309, ptr @zz_hold, align 8, !tbaa !12
  %372 = icmp eq ptr %371, null
  br i1 %372, label %379, label %373

373:                                              ; preds = %356
  %374 = load ptr, ptr %314, align 8, !tbaa !14
  store ptr %374, ptr @zz_tmp, align 8, !tbaa !12
  %375 = getelementptr inbounds [2 x %struct.LIST], ptr %371, i64 0, i64 1
  %376 = load ptr, ptr %375, align 8, !tbaa !14
  store ptr %376, ptr %314, align 8, !tbaa !14
  %377 = getelementptr inbounds [2 x %struct.LIST], ptr %376, i64 0, i64 1, i32 1
  store ptr %309, ptr %377, align 8, !tbaa !14
  store ptr %374, ptr %375, align 8, !tbaa !14
  %378 = getelementptr inbounds [2 x %struct.LIST], ptr %374, i64 0, i64 1, i32 1
  store ptr %371, ptr %378, align 8, !tbaa !14
  br label %379

379:                                              ; preds = %356, %373
  %380 = load ptr, ptr %262, align 8, !tbaa !14
  %381 = icmp eq ptr %380, %23
  br i1 %381, label %382, label %293

382:                                              ; preds = %379, %277
  call void @FlushInners(ptr noundef nonnull %278, ptr noundef null) #4
  br label %383

383:                                              ; preds = %382, %243
  %384 = load ptr, ptr %3, align 8, !tbaa !12
  %385 = icmp eq ptr %384, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %383
  call void @FlushInners(ptr noundef nonnull %384, ptr noundef null) #4
  br label %387

387:                                              ; preds = %386, %383
  %388 = getelementptr inbounds i8, ptr %23, i64 42
  %389 = load i16, ptr %388, align 2
  %390 = and i16 %389, 32
  %391 = icmp eq i16 %390, 0
  br i1 %391, label %516, label %392

392:                                              ; preds = %387
  %393 = load ptr, ptr %121, align 8, !tbaa !14
  br label %394

394:                                              ; preds = %394, %392
  %395 = phi ptr [ %393, %392 ], [ %396, %394 ]
  %396 = load ptr, ptr %395, align 8, !tbaa !14
  %397 = getelementptr inbounds %struct.word_type, ptr %396, i64 0, i32 1
  %398 = load i8, ptr %397, align 8, !tbaa !14
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %394, label %400

400:                                              ; preds = %394
  store ptr %23, ptr @xx_hold, align 8, !tbaa !12
  %401 = icmp eq ptr %393, %23
  br i1 %401, label %402, label %407

402:                                              ; preds = %429, %400
  %403 = phi ptr [ %23, %400 ], [ %448, %429 ]
  %404 = getelementptr inbounds %struct.LIST, ptr %403, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !14
  %406 = icmp eq ptr %405, %403
  br i1 %406, label %497, label %452

407:                                              ; preds = %400, %429
  %408 = phi ptr [ %450, %429 ], [ %393, %400 ]
  store ptr %408, ptr @xx_link, align 8, !tbaa !12
  %409 = getelementptr inbounds [2 x %struct.LIST], ptr %408, i64 0, i64 1, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !14
  %411 = icmp eq ptr %410, %408
  br i1 %411, label %417, label %412

412:                                              ; preds = %407
  store ptr %410, ptr @zz_res, align 8, !tbaa !12
  %413 = getelementptr inbounds [2 x %struct.LIST], ptr %408, i64 0, i64 1
  %414 = load ptr, ptr %413, align 8, !tbaa !14
  %415 = getelementptr inbounds [2 x %struct.LIST], ptr %410, i64 0, i64 1
  store ptr %414, ptr %415, align 8, !tbaa !14
  %416 = getelementptr inbounds [2 x %struct.LIST], ptr %414, i64 0, i64 1, i32 1
  store ptr %410, ptr %416, align 8, !tbaa !14
  store ptr %408, ptr %409, align 8, !tbaa !14
  store ptr %408, ptr %413, align 8, !tbaa !14
  br label %417

417:                                              ; preds = %407, %412
  store ptr %408, ptr @zz_hold, align 8, !tbaa !12
  %418 = getelementptr inbounds %struct.LIST, ptr %408, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !14
  %420 = icmp eq ptr %419, %408
  br i1 %420, label %429, label %421

421:                                              ; preds = %417
  store ptr %419, ptr @zz_res, align 8, !tbaa !12
  %422 = load ptr, ptr %408, align 8, !tbaa !14
  store ptr %422, ptr %419, align 8, !tbaa !14
  %423 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %424 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %425 = load ptr, ptr %424, align 8, !tbaa !14
  %426 = getelementptr inbounds %struct.LIST, ptr %425, i64 0, i32 1
  store ptr %423, ptr %426, align 8, !tbaa !14
  %427 = getelementptr inbounds %struct.LIST, ptr %424, i64 0, i32 1
  store ptr %424, ptr %427, align 8, !tbaa !14
  store ptr %424, ptr %424, align 8, !tbaa !14
  %428 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %429

429:                                              ; preds = %417, %421
  %430 = phi ptr [ %408, %417 ], [ %428, %421 ]
  store ptr %430, ptr @zz_hold, align 8, !tbaa !12
  %431 = getelementptr inbounds %struct.word_type, ptr %430, i64 0, i32 1
  %432 = load i8, ptr %431, align 8, !tbaa !14
  %433 = add i8 %432, -11
  %434 = icmp ult i8 %433, 2
  %435 = getelementptr inbounds %struct.word_type, ptr %430, i64 0, i32 1, i32 0, i32 1
  %436 = zext i8 %432 to i64
  %437 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %436
  %438 = select i1 %434, ptr %435, ptr %437
  %439 = load i8, ptr %438, align 1, !tbaa !14
  %440 = zext i8 %439 to i32
  store i32 %440, ptr @zz_size, align 4, !tbaa !15
  %441 = zext i8 %439 to i64
  %442 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %441
  %443 = load ptr, ptr %442, align 8, !tbaa !12
  store ptr %443, ptr %430, align 8, !tbaa !14
  %444 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %445 = load i32, ptr @zz_size, align 4, !tbaa !15
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %446
  store ptr %444, ptr %447, align 8, !tbaa !12
  %448 = load ptr, ptr @xx_hold, align 8, !tbaa !12
  %449 = getelementptr inbounds [2 x %struct.LIST], ptr %448, i64 0, i64 1, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !14
  %451 = icmp eq ptr %450, %448
  br i1 %451, label %402, label %407

452:                                              ; preds = %402, %474
  %453 = phi ptr [ %495, %474 ], [ %405, %402 ]
  store ptr %453, ptr @xx_link, align 8, !tbaa !12
  %454 = getelementptr inbounds [2 x %struct.LIST], ptr %453, i64 0, i64 1, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !14
  %456 = icmp eq ptr %455, %453
  br i1 %456, label %462, label %457

457:                                              ; preds = %452
  store ptr %455, ptr @zz_res, align 8, !tbaa !12
  %458 = getelementptr inbounds [2 x %struct.LIST], ptr %453, i64 0, i64 1
  %459 = load ptr, ptr %458, align 8, !tbaa !14
  %460 = getelementptr inbounds [2 x %struct.LIST], ptr %455, i64 0, i64 1
  store ptr %459, ptr %460, align 8, !tbaa !14
  %461 = getelementptr inbounds [2 x %struct.LIST], ptr %459, i64 0, i64 1, i32 1
  store ptr %455, ptr %461, align 8, !tbaa !14
  store ptr %453, ptr %454, align 8, !tbaa !14
  store ptr %453, ptr %458, align 8, !tbaa !14
  br label %462

462:                                              ; preds = %452, %457
  store ptr %453, ptr @zz_hold, align 8, !tbaa !12
  %463 = getelementptr inbounds %struct.LIST, ptr %453, i64 0, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !14
  %465 = icmp eq ptr %464, %453
  br i1 %465, label %474, label %466

466:                                              ; preds = %462
  store ptr %464, ptr @zz_res, align 8, !tbaa !12
  %467 = load ptr, ptr %453, align 8, !tbaa !14
  store ptr %467, ptr %464, align 8, !tbaa !14
  %468 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %469 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %470 = load ptr, ptr %469, align 8, !tbaa !14
  %471 = getelementptr inbounds %struct.LIST, ptr %470, i64 0, i32 1
  store ptr %468, ptr %471, align 8, !tbaa !14
  %472 = getelementptr inbounds %struct.LIST, ptr %469, i64 0, i32 1
  store ptr %469, ptr %472, align 8, !tbaa !14
  store ptr %469, ptr %469, align 8, !tbaa !14
  %473 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %474

474:                                              ; preds = %462, %466
  %475 = phi ptr [ %453, %462 ], [ %473, %466 ]
  store ptr %475, ptr @zz_hold, align 8, !tbaa !12
  %476 = getelementptr inbounds %struct.word_type, ptr %475, i64 0, i32 1
  %477 = load i8, ptr %476, align 8, !tbaa !14
  %478 = add i8 %477, -11
  %479 = icmp ult i8 %478, 2
  %480 = getelementptr inbounds %struct.word_type, ptr %475, i64 0, i32 1, i32 0, i32 1
  %481 = zext i8 %477 to i64
  %482 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %481
  %483 = select i1 %479, ptr %480, ptr %482
  %484 = load i8, ptr %483, align 1, !tbaa !14
  %485 = zext i8 %484 to i32
  store i32 %485, ptr @zz_size, align 4, !tbaa !15
  %486 = zext i8 %484 to i64
  %487 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %486
  %488 = load ptr, ptr %487, align 8, !tbaa !12
  store ptr %488, ptr %475, align 8, !tbaa !14
  %489 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %490 = load i32, ptr @zz_size, align 4, !tbaa !15
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %491
  store ptr %489, ptr %492, align 8, !tbaa !12
  %493 = load ptr, ptr @xx_hold, align 8, !tbaa !12
  %494 = getelementptr inbounds %struct.LIST, ptr %493, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !14
  %496 = icmp eq ptr %495, %493
  br i1 %496, label %497, label %452

497:                                              ; preds = %474, %402
  %498 = phi ptr [ %403, %402 ], [ %493, %474 ]
  store ptr %498, ptr @zz_hold, align 8, !tbaa !12
  %499 = getelementptr inbounds %struct.word_type, ptr %498, i64 0, i32 1
  %500 = load i8, ptr %499, align 8, !tbaa !14
  %501 = add i8 %500, -11
  %502 = icmp ult i8 %501, 2
  %503 = getelementptr inbounds %struct.word_type, ptr %498, i64 0, i32 1, i32 0, i32 1
  %504 = zext i8 %500 to i64
  %505 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %504
  %506 = select i1 %502, ptr %503, ptr %505
  %507 = load i8, ptr %506, align 1, !tbaa !14
  %508 = zext i8 %507 to i32
  store i32 %508, ptr @zz_size, align 4, !tbaa !15
  %509 = zext i8 %507 to i64
  %510 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !12
  store ptr %511, ptr %498, align 8, !tbaa !14
  %512 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %513 = load i32, ptr @zz_size, align 4, !tbaa !15
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %514
  store ptr %512, ptr %515, align 8, !tbaa !12
  call void @FlushGalley(ptr noundef %396) #4
  br label %633

516:                                              ; preds = %387
  store ptr %23, ptr @xx_hold, align 8, !tbaa !12
  %517 = load ptr, ptr %121, align 8, !tbaa !14
  %518 = icmp eq ptr %517, %23
  br i1 %518, label %519, label %524

519:                                              ; preds = %546, %516
  %520 = phi ptr [ %23, %516 ], [ %565, %546 ]
  %521 = getelementptr inbounds %struct.LIST, ptr %520, i64 0, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !14
  %523 = icmp eq ptr %522, %520
  br i1 %523, label %614, label %569

524:                                              ; preds = %516, %546
  %525 = phi ptr [ %567, %546 ], [ %517, %516 ]
  store ptr %525, ptr @xx_link, align 8, !tbaa !12
  %526 = getelementptr inbounds [2 x %struct.LIST], ptr %525, i64 0, i64 1, i32 1
  %527 = load ptr, ptr %526, align 8, !tbaa !14
  %528 = icmp eq ptr %527, %525
  br i1 %528, label %534, label %529

529:                                              ; preds = %524
  store ptr %527, ptr @zz_res, align 8, !tbaa !12
  %530 = getelementptr inbounds [2 x %struct.LIST], ptr %525, i64 0, i64 1
  %531 = load ptr, ptr %530, align 8, !tbaa !14
  %532 = getelementptr inbounds [2 x %struct.LIST], ptr %527, i64 0, i64 1
  store ptr %531, ptr %532, align 8, !tbaa !14
  %533 = getelementptr inbounds [2 x %struct.LIST], ptr %531, i64 0, i64 1, i32 1
  store ptr %527, ptr %533, align 8, !tbaa !14
  store ptr %525, ptr %526, align 8, !tbaa !14
  store ptr %525, ptr %530, align 8, !tbaa !14
  br label %534

534:                                              ; preds = %524, %529
  store ptr %525, ptr @zz_hold, align 8, !tbaa !12
  %535 = getelementptr inbounds %struct.LIST, ptr %525, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !14
  %537 = icmp eq ptr %536, %525
  br i1 %537, label %546, label %538

538:                                              ; preds = %534
  store ptr %536, ptr @zz_res, align 8, !tbaa !12
  %539 = load ptr, ptr %525, align 8, !tbaa !14
  store ptr %539, ptr %536, align 8, !tbaa !14
  %540 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %541 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %542 = load ptr, ptr %541, align 8, !tbaa !14
  %543 = getelementptr inbounds %struct.LIST, ptr %542, i64 0, i32 1
  store ptr %540, ptr %543, align 8, !tbaa !14
  %544 = getelementptr inbounds %struct.LIST, ptr %541, i64 0, i32 1
  store ptr %541, ptr %544, align 8, !tbaa !14
  store ptr %541, ptr %541, align 8, !tbaa !14
  %545 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %546

546:                                              ; preds = %534, %538
  %547 = phi ptr [ %525, %534 ], [ %545, %538 ]
  store ptr %547, ptr @zz_hold, align 8, !tbaa !12
  %548 = getelementptr inbounds %struct.word_type, ptr %547, i64 0, i32 1
  %549 = load i8, ptr %548, align 8, !tbaa !14
  %550 = add i8 %549, -11
  %551 = icmp ult i8 %550, 2
  %552 = getelementptr inbounds %struct.word_type, ptr %547, i64 0, i32 1, i32 0, i32 1
  %553 = zext i8 %549 to i64
  %554 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %553
  %555 = select i1 %551, ptr %552, ptr %554
  %556 = load i8, ptr %555, align 1, !tbaa !14
  %557 = zext i8 %556 to i32
  store i32 %557, ptr @zz_size, align 4, !tbaa !15
  %558 = zext i8 %556 to i64
  %559 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !12
  store ptr %560, ptr %547, align 8, !tbaa !14
  %561 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %562 = load i32, ptr @zz_size, align 4, !tbaa !15
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %563
  store ptr %561, ptr %564, align 8, !tbaa !12
  %565 = load ptr, ptr @xx_hold, align 8, !tbaa !12
  %566 = getelementptr inbounds [2 x %struct.LIST], ptr %565, i64 0, i64 1, i32 1
  %567 = load ptr, ptr %566, align 8, !tbaa !14
  %568 = icmp eq ptr %567, %565
  br i1 %568, label %519, label %524

569:                                              ; preds = %519, %591
  %570 = phi ptr [ %612, %591 ], [ %522, %519 ]
  store ptr %570, ptr @xx_link, align 8, !tbaa !12
  %571 = getelementptr inbounds [2 x %struct.LIST], ptr %570, i64 0, i64 1, i32 1
  %572 = load ptr, ptr %571, align 8, !tbaa !14
  %573 = icmp eq ptr %572, %570
  br i1 %573, label %579, label %574

574:                                              ; preds = %569
  store ptr %572, ptr @zz_res, align 8, !tbaa !12
  %575 = getelementptr inbounds [2 x %struct.LIST], ptr %570, i64 0, i64 1
  %576 = load ptr, ptr %575, align 8, !tbaa !14
  %577 = getelementptr inbounds [2 x %struct.LIST], ptr %572, i64 0, i64 1
  store ptr %576, ptr %577, align 8, !tbaa !14
  %578 = getelementptr inbounds [2 x %struct.LIST], ptr %576, i64 0, i64 1, i32 1
  store ptr %572, ptr %578, align 8, !tbaa !14
  store ptr %570, ptr %571, align 8, !tbaa !14
  store ptr %570, ptr %575, align 8, !tbaa !14
  br label %579

579:                                              ; preds = %569, %574
  store ptr %570, ptr @zz_hold, align 8, !tbaa !12
  %580 = getelementptr inbounds %struct.LIST, ptr %570, i64 0, i32 1
  %581 = load ptr, ptr %580, align 8, !tbaa !14
  %582 = icmp eq ptr %581, %570
  br i1 %582, label %591, label %583

583:                                              ; preds = %579
  store ptr %581, ptr @zz_res, align 8, !tbaa !12
  %584 = load ptr, ptr %570, align 8, !tbaa !14
  store ptr %584, ptr %581, align 8, !tbaa !14
  %585 = load ptr, ptr @zz_res, align 8, !tbaa !12
  %586 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %587 = load ptr, ptr %586, align 8, !tbaa !14
  %588 = getelementptr inbounds %struct.LIST, ptr %587, i64 0, i32 1
  store ptr %585, ptr %588, align 8, !tbaa !14
  %589 = getelementptr inbounds %struct.LIST, ptr %586, i64 0, i32 1
  store ptr %586, ptr %589, align 8, !tbaa !14
  store ptr %586, ptr %586, align 8, !tbaa !14
  %590 = load ptr, ptr @xx_link, align 8, !tbaa !12
  br label %591

591:                                              ; preds = %579, %583
  %592 = phi ptr [ %570, %579 ], [ %590, %583 ]
  store ptr %592, ptr @zz_hold, align 8, !tbaa !12
  %593 = getelementptr inbounds %struct.word_type, ptr %592, i64 0, i32 1
  %594 = load i8, ptr %593, align 8, !tbaa !14
  %595 = add i8 %594, -11
  %596 = icmp ult i8 %595, 2
  %597 = getelementptr inbounds %struct.word_type, ptr %592, i64 0, i32 1, i32 0, i32 1
  %598 = zext i8 %594 to i64
  %599 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %598
  %600 = select i1 %596, ptr %597, ptr %599
  %601 = load i8, ptr %600, align 1, !tbaa !14
  %602 = zext i8 %601 to i32
  store i32 %602, ptr @zz_size, align 4, !tbaa !15
  %603 = zext i8 %601 to i64
  %604 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %603
  %605 = load ptr, ptr %604, align 8, !tbaa !12
  store ptr %605, ptr %592, align 8, !tbaa !14
  %606 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %607 = load i32, ptr @zz_size, align 4, !tbaa !15
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %608
  store ptr %606, ptr %609, align 8, !tbaa !12
  %610 = load ptr, ptr @xx_hold, align 8, !tbaa !12
  %611 = getelementptr inbounds %struct.LIST, ptr %610, i64 0, i32 1
  %612 = load ptr, ptr %611, align 8, !tbaa !14
  %613 = icmp eq ptr %612, %610
  br i1 %613, label %614, label %569

614:                                              ; preds = %591, %519
  %615 = phi ptr [ %520, %519 ], [ %610, %591 ]
  store ptr %615, ptr @zz_hold, align 8, !tbaa !12
  %616 = getelementptr inbounds %struct.word_type, ptr %615, i64 0, i32 1
  %617 = load i8, ptr %616, align 8, !tbaa !14
  %618 = add i8 %617, -11
  %619 = icmp ult i8 %618, 2
  %620 = getelementptr inbounds %struct.word_type, ptr %615, i64 0, i32 1, i32 0, i32 1
  %621 = zext i8 %617 to i64
  %622 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %621
  %623 = select i1 %619, ptr %620, ptr %622
  %624 = load i8, ptr %623, align 1, !tbaa !14
  %625 = zext i8 %624 to i32
  store i32 %625, ptr @zz_size, align 4, !tbaa !15
  %626 = zext i8 %624 to i64
  %627 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %626
  %628 = load ptr, ptr %627, align 8, !tbaa !12
  store ptr %628, ptr %615, align 8, !tbaa !14
  %629 = load ptr, ptr @zz_hold, align 8, !tbaa !12
  %630 = load i32, ptr @zz_size, align 4, !tbaa !15
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %631
  store ptr %629, ptr %632, align 8, !tbaa !12
  br label %633

633:                                              ; preds = %614, %497
  %634 = load i32, ptr @itop, align 4, !tbaa !15
  %635 = add nsw i32 %634, -1
  store i32 %635, ptr @itop, align 4, !tbaa !15
  %636 = sext i32 %634 to i64
  %637 = getelementptr inbounds [30 x ptr], ptr @targets, i64 0, i64 %636
  %638 = load ptr, ptr %637, align 8, !tbaa !12
  %639 = call i32 @DisposeObject(ptr noundef %638) #4
  br label %640

640:                                              ; preds = %633, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret void
}

declare void @Interpose(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @TransferClose() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #4
  %2 = load ptr, ptr @root_galley, align 8, !tbaa !12
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  store ptr null, ptr %1, align 8, !tbaa !12
  call void @FreeGalley(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #4
  %6 = load ptr, ptr %1, align 8, !tbaa !12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  call void @FlushInners(ptr noundef nonnull %6, ptr noundef null) #4
  br label %9

9:                                                ; preds = %8, %5
  %10 = load ptr, ptr @root_galley, align 8, !tbaa !12
  call void @FlushGalley(ptr noundef %10) #4
  br label %11

11:                                               ; preds = %9, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #4
  ret void
}

declare void @FreeGalley(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !18, i64 2}
!17 = !{!"", !8, i64 0, !8, i64 1, !18, i64 2, !7, i64 4, !7, i64 6}
!18 = !{!"short", !8, i64 0}
