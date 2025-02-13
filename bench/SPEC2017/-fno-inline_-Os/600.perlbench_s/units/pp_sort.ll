; ModuleID = 'pp_sort.c'
source_filename = "pp_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.off_runs = type { i64, i64 }
%struct.partition_stack_entry = type { i32, i32, i32 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.listop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.cv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.1, ptr, %union.anon.2, %union.anon.3, %union.anon.4, ptr, %union.anon.5, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.8 }
%union.anon.8 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], ptr, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.context = type { %union.anon.11 }
%union.anon.11 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.18, %union._xivu }
%union.anon.18 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.19, %union._xivu, %union._xnvu }
%union.anon.19 = type { i64 }

@PL_sort_RealCmp = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_sortcop = external global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Undefined sort subroutine \22%-p\22 called\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Undefined subroutine in sort\00", align 1
@PL_top_env = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_firstgv = external global ptr, align 8
@PL_secondgv = external global ptr, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_markstack = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_curpm = external local_unnamed_addr global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_curpad = external global ptr, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_scopestack = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Sort subroutine didn't return single value\00", align 1
@PL_runops = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_sortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !81 {
  tail call void @Perl_sortsv_flags(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 0) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_sortsv_flags(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !82 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !83

7:                                                ; preds = %4
  tail call fastcc void @S_qsortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #6
  br label %9

8:                                                ; preds = %4
  tail call fastcc void @S_mergesortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #6
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_qsortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !81 !PGOFuncName !84 {
  %5 = alloca [200 x ptr], align 16
  %6 = and i32 %3, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %5) #7
  %9 = icmp ult i64 %1, 2
  br i1 %9, label %62, label %10

10:                                               ; preds = %8
  %11 = icmp ult i64 %1, 201
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = shl i64 %1, 3
  %14 = tail call ptr @Perl_safesysmalloc(i64 noundef %13) #8
  br label %15

15:                                               ; preds = %10, %12
  %16 = phi ptr [ %14, %12 ], [ %5, %10 ]
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %16, %15 ], [ %23, %17 ]
  %19 = phi ptr [ %0, %15 ], [ %22, %17 ]
  %20 = phi i64 [ %1, %15 ], [ %21, %17 ]
  %21 = add i64 %20, -1
  %22 = getelementptr inbounds ptr, ptr %19, i64 1
  %23 = getelementptr inbounds ptr, ptr %18, i64 1
  store ptr %19, ptr %18, align 8, !tbaa !85
  %24 = icmp eq i64 %21, 0
  br i1 %24, label %25, label %17, !llvm.loop !89

25:                                               ; preds = %17
  %26 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  store ptr %2, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  %27 = and i32 %3, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr @cmpindir, ptr @cmpindir_desc
  call fastcc void @S_qsortsvu(ptr noundef %16, i64 noundef %1, ptr noundef nonnull %29) #6
  %30 = ptrtoint ptr %0 to i64
  br label %31

31:                                               ; preds = %25, %56
  %32 = phi i64 [ %1, %25 ], [ %33, %56 ]
  %33 = add i64 %32, -1
  %34 = getelementptr inbounds ptr, ptr %16, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %30
  %38 = ashr exact i64 %37, 3
  %39 = icmp eq i64 %33, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds i8, ptr %0, i64 %37
  %42 = load ptr, ptr %41, align 8, !tbaa !85
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi i64 [ %38, %40 ], [ %52, %43 ]
  %45 = getelementptr inbounds ptr, ptr %16, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !85
  %47 = load ptr, ptr %46, align 8, !tbaa !85
  %48 = getelementptr inbounds ptr, ptr %0, i64 %44
  store ptr %47, ptr %48, align 8, !tbaa !85
  %49 = load ptr, ptr %45, align 8, !tbaa !85
  %50 = ptrtoint ptr %49 to i64
  %51 = sub i64 %50, %30
  %52 = ashr exact i64 %51, 3
  store ptr %48, ptr %45, align 8, !tbaa !85
  %53 = icmp eq i64 %52, %33
  br i1 %53, label %54, label %43, !llvm.loop !91

54:                                               ; preds = %43
  %55 = getelementptr inbounds ptr, ptr %0, i64 %33
  store ptr %42, ptr %55, align 8, !tbaa !85
  br label %56

56:                                               ; preds = %54, %31
  %57 = icmp eq i64 %33, 0
  br i1 %57, label %58, label %31, !llvm.loop !92

58:                                               ; preds = %56
  %59 = icmp eq ptr %16, %5
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  call void @Perl_safesysfree(ptr noundef nonnull %16) #8
  br label %61

61:                                               ; preds = %60, %58
  store ptr %26, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  br label %62

62:                                               ; preds = %8, %61
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %5) #7
  br label %69

63:                                               ; preds = %4
  %64 = and i32 %3, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  store ptr %2, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  tail call fastcc void @S_qsortsvu(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @cmp_desc) #6
  store ptr %67, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  br label %69

68:                                               ; preds = %63
  tail call fastcc void @S_qsortsvu(ptr noundef %0, i64 noundef %1, ptr noundef %2) #6
  br label %69

69:                                               ; preds = %62, %66, %68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_mergesortsv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !82 !PGOFuncName !93 {
  %5 = alloca [200 x ptr], align 16
  %6 = alloca [3 x ptr], align 16
  %7 = alloca [60 x %struct.off_runs], align 16
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %7) #7
  %8 = icmp ult i64 %1, 2
  br i1 %8, label %277, label %9, !prof !94

9:                                                ; preds = %4
  %10 = and i32 %3, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !83

12:                                               ; preds = %9
  %13 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  store ptr %2, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %13, %12 ], [ null, %9 ]
  %16 = phi ptr [ @cmp_desc, %12 ], [ %2, %9 ]
  %17 = icmp ult i64 %1, 201
  br i1 %17, label %21, label %18, !prof !95

18:                                               ; preds = %14
  %19 = shl i64 %1, 3
  %20 = tail call ptr @Perl_safesysmalloc(i64 noundef %19) #8
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi ptr [ %20, %18 ], [ %5, %14 ]
  %23 = call fastcc i64 @dynprep(ptr noundef %0, ptr noundef %22, i64 noundef %1, ptr noundef %16) #6
  %24 = getelementptr inbounds %struct.off_runs, ptr %7, i64 0, i32 1
  store i64 %23, ptr %24, align 8, !tbaa !96
  store i64 0, ptr %7, align 16, !tbaa !99
  %25 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 2
  store ptr %0, ptr %25, align 16, !tbaa !85
  store ptr %0, ptr %6, align 16, !tbaa !85
  %26 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 1
  store ptr %22, ptr %26, align 8, !tbaa !85
  %27 = ptrtoint ptr %22 to i64
  br label %28

28:                                               ; preds = %265, %21
  %29 = phi i64 [ %23, %21 ], [ %270, %265 ]
  %30 = phi i64 [ 0, %21 ], [ %266, %265 ]
  %31 = phi i32 [ 0, %21 ], [ %267, %265 ]
  %32 = phi ptr [ %7, %21 ], [ %268, %265 ]
  %33 = icmp eq i64 %29, 0
  br i1 %33, label %34, label %197, !prof !100

34:                                               ; preds = %28
  %35 = and i32 %31, 1
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !85
  %39 = add nuw nsw i32 %35, 1
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !85
  br label %43

43:                                               ; preds = %190, %34
  %44 = phi i32 [ %31, %34 ], [ %188, %190 ]
  %45 = phi ptr [ %32, %34 ], [ %191, %190 ]
  %46 = phi ptr [ %38, %34 ], [ %47, %190 ]
  %47 = phi ptr [ %42, %34 ], [ %46, %190 ]
  %48 = load i64, ptr %45, align 8, !tbaa !99
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = getelementptr inbounds ptr, ptr %47, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !85
  %52 = ptrtoint ptr %51 to i64
  %53 = ptrtoint ptr %47 to i64
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds i8, ptr %46, i64 %54
  %56 = load ptr, ptr %51, align 8, !tbaa !85
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %57, %53
  %59 = getelementptr inbounds i8, ptr %46, i64 %58
  %60 = icmp ult ptr %49, %55
  %61 = icmp slt i64 %54, %58
  %62 = select i1 %60, i1 %61, i1 false, !prof !101
  br i1 %62, label %63, label %162, !prof !102

63:                                               ; preds = %43, %151
  %64 = phi ptr [ %158, %151 ], [ %50, %43 ]
  %65 = phi ptr [ %155, %151 ], [ %55, %43 ]
  %66 = phi ptr [ %154, %151 ], [ %49, %43 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !85
  %68 = load ptr, ptr %65, align 8, !tbaa !85
  %69 = call i32 %16(ptr noundef %67, ptr noundef %68) #8
  %70 = icmp slt i32 %69, 1
  %71 = sext i1 %70 to i32
  %72 = select i1 %70, ptr %55, ptr %59, !prof !103
  %73 = select i1 %70, ptr %66, ptr %65, !prof !103
  %74 = select i1 %70, ptr %65, ptr %66, !prof !103
  %75 = getelementptr inbounds ptr, ptr %73, i64 1
  %76 = icmp ult ptr %75, %72
  br i1 %76, label %77, label %82, !prof !104

77:                                               ; preds = %63
  %78 = load ptr, ptr %74, align 8, !tbaa !85
  %79 = load ptr, ptr %75, align 8, !tbaa !85
  %80 = call i32 %16(ptr noundef %78, ptr noundef %79) #8
  %81 = icmp sgt i32 %80, %71
  br i1 %81, label %98, label %107, !prof !105

82:                                               ; preds = %98, %63
  %83 = phi ptr [ %73, %63 ], [ %101, %98 ]
  %84 = getelementptr inbounds ptr, ptr %72, i64 -1
  %85 = icmp ugt ptr %84, %83
  br i1 %85, label %86, label %91, !prof !106

86:                                               ; preds = %82
  %87 = load ptr, ptr %74, align 8, !tbaa !85
  %88 = load ptr, ptr %84, align 8, !tbaa !85
  %89 = call i32 %16(ptr noundef %87, ptr noundef %88) #8
  %90 = icmp sgt i32 %89, %71
  br i1 %90, label %91, label %107, !prof !107

91:                                               ; preds = %86, %82
  br label %107

92:                                               ; preds = %98
  %93 = add nuw nsw i64 %99, 1
  %94 = load ptr, ptr %74, align 8, !tbaa !85
  %95 = load ptr, ptr %105, align 8, !tbaa !85
  %96 = call i32 %16(ptr noundef %94, ptr noundef %95) #8
  %97 = icmp sgt i32 %96, %71
  br i1 %97, label %98, label %107, !prof !108

98:                                               ; preds = %77, %92
  %99 = phi i64 [ %93, %92 ], [ 0, %77 ]
  %100 = phi i64 [ %104, %92 ], [ 1, %77 ]
  %101 = phi ptr [ %105, %92 ], [ %75, %77 ]
  %102 = icmp ugt i64 %99, 4
  %103 = zext i1 %102 to i64
  %104 = shl nsw i64 %100, %103
  %105 = getelementptr inbounds ptr, ptr %101, i64 %104
  %106 = icmp ult ptr %105, %72
  br i1 %106, label %92, label %82, !prof !109

107:                                              ; preds = %92, %77, %86, %91
  %108 = phi ptr [ %72, %91 ], [ %84, %86 ], [ %75, %77 ], [ %105, %92 ]
  %109 = phi ptr [ %84, %91 ], [ %83, %86 ], [ %73, %77 ], [ %101, %92 ]
  %110 = getelementptr inbounds ptr, ptr %109, i64 1
  %111 = icmp ult ptr %110, %108
  br i1 %111, label %112, label %130, !prof !110

112:                                              ; preds = %107, %112
  %113 = phi ptr [ %128, %112 ], [ %110, %107 ]
  %114 = phi ptr [ %127, %112 ], [ %108, %107 ]
  %115 = ptrtoint ptr %114 to i64
  %116 = ptrtoint ptr %113 to i64
  %117 = sub i64 %115, %116
  %118 = ashr exact i64 %117, 3
  %119 = add nsw i64 %118, -1
  %120 = sdiv i64 %119, 2
  %121 = getelementptr inbounds ptr, ptr %113, i64 %120
  %122 = load ptr, ptr %74, align 8, !tbaa !85
  %123 = load ptr, ptr %121, align 8, !tbaa !85
  %124 = call i32 %16(ptr noundef %122, ptr noundef %123) #8
  %125 = icmp sgt i32 %124, %71
  %126 = getelementptr inbounds ptr, ptr %121, i64 1
  %127 = select i1 %125, ptr %114, ptr %121, !prof !111
  %128 = select i1 %125, ptr %126, ptr %113, !prof !111
  %129 = icmp ult ptr %128, %127
  br i1 %129, label %112, label %130, !prof !112, !llvm.loop !113

130:                                              ; preds = %112, %107
  %131 = phi ptr [ %108, %107 ], [ %127, %112 ]
  %132 = icmp eq ptr %74, %66
  br i1 %132, label %133, label %142, !prof !114

133:                                              ; preds = %130, %133
  %134 = phi ptr [ %136, %133 ], [ %65, %130 ]
  %135 = phi ptr [ %138, %133 ], [ %64, %130 ]
  %136 = getelementptr inbounds ptr, ptr %134, i64 1
  %137 = load ptr, ptr %134, align 8, !tbaa !85
  %138 = getelementptr inbounds ptr, ptr %135, i64 1
  store ptr %137, ptr %135, align 8, !tbaa !85
  %139 = icmp ult ptr %136, %131
  br i1 %139, label %133, label %140, !prof !115, !llvm.loop !116

140:                                              ; preds = %133
  %141 = getelementptr inbounds ptr, ptr %66, i64 1
  br label %151

142:                                              ; preds = %130, %142
  %143 = phi ptr [ %145, %142 ], [ %66, %130 ]
  %144 = phi ptr [ %147, %142 ], [ %64, %130 ]
  %145 = getelementptr inbounds ptr, ptr %143, i64 1
  %146 = load ptr, ptr %143, align 8, !tbaa !85
  %147 = getelementptr inbounds ptr, ptr %144, i64 1
  store ptr %146, ptr %144, align 8, !tbaa !85
  %148 = icmp ult ptr %145, %131
  br i1 %148, label %142, label %149, !prof !117, !llvm.loop !118

149:                                              ; preds = %142
  %150 = getelementptr inbounds ptr, ptr %65, i64 1
  br label %151

151:                                              ; preds = %149, %140
  %152 = phi ptr [ %65, %149 ], [ %66, %140 ]
  %153 = phi ptr [ %147, %149 ], [ %138, %140 ]
  %154 = phi ptr [ %145, %149 ], [ %141, %140 ]
  %155 = phi ptr [ %150, %149 ], [ %136, %140 ]
  %156 = phi ptr [ %144, %149 ], [ %135, %140 ]
  %157 = load ptr, ptr %152, align 8, !tbaa !85
  store ptr %157, ptr %153, align 8, !tbaa !85
  %158 = getelementptr inbounds ptr, ptr %156, i64 2
  %159 = icmp ult ptr %154, %55
  %160 = icmp ult ptr %155, %59
  %161 = select i1 %159, i1 %160, i1 false, !prof !101
  br i1 %161, label %63, label %162, !prof !119, !llvm.loop !120

162:                                              ; preds = %151, %43
  %163 = phi ptr [ %49, %43 ], [ %154, %151 ]
  %164 = phi ptr [ %55, %43 ], [ %155, %151 ]
  %165 = phi ptr [ %50, %43 ], [ %158, %151 ]
  %166 = phi i1 [ %61, %43 ], [ %160, %151 ]
  %167 = icmp eq ptr %163, %55
  br i1 %167, label %168, label %176, !prof !121

168:                                              ; preds = %162
  br i1 %166, label %169, label %183, !prof !122

169:                                              ; preds = %168, %169
  %170 = phi ptr [ %172, %169 ], [ %164, %168 ]
  %171 = phi ptr [ %174, %169 ], [ %165, %168 ]
  %172 = getelementptr inbounds ptr, ptr %170, i64 1
  %173 = load ptr, ptr %170, align 8, !tbaa !85
  %174 = getelementptr inbounds ptr, ptr %171, i64 1
  store ptr %173, ptr %171, align 8, !tbaa !85
  %175 = icmp ult ptr %172, %59
  br i1 %175, label %169, label %183, !prof !123, !llvm.loop !124

176:                                              ; preds = %162, %176
  %177 = phi ptr [ %179, %176 ], [ %163, %162 ]
  %178 = phi ptr [ %181, %176 ], [ %165, %162 ]
  %179 = getelementptr inbounds ptr, ptr %177, i64 1
  %180 = load ptr, ptr %177, align 8, !tbaa !85
  %181 = getelementptr inbounds ptr, ptr %178, i64 1
  store ptr %180, ptr %178, align 8, !tbaa !85
  %182 = icmp ult ptr %179, %55
  br i1 %182, label %176, label %183, !prof !125, !llvm.loop !126

183:                                              ; preds = %176, %169, %168
  %184 = phi ptr [ %165, %168 ], [ %174, %169 ], [ %181, %176 ]
  %185 = ptrtoint ptr %184 to i64
  %186 = sub i64 %185, %53
  %187 = getelementptr inbounds i8, ptr %46, i64 %186
  store ptr %187, ptr %49, align 8, !tbaa !85
  %188 = add nsw i32 %44, -1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %271, label %190, !prof !127

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.off_runs, ptr %45, i64 -1
  %192 = getelementptr %struct.off_runs, ptr %45, i64 -1, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !96
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %43, label %195, !prof !128, !llvm.loop !129

195:                                              ; preds = %190
  %196 = ashr exact i64 %58, 3
  br label %197

197:                                              ; preds = %195, %28
  %198 = phi i64 [ %30, %28 ], [ %196, %195 ]
  %199 = phi i32 [ %31, %28 ], [ %188, %195 ]
  %200 = phi ptr [ %32, %28 ], [ %191, %195 ]
  %201 = phi i64 [ %29, %28 ], [ %193, %195 ]
  %202 = getelementptr inbounds %struct.off_runs, ptr %200, i64 0, i32 1
  store i64 0, ptr %202, align 8, !tbaa !96
  %203 = icmp sgt i64 %201, 2
  br i1 %203, label %204, label %214, !prof !130

204:                                              ; preds = %197, %204
  %205 = phi i64 [ %212, %204 ], [ %201, %197 ]
  %206 = phi ptr [ %209, %204 ], [ %200, %197 ]
  %207 = phi i32 [ %208, %204 ], [ %199, %197 ]
  %208 = add nsw i32 %207, 1
  %209 = getelementptr inbounds %struct.off_runs, ptr %206, i64 1
  store i64 %198, ptr %209, align 8, !tbaa !99
  %210 = lshr i64 %205, 1
  %211 = getelementptr inbounds %struct.off_runs, ptr %206, i64 1, i32 1
  store i64 %210, ptr %211, align 8, !tbaa !96
  %212 = sub nsw i64 %205, %210
  %213 = icmp sgt i64 %212, 2
  br i1 %213, label %204, label %214, !prof !131, !llvm.loop !132

214:                                              ; preds = %204, %197
  %215 = phi i32 [ %199, %197 ], [ %208, %204 ]
  %216 = phi ptr [ %200, %197 ], [ %209, %204 ]
  %217 = phi i64 [ %201, %197 ], [ %212, %204 ]
  %218 = and i32 %215, 1
  %219 = icmp eq i64 %217, 1
  br i1 %219, label %220, label %240, !prof !133

220:                                              ; preds = %214
  %221 = icmp eq i32 %218, 0
  br i1 %221, label %238, label %222, !prof !134

222:                                              ; preds = %220
  %223 = getelementptr ptr, ptr %0, i64 %198
  %224 = getelementptr inbounds ptr, ptr %22, i64 %198
  %225 = load ptr, ptr %224, align 8, !tbaa !85
  %226 = ptrtoint ptr %225 to i64
  %227 = sub i64 %226, %27
  %228 = getelementptr inbounds i8, ptr %0, i64 %227
  br label %229

229:                                              ; preds = %229, %222
  %230 = phi ptr [ %223, %222 ], [ %232, %229 ]
  %231 = phi ptr [ %224, %222 ], [ %234, %229 ]
  %232 = getelementptr inbounds ptr, ptr %230, i64 1
  %233 = load ptr, ptr %230, align 8, !tbaa !85
  %234 = getelementptr inbounds ptr, ptr %231, i64 1
  store ptr %233, ptr %231, align 8, !tbaa !85
  %235 = icmp ult ptr %232, %228
  br i1 %235, label %229, label %236, !prof !135, !llvm.loop !136

236:                                              ; preds = %229
  %237 = ashr exact i64 %227, 3
  store ptr %228, ptr %223, align 8, !tbaa !85
  br label %265

238:                                              ; preds = %220
  %239 = icmp eq i32 %215, 0
  br i1 %239, label %271, label %265, !prof !137

240:                                              ; preds = %214
  %241 = add nsw i32 %215, 1
  %242 = getelementptr inbounds %struct.off_runs, ptr %216, i64 1
  store i64 %198, ptr %242, align 8, !tbaa !99
  %243 = getelementptr inbounds %struct.off_runs, ptr %216, i64 1, i32 1
  store i64 0, ptr %243, align 8, !tbaa !96
  %244 = icmp eq i32 %218, 0
  br i1 %244, label %245, label %265, !prof !138

245:                                              ; preds = %240
  %246 = getelementptr ptr, ptr %0, i64 %198
  %247 = getelementptr inbounds ptr, ptr %22, i64 %198
  %248 = load ptr, ptr %247, align 8, !tbaa !85
  %249 = ptrtoint ptr %248 to i64
  %250 = sub i64 %249, %27
  %251 = ashr exact i64 %250, 3
  %252 = load ptr, ptr %248, align 8, !tbaa !85
  %253 = ptrtoint ptr %252 to i64
  %254 = sub i64 %253, %27
  %255 = getelementptr inbounds i8, ptr %0, i64 %254
  br label %256

256:                                              ; preds = %256, %245
  %257 = phi ptr [ %246, %245 ], [ %259, %256 ]
  %258 = phi ptr [ %247, %245 ], [ %261, %256 ]
  %259 = getelementptr inbounds ptr, ptr %257, i64 1
  %260 = load ptr, ptr %257, align 8, !tbaa !85
  %261 = getelementptr inbounds ptr, ptr %258, i64 1
  store ptr %260, ptr %258, align 8, !tbaa !85
  %262 = icmp ult ptr %259, %255
  br i1 %262, label %256, label %263, !prof !139, !llvm.loop !140

263:                                              ; preds = %256
  %264 = getelementptr inbounds i8, ptr %0, i64 %250
  store ptr %264, ptr %246, align 8, !tbaa !85
  store ptr %255, ptr %264, align 8, !tbaa !85
  br label %265

265:                                              ; preds = %238, %236, %263, %240
  %266 = phi i64 [ %237, %236 ], [ %198, %240 ], [ %251, %263 ], [ %198, %238 ]
  %267 = phi i32 [ %215, %236 ], [ %241, %240 ], [ %241, %263 ], [ %215, %238 ]
  %268 = phi ptr [ %216, %236 ], [ %242, %240 ], [ %242, %263 ], [ %216, %238 ]
  %269 = getelementptr inbounds %struct.off_runs, ptr %268, i64 0, i32 1
  %270 = load i64, ptr %269, align 8, !tbaa !96
  br label %28

271:                                              ; preds = %238, %183
  %272 = icmp eq ptr %22, %5
  br i1 %272, label %274, label %273, !prof !95

273:                                              ; preds = %271
  call void @Perl_safesysfree(ptr noundef %22) #8
  br label %274

274:                                              ; preds = %273, %271
  %275 = icmp eq i32 %3, 0
  br i1 %275, label %277, label %276, !prof !83

276:                                              ; preds = %274
  store ptr %15, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  br label %277

277:                                              ; preds = %274, %276, %4
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_qsortsvu(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !81 !PGOFuncName !141 {
  %4 = alloca [32 x %struct.partition_stack_entry], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %4) #7
  %5 = icmp ult i64 %1, 2
  br i1 %5, label %362, label %6

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 255
  br i1 %7, label %8, label %20

8:                                                ; preds = %6, %8
  %9 = phi i64 [ %10, %8 ], [ %1, %6 ]
  %10 = add i64 %9, -1
  %11 = uitofp i64 %9 to double
  %12 = tail call double @spec_rand() #8
  %13 = fmul double %12, %11
  %14 = fptoui double %13 to i64
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = getelementptr inbounds ptr, ptr %0, i64 %10
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  store ptr %18, ptr %15, align 8, !tbaa !85
  store ptr %16, ptr %17, align 8, !tbaa !85
  %19 = icmp ugt i64 %10, 1
  br i1 %19, label %8, label %20, !llvm.loop !142

20:                                               ; preds = %8, %6
  %21 = trunc i64 %1 to i32
  %22 = add i32 %21, -1
  %23 = getelementptr ptr, ptr %0, i64 1
  br label %24

24:                                               ; preds = %293, %20
  %25 = phi i32 [ 6, %20 ], [ %294, %293 ]
  %26 = phi i32 [ %22, %20 ], [ %295, %293 ]
  %27 = phi i32 [ 0, %20 ], [ %296, %293 ]
  %28 = phi i32 [ 0, %20 ], [ %297, %293 ]
  br label %29

29:                                               ; preds = %24, %298
  %30 = phi i32 [ %267, %298 ], [ %25, %24 ]
  %31 = phi i32 [ %299, %298 ], [ %26, %24 ]
  %32 = phi i32 [ %36, %298 ], [ %27, %24 ]
  %33 = add i32 %31, 1
  br label %34

34:                                               ; preds = %29, %301
  %35 = phi i32 [ %267, %301 ], [ %30, %29 ]
  %36 = phi i32 [ %302, %301 ], [ %32, %29 ]
  %37 = sub nsw i32 %31, %36
  %38 = icmp slt i32 %37, %35
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = icmp slt i32 %36, %31
  br i1 %40, label %41, label %351

41:                                               ; preds = %39
  %42 = sext i32 %36 to i64
  %43 = add i32 %36, -1
  br label %314

44:                                               ; preds = %34
  %45 = add nsw i32 %36, %31
  %46 = sdiv i32 %45, 2
  %47 = add nsw i32 %46, -1
  %48 = add nsw i32 %46, 1
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds ptr, ptr %0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !85
  %52 = sext i32 %46 to i64
  %53 = getelementptr inbounds ptr, ptr %0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !85
  %55 = tail call i32 %2(ptr noundef %51, ptr noundef %54) #8
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %44
  %58 = load ptr, ptr %53, align 8, !tbaa !85
  %59 = sext i32 %48 to i64
  %60 = getelementptr inbounds ptr, ptr %0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !85
  %62 = tail call i32 %2(ptr noundef %58, ptr noundef %61) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %117, label %64

64:                                               ; preds = %57
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %66, label %117

66:                                               ; preds = %64
  %67 = load ptr, ptr %50, align 8, !tbaa !85
  %68 = load ptr, ptr %60, align 8, !tbaa !85
  %69 = tail call i32 %2(ptr noundef %67, ptr noundef %68) #8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load <2 x ptr>, ptr %53, align 8, !tbaa !85
  %73 = shufflevector <2 x ptr> %72, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %73, ptr %53, align 8, !tbaa !85
  br label %117

74:                                               ; preds = %66
  %75 = icmp eq i32 %69, 0
  %76 = load ptr, ptr %53, align 8, !tbaa !85
  br i1 %75, label %77, label %79

77:                                               ; preds = %74
  %78 = load ptr, ptr %60, align 8, !tbaa !85
  store ptr %78, ptr %53, align 8, !tbaa !85
  store ptr %76, ptr %60, align 8, !tbaa !85
  br label %117

79:                                               ; preds = %74
  %80 = load ptr, ptr %50, align 8, !tbaa !85
  store ptr %80, ptr %53, align 8, !tbaa !85
  %81 = load ptr, ptr %60, align 8, !tbaa !85
  store ptr %81, ptr %50, align 8, !tbaa !85
  store ptr %76, ptr %60, align 8, !tbaa !85
  br label %117

82:                                               ; preds = %44
  %83 = icmp eq i32 %55, 0
  %84 = load ptr, ptr %53, align 8, !tbaa !85
  %85 = sext i32 %48 to i64
  %86 = getelementptr inbounds ptr, ptr %0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !85
  %88 = tail call i32 %2(ptr noundef %84, ptr noundef %87) #8
  %89 = icmp slt i32 %88, 0
  br i1 %83, label %90, label %96

90:                                               ; preds = %82
  br i1 %89, label %117, label %91

91:                                               ; preds = %90
  %92 = icmp eq i32 %88, 0
  br i1 %92, label %117, label %93

93:                                               ; preds = %91
  %94 = load ptr, ptr %50, align 8, !tbaa !85
  %95 = load ptr, ptr %86, align 8, !tbaa !85
  store ptr %95, ptr %50, align 8, !tbaa !85
  store ptr %94, ptr %86, align 8, !tbaa !85
  br label %117

96:                                               ; preds = %82
  br i1 %89, label %97, label %112

97:                                               ; preds = %96
  %98 = load ptr, ptr %50, align 8, !tbaa !85
  %99 = load ptr, ptr %86, align 8, !tbaa !85
  %100 = tail call i32 %2(ptr noundef %98, ptr noundef %99) #8
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load <2 x ptr>, ptr %50, align 8, !tbaa !85
  %104 = shufflevector <2 x ptr> %103, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %104, ptr %50, align 8, !tbaa !85
  br label %117

105:                                              ; preds = %97
  %106 = icmp eq i32 %100, 0
  %107 = load ptr, ptr %50, align 8, !tbaa !85
  %108 = load ptr, ptr %53, align 8, !tbaa !85
  store ptr %108, ptr %50, align 8, !tbaa !85
  br i1 %106, label %109, label %110

109:                                              ; preds = %105
  store ptr %107, ptr %53, align 8, !tbaa !85
  br label %117

110:                                              ; preds = %105
  %111 = load ptr, ptr %86, align 8, !tbaa !85
  store ptr %111, ptr %53, align 8, !tbaa !85
  store ptr %107, ptr %86, align 8, !tbaa !85
  br label %117

112:                                              ; preds = %96
  %113 = icmp eq i32 %88, 0
  %114 = load ptr, ptr %50, align 8, !tbaa !85
  %115 = load ptr, ptr %86, align 8, !tbaa !85
  store ptr %115, ptr %50, align 8, !tbaa !85
  store ptr %114, ptr %86, align 8, !tbaa !85
  %116 = select i1 %113, i32 %47, i32 %46
  br label %117

117:                                              ; preds = %112, %91, %90, %57, %93, %102, %110, %109, %71, %79, %77, %64
  %118 = phi i32 [ 1, %71 ], [ 1, %77 ], [ 1, %79 ], [ 0, %64 ], [ 1, %93 ], [ 1, %102 ], [ 1, %109 ], [ 1, %110 ], [ 0, %57 ], [ 0, %90 ], [ 0, %91 ], [ 1, %112 ]
  %119 = phi i32 [ %46, %71 ], [ %47, %77 ], [ %46, %79 ], [ %46, %64 ], [ %46, %93 ], [ %46, %102 ], [ %46, %109 ], [ %46, %110 ], [ %46, %57 ], [ %47, %90 ], [ %47, %91 ], [ %116, %112 ]
  %120 = phi i32 [ %46, %71 ], [ %46, %77 ], [ %46, %79 ], [ %46, %64 ], [ %48, %93 ], [ %46, %102 ], [ %48, %109 ], [ %46, %110 ], [ %48, %57 ], [ %46, %90 ], [ %48, %91 ], [ %46, %112 ]
  %121 = add nsw i32 %46, -2
  %122 = add nsw i32 %46, 2
  %123 = sext i32 %36 to i64
  %124 = add i32 %36, -1
  br label %125

125:                                              ; preds = %257, %117
  %126 = phi i32 [ %118, %117 ], [ %263, %257 ]
  %127 = phi i32 [ %119, %117 ], [ %259, %257 ]
  %128 = phi i32 [ %120, %117 ], [ %260, %257 ]
  %129 = phi i32 [ %121, %117 ], [ %261, %257 ]
  %130 = phi i32 [ %122, %117 ], [ %262, %257 ]
  %131 = icmp slt i32 %129, %36
  br i1 %131, label %162, label %132

132:                                              ; preds = %125
  %133 = sext i32 %129 to i64
  br label %134

134:                                              ; preds = %132, %157
  %135 = phi i64 [ %133, %132 ], [ %160, %157 ]
  %136 = phi i32 [ %127, %132 ], [ %159, %157 ]
  %137 = phi i32 [ %126, %132 ], [ %158, %157 ]
  %138 = getelementptr inbounds ptr, ptr %0, i64 %135
  %139 = load ptr, ptr %138, align 8, !tbaa !85
  %140 = sext i32 %136 to i64
  %141 = getelementptr inbounds ptr, ptr %0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !85
  %143 = tail call i32 %2(ptr noundef %139, ptr noundef %142) #8
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %134
  %146 = icmp eq i32 %143, 0
  %147 = trunc i64 %135 to i32
  br i1 %146, label %148, label %162

148:                                              ; preds = %145
  %149 = add nsw i32 %136, -1
  %150 = icmp eq i32 %149, %147
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = add nsw i32 %137, 1
  %153 = load ptr, ptr %138, align 8, !tbaa !85
  %154 = sext i32 %149 to i64
  %155 = getelementptr inbounds ptr, ptr %0, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !85
  store ptr %156, ptr %138, align 8, !tbaa !85
  store ptr %153, ptr %155, align 8, !tbaa !85
  br label %157

157:                                              ; preds = %148, %151, %134
  %158 = phi i32 [ %137, %134 ], [ %152, %151 ], [ %137, %148 ]
  %159 = phi i32 [ %136, %134 ], [ %149, %151 ], [ %147, %148 ]
  %160 = add nsw i64 %135, -1
  %161 = icmp sgt i64 %135, %123
  br i1 %161, label %134, label %162, !llvm.loop !143

162:                                              ; preds = %157, %145, %125
  %163 = phi i32 [ %126, %125 ], [ %137, %145 ], [ %158, %157 ]
  %164 = phi i32 [ %127, %125 ], [ %136, %145 ], [ %159, %157 ]
  %165 = phi i32 [ %129, %125 ], [ %147, %145 ], [ %124, %157 ]
  %166 = phi i1 [ true, %125 ], [ false, %145 ], [ true, %157 ]
  %167 = icmp sgt i32 %130, %31
  br i1 %167, label %199, label %168

168:                                              ; preds = %162
  %169 = sext i32 %130 to i64
  br label %170

170:                                              ; preds = %168, %193
  %171 = phi i64 [ %169, %168 ], [ %196, %193 ]
  %172 = phi i32 [ %128, %168 ], [ %195, %193 ]
  %173 = phi i32 [ %163, %168 ], [ %194, %193 ]
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds ptr, ptr %0, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !85
  %177 = getelementptr inbounds ptr, ptr %0, i64 %171
  %178 = load ptr, ptr %177, align 8, !tbaa !85
  %179 = tail call i32 %2(ptr noundef %176, ptr noundef %178) #8
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %170
  %182 = icmp eq i32 %179, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %181
  %184 = add nsw i32 %172, 1
  %185 = trunc i64 %171 to i32
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %183
  %188 = add nsw i32 %173, 1
  %189 = sext i32 %184 to i64
  %190 = getelementptr inbounds ptr, ptr %0, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !85
  %192 = load ptr, ptr %177, align 8, !tbaa !85
  store ptr %192, ptr %190, align 8, !tbaa !85
  store ptr %191, ptr %177, align 8, !tbaa !85
  br label %193

193:                                              ; preds = %183, %187, %170
  %194 = phi i32 [ %173, %170 ], [ %188, %187 ], [ %173, %183 ]
  %195 = phi i32 [ %172, %170 ], [ %184, %187 ], [ %185, %183 ]
  %196 = add nsw i64 %171, 1
  %197 = trunc i64 %196 to i32
  %198 = icmp eq i32 %33, %197
  br i1 %198, label %199, label %170, !llvm.loop !144

199:                                              ; preds = %193, %162
  %200 = phi i32 [ %163, %162 ], [ %194, %193 ]
  %201 = phi i32 [ %128, %162 ], [ %195, %193 ]
  %202 = phi i32 [ %130, %162 ], [ %33, %193 ]
  br i1 %166, label %264, label %215

203:                                              ; preds = %181
  %204 = trunc i64 %171 to i32
  br i1 %166, label %232, label %205

205:                                              ; preds = %203
  %206 = sext i32 %165 to i64
  %207 = getelementptr inbounds ptr, ptr %0, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !85
  %209 = shl i64 %171, 32
  %210 = ashr exact i64 %209, 32
  %211 = getelementptr inbounds ptr, ptr %0, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !85
  store ptr %212, ptr %207, align 8, !tbaa !85
  store ptr %208, ptr %211, align 8, !tbaa !85
  %213 = add nsw i32 %165, -1
  %214 = add nsw i32 %204, 1
  br label %257

215:                                              ; preds = %199
  %216 = add nsw i32 %164, -1
  %217 = icmp eq i32 %216, %165
  %218 = sext i32 %165 to i64
  %219 = getelementptr inbounds ptr, ptr %0, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !85
  br i1 %217, label %225, label %221

221:                                              ; preds = %215
  %222 = sext i32 %216 to i64
  %223 = getelementptr inbounds ptr, ptr %0, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !85
  store ptr %224, ptr %219, align 8, !tbaa !85
  br label %225

225:                                              ; preds = %215, %221
  %226 = phi ptr [ %223, %221 ], [ %219, %215 ]
  %227 = sext i32 %201 to i64
  %228 = getelementptr inbounds ptr, ptr %0, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !85
  store ptr %229, ptr %226, align 8, !tbaa !85
  store ptr %220, ptr %228, align 8, !tbaa !85
  %230 = add nsw i32 %201, -1
  %231 = add nsw i32 %165, -1
  br label %257

232:                                              ; preds = %203
  %233 = add nsw i32 %172, 1
  %234 = icmp eq i32 %233, %204
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = shl i64 %171, 32
  %237 = ashr exact i64 %236, 32
  %238 = getelementptr inbounds ptr, ptr %0, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !85
  %240 = sext i32 %164 to i64
  %241 = getelementptr inbounds ptr, ptr %0, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !85
  store ptr %242, ptr %238, align 8, !tbaa !85
  store ptr %239, ptr %241, align 8, !tbaa !85
  br label %254

243:                                              ; preds = %232
  %244 = sext i32 %233 to i64
  %245 = getelementptr inbounds ptr, ptr %0, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !85
  %247 = sext i32 %164 to i64
  %248 = getelementptr inbounds ptr, ptr %0, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !85
  store ptr %249, ptr %245, align 8, !tbaa !85
  %250 = shl i64 %171, 32
  %251 = ashr exact i64 %250, 32
  %252 = getelementptr inbounds ptr, ptr %0, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !85
  store ptr %253, ptr %248, align 8, !tbaa !85
  store ptr %246, ptr %252, align 8, !tbaa !85
  br label %254

254:                                              ; preds = %243, %235
  %255 = add nsw i32 %164, 1
  %256 = add nsw i32 %204, 1
  br label %257

257:                                              ; preds = %254, %225, %205
  %258 = phi i32 [ %173, %205 ], [ %200, %225 ], [ %173, %254 ]
  %259 = phi i32 [ %164, %205 ], [ %216, %225 ], [ %255, %254 ]
  %260 = phi i32 [ %172, %205 ], [ %230, %225 ], [ %233, %254 ]
  %261 = phi i32 [ %213, %205 ], [ %231, %225 ], [ %165, %254 ]
  %262 = phi i32 [ %214, %205 ], [ %202, %225 ], [ %256, %254 ]
  %263 = add nsw i32 %258, 1
  br label %125

264:                                              ; preds = %199
  %265 = icmp slt i32 %200, 3
  %266 = shl nsw i32 %35, 1
  %267 = select i1 %265, i32 %266, i32 6
  %268 = icmp slt i32 %36, %164
  %269 = icmp slt i32 %201, %31
  br i1 %268, label %270, label %300

270:                                              ; preds = %264
  br i1 %269, label %271, label %298

271:                                              ; preds = %270
  %272 = sub nsw i32 %31, %201
  %273 = sub nsw i32 %164, %36
  %274 = icmp sgt i32 %272, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %271
  %276 = add nsw i32 %201, 1
  %277 = sext i32 %28 to i64
  %278 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %277
  store i32 %276, ptr %278, align 4, !tbaa !145
  %279 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %277, i32 1
  store i32 %31, ptr %279, align 4, !tbaa !148
  %280 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %277, i32 2
  store i32 %267, ptr %280, align 4, !tbaa !149
  %281 = add nsw i32 %164, -1
  br label %289

282:                                              ; preds = %271
  %283 = sext i32 %28 to i64
  %284 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %283
  store i32 %36, ptr %284, align 4, !tbaa !145
  %285 = add nsw i32 %164, -1
  %286 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %283, i32 1
  store i32 %285, ptr %286, align 4, !tbaa !148
  %287 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %283, i32 2
  store i32 %267, ptr %287, align 4, !tbaa !149
  %288 = add nsw i32 %201, 1
  br label %289

289:                                              ; preds = %282, %275
  %290 = phi i32 [ %281, %275 ], [ %31, %282 ]
  %291 = phi i32 [ %36, %275 ], [ %288, %282 ]
  %292 = add nsw i32 %28, 1
  br label %293

293:                                              ; preds = %289, %305, %353
  %294 = phi i32 [ %361, %353 ], [ %313, %305 ], [ %267, %289 ]
  %295 = phi i32 [ %359, %353 ], [ %311, %305 ], [ %290, %289 ]
  %296 = phi i32 [ %357, %353 ], [ %309, %305 ], [ %291, %289 ]
  %297 = phi i32 [ %354, %353 ], [ %306, %305 ], [ %292, %289 ]
  br label %24

298:                                              ; preds = %270
  %299 = add nsw i32 %164, -1
  br label %29

300:                                              ; preds = %264
  br i1 %269, label %301, label %303

301:                                              ; preds = %300
  %302 = add nsw i32 %201, 1
  br label %34

303:                                              ; preds = %300
  %304 = icmp eq i32 %28, 0
  br i1 %304, label %362, label %305

305:                                              ; preds = %303
  %306 = add nsw i32 %28, -1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !145
  %310 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %307, i32 1
  %311 = load i32, ptr %310, align 4, !tbaa !148
  %312 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %307, i32 2
  %313 = load i32, ptr %312, align 4, !tbaa !149
  br label %293

314:                                              ; preds = %41, %348
  %315 = phi i64 [ %42, %41 ], [ %316, %348 ]
  %316 = add nsw i64 %315, 1
  %317 = getelementptr inbounds ptr, ptr %0, i64 %316
  %318 = icmp slt i64 %315, %42
  %319 = trunc i64 %315 to i32
  br i1 %318, label %348, label %320

320:                                              ; preds = %314, %327
  %321 = phi i64 [ %328, %327 ], [ %315, %314 ]
  %322 = load ptr, ptr %317, align 8, !tbaa !85
  %323 = getelementptr inbounds ptr, ptr %0, i64 %321
  %324 = load ptr, ptr %323, align 8, !tbaa !85
  %325 = tail call i32 %2(ptr noundef %322, ptr noundef %324) #8
  %326 = icmp sgt i32 %325, -1
  br i1 %326, label %330, label %327

327:                                              ; preds = %320
  %328 = add nsw i64 %321, -1
  %329 = icmp sgt i64 %321, %42
  br i1 %329, label %320, label %332, !llvm.loop !150

330:                                              ; preds = %320
  %331 = trunc i64 %321 to i32
  br label %332

332:                                              ; preds = %327, %330
  %333 = phi i32 [ %331, %330 ], [ %43, %327 ]
  %334 = icmp eq i32 %333, %319
  br i1 %334, label %348, label %335

335:                                              ; preds = %332
  %336 = load ptr, ptr %317, align 8, !tbaa !85
  %337 = sext i32 %333 to i64
  %338 = icmp sgt i64 %315, %337
  br i1 %338, label %339, label %346

339:                                              ; preds = %335, %339
  %340 = phi i64 [ %344, %339 ], [ %315, %335 ]
  %341 = getelementptr inbounds ptr, ptr %0, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !85
  %343 = getelementptr ptr, ptr %341, i64 1
  store ptr %342, ptr %343, align 8, !tbaa !85
  %344 = add nsw i64 %340, -1
  %345 = icmp sgt i64 %344, %337
  br i1 %345, label %339, label %346, !llvm.loop !151

346:                                              ; preds = %339, %335
  %347 = getelementptr ptr, ptr %23, i64 %337
  store ptr %336, ptr %347, align 8, !tbaa !85
  br label %348

348:                                              ; preds = %314, %346, %332
  %349 = trunc i64 %316 to i32
  %350 = icmp eq i32 %31, %349
  br i1 %350, label %351, label %314, !llvm.loop !152

351:                                              ; preds = %348, %39
  %352 = icmp eq i32 %28, 0
  br i1 %352, label %362, label %353

353:                                              ; preds = %351
  %354 = add nsw i32 %28, -1
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !145
  %358 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %355, i32 1
  %359 = load i32, ptr %358, align 4, !tbaa !148
  %360 = getelementptr inbounds [32 x %struct.partition_stack_entry], ptr %4, i64 0, i64 %355, i32 2
  %361 = load i32, ptr %360, align 4, !tbaa !149
  br label %293

362:                                              ; preds = %351, %303, %3
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cmpindir_desc(ptr noundef readonly %0, ptr noundef readonly %1) #0 !prof !81 !PGOFuncName !153 {
  %3 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  %4 = load ptr, ptr %0, align 8, !tbaa !85
  %5 = load ptr, ptr %1, align 8, !tbaa !85
  %6 = tail call i32 %3(ptr noundef %4, ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = sub nsw i32 0, %6
  br label %15

10:                                               ; preds = %2
  %11 = icmp ugt ptr %0, %1
  %12 = icmp ult ptr %0, %1
  %13 = sext i1 %12 to i32
  %14 = select i1 %11, i32 1, i32 %13
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cmpindir(ptr noundef readonly %0, ptr noundef readonly %1) #0 !prof !81 !PGOFuncName !154 {
  %3 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  %4 = load ptr, ptr %0, align 8, !tbaa !85
  %5 = load ptr, ptr %1, align 8, !tbaa !85
  %6 = tail call i32 %3(ptr noundef %4, ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  %8 = icmp ugt ptr %0, %1
  %9 = icmp ult ptr %0, %1
  %10 = sext i1 %9 to i32
  %11 = select i1 %8, i32 1, i32 %10
  %12 = select i1 %7, i32 %11, i32 %6
  ret i32 %12
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cmp_desc(ptr noundef %0, ptr noundef %1) #0 !prof !81 !PGOFuncName !155 {
  %3 = load ptr, ptr @PL_sort_RealCmp, align 8, !tbaa !85
  %4 = tail call i32 %3(ptr noundef %0, ptr noundef %1) #8
  %5 = sub nsw i32 0, %4
  ret i32 %5
}

; Function Attrs: optsize
declare double @spec_rand() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @dynprep(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !82 !PGOFuncName !156 {
  %5 = getelementptr inbounds ptr, ptr %0, i64 %2
  %6 = load ptr, ptr %0, align 8, !tbaa !85
  %7 = getelementptr inbounds ptr, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = tail call i32 %3(ptr noundef %6, ptr noundef %8) #8
  %10 = icmp sgt i64 %2, 0
  br i1 %10, label %11, label %136, !prof !157

11:                                               ; preds = %4
  %12 = icmp sgt i32 %9, 0
  br label %13

13:                                               ; preds = %11, %131
  %14 = phi i1 [ %134, %131 ], [ %12, %11 ]
  %15 = phi ptr [ %132, %131 ], [ %0, %11 ]
  %16 = phi i64 [ %133, %131 ], [ 0, %11 ]
  %17 = phi ptr [ %121, %131 ], [ %1, %11 ]
  br label %18

18:                                               ; preds = %13, %23
  %19 = phi ptr [ %20, %23 ], [ %15, %13 ]
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = getelementptr inbounds ptr, ptr %19, i64 3
  %22 = icmp ult ptr %21, %5
  br i1 %22, label %23, label %29, !prof !158

23:                                               ; preds = %18
  %24 = load ptr, ptr %20, align 8, !tbaa !85
  %25 = load ptr, ptr %21, align 8, !tbaa !85
  %26 = tail call i32 %3(ptr noundef %24, ptr noundef %25) #8
  %27 = icmp slt i32 %26, 1
  %28 = xor i1 %14, %27
  br i1 %28, label %18, label %29, !prof !159, !llvm.loop !160

29:                                               ; preds = %23, %18
  %30 = icmp eq ptr %21, %5
  br label %31

31:                                               ; preds = %129, %29
  %32 = phi ptr [ %15, %29 ], [ %105, %129 ]
  %33 = phi ptr [ %17, %29 ], [ %121, %129 ]
  %34 = phi i64 [ %16, %29 ], [ %122, %129 ]
  %35 = phi ptr [ %15, %29 ], [ %104, %129 ]
  %36 = getelementptr inbounds ptr, ptr %35, i64 16
  %37 = icmp ult ptr %36, %20
  br i1 %37, label %38, label %63, !prof !161

38:                                               ; preds = %31, %46
  %39 = phi ptr [ %47, %46 ], [ %36, %31 ]
  %40 = getelementptr inbounds ptr, ptr %39, i64 -1
  %41 = load ptr, ptr %40, align 8, !tbaa !85
  %42 = load ptr, ptr %39, align 8, !tbaa !85
  %43 = tail call i32 %3(ptr noundef %41, ptr noundef %42) #8
  %44 = icmp slt i32 %43, 1
  %45 = xor i1 %14, %44
  br i1 %45, label %46, label %49, !prof !162

46:                                               ; preds = %38
  %47 = getelementptr inbounds ptr, ptr %39, i64 -2
  %48 = icmp ugt ptr %47, %32
  br i1 %48, label %38, label %49, !prof !163, !llvm.loop !164

49:                                               ; preds = %38, %46
  %50 = phi ptr [ %47, %46 ], [ %39, %38 ]
  %51 = icmp ugt ptr %50, %32
  br i1 %51, label %63, label %52, !prof !165

52:                                               ; preds = %49, %56
  %53 = phi ptr [ %54, %56 ], [ %36, %49 ]
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = icmp ult ptr %53, %19
  br i1 %55, label %56, label %63, !prof !166

56:                                               ; preds = %52
  %57 = getelementptr inbounds ptr, ptr %53, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  %59 = load ptr, ptr %54, align 8, !tbaa !85
  %60 = tail call i32 %3(ptr noundef %58, ptr noundef %59) #8
  %61 = icmp slt i32 %60, 1
  %62 = xor i1 %14, %61
  br i1 %62, label %52, label %63, !prof !167, !llvm.loop !168

63:                                               ; preds = %56, %52, %31, %49
  %64 = phi ptr [ %32, %49 ], [ %32, %31 ], [ %53, %52 ], [ %53, %56 ]
  %65 = phi ptr [ %50, %49 ], [ %20, %31 ], [ %54, %52 ], [ %54, %56 ]
  %66 = phi ptr [ %36, %49 ], [ %20, %31 ], [ %54, %52 ], [ %54, %56 ]
  %67 = icmp ugt ptr %64, %35
  br i1 %67, label %68, label %101, !prof !169

68:                                               ; preds = %63
  %69 = getelementptr inbounds ptr, ptr %64, i64 2
  %70 = icmp eq ptr %64, %19
  %71 = select i1 %70, i1 %30, i1 false
  br i1 %71, label %72, label %80, !prof !170

72:                                               ; preds = %68
  %73 = getelementptr inbounds ptr, ptr %19, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !85
  %75 = load ptr, ptr %69, align 8, !tbaa !85
  %76 = tail call i32 %3(ptr noundef %74, ptr noundef %75) #8
  %77 = icmp slt i32 %76, 1
  %78 = xor i1 %14, %77
  br i1 %78, label %79, label %80, !prof !171

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %72, %68
  %81 = phi ptr [ %5, %79 ], [ %69, %72 ], [ %69, %68 ]
  %82 = phi ptr [ %5, %79 ], [ %66, %72 ], [ %66, %68 ]
  %83 = phi ptr [ %5, %79 ], [ %65, %72 ], [ %65, %68 ]
  %84 = ptrtoint ptr %81 to i64
  %85 = ptrtoint ptr %35 to i64
  %86 = sub i64 %84, %85
  %87 = ashr exact i64 %86, 3
  %88 = getelementptr inbounds ptr, ptr %33, i64 %87
  store ptr %88, ptr %33, align 8, !tbaa !85
  %89 = add nsw i64 %34, 1
  %90 = getelementptr inbounds ptr, ptr %81, i64 -1
  %91 = icmp ult ptr %35, %90
  %92 = select i1 %14, i1 %91, i1 false
  br i1 %92, label %93, label %101, !prof !172

93:                                               ; preds = %80, %93
  %94 = phi ptr [ %99, %93 ], [ %90, %80 ]
  %95 = phi ptr [ %98, %93 ], [ %35, %80 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !85
  %97 = load ptr, ptr %94, align 8, !tbaa !85
  %98 = getelementptr inbounds ptr, ptr %95, i64 1
  store ptr %97, ptr %95, align 8, !tbaa !85
  store ptr %96, ptr %94, align 8, !tbaa !85
  %99 = getelementptr inbounds ptr, ptr %94, i64 -1
  %100 = icmp ult ptr %98, %99
  br i1 %100, label %93, label %101, !prof !173, !llvm.loop !174

101:                                              ; preds = %93, %80, %63
  %102 = phi ptr [ %64, %63 ], [ %81, %80 ], [ %81, %93 ]
  %103 = phi ptr [ %33, %63 ], [ %88, %80 ], [ %88, %93 ]
  %104 = phi ptr [ %65, %63 ], [ %83, %80 ], [ %83, %93 ]
  %105 = phi ptr [ %66, %63 ], [ %82, %80 ], [ %82, %93 ]
  %106 = phi i64 [ %34, %63 ], [ %89, %80 ], [ %89, %93 ]
  %107 = icmp ult ptr %102, %104
  br i1 %107, label %108, label %120, !prof !175

108:                                              ; preds = %101, %117
  %109 = phi i64 [ %113, %117 ], [ %106, %101 ]
  %110 = phi ptr [ %112, %117 ], [ %103, %101 ]
  %111 = phi ptr [ %118, %117 ], [ %102, %101 ]
  %112 = getelementptr inbounds ptr, ptr %110, i64 2
  store ptr %112, ptr %110, align 8, !tbaa !85
  %113 = add nsw i64 %109, 1
  br i1 %14, label %114, label %117, !prof !176

114:                                              ; preds = %108
  %115 = load <2 x ptr>, ptr %111, align 8, !tbaa !85
  %116 = shufflevector <2 x ptr> %115, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %116, ptr %111, align 8, !tbaa !85
  br label %117

117:                                              ; preds = %108, %114
  %118 = getelementptr inbounds ptr, ptr %111, i64 2
  %119 = icmp ult ptr %118, %104
  br i1 %119, label %108, label %120, !prof !177, !llvm.loop !178

120:                                              ; preds = %117, %101
  %121 = phi ptr [ %103, %101 ], [ %112, %117 ]
  %122 = phi i64 [ %106, %101 ], [ %113, %117 ]
  %123 = icmp eq ptr %104, %20
  %124 = select i1 %123, i1 %30, i1 false
  br i1 %124, label %125, label %129, !prof !179

125:                                              ; preds = %120
  %126 = getelementptr inbounds ptr, ptr %121, i64 1
  store ptr %126, ptr %121, align 8, !tbaa !85
  %127 = add nsw i64 %122, 1
  %128 = getelementptr inbounds ptr, ptr %19, i64 3
  br label %131

129:                                              ; preds = %120
  %130 = icmp ult ptr %104, %20
  br i1 %130, label %31, label %131, !prof !180, !llvm.loop !181

131:                                              ; preds = %129, %125
  %132 = phi ptr [ %128, %125 ], [ %104, %129 ]
  %133 = phi i64 [ %127, %125 ], [ %122, %129 ]
  %134 = xor i1 %14, true
  %135 = icmp ult ptr %132, %5
  br i1 %135, label %13, label %136, !prof !182, !llvm.loop !183

136:                                              ; preds = %131, %4
  %137 = phi i64 [ 0, %4 ], [ %133, %131 ]
  ret i64 %137
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_sort() local_unnamed_addr #0 !prof !184 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !85
  %4 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !85
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !85
  %7 = load i32, ptr %5, align 4, !tbaa !185
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = ptrtoint ptr %9 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #7
  %12 = load ptr, ptr @PL_op, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.op, ptr %12, i64 0, i32 5
  %14 = load i8, ptr %13, align 2, !tbaa !186
  %15 = and i8 %14, 3
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !188

17:                                               ; preds = %0
  %18 = zext nneg i8 %15 to i32
  br label %24

19:                                               ; preds = %0
  %20 = tail call i32 @Perl_block_gimme() #8
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !85
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 5
  %23 = load i8, ptr %22, align 2, !tbaa !186
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %14, %17 ], [ %23, %19 ]
  %26 = phi ptr [ %12, %17 ], [ %21, %19 ]
  %27 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !189
  %29 = getelementptr inbounds %struct.op, ptr %26, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !190
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !191

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %24
  %36 = phi i32 [ 1, %34 ], [ 0, %24 ]
  %37 = and i32 %31, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39, !prof !191

39:                                               ; preds = %35
  %40 = or disjoint i32 %36, 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ %40, %39 ], [ %36, %35 ]
  %43 = and i32 %31, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !191

45:                                               ; preds = %41
  %46 = or i32 %42, 2
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %46, %45 ], [ %42, %41 ]
  %49 = icmp eq i32 %27, 3
  br i1 %49, label %63, label %50, !prof !191

50:                                               ; preds = %47
  %51 = load ptr, ptr @PL_stack_max, align 8, !tbaa !85
  %52 = ptrtoint ptr %51 to i64
  %53 = sub i64 %52, %10
  %54 = icmp slt i64 %53, 8
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = tail call ptr @Perl_stack_grow(ptr noundef %9, ptr noundef %9, i64 noundef 1) #8
  %57 = load ptr, ptr @PL_op, align 8, !tbaa !85
  br label %58

58:                                               ; preds = %50, %55
  %59 = phi ptr [ %57, %55 ], [ %26, %50 ]
  %60 = phi ptr [ %56, %55 ], [ %9, %50 ]
  %61 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr @PL_sv_undef, ptr %61, align 8, !tbaa !85
  store ptr %61, ptr @PL_stack_sp, align 8, !tbaa !85
  %62 = load ptr, ptr %59, align 8, !tbaa !189
  br label %822

63:                                               ; preds = %47
  tail call void @Perl_push_scope() #8
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_sortcop) #8
  %64 = and i8 %25, 64
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %173, label %66, !prof !192

66:                                               ; preds = %63
  %67 = icmp sgt i8 %25, -1
  br i1 %67, label %75, label %68, !prof !193

68:                                               ; preds = %66
  %69 = load ptr, ptr @PL_op, align 8, !tbaa !85
  %70 = getelementptr inbounds %struct.listop, ptr %69, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !194
  %72 = getelementptr inbounds %struct.op, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !196
  %74 = load ptr, ptr %73, align 8, !tbaa !189
  store ptr %74, ptr @PL_sortcop, align 8, !tbaa !85
  br label %174

75:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %76 = load ptr, ptr %11, align 8, !tbaa !85
  %77 = call ptr @Perl_sv_2cv(ptr noundef %76, ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef 1) #8
  br label %78

78:                                               ; preds = %154, %75
  %79 = phi i1 [ true, %75 ], [ false, %154 ]
  %80 = phi i8 [ 0, %75 ], [ %116, %154 ]
  %81 = phi ptr [ %77, %75 ], [ %155, %154 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %115, label %83, !prof !197

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.cv, ptr %81, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !185
  %86 = and i32 %85, 1024
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %103, label %88, !prof !198

88:                                               ; preds = %83
  %89 = and i32 %85, 2098176
  %90 = icmp eq i32 %89, 1024
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !199
  br label %96

94:                                               ; preds = %88
  %95 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %81, ptr noundef null, i32 noundef 34) #8
  br label %96

96:                                               ; preds = %94, %91
  %97 = phi ptr [ %93, %91 ], [ %95, %94 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(3) @.str) #9
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i8 1, i8 %80
  br label %103

103:                                              ; preds = %99, %96, %83
  %104 = phi i8 [ %102, %99 ], [ %80, %96 ], [ %80, %83 ]
  %105 = load ptr, ptr %81, align 8, !tbaa !200
  %106 = getelementptr inbounds %struct.xpvcv, ptr %105, i64 0, i32 12
  %107 = load i32, ptr %106, align 4, !tbaa !202
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  %110 = getelementptr inbounds %struct.xpvcv, ptr %105, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !199
  %112 = icmp eq ptr %111, null
  br i1 %109, label %114, label %113, !prof !198

113:                                              ; preds = %103
  br i1 %112, label %115, label %170, !prof !204

114:                                              ; preds = %103
  br i1 %112, label %115, label %165, !prof !205

115:                                              ; preds = %113, %78, %114
  %116 = phi i8 [ %104, %114 ], [ %80, %78 ], [ %104, %113 ]
  %117 = load ptr, ptr %1, align 8, !tbaa !85
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load ptr, ptr %81, align 8, !tbaa !200
  %121 = getelementptr inbounds %struct.xpvcv, ptr %120, i64 0, i32 12
  %122 = load i32, ptr %121, align 4, !tbaa !202
  %123 = and i32 %122, 128
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %163

125:                                              ; preds = %119
  %126 = call fastcc ptr @S_CvGV(ptr noundef nonnull %81) #6
  store ptr %126, ptr %1, align 8, !tbaa !85
  %127 = icmp eq ptr %126, null
  br i1 %127, label %163, label %128

128:                                              ; preds = %125, %115
  %129 = phi ptr [ %126, %125 ], [ %117, %115 ]
  br i1 %79, label %130, label %159

130:                                              ; preds = %128
  %131 = load ptr, ptr %129, align 8, !tbaa !206
  %132 = getelementptr inbounds %struct.xpvgv, ptr %131, i64 0, i32 5
  %133 = load ptr, ptr %132, align 8, !tbaa !199
  %134 = getelementptr inbounds %struct.xpvgv, ptr %131, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !199
  %136 = getelementptr inbounds %struct.hek, ptr %135, i64 0, i32 2
  %137 = getelementptr inbounds %struct.hek, ptr %135, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !208
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %136, i64 %139
  %141 = getelementptr inbounds i8, ptr %140, i64 1
  %142 = load i8, ptr %141, align 1, !tbaa !199
  %143 = and i8 %142, 1
  %144 = zext nneg i8 %143 to i32
  %145 = shl nuw nsw i32 %144, 29
  %146 = call ptr @Perl_gv_autoload_pvn(ptr noundef %133, ptr noundef nonnull %136, i64 noundef %139, i32 noundef %145) #8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %159, label %148

148:                                              ; preds = %130
  %149 = getelementptr inbounds %struct.gv, ptr %146, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !199
  %151 = getelementptr inbounds %struct.gp, ptr %150, i64 0, i32 3
  %152 = load i32, ptr %151, align 8, !tbaa !210
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %148, %156
  %155 = phi ptr [ null, %148 ], [ %158, %156 ]
  br label %78

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.gp, ptr %150, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !212
  br label %154

159:                                              ; preds = %130, %128
  %160 = call ptr @Perl_sv_newmortal() #8
  %161 = load ptr, ptr %1, align 8, !tbaa !85
  call void @Perl_gv_efullname4(ptr noundef %160, ptr noundef %161, ptr noundef null, i1 noundef zeroext true) #8
  %162 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.1, ptr noundef %160) #8
  br label %168

163:                                              ; preds = %125, %119
  %164 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.2) #8
  br label %168

165:                                              ; preds = %114
  %166 = getelementptr inbounds %struct.xpvcv, ptr %105, i64 0, i32 5
  %167 = load ptr, ptr %166, align 8, !tbaa !199
  br label %170

168:                                              ; preds = %159, %163
  %169 = phi ptr [ %164, %163 ], [ %162, %159 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %822

170:                                              ; preds = %113, %165
  %171 = phi i32 [ 0, %165 ], [ 1, %113 ]
  %172 = phi ptr [ %167, %165 ], [ %81, %113 ]
  store ptr %172, ptr @PL_sortcop, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %174

173:                                              ; preds = %63
  store ptr null, ptr @PL_sortcop, align 8, !tbaa !85
  br label %174

174:                                              ; preds = %170, %68, %173
  %175 = phi i32 [ 0, %68 ], [ %171, %170 ], [ 0, %173 ]
  %176 = phi i8 [ 0, %68 ], [ %104, %170 ], [ 0, %173 ]
  %177 = phi ptr [ null, %68 ], [ %81, %170 ], [ null, %173 ]
  %178 = phi ptr [ %9, %68 ], [ %11, %170 ], [ %9, %173 ]
  %179 = and i32 %31, 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %248, label %181, !prof !191

181:                                              ; preds = %174
  %182 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !85
  %183 = getelementptr inbounds i32, ptr %182, i64 -1
  store ptr %183, ptr @PL_markstack_ptr, align 8, !tbaa !85
  %184 = load ptr, ptr %3, align 8, !tbaa !85
  %185 = getelementptr inbounds %struct.sv, ptr %184, i64 0, i32 2
  %186 = load i32, ptr %185, align 4, !tbaa !185
  %187 = and i32 %186, 8388608
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %181
  %190 = call i32 @Perl_mg_size(ptr noundef nonnull %184) #8
  %191 = sext i32 %190 to i64
  %192 = load i32, ptr %185, align 4, !tbaa !213
  br label %197

193:                                              ; preds = %181
  %194 = load ptr, ptr %184, align 8, !tbaa !215
  %195 = getelementptr inbounds %struct.xpvav, ptr %194, i64 0, i32 2
  %196 = load i64, ptr %195, align 8, !tbaa !216
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi i32 [ %192, %189 ], [ %186, %193 ]
  %199 = phi i64 [ %191, %189 ], [ %196, %193 ]
  %200 = add i64 %199, 1
  %201 = and i32 %198, 14680064
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %239, label %203

203:                                              ; preds = %197
  %204 = load ptr, ptr @PL_stack_max, align 8, !tbaa !85
  %205 = ptrtoint ptr %204 to i64
  %206 = ptrtoint ptr %3 to i64
  %207 = sub i64 %205, %206
  %208 = ashr exact i64 %207, 3
  %209 = icmp sgt i64 %208, %199
  br i1 %209, label %218, label %210

210:                                              ; preds = %203
  %211 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %212 = ptrtoint ptr %178 to i64
  %213 = ptrtoint ptr %211 to i64
  %214 = sub i64 %212, %213
  %215 = call ptr @Perl_stack_grow(ptr noundef nonnull %3, ptr noundef nonnull %3, i64 noundef %200) #8
  %216 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %217 = getelementptr inbounds i8, ptr %216, i64 %214
  br label %218

218:                                              ; preds = %203, %210
  %219 = phi ptr [ %217, %210 ], [ %178, %203 ]
  %220 = phi ptr [ %215, %210 ], [ %3, %203 ]
  %221 = icmp slt i64 %199, 0
  br i1 %221, label %234, label %222

222:                                              ; preds = %218, %229
  %223 = phi ptr [ %231, %229 ], [ %220, %218 ]
  %224 = phi i64 [ %232, %229 ], [ 0, %218 ]
  %225 = call ptr @Perl_av_fetch(ptr noundef %184, i64 noundef %224, i32 noundef 0) #8
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %222
  %228 = load ptr, ptr %225, align 8, !tbaa !85
  br label %229

229:                                              ; preds = %222, %227
  %230 = phi ptr [ %228, %227 ], [ null, %222 ]
  %231 = getelementptr inbounds ptr, ptr %223, i64 1
  store ptr %230, ptr %223, align 8, !tbaa !85
  %232 = add nuw i64 %224, 1
  %233 = icmp eq i64 %224, %199
  br i1 %233, label %234, label %222, !llvm.loop !218

234:                                              ; preds = %229, %218
  %235 = phi ptr [ %220, %218 ], [ %231, %229 ]
  %236 = getelementptr inbounds ptr, ptr %235, i64 -1
  %237 = sub i64 0, %199
  %238 = getelementptr inbounds ptr, ptr %236, i64 %237
  br label %254

239:                                              ; preds = %197
  %240 = and i32 %198, 134283264
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %239
  call void @Perl_croak_no_modify() #8
  br label %245

243:                                              ; preds = %239
  %244 = or disjoint i32 %198, 134283264
  store i32 %244, ptr %185, align 4, !tbaa !213
  call void @Perl_save_pushptr(ptr noundef nonnull %184, i32 noundef 21) #8
  br label %245

245:                                              ; preds = %243, %242
  %246 = getelementptr inbounds %struct.av, ptr %184, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !199
  br label %254

248:                                              ; preds = %174
  %249 = getelementptr inbounds ptr, ptr %178, i64 1
  %250 = ptrtoint ptr %3 to i64
  %251 = ptrtoint ptr %178 to i64
  %252 = sub i64 %250, %251
  %253 = ashr exact i64 %252, 3
  br label %254

254:                                              ; preds = %234, %245, %248
  %255 = phi i1 [ true, %234 ], [ false, %245 ], [ true, %248 ]
  %256 = phi ptr [ %184, %234 ], [ %184, %245 ], [ null, %248 ]
  %257 = phi i64 [ %200, %234 ], [ %200, %245 ], [ %253, %248 ]
  %258 = phi ptr [ %238, %234 ], [ %247, %245 ], [ %249, %248 ]
  %259 = phi ptr [ %238, %234 ], [ %247, %245 ], [ %11, %248 ]
  %260 = phi ptr [ %219, %234 ], [ %178, %245 ], [ %178, %248 ]
  %261 = phi ptr [ %236, %234 ], [ %3, %245 ], [ %3, %248 ]
  %262 = load ptr, ptr @PL_sortcop, align 8
  %263 = icmp ne ptr %262, null
  %264 = select i1 %255, i1 %263, i1 false, !prof !191
  %265 = icmp sgt i64 %257, 0
  br i1 %265, label %266, label %360, !prof !219

266:                                              ; preds = %254
  %267 = and i32 %31, 1
  %268 = icmp eq i32 %267, 0
  br label %269

269:                                              ; preds = %266, %353
  %270 = phi ptr [ %259, %266 ], [ %357, %353 ]
  %271 = phi ptr [ %258, %266 ], [ %276, %353 ]
  %272 = phi i64 [ %257, %266 ], [ %356, %353 ]
  %273 = phi i64 [ %257, %266 ], [ %358, %353 ]
  %274 = phi i32 [ 0, %266 ], [ %355, %353 ]
  %275 = phi i32 [ 1, %266 ], [ %354, %353 ]
  %276 = getelementptr inbounds ptr, ptr %271, i64 1
  %277 = load ptr, ptr %271, align 8, !tbaa !85
  store ptr %277, ptr %270, align 8, !tbaa !85
  %278 = icmp eq ptr %277, null
  br i1 %278, label %351, label %279, !prof !220

279:                                              ; preds = %269
  br i1 %264, label %280, label %287, !prof !221

280:                                              ; preds = %279
  %281 = getelementptr inbounds %struct.sv, ptr %277, i64 0, i32 2
  %282 = load i32, ptr %281, align 4, !tbaa !222
  %283 = and i32 %282, 131072
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %287, label %285, !prof !224

285:                                              ; preds = %280
  %286 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %277, i32 noundef 1538) #8
  store ptr %286, ptr %270, align 8, !tbaa !85
  br label %287

287:                                              ; preds = %285, %280, %279
  %288 = phi ptr [ %286, %285 ], [ %277, %280 ], [ %277, %279 ]
  %289 = getelementptr inbounds %struct.sv, ptr %288, i64 0, i32 2
  %290 = load i32, ptr %289, align 4, !tbaa !222
  %291 = and i32 %290, -524289
  store i32 %291, ptr %289, align 4, !tbaa !222
  %292 = load ptr, ptr @PL_sortcop, align 8, !tbaa !85
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %347, !prof !225

294:                                              ; preds = %287
  br i1 %268, label %320, label %295, !prof !226

295:                                              ; preds = %294
  %296 = and i32 %31, 2
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %295
  %299 = and i32 %290, 256
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %325

301:                                              ; preds = %298
  %302 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %288, i32 noundef 8194) #8
  br label %325

303:                                              ; preds = %295
  %304 = and i32 %290, 512
  %305 = icmp ne i32 %304, 0
  %306 = and i32 %290, -2147483392
  %307 = icmp eq i32 %306, 256
  %308 = or i1 %305, %307
  br i1 %308, label %311, label %309

309:                                              ; preds = %303
  %310 = call double @Perl_sv_2nv_flags(ptr noundef nonnull %288, i32 noundef 8194) #8
  br label %311

311:                                              ; preds = %309, %303
  %312 = icmp eq i32 %275, 0
  br i1 %312, label %325, label %313

313:                                              ; preds = %311
  %314 = load ptr, ptr %270, align 8, !tbaa !85
  %315 = getelementptr inbounds %struct.sv, ptr %314, i64 0, i32 2
  %316 = load i32, ptr %315, align 4, !tbaa !222
  %317 = and i32 %316, -2147483392
  %318 = icmp eq i32 %317, 256
  %319 = zext i1 %318 to i32
  br label %325

320:                                              ; preds = %294
  %321 = and i32 %290, 1024
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %325, !prof !227

323:                                              ; preds = %320
  %324 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %288, ptr noundef null, i32 noundef 8226) #8
  br label %325

325:                                              ; preds = %313, %320, %323, %301, %298, %311
  %326 = phi i32 [ %275, %298 ], [ %275, %301 ], [ 0, %311 ], [ %275, %320 ], [ %275, %323 ], [ %319, %313 ]
  %327 = load ptr, ptr %270, align 8, !tbaa !85
  %328 = getelementptr inbounds %struct.sv, ptr %327, i64 0, i32 2
  %329 = load i32, ptr %328, align 4, !tbaa !222
  %330 = and i32 %329, 2048
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %347, label %332, !prof !226

332:                                              ; preds = %325
  %333 = getelementptr inbounds %struct.sv, ptr %327, i64 0, i32 3
  %334 = load ptr, ptr %333, align 8, !tbaa !199
  %335 = getelementptr inbounds %struct.sv, ptr %334, i64 0, i32 2
  %336 = load i32, ptr %335, align 4, !tbaa !222
  %337 = and i32 %336, 1048576
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %347, label %339

339:                                              ; preds = %332
  %340 = load ptr, ptr %334, align 8, !tbaa !228
  %341 = load ptr, ptr %340, align 8, !tbaa !229
  %342 = getelementptr inbounds %struct.hv, ptr %341, i64 0, i32 2
  %343 = load i32, ptr %342, align 4, !tbaa !231
  %344 = and i32 %343, 268435456
  %345 = icmp eq i32 %344, 0
  %346 = select i1 %345, i32 %274, i32 1
  br label %347

347:                                              ; preds = %339, %325, %332, %287
  %348 = phi i32 [ %275, %287 ], [ %326, %332 ], [ %326, %325 ], [ %326, %339 ]
  %349 = phi i32 [ %274, %287 ], [ %274, %332 ], [ %274, %325 ], [ %346, %339 ]
  %350 = getelementptr inbounds ptr, ptr %270, i64 1
  br label %353

351:                                              ; preds = %269
  %352 = add nsw i64 %272, -1
  br label %353

353:                                              ; preds = %347, %351
  %354 = phi i32 [ %348, %347 ], [ %275, %351 ]
  %355 = phi i32 [ %349, %347 ], [ %274, %351 ]
  %356 = phi i64 [ %272, %347 ], [ %352, %351 ]
  %357 = phi ptr [ %350, %347 ], [ %270, %351 ]
  %358 = add nsw i64 %273, -1
  %359 = icmp sgt i64 %273, 1
  br i1 %359, label %269, label %360, !prof !233, !llvm.loop !234

360:                                              ; preds = %353, %254
  %361 = phi i32 [ 1, %254 ], [ %354, %353 ]
  %362 = phi i32 [ 0, %254 ], [ %355, %353 ]
  %363 = phi i64 [ %257, %254 ], [ %356, %353 ]
  %364 = phi ptr [ %259, %254 ], [ %357, %353 ]
  br i1 %255, label %369, label %365, !prof !191

365:                                              ; preds = %360
  %366 = add nsw i64 %363, -1
  %367 = load ptr, ptr %256, align 8, !tbaa !215
  %368 = getelementptr inbounds %struct.xpvav, ptr %367, i64 0, i32 2
  store i64 %366, ptr %368, align 8, !tbaa !216
  br label %369

369:                                              ; preds = %365, %360
  %370 = icmp sgt i64 %363, 1
  br i1 %370, label %371, label %779, !prof !235

371:                                              ; preds = %369
  %372 = load ptr, ptr @PL_sortcop, align 8, !tbaa !85
  %373 = icmp eq ptr %372, null
  br i1 %373, label %719, label %374, !prof !236

374:                                              ; preds = %371
  %375 = load ptr, ptr @PL_top_env, align 8, !tbaa !85
  %376 = getelementptr inbounds %struct.jmpenv, ptr %375, i64 0, i32 3
  %377 = load i8, ptr %376, align 4, !tbaa !237, !range !240, !noundef !241
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8
  %378 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !242
  store i64 %378, ptr @PL_tmps_floor, align 8, !tbaa !242
  %379 = load ptr, ptr @PL_op, align 8, !tbaa !85
  call void @Perl_save_pushptr(ptr noundef %379, i32 noundef 18) #8
  %380 = load ptr, ptr @PL_top_env, align 8, !tbaa !85
  %381 = getelementptr inbounds %struct.jmpenv, ptr %380, i64 0, i32 3
  store i8 1, ptr %381, align 4, !tbaa !237
  %382 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !85
  %383 = getelementptr inbounds %struct.stackinfo, ptr %382, i64 0, i32 3
  %384 = load ptr, ptr %383, align 8, !tbaa !243
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %391, !prof !245

386:                                              ; preds = %374
  %387 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #8
  %388 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !85
  %389 = getelementptr inbounds %struct.stackinfo, ptr %387, i64 0, i32 2
  store ptr %388, ptr %389, align 8, !tbaa !246
  %390 = getelementptr inbounds %struct.stackinfo, ptr %388, i64 0, i32 3
  store ptr %387, ptr %390, align 8, !tbaa !243
  br label %391

391:                                              ; preds = %386, %374
  %392 = phi ptr [ %384, %374 ], [ %387, %386 ]
  %393 = getelementptr inbounds %struct.stackinfo, ptr %392, i64 0, i32 6
  store i32 3, ptr %393, align 8, !tbaa !247
  %394 = getelementptr inbounds %struct.stackinfo, ptr %392, i64 0, i32 4
  store i32 -1, ptr %394, align 8, !tbaa !248
  %395 = load ptr, ptr %392, align 8, !tbaa !249
  %396 = load ptr, ptr %395, align 8, !tbaa !215
  %397 = getelementptr inbounds %struct.xpvav, ptr %396, i64 0, i32 2
  store i64 0, ptr %397, align 8, !tbaa !216
  %398 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %399 = ptrtoint ptr %261 to i64
  %400 = ptrtoint ptr %398 to i64
  %401 = sub i64 %399, %400
  %402 = ashr exact i64 %401, 3
  %403 = load ptr, ptr @PL_curstack, align 8, !tbaa !85
  %404 = load ptr, ptr %403, align 8, !tbaa !215
  %405 = getelementptr inbounds %struct.xpvav, ptr %404, i64 0, i32 2
  store i64 %402, ptr %405, align 8, !tbaa !216
  %406 = getelementptr inbounds %struct.av, ptr %395, i64 0, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !199
  store ptr %407, ptr @PL_stack_base, align 8, !tbaa !85
  %408 = load ptr, ptr %392, align 8, !tbaa !249
  %409 = load ptr, ptr %408, align 8, !tbaa !215
  %410 = getelementptr inbounds %struct.xpvav, ptr %409, i64 0, i32 3
  %411 = load i64, ptr %410, align 8, !tbaa !250
  %412 = getelementptr inbounds ptr, ptr %407, i64 %411
  store ptr %412, ptr @PL_stack_max, align 8, !tbaa !85
  %413 = load ptr, ptr %392, align 8, !tbaa !249
  %414 = load ptr, ptr %413, align 8, !tbaa !215
  %415 = getelementptr inbounds %struct.xpvav, ptr %414, i64 0, i32 2
  %416 = load i64, ptr %415, align 8, !tbaa !216
  %417 = getelementptr inbounds ptr, ptr %407, i64 %416
  store ptr %417, ptr @PL_stack_sp, align 8, !tbaa !85
  %418 = load ptr, ptr %392, align 8, !tbaa !249
  store ptr %418, ptr @PL_curstack, align 8, !tbaa !85
  store ptr %392, ptr @PL_curstackinfo, align 8, !tbaa !85
  %419 = and i8 %176, 1
  %420 = icmp ne i8 %419, 0
  %421 = icmp ne i32 %175, 0
  %422 = or i1 %421, %420
  br i1 %422, label %437, label %423, !prof !251

423:                                              ; preds = %391
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_firstgv) #8
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_secondgv) #8
  %424 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.3, i64 noundef 1, i32 noundef 129, i32 noundef 3) #8
  %425 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %424) #6
  store ptr %424, ptr @PL_firstgv, align 8, !tbaa !85
  %426 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.4, i64 noundef 1, i32 noundef 129, i32 noundef 3) #8
  %427 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %426) #6
  store ptr %426, ptr @PL_secondgv, align 8, !tbaa !85
  %428 = load ptr, ptr @PL_firstgv, align 8, !tbaa !85
  %429 = getelementptr inbounds %struct.gv, ptr %428, i64 0, i32 3
  %430 = load ptr, ptr %429, align 8, !tbaa !199
  call void @Perl_save_sptr(ptr noundef %430) #8
  %431 = load ptr, ptr @PL_secondgv, align 8, !tbaa !85
  %432 = getelementptr inbounds %struct.gv, ptr %431, i64 0, i32 3
  %433 = load ptr, ptr %432, align 8, !tbaa !199
  call void @Perl_save_sptr(ptr noundef %433) #8
  %434 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !85
  %435 = getelementptr inbounds %struct.stackinfo, ptr %434, i64 0, i32 4
  %436 = load i32, ptr %435, align 8, !tbaa !248
  br label %437

437:                                              ; preds = %423, %391
  %438 = phi i32 [ %436, %423 ], [ -1, %391 ]
  %439 = phi ptr [ %434, %423 ], [ %392, %391 ]
  %440 = getelementptr inbounds %struct.stackinfo, ptr %439, i64 0, i32 5
  %441 = load i32, ptr %440, align 4, !tbaa !252
  %442 = icmp slt i32 %438, %441
  br i1 %442, label %443, label %446, !prof !253

443:                                              ; preds = %437
  %444 = getelementptr inbounds %struct.stackinfo, ptr %439, i64 0, i32 4
  %445 = add nsw i32 %438, 1
  store i32 %445, ptr %444, align 8, !tbaa !248
  br label %450

446:                                              ; preds = %437
  %447 = call i32 @Perl_cxinc() #8
  %448 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !85
  %449 = getelementptr inbounds %struct.stackinfo, ptr %448, i64 0, i32 4
  store i32 %447, ptr %449, align 8, !tbaa !248
  br label %450

450:                                              ; preds = %446, %443
  %451 = phi i32 [ %447, %446 ], [ %445, %443 ]
  %452 = phi ptr [ %448, %446 ], [ %439, %443 ]
  %453 = getelementptr inbounds %struct.stackinfo, ptr %452, i64 0, i32 1
  %454 = load ptr, ptr %453, align 8, !tbaa !254
  %455 = sext i32 %451 to i64
  %456 = getelementptr inbounds %struct.context, ptr %454, i64 %455
  store i8 0, ptr %456, align 8, !tbaa !199
  %457 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 3
  store i32 0, ptr %457, align 4, !tbaa !199
  %458 = load ptr, ptr @PL_curcop, align 8, !tbaa !85
  %459 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 4
  store ptr %458, ptr %459, align 8, !tbaa !199
  %460 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !85
  %461 = load ptr, ptr @PL_markstack, align 8, !tbaa !85
  %462 = ptrtoint ptr %460 to i64
  %463 = ptrtoint ptr %461 to i64
  %464 = sub i64 %462, %463
  %465 = lshr exact i64 %464, 2
  %466 = trunc i64 %465 to i32
  %467 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 5
  store i32 %466, ptr %467, align 8, !tbaa !199
  %468 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %469 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 6
  store i32 %468, ptr %469, align 4, !tbaa !199
  %470 = load ptr, ptr @PL_curpm, align 8, !tbaa !85
  %471 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 7
  store ptr %470, ptr %471, align 8, !tbaa !199
  %472 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 1
  store i8 3, ptr %472, align 1, !tbaa !199
  %473 = icmp sgt i8 %25, -1
  br i1 %473, label %474, label %560, !prof !255

474:                                              ; preds = %450
  store i8 8, ptr %456, align 8, !tbaa !199
  store i8 2, ptr %472, align 1, !tbaa !199
  %475 = call fastcc ptr @S_CvDEPTHp(ptr noundef %177) #6
  %476 = load i32, ptr %475, align 4, !tbaa !185
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %482, label %478, !prof !256

478:                                              ; preds = %474
  %479 = getelementptr inbounds %struct.sv, ptr %177, i64 0, i32 1
  %480 = load i32, ptr %479, align 8, !tbaa !257
  %481 = add i32 %480, 1
  store i32 %481, ptr %479, align 8, !tbaa !257
  br label %482

482:                                              ; preds = %478, %474
  %483 = load ptr, ptr @PL_op, align 8, !tbaa !85
  %484 = getelementptr inbounds %struct.op, ptr %483, i64 0, i32 5
  %485 = load i8, ptr %484, align 2, !tbaa !186
  %486 = and i8 %485, 3
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %488, label %496, !prof !258

488:                                              ; preds = %482
  %489 = getelementptr inbounds %struct.op, ptr %483, i64 0, i32 6
  %490 = load i8, ptr %489, align 1, !tbaa !190
  %491 = and i8 %490, -127
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %496, label %493, !prof !258

493:                                              ; preds = %488
  %494 = call i32 @Perl_was_lvalue_sub() #8
  %495 = and i32 %494, 255
  br label %496

496:                                              ; preds = %493, %488, %482
  %497 = phi i32 [ 129, %482 ], [ %495, %493 ], [ 0, %488 ]
  %498 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 8
  %499 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 8, i32 0, i32 1
  store ptr %177, ptr %499, align 8, !tbaa !199
  %500 = call fastcc ptr @S_CvDEPTHp(ptr noundef %177) #6
  %501 = load i32, ptr %500, align 4, !tbaa !185
  %502 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 8, i32 0, i32 4
  store i32 %501, ptr %502, align 8, !tbaa !199
  %503 = shl nuw nsw i8 %419, 5
  %504 = load i8, ptr %456, align 8, !tbaa !199
  %505 = or i8 %504, %503
  store i8 %505, ptr %456, align 8, !tbaa !199
  store ptr null, ptr %498, align 8, !tbaa !199
  %506 = call fastcc ptr @S_CvDEPTHp(ptr noundef %177) #6
  %507 = load i32, ptr %506, align 4, !tbaa !185
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %513, !prof !256

509:                                              ; preds = %496
  %510 = getelementptr inbounds %struct.sv, ptr %177, i64 0, i32 1
  %511 = load i32, ptr %510, align 8, !tbaa !257
  %512 = add i32 %511, 2
  store i32 %512, ptr %510, align 8, !tbaa !257
  call void @Perl_save_pushptr(ptr noundef %177, i32 noundef 11) #8
  br label %513

513:                                              ; preds = %509, %496
  %514 = load ptr, ptr @PL_op, align 8, !tbaa !85
  %515 = getelementptr inbounds %struct.op, ptr %514, i64 0, i32 6
  %516 = load i8, ptr %515, align 1, !tbaa !190
  %517 = zext i8 %516 to i32
  %518 = or i32 %497, 48
  %519 = and i32 %518, %517
  %520 = trunc i32 %519 to i16
  %521 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 2
  store i16 %520, ptr %521, align 2, !tbaa !199
  br i1 %421, label %560, label %522, !prof !258

522:                                              ; preds = %513
  %523 = load ptr, ptr %177, align 8, !tbaa !200
  %524 = getelementptr inbounds %struct.xpvcv, ptr %523, i64 0, i32 9
  %525 = load ptr, ptr %524, align 8, !tbaa !199
  %526 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %177) #6
  %527 = load i32, ptr %526, align 4, !tbaa !185
  %528 = add nsw i32 %527, 1
  store i32 %528, ptr %526, align 4, !tbaa !185
  %529 = icmp sgt i32 %527, 0
  br i1 %529, label %530, label %533, !prof !258

530:                                              ; preds = %522
  %531 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %177) #6
  %532 = load i32, ptr %531, align 4, !tbaa !185
  call void @Perl_pad_push(ptr noundef %525, i32 noundef %532) #8
  br label %533

533:                                              ; preds = %530, %522
  %534 = load ptr, ptr @PL_comppad, align 8, !tbaa !85
  call void @Perl_save_pushptr(ptr noundef %534, i32 noundef 7) #8
  %535 = getelementptr inbounds %struct.padlist, ptr %525, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !259
  %537 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %177) #6
  %538 = load i32, ptr %537, align 4, !tbaa !185
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds ptr, ptr %536, i64 %539
  %541 = load ptr, ptr %540, align 8, !tbaa !85
  store ptr %541, ptr @PL_comppad, align 8, !tbaa !85
  %542 = getelementptr inbounds %struct.av, ptr %541, i64 0, i32 3
  %543 = load ptr, ptr %542, align 8, !tbaa !199
  store ptr %543, ptr @PL_curpad, align 8, !tbaa !85
  br i1 %420, label %544, label %560, !prof !258

544:                                              ; preds = %533
  %545 = load ptr, ptr %543, align 8, !tbaa !85
  %546 = load ptr, ptr @PL_defgv, align 8, !tbaa !85
  %547 = getelementptr inbounds %struct.gv, ptr %546, i64 0, i32 3
  %548 = load ptr, ptr %547, align 8, !tbaa !199
  %549 = getelementptr inbounds %struct.gp, ptr %548, i64 0, i32 6
  %550 = load ptr, ptr %549, align 8, !tbaa !261
  %551 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 8, i32 0, i32 2
  store ptr %550, ptr %551, align 8, !tbaa !199
  %552 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %545) #6
  %553 = load ptr, ptr @PL_defgv, align 8, !tbaa !85
  %554 = getelementptr inbounds %struct.gv, ptr %553, i64 0, i32 3
  %555 = load ptr, ptr %554, align 8, !tbaa !199
  %556 = getelementptr inbounds %struct.gp, ptr %555, i64 0, i32 6
  store ptr %545, ptr %556, align 8, !tbaa !261
  %557 = load ptr, ptr @PL_comppad, align 8, !tbaa !85
  %558 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 8, i32 0, i32 5
  store ptr %557, ptr %558, align 8, !tbaa !199
  %559 = getelementptr inbounds %struct.block, ptr %456, i64 0, i32 8, i32 0, i32 3
  store ptr %545, ptr %559, align 8, !tbaa !199
  br label %560

560:                                              ; preds = %533, %544, %513, %450
  %561 = load i8, ptr %456, align 8, !tbaa !199
  %562 = or i8 %561, 16
  store i8 %562, ptr %456, align 8, !tbaa !199
  %563 = sub nsw i64 0, %363
  %564 = getelementptr inbounds ptr, ptr %364, i64 %563
  %565 = select i1 %420, ptr @S_sortcv_stacked, ptr @S_sortcv
  %566 = select i1 %421, ptr @S_sortcv_xsub, ptr %565, !prof !245
  call void @Perl_sortsv_flags(ptr noundef nonnull %564, i64 noundef %363, ptr noundef nonnull %566, i32 noundef %48) #6
  br i1 %473, label %567, label %664, !prof !255

567:                                              ; preds = %560
  %568 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !85
  %569 = getelementptr inbounds %struct.stackinfo, ptr %568, i64 0, i32 1
  %570 = load ptr, ptr %569, align 8, !tbaa !254
  %571 = getelementptr inbounds %struct.stackinfo, ptr %568, i64 0, i32 4
  %572 = load i32, ptr %571, align 8, !tbaa !248
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.context, ptr %570, i64 %573
  %575 = getelementptr inbounds %struct.block, ptr %574, i64 0, i32 8, i32 0, i32 4
  %576 = load i32, ptr %575, align 8, !tbaa !199
  %577 = getelementptr inbounds %struct.block, ptr %574, i64 0, i32 2
  %578 = load i16, ptr %577, align 2, !tbaa !199
  %579 = and i16 %578, 256
  %580 = icmp eq i16 %579, 0
  br i1 %580, label %581, label %643, !prof !256

581:                                              ; preds = %567
  %582 = or disjoint i16 %578, 256
  store i16 %582, ptr %577, align 2, !tbaa !199
  %583 = load i8, ptr %574, align 8, !tbaa !199
  %584 = and i8 %583, 32
  %585 = icmp eq i8 %584, 0
  br i1 %585, label %643, label %586, !prof !256

586:                                              ; preds = %581
  %587 = load ptr, ptr @PL_defgv, align 8, !tbaa !85
  %588 = getelementptr inbounds %struct.gv, ptr %587, i64 0, i32 3
  %589 = load ptr, ptr %588, align 8, !tbaa !199
  %590 = getelementptr inbounds %struct.gp, ptr %589, i64 0, i32 6
  %591 = load ptr, ptr %590, align 8, !tbaa !261
  call fastcc void @S_SvREFCNT_dec(ptr noundef %591) #6
  %592 = getelementptr inbounds %struct.block, ptr %574, i64 0, i32 8, i32 0, i32 2
  %593 = load ptr, ptr %592, align 8, !tbaa !199
  %594 = load ptr, ptr @PL_defgv, align 8, !tbaa !85
  %595 = getelementptr inbounds %struct.gv, ptr %594, i64 0, i32 3
  %596 = load ptr, ptr %595, align 8, !tbaa !199
  %597 = getelementptr inbounds %struct.gp, ptr %596, i64 0, i32 6
  store ptr %593, ptr %597, align 8, !tbaa !261
  %598 = getelementptr inbounds %struct.block, ptr %574, i64 0, i32 8, i32 0, i32 3
  %599 = load ptr, ptr %598, align 8, !tbaa !199
  %600 = getelementptr inbounds %struct.av, ptr %599, i64 0, i32 2
  %601 = load i32, ptr %600, align 4, !tbaa !213
  %602 = and i32 %601, 1073741824
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %622, label %604

604:                                              ; preds = %586
  %605 = load ptr, ptr %599, align 8, !tbaa !215
  %606 = getelementptr inbounds %struct.xpvav, ptr %605, i64 0, i32 2
  %607 = load i64, ptr %606, align 8, !tbaa !216
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %599) #6
  %608 = call ptr @Perl_newSV_type(i32 noundef 11) #8
  store ptr %608, ptr %598, align 8, !tbaa !199
  call void @Perl_av_extend(ptr noundef %608, i64 noundef %607) #8
  %609 = load ptr, ptr %598, align 8, !tbaa !199
  %610 = getelementptr inbounds %struct.av, ptr %609, i64 0, i32 2
  %611 = load i32, ptr %610, align 4, !tbaa !213
  %612 = and i32 %611, -1073741825
  store i32 %612, ptr %610, align 4, !tbaa !213
  %613 = load ptr, ptr %598, align 8, !tbaa !199
  %614 = getelementptr inbounds %struct.av, ptr %613, i64 0, i32 2
  %615 = load i32, ptr %614, align 4, !tbaa !213
  %616 = or i32 %615, -2147483648
  store i32 %616, ptr %614, align 4, !tbaa !213
  %617 = load ptr, ptr %598, align 8, !tbaa !199
  %618 = getelementptr inbounds %struct.block, ptr %574, i64 0, i32 8, i32 0, i32 5
  %619 = load ptr, ptr %618, align 8, !tbaa !199
  %620 = getelementptr inbounds %struct.av, ptr %619, i64 0, i32 3
  %621 = load ptr, ptr %620, align 8, !tbaa !199
  store ptr %617, ptr %621, align 8, !tbaa !85
  br label %643

622:                                              ; preds = %586
  %623 = getelementptr inbounds %struct.av, ptr %599, i64 0, i32 3
  %624 = load ptr, ptr %623, align 8, !tbaa !199
  %625 = load ptr, ptr %599, align 8, !tbaa !215
  %626 = getelementptr inbounds %struct.xpvav, ptr %625, i64 0, i32 4
  %627 = load ptr, ptr %626, align 8, !tbaa !262
  %628 = ptrtoint ptr %624 to i64
  %629 = ptrtoint ptr %627 to i64
  %630 = sub i64 %628, %629
  %631 = ashr exact i64 %630, 3
  %632 = getelementptr inbounds %struct.xpvav, ptr %625, i64 0, i32 3
  %633 = load i64, ptr %632, align 8, !tbaa !250
  %634 = add nsw i64 %631, %633
  store i64 %634, ptr %632, align 8, !tbaa !250
  %635 = load ptr, ptr %598, align 8, !tbaa !199
  %636 = load ptr, ptr %635, align 8, !tbaa !215
  %637 = getelementptr inbounds %struct.xpvav, ptr %636, i64 0, i32 4
  %638 = load ptr, ptr %637, align 8, !tbaa !262
  %639 = getelementptr inbounds %struct.av, ptr %635, i64 0, i32 3
  store ptr %638, ptr %639, align 8, !tbaa !199
  %640 = load ptr, ptr %598, align 8, !tbaa !199
  %641 = load ptr, ptr %640, align 8, !tbaa !215
  %642 = getelementptr inbounds %struct.xpvav, ptr %641, i64 0, i32 2
  store i64 -1, ptr %642, align 8, !tbaa !216
  br label %643

643:                                              ; preds = %581, %622, %604, %567
  %644 = getelementptr inbounds %struct.block, ptr %574, i64 0, i32 8, i32 0, i32 1
  %645 = load ptr, ptr %644, align 8, !tbaa !199
  %646 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !185
  %647 = load ptr, ptr @PL_scopestack, align 8, !tbaa !85
  %648 = getelementptr inbounds %struct.block, ptr %574, i64 0, i32 6
  %649 = load i32, ptr %648, align 4, !tbaa !199
  %650 = sext i32 %649 to i64
  %651 = getelementptr i32, ptr %647, i64 %650
  %652 = getelementptr i32, ptr %651, i64 -1
  %653 = load i32, ptr %652, align 4, !tbaa !185
  %654 = icmp sgt i32 %646, %653
  br i1 %654, label %655, label %656, !prof !256

655:                                              ; preds = %643
  call void @Perl_leave_scope(i32 noundef %653) #8
  br label %656

656:                                              ; preds = %655, %643
  %657 = icmp eq ptr %645, null
  br i1 %657, label %662, label %658, !prof !258

658:                                              ; preds = %656
  %659 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %645) #6
  store i32 %576, ptr %659, align 4, !tbaa !185
  %660 = icmp eq i32 %576, 0
  %661 = select i1 %660, ptr %645, ptr null, !prof !256
  br label %662

662:                                              ; preds = %658, %656
  %663 = phi ptr [ null, %656 ], [ %661, %658 ]
  call fastcc void @S_SvREFCNT_dec(ptr noundef %663) #6
  br label %664

664:                                              ; preds = %662, %560
  %665 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !85
  %666 = getelementptr inbounds %struct.stackinfo, ptr %665, i64 0, i32 1
  %667 = load ptr, ptr %666, align 8, !tbaa !254
  %668 = getelementptr inbounds %struct.stackinfo, ptr %665, i64 0, i32 4
  %669 = load i32, ptr %668, align 8, !tbaa !248
  %670 = add nsw i32 %669, -1
  store i32 %670, ptr %668, align 8, !tbaa !248
  %671 = sext i32 %669 to i64
  %672 = getelementptr inbounds %struct.context, ptr %667, i64 %671
  %673 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %674 = getelementptr inbounds %struct.block, ptr %672, i64 0, i32 3
  %675 = load i32, ptr %674, align 4, !tbaa !199
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds ptr, ptr %673, i64 %676
  %678 = getelementptr inbounds %struct.block, ptr %672, i64 0, i32 4
  %679 = load ptr, ptr %678, align 8, !tbaa !199
  store ptr %679, ptr @PL_curcop, align 8, !tbaa !85
  %680 = load ptr, ptr @PL_markstack, align 8, !tbaa !85
  %681 = getelementptr inbounds %struct.block, ptr %672, i64 0, i32 5
  %682 = load i32, ptr %681, align 8, !tbaa !199
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32, ptr %680, i64 %683
  store ptr %684, ptr @PL_markstack_ptr, align 8, !tbaa !85
  %685 = getelementptr inbounds %struct.block, ptr %672, i64 0, i32 6
  %686 = load i32, ptr %685, align 4, !tbaa !199
  store i32 %686, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %687 = getelementptr inbounds %struct.block, ptr %672, i64 0, i32 7
  %688 = load ptr, ptr %687, align 8, !tbaa !199
  store ptr %688, ptr @PL_curpm, align 8, !tbaa !85
  store ptr %677, ptr @PL_stack_sp, align 8, !tbaa !85
  %689 = getelementptr inbounds %struct.stackinfo, ptr %665, i64 0, i32 2
  %690 = load ptr, ptr %689, align 8, !tbaa !246
  %691 = icmp eq ptr %690, null
  br i1 %691, label %692, label %694, !prof !245

692:                                              ; preds = %664
  call void @Perl_croak_popstack() #8
  %693 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  br label %694

694:                                              ; preds = %664, %692
  %695 = phi ptr [ %673, %664 ], [ %693, %692 ]
  %696 = ptrtoint ptr %677 to i64
  %697 = ptrtoint ptr %695 to i64
  %698 = sub i64 %696, %697
  %699 = ashr exact i64 %698, 3
  %700 = load ptr, ptr @PL_curstack, align 8, !tbaa !85
  %701 = load ptr, ptr %700, align 8, !tbaa !215
  %702 = getelementptr inbounds %struct.xpvav, ptr %701, i64 0, i32 2
  store i64 %699, ptr %702, align 8, !tbaa !216
  %703 = load ptr, ptr %690, align 8, !tbaa !249
  %704 = getelementptr inbounds %struct.av, ptr %703, i64 0, i32 3
  %705 = load ptr, ptr %704, align 8, !tbaa !199
  store ptr %705, ptr @PL_stack_base, align 8, !tbaa !85
  %706 = load ptr, ptr %690, align 8, !tbaa !249
  %707 = load ptr, ptr %706, align 8, !tbaa !215
  %708 = getelementptr inbounds %struct.xpvav, ptr %707, i64 0, i32 3
  %709 = load i64, ptr %708, align 8, !tbaa !250
  %710 = getelementptr inbounds ptr, ptr %705, i64 %709
  store ptr %710, ptr @PL_stack_max, align 8, !tbaa !85
  %711 = load ptr, ptr %690, align 8, !tbaa !249
  %712 = load ptr, ptr %711, align 8, !tbaa !215
  %713 = getelementptr inbounds %struct.xpvav, ptr %712, i64 0, i32 2
  %714 = load i64, ptr %713, align 8, !tbaa !216
  %715 = getelementptr inbounds ptr, ptr %705, i64 %714
  store ptr %715, ptr @PL_stack_sp, align 8, !tbaa !85
  %716 = load ptr, ptr %690, align 8, !tbaa !249
  store ptr %716, ptr @PL_curstack, align 8, !tbaa !85
  store ptr %690, ptr @PL_curstackinfo, align 8, !tbaa !85
  %717 = load ptr, ptr @PL_top_env, align 8, !tbaa !85
  %718 = getelementptr inbounds %struct.jmpenv, ptr %717, i64 0, i32 3
  store i8 %377, ptr %718, align 4, !tbaa !237
  br label %762

719:                                              ; preds = %371
  %720 = load ptr, ptr @PL_stack_max, align 8, !tbaa !85
  %721 = ptrtoint ptr %720 to i64
  %722 = ptrtoint ptr %261 to i64
  %723 = sub i64 %721, %722
  %724 = icmp slt i64 %723, 160
  br i1 %724, label %725, label %733, !prof !263

725:                                              ; preds = %719
  %726 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %727 = ptrtoint ptr %260 to i64
  %728 = ptrtoint ptr %726 to i64
  %729 = sub i64 %727, %728
  %730 = call ptr @Perl_stack_grow(ptr noundef %261, ptr noundef %261, i64 noundef 20) #8
  %731 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %732 = getelementptr inbounds i8, ptr %731, i64 %729
  br label %733

733:                                              ; preds = %719, %725
  %734 = phi ptr [ %732, %725 ], [ %260, %719 ]
  br i1 %255, label %738, label %735, !prof !264

735:                                              ; preds = %733
  %736 = getelementptr inbounds %struct.av, ptr %256, i64 0, i32 3
  %737 = load ptr, ptr %736, align 8, !tbaa !199
  br label %742

738:                                              ; preds = %733
  %739 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %740 = getelementptr inbounds ptr, ptr %739, i64 %8
  %741 = getelementptr inbounds ptr, ptr %740, i64 1
  br label %742

742:                                              ; preds = %738, %735
  %743 = phi ptr [ %737, %735 ], [ %741, %738 ]
  %744 = and i32 %31, 1
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %757, label %746, !prof !264

746:                                              ; preds = %742
  %747 = and i32 %31, 2
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %749, label %751, !prof !263

749:                                              ; preds = %746
  %750 = icmp eq i32 %361, 0
  br i1 %750, label %754, label %751, !prof !265

751:                                              ; preds = %749, %746
  %752 = icmp eq i32 %362, 0
  %753 = select i1 %752, ptr @S_sv_i_ncmp, ptr @S_amagic_i_ncmp
  br label %760

754:                                              ; preds = %749
  %755 = icmp eq i32 %362, 0
  %756 = select i1 %755, ptr @S_sv_ncmp, ptr @S_amagic_ncmp
  br label %760

757:                                              ; preds = %742
  %758 = icmp eq i32 %362, 0
  %759 = select i1 %758, ptr @Perl_sv_cmp, ptr @S_amagic_cmp
  br label %760

760:                                              ; preds = %751, %754, %757
  %761 = phi ptr [ %759, %757 ], [ %753, %751 ], [ %756, %754 ]
  call void @Perl_sortsv_flags(ptr noundef %743, i64 noundef %363, ptr noundef nonnull %761, i32 noundef %48) #6
  br label %762

762:                                              ; preds = %760, %694
  %763 = phi ptr [ %564, %694 ], [ %743, %760 ]
  %764 = phi ptr [ %260, %694 ], [ %734, %760 ]
  %765 = and i32 %31, 4
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %779, label %767, !prof !266

767:                                              ; preds = %762
  %768 = getelementptr inbounds ptr, ptr %763, i64 %363
  %769 = getelementptr inbounds ptr, ptr %768, i64 -1
  %770 = icmp ult ptr %763, %769
  br i1 %770, label %771, label %779, !prof !267

771:                                              ; preds = %767, %771
  %772 = phi ptr [ %777, %771 ], [ %769, %767 ]
  %773 = phi ptr [ %776, %771 ], [ %763, %767 ]
  %774 = load ptr, ptr %773, align 8, !tbaa !85
  %775 = load ptr, ptr %772, align 8, !tbaa !85
  %776 = getelementptr inbounds ptr, ptr %773, i64 1
  store ptr %775, ptr %773, align 8, !tbaa !85
  store ptr %774, ptr %772, align 8, !tbaa !85
  %777 = getelementptr inbounds ptr, ptr %772, i64 -1
  %778 = icmp ult ptr %776, %777
  br i1 %778, label %771, label %779, !prof !268, !llvm.loop !269

779:                                              ; preds = %771, %767, %762, %369
  %780 = phi ptr [ %260, %369 ], [ %764, %762 ], [ %764, %767 ], [ %764, %771 ]
  br i1 %255, label %785, label %781, !prof !191

781:                                              ; preds = %779
  %782 = getelementptr inbounds %struct.av, ptr %256, i64 0, i32 2
  %783 = load i32, ptr %782, align 4, !tbaa !213
  %784 = and i32 %783, -134283265
  store i32 %784, ptr %782, align 4, !tbaa !213
  br label %817

785:                                              ; preds = %779
  %786 = icmp eq ptr %256, null
  br i1 %786, label %817, label %787, !prof !191

787:                                              ; preds = %785
  %788 = getelementptr inbounds ptr, ptr %780, i64 1
  %789 = icmp sgt i64 %363, 0
  br i1 %789, label %790, label %816

790:                                              ; preds = %787, %790
  %791 = phi i64 [ %795, %790 ], [ 0, %787 ]
  %792 = getelementptr inbounds ptr, ptr %788, i64 %791
  %793 = load ptr, ptr %792, align 8, !tbaa !85
  %794 = call ptr @Perl_newSVsv(ptr noundef %793) #8
  store ptr %794, ptr %792, align 8, !tbaa !85
  %795 = add nuw nsw i64 %791, 1
  %796 = icmp eq i64 %795, %363
  br i1 %796, label %797, label %790, !llvm.loop !270

797:                                              ; preds = %790
  call void @Perl_av_clear(ptr noundef nonnull %256) #8
  call void @Perl_av_extend(ptr noundef nonnull %256, i64 noundef %363) #8
  br i1 %789, label %798, label %817

798:                                              ; preds = %797, %813
  %799 = phi i64 [ %814, %813 ], [ 0, %797 ]
  %800 = getelementptr inbounds ptr, ptr %788, i64 %799
  %801 = load ptr, ptr %800, align 8, !tbaa !85
  %802 = call ptr @Perl_av_store(ptr noundef nonnull %256, i64 noundef %799, ptr noundef %801) #8
  %803 = getelementptr inbounds %struct.sv, ptr %801, i64 0, i32 2
  %804 = load i32, ptr %803, align 4, !tbaa !222
  %805 = and i32 %804, 4194304
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %809, label %807

807:                                              ; preds = %798
  %808 = call i32 @Perl_mg_set(ptr noundef nonnull %801) #8
  br label %809

809:                                              ; preds = %807, %798
  %810 = icmp eq ptr %802, null
  br i1 %810, label %811, label %813

811:                                              ; preds = %809
  %812 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %801) #8
  br label %813

813:                                              ; preds = %811, %809
  %814 = add nuw nsw i64 %799, 1
  %815 = icmp eq i64 %814, %363
  br i1 %815, label %817, label %798, !llvm.loop !271

816:                                              ; preds = %787
  call void @Perl_av_clear(ptr noundef nonnull %256) #8
  call void @Perl_av_extend(ptr noundef nonnull %256, i64 noundef %363) #8
  br label %817

817:                                              ; preds = %813, %816, %797, %785, %781
  %818 = phi i64 [ %363, %785 ], [ 0, %781 ], [ %363, %797 ], [ %363, %816 ], [ %363, %813 ]
  call void @Perl_pop_scope() #8
  %819 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %820 = getelementptr inbounds ptr, ptr %819, i64 %8
  %821 = getelementptr inbounds ptr, ptr %820, i64 %818
  store ptr %821, ptr @PL_stack_sp, align 8, !tbaa !85
  br label %822

822:                                              ; preds = %168, %817, %58
  %823 = phi ptr [ %62, %58 ], [ %28, %817 ], [ %169, %168 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #7
  ret ptr %823
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !81 !PGOFuncName !272 {
  %2 = load ptr, ptr %0, align 8, !tbaa !200
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !202
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #8
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !199
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @Perl_gv_autoload_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 !prof !273 !PGOFuncName !274 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !275

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !257
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !257
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_cxinc() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !276 !PGOFuncName !277 {
  %2 = load ptr, ptr %0, align 8, !tbaa !200
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @Perl_was_lvalue_sub() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_sortcv_xsub(ptr noundef %0, ptr noundef %1) #0 !prof !81 !PGOFuncName !278 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !185
  %4 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %5 = load ptr, ptr @PL_sortcop, align 8, !tbaa !85
  %6 = load ptr, ptr @PL_curpm, align 8, !tbaa !85
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %8 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !85
  %9 = getelementptr inbounds i32, ptr %8, i64 1
  store ptr %9, ptr @PL_markstack_ptr, align 8, !tbaa !85
  %10 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !85
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = tail call ptr @Perl_markstack_grow() #8
  %14 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %14, %12 ], [ %7, %2 ]
  %17 = phi ptr [ %13, %12 ], [ %9, %2 ]
  %18 = ptrtoint ptr %7 to i64
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 3
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr %17, align 4, !tbaa !185
  %23 = load ptr, ptr @PL_stack_max, align 8, !tbaa !85
  %24 = ptrtoint ptr %23 to i64
  %25 = sub i64 %24, %18
  %26 = icmp slt i64 %25, 16
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_stack_grow(ptr noundef %7, ptr noundef %7, i64 noundef 2) #8
  br label %29

29:                                               ; preds = %15, %27
  %30 = phi ptr [ %28, %27 ], [ %7, %15 ]
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  store ptr %0, ptr %31, align 8, !tbaa !85
  %32 = getelementptr inbounds ptr, ptr %30, i64 2
  store ptr %1, ptr %32, align 8, !tbaa !85
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !85
  %33 = load ptr, ptr %5, align 8, !tbaa !200
  %34 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !199
  tail call void %35(ptr noundef nonnull %5) #8
  %36 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !85
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #8
  %41 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !85
  br label %42

42:                                               ; preds = %40, %29
  %43 = phi ptr [ %41, %40 ], [ %36, %29 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !85
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !222
  %47 = and i32 %46, 2097408
  %48 = icmp eq i32 %47, 256
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load ptr, ptr %44, align 8, !tbaa !228
  %51 = getelementptr inbounds %struct.xpviv, ptr %50, i64 0, i32 4
  %52 = load i64, ptr %51, align 8, !tbaa !199
  br label %55

53:                                               ; preds = %42
  %54 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %44, i32 noundef 2) #8
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i64 [ %52, %49 ], [ %54, %53 ]
  %57 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %58 = icmp sgt i32 %57, %4
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %59
  tail call void @Perl_pop_scope() #8
  %60 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %61 = icmp sgt i32 %60, %4
  br i1 %61, label %59, label %62, !llvm.loop !279

62:                                               ; preds = %59, %55
  %63 = trunc i64 %56 to i32
  tail call void @Perl_leave_scope(i32 noundef %3) #8
  store ptr %6, ptr @PL_curpm, align 8, !tbaa !85
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_sortcv_stacked(ptr noundef %0, ptr noundef %1) #0 !prof !81 !PGOFuncName !280 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !185
  %4 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %5 = load ptr, ptr @PL_defgv, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.gv, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !199
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !261
  %10 = load ptr, ptr @PL_curpm, align 8, !tbaa !85
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !85
  %12 = load ptr, ptr @PL_curcop, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.av, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !213
  %15 = and i32 %14, 1073741824
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  tail call void @Perl_av_clear(ptr noundef nonnull %9) #8
  %18 = load i32, ptr %13, align 4, !tbaa !213
  %19 = and i32 %18, 1073741823
  %20 = or disjoint i32 %19, -2147483648
  store i32 %20, ptr %13, align 4, !tbaa !213
  br label %21

21:                                               ; preds = %17, %2
  %22 = load ptr, ptr %9, align 8, !tbaa !215
  %23 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !250
  %25 = icmp slt i64 %24, 1
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !262
  %29 = getelementptr inbounds %struct.av, ptr %9, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !199
  %31 = icmp eq ptr %30, %28
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = ptrtoint ptr %30 to i64
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 3
  %37 = add nsw i64 %36, %24
  store i64 %37, ptr %23, align 8, !tbaa !250
  store ptr %28, ptr %29, align 8, !tbaa !199
  %38 = load i64, ptr %23, align 8, !tbaa !250
  %39 = icmp slt i64 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %26, %32
  store i64 1, ptr %23, align 8, !tbaa !250
  %41 = tail call ptr @Perl_safesysrealloc(ptr noundef %28, i64 noundef 16) #8
  store ptr %41, ptr %29, align 8, !tbaa !199
  %42 = load ptr, ptr %9, align 8, !tbaa !215
  %43 = getelementptr inbounds %struct.xpvav, ptr %42, i64 0, i32 4
  store ptr %41, ptr %43, align 8, !tbaa !262
  br label %44

44:                                               ; preds = %32, %40, %21
  %45 = phi ptr [ %22, %32 ], [ %42, %40 ], [ %22, %21 ]
  %46 = getelementptr inbounds %struct.xpvav, ptr %45, i64 0, i32 2
  store i64 1, ptr %46, align 8, !tbaa !216
  %47 = getelementptr inbounds %struct.av, ptr %9, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !199
  store ptr %0, ptr %48, align 8, !tbaa !85
  %49 = load ptr, ptr %47, align 8, !tbaa !199
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %1, ptr %50, align 8, !tbaa !85
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !85
  %52 = load ptr, ptr @PL_sortcop, align 8, !tbaa !85
  store ptr %52, ptr @PL_op, align 8, !tbaa !85
  %53 = load ptr, ptr @PL_runops, align 8, !tbaa !85
  %54 = tail call i32 %53() #8
  store ptr %11, ptr @PL_op, align 8, !tbaa !85
  store ptr %12, ptr @PL_curcop, align 8, !tbaa !85
  %55 = load ptr, ptr @PL_curpad, align 8, !tbaa !85
  store ptr null, ptr @PL_curpad, align 8, !tbaa !85
  %56 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !85
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %44
  %61 = load i32, ptr getelementptr inbounds (%struct.sv, ptr @PL_sv_undef, i64 0, i32 2), align 4, !tbaa !222
  %62 = and i32 %61, 2097408
  %63 = icmp eq i32 %62, 256
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load ptr, ptr @PL_sv_undef, align 8, !tbaa !228
  %66 = getelementptr inbounds %struct.xpviv, ptr %65, i64 0, i32 4
  %67 = load i64, ptr %66, align 8, !tbaa !199
  br label %82

68:                                               ; preds = %60
  %69 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #8
  br label %82

70:                                               ; preds = %44
  %71 = load ptr, ptr %56, align 8, !tbaa !85
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !222
  %74 = and i32 %73, 2097408
  %75 = icmp eq i32 %74, 256
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load ptr, ptr %71, align 8, !tbaa !228
  %78 = getelementptr inbounds %struct.xpviv, ptr %77, i64 0, i32 4
  %79 = load i64, ptr %78, align 8, !tbaa !199
  br label %82

80:                                               ; preds = %70
  %81 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %71, i32 noundef 2) #8
  br label %82

82:                                               ; preds = %76, %80, %64, %68
  %83 = phi i64 [ %67, %64 ], [ %69, %68 ], [ %79, %76 ], [ %81, %80 ]
  store ptr %55, ptr @PL_curpad, align 8, !tbaa !85
  %84 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %85 = icmp sgt i32 %84, %4
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %86
  tail call void @Perl_pop_scope() #8
  %87 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %88 = icmp sgt i32 %87, %4
  br i1 %88, label %86, label %89, !llvm.loop !281

89:                                               ; preds = %86, %82
  %90 = trunc i64 %83 to i32
  tail call void @Perl_leave_scope(i32 noundef %3) #8
  store ptr %10, ptr @PL_curpm, align 8, !tbaa !85
  ret i32 %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_sortcv(ptr noundef %0, ptr noundef %1) #0 !prof !282 !PGOFuncName !283 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !185
  %4 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %5 = load ptr, ptr @PL_curpm, align 8, !tbaa !85
  %6 = load ptr, ptr @PL_op, align 8, !tbaa !85
  %7 = load ptr, ptr @PL_curcop, align 8, !tbaa !85
  %8 = load ptr, ptr @PL_firstgv, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.gv, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !199
  store ptr %0, ptr %10, align 8, !tbaa !284
  %11 = load ptr, ptr @PL_secondgv, align 8, !tbaa !85
  %12 = getelementptr inbounds %struct.gv, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !199
  store ptr %1, ptr %13, align 8, !tbaa !284
  %14 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !85
  %15 = load ptr, ptr @PL_sortcop, align 8, !tbaa !85
  store ptr %15, ptr @PL_op, align 8, !tbaa !85
  %16 = load ptr, ptr @PL_runops, align 8, !tbaa !85
  %17 = tail call i32 %16() #8
  store ptr %6, ptr @PL_op, align 8, !tbaa !85
  store ptr %7, ptr @PL_curcop, align 8, !tbaa !85
  %18 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !85
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %24, !prof !285

22:                                               ; preds = %2
  %23 = load ptr, ptr %18, align 8, !tbaa !85
  br label %24

24:                                               ; preds = %2, %22
  %25 = phi ptr [ %23, %22 ], [ @PL_sv_undef, %2 ]
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !222
  %28 = and i32 %27, 768
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %27, 2097152
  %31 = icmp eq i32 %30, 0
  %32 = and i1 %29, %31
  br i1 %32, label %33, label %42, !prof !286

33:                                               ; preds = %24
  %34 = and i32 %27, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !287

36:                                               ; preds = %33
  %37 = load ptr, ptr %25, align 8, !tbaa !228
  %38 = getelementptr inbounds %struct.xpviv, ptr %37, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !199
  br label %54

40:                                               ; preds = %33
  %41 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %25, i32 noundef 2) #8
  br label %54

42:                                               ; preds = %24
  tail call void @Perl_push_scope() #8
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_curpad) #8
  store ptr null, ptr @PL_curpad, align 8, !tbaa !85
  %43 = load i32, ptr %26, align 4, !tbaa !222
  %44 = and i32 %43, 2097408
  %45 = icmp eq i32 %44, 256
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load ptr, ptr %25, align 8, !tbaa !228
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !199
  br label %52

50:                                               ; preds = %42
  %51 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %25, i32 noundef 2) #8
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  tail call void @Perl_pop_scope() #8
  br label %54

54:                                               ; preds = %36, %40, %52
  %55 = phi i64 [ %53, %52 ], [ %39, %36 ], [ %41, %40 ]
  %56 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %57 = icmp sgt i32 %56, %4
  br i1 %57, label %58, label %61, !prof !288

58:                                               ; preds = %54, %58
  tail call void @Perl_pop_scope() #8
  %59 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !185
  %60 = icmp sgt i32 %59, %4
  br i1 %60, label %58, label %61, !prof !289, !llvm.loop !290

61:                                               ; preds = %58, %54
  %62 = trunc i64 %55 to i32
  tail call void @Perl_leave_scope(i32 noundef %3) #8
  store ptr %5, ptr @PL_curpm, align 8, !tbaa !85
  ret i32 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !291 !PGOFuncName !292 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !256

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !257
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !258

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !257
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #8
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 !prof !81 !PGOFuncName !293 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !257
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !257
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #8
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_popstack() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_amagic_i_ncmp(ptr noundef %0, ptr noundef %1) #0 !prof !81 !PGOFuncName !294 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !222
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !222
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !228
  %16 = load ptr, ptr %15, align 8, !tbaa !229
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !231
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14, %7, %2
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !222
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !199
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !222
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !228
  %35 = load ptr, ptr %34, align 8, !tbaa !229
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !231
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %14, %33
  %41 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 58, i32 noundef 0) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !222
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %41, align 8, !tbaa !228
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !199
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %52, 0
  %54 = sext i1 %53 to i32
  %55 = icmp slt i32 %52, 1
  %56 = select i1 %55, i32 %54, i32 1
  br label %74

57:                                               ; preds = %43
  %58 = and i32 %45, 2097664
  %59 = icmp eq i32 %58, 512
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %41, align 8, !tbaa !228
  %62 = getelementptr inbounds %struct.xpvnv, ptr %61, i64 0, i32 5
  %63 = load double, ptr %62, align 8, !tbaa !199
  br label %66

64:                                               ; preds = %57
  %65 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %41, i32 noundef 2) #8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi double [ %63, %60 ], [ %65, %64 ]
  %68 = fcmp ogt double %67, 0.000000e+00
  %69 = fcmp une double %67, 0.000000e+00
  %70 = sext i1 %69 to i32
  %71 = select i1 %68, i32 1, i32 %70
  br label %74

72:                                               ; preds = %21, %26, %33, %40
  %73 = tail call i32 @S_sv_i_ncmp(ptr noundef nonnull %0, ptr noundef %1) #6, !range !295
  br label %74

74:                                               ; preds = %72, %66, %48
  %75 = phi i32 [ %56, %48 ], [ %71, %66 ], [ %73, %72 ]
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_sv_i_ncmp(ptr noundef %0, ptr noundef %1) #0 !prof !81 !PGOFuncName !296 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !222
  %5 = and i32 %4, 2097408
  %6 = icmp eq i32 %5, 256
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !228
  %9 = getelementptr inbounds %struct.xpviv, ptr %8, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !199
  br label %13

11:                                               ; preds = %2
  %12 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #8
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i64 [ %10, %7 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !222
  %17 = and i32 %16, 2097408
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load ptr, ptr %1, align 8, !tbaa !228
  %21 = getelementptr inbounds %struct.xpviv, ptr %20, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !199
  br label %25

23:                                               ; preds = %13
  %24 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1, i32 noundef 2) #8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i64 [ %22, %19 ], [ %24, %23 ]
  %27 = icmp slt i64 %14, %26
  %28 = icmp sgt i64 %14, %26
  %29 = zext i1 %28 to i32
  %30 = select i1 %27, i32 -1, i32 %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_amagic_ncmp(ptr noundef %0, ptr noundef %1) #0 !prof !81 !PGOFuncName !297 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !222
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !222
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !228
  %16 = load ptr, ptr %15, align 8, !tbaa !229
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !231
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14, %7, %2
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !222
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !199
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !222
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !228
  %35 = load ptr, ptr %34, align 8, !tbaa !229
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !231
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %14, %33
  %41 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 58, i32 noundef 0) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !222
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %41, align 8, !tbaa !228
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !199
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %52, 0
  %54 = sext i1 %53 to i32
  %55 = icmp slt i32 %52, 1
  %56 = select i1 %55, i32 %54, i32 1
  br label %74

57:                                               ; preds = %43
  %58 = and i32 %45, 2097664
  %59 = icmp eq i32 %58, 512
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %41, align 8, !tbaa !228
  %62 = getelementptr inbounds %struct.xpvnv, ptr %61, i64 0, i32 5
  %63 = load double, ptr %62, align 8, !tbaa !199
  br label %66

64:                                               ; preds = %57
  %65 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %41, i32 noundef 2) #8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi double [ %63, %60 ], [ %65, %64 ]
  %68 = fcmp ogt double %67, 0.000000e+00
  %69 = fcmp une double %67, 0.000000e+00
  %70 = sext i1 %69 to i32
  %71 = select i1 %68, i32 1, i32 %70
  br label %74

72:                                               ; preds = %21, %26, %33, %40
  %73 = tail call i32 @S_sv_ncmp(ptr noundef nonnull %0, ptr noundef %1) #6, !range !295
  br label %74

74:                                               ; preds = %72, %66, %48
  %75 = phi i32 [ %56, %48 ], [ %71, %66 ], [ %73, %72 ]
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_sv_ncmp(ptr noundef %0, ptr noundef %1) #0 !prof !81 !PGOFuncName !298 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !222
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !228
  %9 = getelementptr inbounds %struct.xpvnv, ptr %8, i64 0, i32 5
  %10 = load double, ptr %9, align 8, !tbaa !199
  br label %21

11:                                               ; preds = %2
  %12 = and i32 %4, -2147483392
  %13 = icmp eq i32 %12, 256
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !228
  %16 = getelementptr inbounds %struct.xpviv, ptr %15, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !199
  %18 = sitofp i64 %17 to double
  br label %21

19:                                               ; preds = %11
  %20 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %0, i32 noundef 2) #8
  br label %21

21:                                               ; preds = %14, %19, %7
  %22 = phi double [ %10, %7 ], [ %18, %14 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !222
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %1, align 8, !tbaa !228
  %29 = getelementptr inbounds %struct.xpvnv, ptr %28, i64 0, i32 5
  %30 = load double, ptr %29, align 8, !tbaa !199
  br label %41

31:                                               ; preds = %21
  %32 = and i32 %24, -2147483392
  %33 = icmp eq i32 %32, 256
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load ptr, ptr %1, align 8, !tbaa !228
  %36 = getelementptr inbounds %struct.xpviv, ptr %35, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !199
  %38 = sitofp i64 %37 to double
  br label %41

39:                                               ; preds = %31
  %40 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %1, i32 noundef 2) #8
  br label %41

41:                                               ; preds = %34, %39, %27
  %42 = phi double [ %30, %27 ], [ %38, %34 ], [ %40, %39 ]
  %43 = fcmp uno double %22, 0.000000e+00
  %44 = fcmp uno double %42, 0.000000e+00
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 41) #8
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  tail call void @Perl_report_uninit(ptr noundef null) #8
  br label %54

49:                                               ; preds = %41
  %50 = fcmp olt double %22, %42
  %51 = fcmp ogt double %22, %42
  %52 = zext i1 %51 to i32
  %53 = select i1 %50, i32 -1, i32 %52
  br label %54

54:                                               ; preds = %46, %48, %49
  %55 = phi i32 [ %53, %49 ], [ 0, %48 ], [ 0, %46 ]
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_amagic_cmp(ptr noundef %0, ptr noundef %1) #0 !prof !81 !PGOFuncName !299 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !222
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !222
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !228
  %16 = load ptr, ptr %15, align 8, !tbaa !229
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !231
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14, %7, %2
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !222
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !199
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !222
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !228
  %35 = load ptr, ptr %34, align 8, !tbaa !229
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !231
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %14, %33
  %41 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 59, i32 noundef 0) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !222
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %41, align 8, !tbaa !228
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !199
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %52, 0
  %54 = sext i1 %53 to i32
  %55 = icmp slt i32 %52, 1
  %56 = select i1 %55, i32 %54, i32 1
  br label %74

57:                                               ; preds = %43
  %58 = and i32 %45, 2097664
  %59 = icmp eq i32 %58, 512
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %41, align 8, !tbaa !228
  %62 = getelementptr inbounds %struct.xpvnv, ptr %61, i64 0, i32 5
  %63 = load double, ptr %62, align 8, !tbaa !199
  br label %66

64:                                               ; preds = %57
  %65 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %41, i32 noundef 2) #8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi double [ %63, %60 ], [ %65, %64 ]
  %68 = fcmp ogt double %67, 0.000000e+00
  %69 = fcmp une double %67, 0.000000e+00
  %70 = sext i1 %69 to i32
  %71 = select i1 %68, i32 1, i32 %70
  br label %74

72:                                               ; preds = %21, %26, %33, %40
  %73 = tail call i32 @Perl_sv_cmp_flags(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2) #8
  br label %74

74:                                               ; preds = %72, %66, %48
  %75 = phi i32 [ %56, %48 ], [ %71, %66 ], [ %73, %72 ]
  ret i32 %75
}

; Function Attrs: optsize
declare i32 @Perl_sv_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_report_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_cmp_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!80}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!36 = !{ptr @Perl_sortsv_flags, ptr @S_qsortsv, i64 1}
!37 = !{ptr @Perl_sortsv_flags, ptr @S_mergesortsv, i64 18551}
!38 = !{ptr @S_mergesortsv, ptr @Perl_safesysmalloc, i64 6271}
!39 = !{ptr @S_mergesortsv, ptr @dynprep, i64 18551}
!40 = !{ptr @S_mergesortsv, ptr @Perl_safesysfree, i64 6271}
!41 = !{ptr @Perl_pp_sort, ptr @Perl_block_gimme, i64 6448}
!42 = !{ptr @Perl_pp_sort, ptr @Perl_push_scope, i64 19517}
!43 = !{ptr @Perl_pp_sort, ptr @Perl_save_vptr, i64 19517}
!44 = !{ptr @Perl_pp_sort, ptr @Perl_sv_2cv, i64 1012}
!45 = !{ptr @Perl_pp_sort, ptr @strcmp, i64 1}
!46 = !{ptr @Perl_pp_sort, ptr @S_CvGV, i64 1}
!47 = !{ptr @Perl_pp_sort, ptr @Perl_gv_autoload_pvn, i64 2}
!48 = !{ptr @Perl_pp_sort, ptr @Perl_av_fetch, i64 12}
!49 = !{ptr @Perl_pp_sort, ptr @Perl_sv_mortalcopy_flags, i64 1}
!50 = !{ptr @Perl_pp_sort, ptr @Perl_sv_2pv_flags, i64 1}
!51 = !{ptr @Perl_pp_sort, ptr @Perl_save_strlen, i64 129}
!52 = !{ptr @Perl_pp_sort, ptr @Perl_save_pushptr, i64 225}
!53 = !{ptr @Perl_pp_sort, ptr @Perl_new_stackinfo, i64 1}
!54 = !{ptr @Perl_pp_sort, ptr @Perl_save_generic_svref, i64 254}
!55 = !{ptr @Perl_pp_sort, ptr @Perl_gv_fetchpvn_flags, i64 254}
!56 = !{ptr @Perl_pp_sort, ptr @S_SvREFCNT_inc, i64 255}
!57 = !{ptr @Perl_pp_sort, ptr @Perl_save_sptr, i64 254}
!58 = !{ptr @Perl_pp_sort, ptr @Perl_cxinc, i64 1}
!59 = !{ptr @Perl_pp_sort, ptr @S_CvDEPTHp, i64 292}
!60 = !{ptr @Perl_pp_sort, ptr @Perl_was_lvalue_sub, i64 1}
!61 = !{ptr @Perl_pp_sort, ptr @Perl_pad_push, i64 1}
!62 = !{ptr @Perl_pp_sort, ptr @Perl_sortsv_flags, i64 18550}
!63 = !{ptr @Perl_pp_sort, ptr @S_SvREFCNT_dec, i64 50}
!64 = !{ptr @Perl_pp_sort, ptr @Perl_leave_scope, i64 48}
!65 = !{ptr @Perl_pp_sort, ptr @Perl_croak_popstack, i64 1}
!66 = !{ptr @Perl_pp_sort, ptr @Perl_stack_grow, i64 1}
!67 = !{ptr @Perl_pp_sort, ptr @Perl_newSVsv, i64 20}
!68 = !{ptr @Perl_pp_sort, ptr @Perl_av_clear, i64 1}
!69 = !{ptr @Perl_pp_sort, ptr @Perl_av_extend, i64 1}
!70 = !{ptr @Perl_pp_sort, ptr @Perl_av_store, i64 12}
!71 = !{ptr @Perl_pp_sort, ptr @Perl_mg_set, i64 6}
!72 = !{ptr @Perl_pp_sort, ptr @Perl_sv_2mortal, i64 5}
!73 = !{ptr @Perl_pp_sort, ptr @Perl_pop_scope, i64 19517}
!74 = !{ptr @S_sortcv, ptr @Perl_sv_2iv_flags, i64 2}
!75 = !{ptr @S_sortcv, ptr @Perl_push_scope, i64 2}
!76 = !{ptr @S_sortcv, ptr @Perl_save_vptr, i64 2}
!77 = !{ptr @S_sortcv, ptr @Perl_pop_scope, i64 3}
!78 = !{ptr @S_sortcv, ptr @Perl_leave_scope, i64 188894}
!79 = !{ptr @S_SvREFCNT_dec, ptr @Perl_sv_free2, i64 1}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = !{!"function_entry_count", i64 0}
!82 = !{!"function_entry_count", i64 18552}
!83 = !{!"branch_weights", i32 18553, i32 1}
!84 = !{!"pp_sort.c:S_qsortsv"}
!85 = !{!86, !86, i64 0}
!86 = !{!"any pointer", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = !{!"pp_sort.c:S_mergesortsv"}
!94 = !{!"branch_weights", i32 1, i32 18553}
!95 = !{!"branch_weights", i32 12282, i32 6272}
!96 = !{!97, !98, i64 8}
!97 = !{!"", !98, i64 0, !98, i64 8}
!98 = !{!"long", !87, i64 0}
!99 = !{!97, !98, i64 0}
!100 = !{!"branch_weights", i32 6179596, i32 18553}
!101 = !{!"branch_weights", i32 80821047, i32 6964195}
!102 = !{!"branch_weights", i32 10328785, i32 1}
!103 = !{!"branch_weights", i32 39885266, i32 37571191}
!104 = !{!"branch_weights", i32 8563574, i32 1}
!105 = !{!"branch_weights", i32 62671095, i32 6221787}
!106 = !{!"branch_weights", i32 13522, i32 8550054}
!107 = !{!"branch_weights", i32 3709, i32 9814}
!108 = !{!"branch_weights", i32 0, i32 62671095}
!109 = !{!"branch_weights", i32 123000402, i32 8563574}
!110 = !{!"branch_weights", i32 763217, i32 76693239}
!111 = !{!"branch_weights", i32 245398, i32 517820}
!112 = !{!"branch_weights", i32 0, i32 763217}
!113 = distinct !{!113, !90}
!114 = !{!"branch_weights", i32 37571191, i32 39885266}
!115 = !{!"branch_weights", i32 29025964, i32 37571191}
!116 = distinct !{!116, !90}
!117 = !{!"branch_weights", i32 34102634, i32 39885266}
!118 = distinct !{!118, !90}
!119 = !{!"branch_weights", i32 67127671, i32 10328785}
!120 = distinct !{!120, !90}
!121 = !{!"branch_weights", i32 6964195, i32 3364592}
!122 = !{!"branch_weights", i32 1957095, i32 5007101}
!123 = !{!"branch_weights", i32 640478, i32 1957095}
!124 = distinct !{!124, !90}
!125 = !{!"branch_weights", i32 1880132, i32 3364592}
!126 = distinct !{!126, !90}
!127 = !{!"branch_weights", i32 18508, i32 10310279}
!128 = !{!"branch_weights", i32 4149191, i32 6161089}
!129 = distinct !{!129, !90}
!130 = !{!"branch_weights", i32 6161089, i32 18552}
!131 = !{!"branch_weights", i32 0, i32 6161089}
!132 = distinct !{!132, !90}
!133 = !{!"branch_weights", i32 2011944, i32 4167698}
!134 = !{!"branch_weights", i32 569997, i32 1441948}
!135 = !{!"branch_weights", i32 1442462, i32 1441948}
!136 = distinct !{!136, !90}
!137 = !{!"branch_weights", i32 46, i32 569952}
!138 = !{!"branch_weights", i32 2267657, i32 1900042}
!139 = !{!"branch_weights", i32 6805734, i32 2267657}
!140 = distinct !{!140, !90}
!141 = !{!"pp_sort.c:S_qsortsvu"}
!142 = distinct !{!142, !90}
!143 = distinct !{!143, !90}
!144 = distinct !{!144, !90}
!145 = !{!146, !147, i64 0}
!146 = !{!"partition_stack_entry", !147, i64 0, !147, i64 4, !147, i64 8}
!147 = !{!"int", !87, i64 0}
!148 = !{!146, !147, i64 4}
!149 = !{!146, !147, i64 8}
!150 = distinct !{!150, !90}
!151 = distinct !{!151, !90}
!152 = distinct !{!152, !90}
!153 = !{!"pp_sort.c:cmpindir_desc"}
!154 = !{!"pp_sort.c:cmpindir"}
!155 = !{!"pp_sort.c:cmp_desc"}
!156 = !{!"pp_sort.c:dynprep"}
!157 = !{!"branch_weights", i32 18552, i32 1}
!158 = !{!"branch_weights", i32 10325690, i32 18553}
!159 = !{!"branch_weights", i32 5170337, i32 5155354}
!160 = distinct !{!160, !90}
!161 = !{!"branch_weights", i32 19579, i32 5173899}
!162 = !{!"branch_weights", i32 6376, i32 19567}
!163 = !{!"branch_weights", i32 6364, i32 19579}
!164 = distinct !{!164, !90}
!165 = !{!"branch_weights", i32 19567, i32 13}
!166 = !{!"branch_weights", i32 32, i32 8}
!167 = !{!"branch_weights", i32 27, i32 13}
!168 = distinct !{!168, !90}
!169 = !{!"branch_weights", i32 5587, i32 5187891}
!170 = !{!"branch_weights", i32 5530, i32 15450878}
!171 = !{!"branch_weights", i32 2, i32 1}
!172 = !{!"branch_weights", i32 8085492, i32 7806780}
!173 = !{!"branch_weights", i32 3230, i32 2843}
!174 = distinct !{!174, !90}
!175 = !{!"branch_weights", i32 5193476, i32 1}
!176 = !{!"branch_weights", i32 5182953, i32 5149303}
!177 = !{!"branch_weights", i32 5138779, i32 5193476}
!178 = distinct !{!178, !90}
!179 = !{!"branch_weights", i32 5998748, i32 -1020867536}
!180 = !{!"branch_weights", i32 8107775, i32 2139375873}
!181 = distinct !{!181, !90}
!182 = !{!"branch_weights", i32 5155354, i32 18552}
!183 = distinct !{!183, !90}
!184 = !{!"function_entry_count", i64 19518}
!185 = !{!147, !147, i64 0}
!186 = !{!187, !87, i64 34}
!187 = !{!"op", !86, i64 0, !86, i64 8, !86, i64 16, !98, i64 24, !147, i64 32, !147, i64 33, !147, i64 33, !147, i64 33, !147, i64 33, !147, i64 33, !147, i64 33, !147, i64 33, !87, i64 34, !87, i64 35}
!188 = !{!"branch_weights", i32 6449, i32 13071}
!189 = !{!187, !86, i64 0}
!190 = !{!187, !87, i64 35}
!191 = !{!"branch_weights", i32 19519, i32 1}
!192 = !{!"branch_weights", i32 18427, i32 1093}
!193 = !{!"branch_weights", i32 1013, i32 81}
!194 = !{!195, !86, i64 40}
!195 = !{!"listop", !86, i64 0, !86, i64 8, !86, i64 16, !98, i64 24, !147, i64 32, !147, i64 33, !147, i64 33, !147, i64 33, !147, i64 33, !147, i64 33, !147, i64 33, !147, i64 33, !87, i64 34, !87, i64 35, !86, i64 40, !86, i64 48}
!196 = !{!187, !86, i64 8}
!197 = !{!"branch_weights", i32 1, i32 1013}
!198 = !{!"branch_weights", i32 1013, i32 1}
!199 = !{!87, !87, i64 0}
!200 = !{!201, !86, i64 0}
!201 = !{!"cv", !86, i64 0, !147, i64 8, !147, i64 12, !87, i64 16}
!202 = !{!203, !147, i64 92}
!203 = !{!"xpvcv", !86, i64 0, !87, i64 8, !98, i64 16, !87, i64 24, !86, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !86, i64 64, !87, i64 72, !86, i64 80, !147, i64 88, !147, i64 92, !147, i64 96}
!204 = !{!"branch_weights", i32 2145365814, i32 2117834}
!205 = !{!"branch_weights", i32 2088, i32 2147481560}
!206 = !{!207, !86, i64 0}
!207 = !{!"gv", !86, i64 0, !147, i64 8, !147, i64 12, !87, i64 16}
!208 = !{!209, !147, i64 4}
!209 = !{!"hek", !147, i64 0, !147, i64 4, !87, i64 8}
!210 = !{!211, !147, i64 24}
!211 = !{!"gp", !86, i64 0, !86, i64 8, !86, i64 16, !147, i64 24, !147, i64 28, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !147, i64 64, !147, i64 67, !86, i64 72}
!212 = !{!211, !86, i64 16}
!213 = !{!214, !147, i64 12}
!214 = !{!"av", !86, i64 0, !147, i64 8, !147, i64 12, !87, i64 16}
!215 = !{!214, !86, i64 0}
!216 = !{!217, !98, i64 16}
!217 = !{!"xpvav", !86, i64 0, !87, i64 8, !98, i64 16, !98, i64 24, !86, i64 32}
!218 = distinct !{!218, !90}
!219 = !{!"branch_weights", i32 19518, i32 1}
!220 = !{!"branch_weights", i32 1, i32 20698946}
!221 = !{!"branch_weights", i32 29825, i32 20669122}
!222 = !{!223, !147, i64 12}
!223 = !{!"sv", !86, i64 0, !147, i64 8, !147, i64 12, !87, i64 16}
!224 = !{!"branch_weights", i32 29825, i32 1}
!225 = !{!"branch_weights", i32 20669122, i32 29825}
!226 = !{!"branch_weights", i32 20669122, i32 1}
!227 = !{!"branch_weights", i32 1, i32 20669122}
!228 = !{!223, !86, i64 0}
!229 = !{!230, !86, i64 0}
!230 = !{!"xpvmg", !86, i64 0, !87, i64 8, !98, i64 16, !87, i64 24, !87, i64 32, !87, i64 40}
!231 = !{!232, !147, i64 12}
!232 = !{!"hv", !86, i64 0, !147, i64 8, !147, i64 12, !87, i64 16}
!233 = !{!"branch_weights", i32 20679428, i32 19518}
!234 = distinct !{!234, !90}
!235 = !{!"branch_weights", i32 18553, i32 967}
!236 = !{!"branch_weights", i32 18425, i32 129}
!237 = !{!238, !239, i64 212}
!238 = !{!"jmpenv", !87, i64 0, !86, i64 200, !147, i64 208, !239, i64 212}
!239 = !{!"_Bool", !87, i64 0}
!240 = !{i8 0, i8 2}
!241 = !{}
!242 = !{!98, !98, i64 0}
!243 = !{!244, !86, i64 24}
!244 = !{!"stackinfo", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !147, i64 32, !147, i64 36, !147, i64 40, !147, i64 44}
!245 = !{!"branch_weights", i32 1, i32 129}
!246 = !{!244, !86, i64 16}
!247 = !{!244, !147, i64 40}
!248 = !{!244, !147, i64 32}
!249 = !{!244, !86, i64 0}
!250 = !{!217, !98, i64 24}
!251 = !{!"branch_weights", i32 259, i32 16641}
!252 = !{!244, !147, i64 36}
!253 = !{!"branch_weights", i32 129, i32 1}
!254 = !{!244, !86, i64 8}
!255 = !{!"branch_weights", i32 49, i32 81}
!256 = !{!"branch_weights", i32 49, i32 1}
!257 = !{!223, !147, i64 8}
!258 = !{!"branch_weights", i32 1, i32 49}
!259 = !{!260, !86, i64 8}
!260 = !{!"padlist", !98, i64 0, !86, i64 8, !147, i64 16, !147, i64 20}
!261 = !{!211, !86, i64 40}
!262 = !{!217, !86, i64 32}
!263 = !{!"branch_weights", i32 1, i32 18425}
!264 = !{!"branch_weights", i32 18425, i32 1}
!265 = !{!"branch_weights", i32 1, i32 -1}
!266 = !{!"branch_weights", i32 18549, i32 5}
!267 = !{!"branch_weights", i32 159, i32 1}
!268 = !{!"branch_weights", i32 103425, i32 159}
!269 = distinct !{!269, !90}
!270 = distinct !{!270, !90}
!271 = distinct !{!271, !90}
!272 = !{!"pp_sort.c:S_CvGV"}
!273 = !{!"function_entry_count", i64 256}
!274 = !{!"pp_sort.c:S_SvREFCNT_inc"}
!275 = !{!"branch_weights", i32 257, i32 1}
!276 = !{!"function_entry_count", i64 288}
!277 = !{!"pp_sort.c:S_CvDEPTHp"}
!278 = !{!"pp_sort.c:S_sortcv_xsub"}
!279 = distinct !{!279, !90}
!280 = !{!"pp_sort.c:S_sortcv_stacked"}
!281 = distinct !{!281, !90}
!282 = !{!"function_entry_count", i64 188894}
!283 = !{!"pp_sort.c:S_sortcv"}
!284 = !{!211, !86, i64 0}
!285 = !{!"branch_weights", i32 188895, i32 1}
!286 = !{!"branch_weights", i32 -2064884732, i32 23611}
!287 = !{!"branch_weights", i32 1, i32 188895}
!288 = !{!"branch_weights", i32 1, i32 188894}
!289 = !{!"branch_weights", i32 0, i32 1}
!290 = distinct !{!290, !90}
!291 = !{!"function_entry_count", i64 48}
!292 = !{!"pp_sort.c:S_SvREFCNT_dec"}
!293 = !{!"pp_sort.c:S_SvREFCNT_dec_NN"}
!294 = !{!"pp_sort.c:S_amagic_i_ncmp"}
!295 = !{i32 -1, i32 2}
!296 = !{!"pp_sort.c:S_sv_i_ncmp"}
!297 = !{!"pp_sort.c:S_amagic_ncmp"}
!298 = !{!"pp_sort.c:S_sv_ncmp"}
!299 = !{!"pp_sort.c:S_amagic_cmp"}
