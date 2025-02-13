; ModuleID = 'ext/PerlIO-via/via.c'
source_filename = "ext/PerlIO-via/via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct._PerlIO_funcs = type { i64, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PerlIOVia = type { %struct._PerlIO, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._PerlIO = type { ptr, ptr, i32, i32, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%union._xmgu = type { ptr }
%struct.av = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu }
%union.anon.3 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.io = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu, ptr, %union.anon.6, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.9, %union._xivu }
%union.anon.9 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu, %union._xnvu }
%union.anon.10 = type { i64 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"No next\0A\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"No package specified\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PerlIO::via::%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"PUSHED\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FILL\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot find package '%.*s'\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"FDOPEN\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"SYSOPEN\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Opened with %s => %p->%p\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Open fail %s => %p->%p\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Nothing to open with\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"POPPED\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"FILENO\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"BINMODE\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"TELL\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"UNREAD\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"FLUSH\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"SETLINEBUF\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"CLEARERR\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"GETARG\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"via\00", align 1
@PerlIO_object = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.28, i64 248, i32 65538, ptr @PerlIOVia_pushed, ptr @PerlIOVia_popped, ptr @PerlIOVia_open, ptr @PerlIOVia_binmode, ptr @PerlIOVia_getarg, ptr @PerlIOVia_fileno, ptr @PerlIOVia_dup, ptr @PerlIOVia_read, ptr @PerlIOVia_unread, ptr @PerlIOVia_write, ptr @PerlIOVia_seek, ptr @PerlIOVia_tell, ptr @PerlIOVia_close, ptr @PerlIOVia_flush, ptr @PerlIOVia_fill, ptr @PerlIOVia_eof, ptr @PerlIOVia_error, ptr @PerlIOVia_clearerr, ptr @PerlIOVia_setlinebuf, ptr @PerlIOVia_get_base, ptr @PerlIOVia_bufsiz, ptr @PerlIOVia_get_ptr, ptr @PerlIOVia_get_cnt, ptr @PerlIOVia_set_ptrcnt }, align 8
@.str.29 = private unnamed_addr constant [21 x i8] c"ext/PerlIO-via/via.c\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOVia_fetchmethod(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.PerlIOVia, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %7 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %5, ptr noundef %1, i64 noundef %6, i32 noundef 0, i32 noundef 0) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ inttoptr (i64 -1 to ptr), %3 ]
  store ptr %15, ptr %2, align 8, !tbaa !46
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_gv_fetchmeth_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOVia_method(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ...) local_unnamed_addr #0 !prof !34 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = load ptr, ptr %2, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call ptr @PerlIOVia_fetchmethod(ptr noundef %6, ptr noundef %1, ptr noundef nonnull %2) #13
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = icmp eq ptr %12, inttoptr (i64 -1 to ptr)
  br i1 %13, label %223, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.va_start(ptr nonnull %5)
  %16 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.stackinfo, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #12
  %22 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.stackinfo, ptr %21, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.stackinfo, ptr %22, i64 0, i32 3
  store ptr %21, ptr %24, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi ptr [ %18, %14 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.stackinfo, ptr %26, i64 0, i32 6
  store i32 2, ptr %27, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.stackinfo, ptr %26, i64 0, i32 4
  store i32 -1, ptr %28, align 8, !tbaa !51
  %29 = load ptr, ptr %26, align 8, !tbaa !52
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.xpvav, ptr %30, i64 0, i32 2
  store i64 0, ptr %31, align 8, !tbaa !55
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %33 = ptrtoint ptr %15 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 3
  %37 = load ptr, ptr @PL_curstack, align 8, !tbaa !46
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.xpvav, ptr %38, i64 0, i32 2
  store i64 %36, ptr %39, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.av, ptr %29, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  store ptr %41, ptr @PL_stack_base, align 8, !tbaa !46
  %42 = load ptr, ptr %26, align 8, !tbaa !52
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = getelementptr inbounds %struct.xpvav, ptr %43, i64 0, i32 3
  %45 = load i64, ptr %44, align 8, !tbaa !57
  %46 = getelementptr inbounds ptr, ptr %41, i64 %45
  store ptr %46, ptr @PL_stack_max, align 8, !tbaa !46
  %47 = load ptr, ptr %26, align 8, !tbaa !52
  %48 = load ptr, ptr %47, align 8, !tbaa !53
  %49 = getelementptr inbounds %struct.xpvav, ptr %48, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !55
  %51 = getelementptr inbounds ptr, ptr %41, i64 %50
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !46
  %52 = load ptr, ptr %26, align 8, !tbaa !52
  store ptr %52, ptr @PL_curstack, align 8, !tbaa !46
  store ptr %26, ptr @PL_curstackinfo, align 8, !tbaa !46
  call void @Perl_push_scope() #12
  %53 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %54 = getelementptr inbounds i32, ptr %53, i64 1
  store ptr %54, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %55 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !46
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %25
  %58 = call ptr @Perl_markstack_grow() #12
  br label %59

59:                                               ; preds = %25, %57
  %60 = phi ptr [ %58, %57 ], [ %54, %25 ]
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %62 = ptrtoint ptr %51 to i64
  %63 = ptrtoint ptr %61 to i64
  %64 = sub i64 %62, %63
  %65 = lshr exact i64 %64, 3
  %66 = trunc i64 %65 to i32
  store i32 %66, ptr %60, align 4, !tbaa !58
  %67 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %68 = ptrtoint ptr %67 to i64
  %69 = sub i64 %68, %62
  %70 = icmp slt i64 %69, 8
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = call ptr @Perl_stack_grow(ptr noundef %51, ptr noundef %51, i64 noundef 1) #12
  br label %73

73:                                               ; preds = %59, %71
  %74 = phi ptr [ %72, %71 ], [ %51, %59 ]
  %75 = getelementptr inbounds %struct.PerlIOVia, ptr %6, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !59
  %77 = getelementptr inbounds ptr, ptr %74, i64 1
  store ptr %76, ptr %77, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %79 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  br label %80

80:                                               ; preds = %104, %73
  %81 = phi ptr [ %77, %73 ], [ %106, %104 ]
  %82 = load i32, ptr %5, align 16
  %83 = icmp ult i32 %82, 41
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load ptr, ptr %79, align 16
  %86 = zext nneg i32 %82 to i64
  %87 = getelementptr i8, ptr %85, i64 %86
  %88 = add nuw nsw i32 %82, 8
  store i32 %88, ptr %5, align 16
  br label %92

89:                                               ; preds = %80
  %90 = load ptr, ptr %78, align 8
  %91 = getelementptr i8, ptr %90, i64 8
  store ptr %91, ptr %78, align 8
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %87, %84 ], [ %90, %89 ]
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %107, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %98 = ptrtoint ptr %97 to i64
  %99 = ptrtoint ptr %81 to i64
  %100 = sub i64 %98, %99
  %101 = icmp slt i64 %100, 8
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call ptr @Perl_stack_grow(ptr noundef nonnull %81, ptr noundef nonnull %81, i64 noundef 1) #12
  br label %104

104:                                              ; preds = %96, %102
  %105 = phi ptr [ %103, %102 ], [ %81, %96 ]
  %106 = getelementptr inbounds ptr, ptr %105, i64 1
  store ptr %94, ptr %106, align 8, !tbaa !46
  br label %80, !llvm.loop !60

107:                                              ; preds = %92
  call void @llvm.va_end(ptr nonnull %5)
  %108 = load ptr, ptr %0, align 8, !tbaa !46
  %109 = load ptr, ptr %108, align 8, !tbaa !62
  %110 = icmp eq ptr %109, null
  br i1 %110, label %182, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.PerlIOVia, ptr %6, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !63
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %162

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.PerlIOVia, ptr %6, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !35
  %118 = getelementptr inbounds %struct.hv, ptr %117, i64 0, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !64
  %120 = and i32 %119, 33554432
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %199, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.hv, ptr %117, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !43
  %125 = load ptr, ptr %117, align 8, !tbaa !66
  %126 = getelementptr inbounds %struct.xpvhv, ptr %125, i64 0, i32 3
  %127 = load i64, ptr %126, align 8, !tbaa !67
  %128 = getelementptr ptr, ptr %124, i64 %127
  %129 = getelementptr ptr, ptr %128, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !43
  %131 = icmp eq ptr %130, null
  br i1 %131, label %199, label %132

132:                                              ; preds = %122
  %133 = getelementptr i8, ptr %128, i64 36
  %134 = load i32, ptr %133, align 4, !tbaa !69
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %130, align 8, !tbaa !43
  %138 = icmp eq ptr %137, null
  br i1 %138, label %199, label %139

139:                                              ; preds = %132, %136
  %140 = phi ptr [ %137, %136 ], [ %130, %132 ]
  %141 = getelementptr inbounds %struct.hek, ptr %140, i64 0, i32 2
  %142 = call ptr @Perl_newGVgen_flags(ptr noundef nonnull %141, i32 noundef 0) #12
  %143 = call ptr @Perl_newSV_type(i32 noundef 15) #12
  %144 = getelementptr inbounds %struct.gv, ptr %142, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !43
  %146 = getelementptr inbounds %struct.gp, ptr %145, i64 0, i32 1
  store ptr %143, ptr %146, align 8, !tbaa !71
  %147 = call ptr @Perl_newRV(ptr noundef %142) #12
  store ptr %147, ptr %112, align 8, !tbaa !63
  %148 = load ptr, ptr %144, align 8, !tbaa !43
  %149 = getelementptr inbounds %struct.gp, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !71
  %151 = getelementptr inbounds %struct.PerlIOVia, ptr %6, i64 0, i32 5
  store ptr %150, ptr %151, align 8, !tbaa !72
  %152 = load ptr, ptr %142, align 8, !tbaa !73
  %153 = getelementptr inbounds %struct.xpvgv, ptr %152, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !43
  %155 = getelementptr inbounds %struct.xpvgv, ptr %152, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !43
  %157 = getelementptr inbounds %struct.hek, ptr %156, i64 0, i32 2
  %158 = getelementptr inbounds %struct.hek, ptr %156, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !75
  %160 = call ptr @Perl_hv_common_key_len(ptr noundef %154, ptr noundef nonnull %157, i32 noundef %159, i32 noundef 68, ptr noundef null, i32 noundef 0) #12
  %161 = load ptr, ptr %0, align 8, !tbaa !46
  br label %162

162:                                              ; preds = %139, %111
  %163 = phi ptr [ %161, %139 ], [ %108, %111 ]
  %164 = getelementptr inbounds %struct.PerlIOVia, ptr %6, i64 0, i32 5
  %165 = load ptr, ptr %164, align 8, !tbaa !72
  %166 = getelementptr inbounds %struct.io, ptr %165, i64 0, i32 3
  store ptr %163, ptr %166, align 8, !tbaa !43
  %167 = load ptr, ptr %0, align 8, !tbaa !46
  %168 = load ptr, ptr %164, align 8, !tbaa !72
  %169 = load ptr, ptr %168, align 8, !tbaa !77
  %170 = getelementptr inbounds %struct.xpvio, ptr %169, i64 0, i32 5
  store ptr %167, ptr %170, align 8, !tbaa !79
  %171 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %172 = ptrtoint ptr %171 to i64
  %173 = ptrtoint ptr %81 to i64
  %174 = sub i64 %172, %173
  %175 = icmp slt i64 %174, 8
  br i1 %175, label %176, label %178

176:                                              ; preds = %162
  %177 = call ptr @Perl_stack_grow(ptr noundef nonnull %81, ptr noundef nonnull %81, i64 noundef 1) #12
  br label %178

178:                                              ; preds = %162, %176
  %179 = phi ptr [ %177, %176 ], [ %81, %162 ]
  %180 = load ptr, ptr %112, align 8, !tbaa !63
  %181 = getelementptr inbounds ptr, ptr %179, i64 1
  store ptr %180, ptr %181, align 8, !tbaa !46
  br label %183

182:                                              ; preds = %107
  call void (ptr, ...) @PerlIO_debug(ptr noundef nonnull @.str) #12
  br label %183

183:                                              ; preds = %182, %178
  %184 = phi ptr [ %181, %178 ], [ %81, %182 ]
  store ptr %184, ptr @PL_stack_sp, align 8, !tbaa !46
  %185 = call i32 @Perl_call_sv(ptr noundef %12, i32 noundef %3) #12
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %189 = getelementptr inbounds ptr, ptr %188, i64 -1
  %190 = load ptr, ptr %188, align 8, !tbaa !46
  store ptr %189, ptr @PL_stack_sp, align 8, !tbaa !46
  br label %191

191:                                              ; preds = %183, %187
  %192 = phi ptr [ %190, %187 ], [ @PL_sv_undef, %183 ]
  call void @Perl_pop_scope() #12
  %193 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %194 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !46
  %195 = getelementptr inbounds %struct.stackinfo, ptr %194, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !49
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  call void @Perl_croak_popstack() #12
  br label %200

199:                                              ; preds = %136, %122, %115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %223

200:                                              ; preds = %198, %191
  %201 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %202 = ptrtoint ptr %193 to i64
  %203 = ptrtoint ptr %201 to i64
  %204 = sub i64 %202, %203
  %205 = ashr exact i64 %204, 3
  %206 = load ptr, ptr @PL_curstack, align 8, !tbaa !46
  %207 = load ptr, ptr %206, align 8, !tbaa !53
  %208 = getelementptr inbounds %struct.xpvav, ptr %207, i64 0, i32 2
  store i64 %205, ptr %208, align 8, !tbaa !55
  %209 = load ptr, ptr %196, align 8, !tbaa !52
  %210 = getelementptr inbounds %struct.av, ptr %209, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !43
  store ptr %211, ptr @PL_stack_base, align 8, !tbaa !46
  %212 = load ptr, ptr %196, align 8, !tbaa !52
  %213 = load ptr, ptr %212, align 8, !tbaa !53
  %214 = getelementptr inbounds %struct.xpvav, ptr %213, i64 0, i32 3
  %215 = load i64, ptr %214, align 8, !tbaa !57
  %216 = getelementptr inbounds ptr, ptr %211, i64 %215
  store ptr %216, ptr @PL_stack_max, align 8, !tbaa !46
  %217 = load ptr, ptr %196, align 8, !tbaa !52
  %218 = load ptr, ptr %217, align 8, !tbaa !53
  %219 = getelementptr inbounds %struct.xpvav, ptr %218, i64 0, i32 2
  %220 = load i64, ptr %219, align 8, !tbaa !55
  %221 = getelementptr inbounds ptr, ptr %211, i64 %220
  store ptr %221, ptr @PL_stack_sp, align 8, !tbaa !46
  %222 = load ptr, ptr %196, align 8, !tbaa !52
  store ptr %222, ptr @PL_curstack, align 8, !tbaa !46
  store ptr %196, ptr @PL_curstackinfo, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %223

223:                                              ; preds = %200, %199, %11
  %224 = phi ptr [ null, %11 ], [ %192, %200 ], [ null, %199 ]
  ret ptr %224
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: optsize
declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: optsize
declare ptr @Perl_newGVgen_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PerlIO_debug(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_popstack() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_pushed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !prof !34 {
  %5 = alloca i64, align 8
  %6 = alloca [8 x i8], align 1
  %7 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %3) #12
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %195

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 8) #12
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 8, ptr noundef nonnull @.str.1) #12
  br label %15

15:                                               ; preds = %12, %14
  %16 = tail call ptr @__errno_location() #15
  store i32 22, ptr %16, align 4, !tbaa !58
  br label %195

17:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !82
  %20 = and i32 %19, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8, !tbaa !84
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !85
  store i64 %25, ptr %5, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  br label %30

28:                                               ; preds = %17
  %29 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 2) #12
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = call ptr (ptr, ...) @Perl_form(ptr noundef nonnull @.str.2, ptr noundef %31) #12
  %33 = load i64, ptr %5, align 8, !tbaa !81
  %34 = add i64 %33, 13
  %35 = call ptr @Perl_newSVpvn(ptr noundef %32, i64 noundef %34) #12
  %36 = getelementptr inbounds %struct.PerlIOVia, ptr %10, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = load i64, ptr %5, align 8, !tbaa !81
  %40 = trunc i64 %39 to i32
  %41 = add i32 %40, 13
  %42 = call ptr @Perl_gv_stashpvn(ptr noundef %38, i32 noundef %41, i32 noundef 0) #12
  %43 = getelementptr inbounds %struct.PerlIOVia, ptr %10, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !35
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load ptr, ptr %36, align 8, !tbaa !59
  call fastcc void @S_SvREFCNT_dec(ptr noundef %46) #13
  %47 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %2) #13
  store ptr %2, ptr %36, align 8, !tbaa !59
  %48 = load i64, ptr %5, align 8, !tbaa !81
  %49 = trunc i64 %48 to i32
  %50 = call ptr @Perl_gv_stashpvn(ptr noundef %31, i32 noundef %49, i32 noundef 0) #12
  store ptr %50, ptr %43, align 8, !tbaa !35
  %51 = icmp eq ptr %50, null
  br i1 %51, label %184, label %52

52:                                               ; preds = %30, %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %53 = icmp eq ptr %1, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = call ptr @PerlIO_modestr(ptr noundef nonnull %0, ptr noundef nonnull %6) #12
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi ptr [ %1, %52 ], [ %55, %54 ]
  %58 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %57) #11
  %59 = call ptr @Perl_newSVpvn_flags(ptr noundef %57, i64 noundef %58, i32 noundef 524288) #12
  %60 = getelementptr inbounds %struct.PerlIOVia, ptr %10, i64 0, i32 7
  %61 = call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %60, i32 noundef 2, ptr noundef %59, ptr noundef null) #13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %183, label %63

63:                                               ; preds = %56
  %64 = call i32 @Perl_sv_isobject(ptr noundef nonnull %61) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %36, align 8, !tbaa !59
  call fastcc void @S_SvREFCNT_dec(ptr noundef %67) #13
  %68 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %61) #13
  store ptr %61, ptr %36, align 8, !tbaa !59
  br label %93

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !82
  %72 = and i32 %71, 2097408
  %73 = icmp eq i32 %72, 256
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load ptr, ptr %61, align 8, !tbaa !84
  %76 = getelementptr inbounds %struct.xpviv, ptr %75, i64 0, i32 4
  %77 = load i64, ptr %76, align 8, !tbaa !43
  br label %80

78:                                               ; preds = %69
  %79 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %61, i32 noundef 2) #12
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i64 [ %77, %74 ], [ %79, %78 ]
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %70, align 4, !tbaa !82
  %85 = and i32 %84, 2097408
  %86 = icmp eq i32 %85, 256
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load ptr, ptr %61, align 8, !tbaa !84
  %89 = getelementptr inbounds %struct.xpviv, ptr %88, i64 0, i32 4
  %90 = load i64, ptr %89, align 8, !tbaa !43
  br label %193

91:                                               ; preds = %83
  %92 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %61, i32 noundef 2) #12
  br label %193

93:                                               ; preds = %66, %80
  %94 = load ptr, ptr %0, align 8, !tbaa !46
  %95 = load ptr, ptr %94, align 8, !tbaa !62
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct._PerlIO, ptr %95, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !87
  %100 = freeze i32 %99
  %101 = and i32 %100, 32768
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %104

104:                                              ; preds = %97, %93
  %105 = phi ptr [ @PL_sv_no, %93 ], [ %103, %97 ]
  %106 = getelementptr inbounds %struct.PerlIOVia, ptr %10, i64 0, i32 27
  %107 = call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %106, i32 noundef 2, ptr noundef nonnull %105, ptr noundef null) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %168, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !82
  %112 = and i32 %111, 2097152
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %107, i32 noundef 2) #12
  br i1 %115, label %163, label %168

116:                                              ; preds = %109
  %117 = and i32 %111, 65280
  %118 = icmp ne i32 %117, 0
  %119 = and i32 %111, 255
  %120 = icmp eq i32 %119, 8
  %121 = or i1 %118, %120
  %122 = and i32 %111, 16777471
  %123 = icmp eq i32 %122, 16777226
  %124 = or i1 %123, %121
  br i1 %124, label %125, label %168

125:                                              ; preds = %116
  %126 = and i32 %111, 1024
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %107, align 8, !tbaa !84
  %130 = icmp eq ptr %129, null
  br i1 %130, label %168, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.xpv, ptr %129, i64 0, i32 2
  %133 = load i64, ptr %132, align 8, !tbaa !85
  %134 = icmp ugt i64 %133, 1
  br i1 %134, label %163, label %135

135:                                              ; preds = %131
  %136 = icmp eq i64 %133, 0
  br i1 %136, label %168, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !43
  %140 = load i8, ptr %139, align 1, !tbaa !43
  %141 = icmp eq i8 %140, 48
  br i1 %141, label %168, label %163

142:                                              ; preds = %125
  %143 = and i32 %111, 768
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %142
  %146 = and i32 %111, 256
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %107, align 8, !tbaa !84
  %150 = getelementptr inbounds %struct.xpviv, ptr %149, i64 0, i32 4
  %151 = load i64, ptr %150, align 8, !tbaa !43
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148, %145
  %154 = and i32 %111, 512
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr %107, align 8, !tbaa !84
  %158 = getelementptr inbounds %struct.xpvnv, ptr %157, i64 0, i32 5
  %159 = load double, ptr %158, align 8, !tbaa !43
  %160 = fcmp une double %159, 0.000000e+00
  br i1 %160, label %163, label %168

161:                                              ; preds = %142
  %162 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %107, i32 noundef 0) #12
  br i1 %162, label %163, label %168

163:                                              ; preds = %161, %156, %148, %137, %131, %114
  %164 = load ptr, ptr %0, align 8, !tbaa !46
  %165 = getelementptr inbounds %struct._PerlIO, ptr %164, i64 0, i32 2
  %166 = load i32, ptr %165, align 8, !tbaa !87
  %167 = or i32 %166, 32768
  store i32 %167, ptr %165, align 8, !tbaa !87
  br label %173

168:                                              ; preds = %156, %116, %161, %153, %137, %135, %128, %114, %104
  %169 = load ptr, ptr %0, align 8, !tbaa !46
  %170 = getelementptr inbounds %struct._PerlIO, ptr %169, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !87
  %172 = and i32 %171, -32769
  store i32 %172, ptr %170, align 8, !tbaa !87
  br label %173

173:                                              ; preds = %168, %163
  %174 = getelementptr inbounds %struct.PerlIOVia, ptr %10, i64 0, i32 16
  %175 = call ptr @PerlIOVia_fetchmethod(ptr noundef nonnull %10, ptr noundef nonnull @.str.5, ptr noundef nonnull %174) #13
  %176 = icmp eq ptr %175, inttoptr (i64 -1 to ptr)
  %177 = load ptr, ptr %0, align 8, !tbaa !46
  %178 = getelementptr inbounds %struct._PerlIO, ptr %177, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !87
  %180 = and i32 %179, -4194305
  %181 = select i1 %176, i32 0, i32 4194304
  %182 = or disjoint i32 %180, %181
  store i32 %182, ptr %178, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %191

183:                                              ; preds = %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %189

184:                                              ; preds = %45
  %185 = call zeroext i1 @Perl_ckwarn(i32 noundef 8) #12
  br i1 %185, label %186, label %189

186:                                              ; preds = %184
  %187 = load i64, ptr %5, align 8, !tbaa !81
  %188 = trunc i64 %187 to i32
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 8, ptr noundef nonnull @.str.6, i32 noundef %188, ptr noundef %31) #12
  br label %189

189:                                              ; preds = %183, %184, %186
  %190 = tail call ptr @__errno_location() #15
  store i32 38, ptr %190, align 4, !tbaa !58
  br label %191

191:                                              ; preds = %189, %173
  %192 = phi i64 [ 0, %173 ], [ -1, %189 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %195

193:                                              ; preds = %91, %87
  %194 = phi i64 [ %92, %91 ], [ %90, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %195

195:                                              ; preds = %193, %191, %15, %4
  %196 = phi i64 [ %7, %4 ], [ %194, %193 ], [ -1, %15 ], [ %192, %191 ]
  ret i64 %196
}

; Function Attrs: optsize
declare i64 @PerlIOBase_pushed(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_form(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !88 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !89
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !89
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #12
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #6 !prof !34 !PGOFuncName !90 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !89
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !89
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @PerlIO_modestr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PerlIOVia_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #0 !prof !34 {
  %11 = icmp eq ptr %7, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #12
  %14 = tail call ptr @PerlIO_push(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %3, ptr noundef %13) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %147, label %21

16:                                               ; preds = %10
  %17 = tail call ptr @PerlIO_allocate() #12
  %18 = tail call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #12
  %19 = tail call ptr @PerlIO_push(ptr noundef %17, ptr noundef %0, ptr noundef %3, ptr noundef %18) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %147, label %21

21:                                               ; preds = %12, %16
  %22 = phi ptr [ %19, %16 ], [ %7, %12 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp sgt i32 %4, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = zext nneg i32 %4 to i64
  %27 = tail call ptr @Perl_newSViv(i64 noundef %26) #12
  %28 = tail call ptr @Perl_sv_2mortal(ptr noundef %27) #12
  %29 = getelementptr inbounds %struct.PerlIOVia, ptr %23, i64 0, i32 10
  %30 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %22, ptr noundef nonnull @.str.7, ptr noundef nonnull %29, i32 noundef 2, ptr noundef %28, ptr noundef null) #13
  br label %50

31:                                               ; preds = %21
  %32 = icmp sgt i32 %8, 0
  br i1 %32, label %33, label %113

33:                                               ; preds = %31
  %34 = load i8, ptr %3, align 1, !tbaa !43
  %35 = icmp eq i8 %34, 35
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = sext i32 %5 to i64
  %38 = tail call ptr @Perl_newSViv(i64 noundef %37) #12
  %39 = tail call ptr @Perl_sv_2mortal(ptr noundef %38) #12
  %40 = sext i32 %6 to i64
  %41 = tail call ptr @Perl_newSViv(i64 noundef %40) #12
  %42 = tail call ptr @Perl_sv_2mortal(ptr noundef %41) #12
  %43 = getelementptr inbounds %struct.PerlIOVia, ptr %23, i64 0, i32 11
  %44 = load ptr, ptr %9, align 8, !tbaa !46
  %45 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %22, ptr noundef nonnull @.str.8, ptr noundef nonnull %43, i32 noundef 2, ptr noundef %44, ptr noundef %39, ptr noundef %42, ptr noundef null) #13
  br label %50

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.PerlIOVia, ptr %23, i64 0, i32 9
  %48 = load ptr, ptr %9, align 8, !tbaa !46
  %49 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %22, ptr noundef nonnull @.str.9, ptr noundef nonnull %47, i32 noundef 2, ptr noundef %48, ptr noundef null) #13
  br label %50

50:                                               ; preds = %46, %36, %25
  %51 = phi ptr [ %30, %25 ], [ %45, %36 ], [ %49, %46 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %113, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @Perl_sv_isobject(ptr noundef nonnull %51) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %51) #13
  %58 = getelementptr inbounds %struct.PerlIOVia, ptr %23, i64 0, i32 2
  store ptr %51, ptr %58, align 8, !tbaa !59
  br label %147

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !82
  %62 = and i32 %61, 2097152
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %51, i32 noundef 2) #12
  br i1 %65, label %147, label %145

66:                                               ; preds = %59
  %67 = and i32 %61, 65280
  %68 = icmp ne i32 %67, 0
  %69 = and i32 %61, 255
  %70 = icmp eq i32 %69, 8
  %71 = or i1 %68, %70
  %72 = and i32 %61, 16777471
  %73 = icmp eq i32 %72, 16777226
  %74 = or i1 %73, %71
  br i1 %74, label %75, label %145

75:                                               ; preds = %66
  %76 = and i32 %61, 1024
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %51, align 8, !tbaa !84
  %80 = icmp eq ptr %79, null
  br i1 %80, label %145, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.xpv, ptr %79, i64 0, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa !85
  %84 = icmp ugt i64 %83, 1
  br i1 %84, label %147, label %85

85:                                               ; preds = %81
  %86 = icmp eq i64 %83, 0
  br i1 %86, label %145, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !43
  %90 = load i8, ptr %89, align 1, !tbaa !43
  %91 = icmp eq i8 %90, 48
  br i1 %91, label %145, label %147

92:                                               ; preds = %75
  %93 = and i32 %61, 768
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %92
  %96 = and i32 %61, 256
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %51, align 8, !tbaa !84
  %100 = getelementptr inbounds %struct.xpviv, ptr %99, i64 0, i32 4
  %101 = load i64, ptr %100, align 8, !tbaa !43
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %147

103:                                              ; preds = %98, %95
  %104 = and i32 %61, 512
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %145, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %51, align 8, !tbaa !84
  %108 = getelementptr inbounds %struct.xpvnv, ptr %107, i64 0, i32 5
  %109 = load double, ptr %108, align 8, !tbaa !43
  %110 = fcmp une double %109, 0.000000e+00
  br i1 %110, label %147, label %145

111:                                              ; preds = %92
  %112 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %51, i32 noundef 0) #12
  br i1 %112, label %147, label %145

113:                                              ; preds = %31, %50
  %114 = icmp sgt i64 %2, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %113, %124
  %116 = phi i64 [ %117, %124 ], [ %2, %113 ]
  %117 = add nsw i64 %116, -1
  %118 = tail call ptr @PerlIO_layer_fetch(ptr noundef %1, i64 noundef %117, ptr noundef null) #12
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct._PerlIO_funcs, ptr %118, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !91
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %115, %120
  %125 = icmp ugt i64 %116, 1
  br i1 %125, label %115, label %143

126:                                              ; preds = %120
  %127 = load ptr, ptr %22, align 8, !tbaa !46
  %128 = tail call ptr %122(ptr noundef nonnull %118, ptr noundef %1, i64 noundef %117, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %127, i32 noundef %8, ptr noundef %9) #12
  %129 = icmp eq ptr %128, null
  %130 = getelementptr inbounds %struct._PerlIO_funcs, ptr %118, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !93
  %132 = load ptr, ptr %22, align 8, !tbaa !46
  %133 = load ptr, ptr %132, align 8, !tbaa !62
  br i1 %129, label %142, label %134

134:                                              ; preds = %126
  tail call void (ptr, ...) @PerlIO_debug(ptr noundef nonnull @.str.10, ptr noundef %131, ptr noundef nonnull %132, ptr noundef %133) #12
  %135 = icmp slt i64 %116, %2
  br i1 %135, label %136, label %145

136:                                              ; preds = %134
  %137 = load ptr, ptr %22, align 8, !tbaa !46
  %138 = tail call i32 @PerlIO_apply_layera(ptr noundef %137, ptr noundef %3, ptr noundef %1, i64 noundef %116, i64 noundef %2) #12
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %22) #12
  br label %145

142:                                              ; preds = %126
  tail call void (ptr, ...) @PerlIO_debug(ptr noundef nonnull @.str.11, ptr noundef %131, ptr noundef nonnull %132, ptr noundef %133) #12
  br label %144

143:                                              ; preds = %124, %113
  tail call void (ptr, ...) @PerlIO_debug(ptr noundef nonnull @.str.12) #12
  br label %144

144:                                              ; preds = %143, %142
  tail call void @PerlIO_pop(ptr noundef nonnull %22) #12
  br label %145

145:                                              ; preds = %106, %66, %111, %103, %87, %85, %78, %64, %134, %140, %136, %144
  %146 = phi ptr [ %22, %134 ], [ %22, %136 ], [ null, %140 ], [ null, %144 ], [ null, %64 ], [ null, %78 ], [ null, %85 ], [ null, %87 ], [ null, %103 ], [ null, %111 ], [ null, %66 ], [ null, %106 ]
  br label %147

147:                                              ; preds = %145, %56, %111, %106, %98, %87, %81, %64, %16, %12
  %148 = phi ptr [ null, %12 ], [ null, %16 ], [ %146, %145 ], [ %22, %56 ], [ %22, %111 ], [ %22, %106 ], [ %22, %98 ], [ %22, %87 ], [ %22, %81 ], [ %22, %64 ]
  ret ptr %148
}

; Function Attrs: optsize
declare ptr @PerlIO_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @PerlIO_allocate() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @PerlIO_arg_fetch(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @PerlIO_layer_fetch(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PerlIO_apply_layera(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PerlIO_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOVia_popped(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 8
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null) #13
  %5 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %6) #13
  store ptr null, ptr %5, align 8, !tbaa !94
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.io, ptr %11, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !43
  %15 = load ptr, ptr %10, align 8, !tbaa !72
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = getelementptr inbounds %struct.xpvio, ptr %16, i64 0, i32 5
  store ptr null, ptr %17, align 8, !tbaa !79
  br label %18

18:                                               ; preds = %13, %9
  %19 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %20) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %25) #13
  store ptr null, ptr %24, align 8, !tbaa !59
  br label %28

28:                                               ; preds = %27, %23
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_close(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = tail call i64 @PerlIOBase_close(ptr noundef nonnull %0) #12
  %4 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 17
  %5 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, i32 noundef 2, ptr noundef null) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !82
  %10 = and i32 %9, 2097408
  %11 = icmp eq i32 %10, 256
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.xpviv, ptr %13, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !43
  br label %18

16:                                               ; preds = %7
  %17 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %5, i32 noundef 2) #12
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i64 [ %15, %12 ], [ %17, %16 ]
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %8, align 4, !tbaa !82
  %23 = and i32 %22, 2097408
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !84
  %27 = getelementptr inbounds %struct.xpviv, ptr %26, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !43
  br label %31

29:                                               ; preds = %21
  %30 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %5, i32 noundef 2) #12
  br label %31

31:                                               ; preds = %25, %29, %18, %1
  %32 = phi i64 [ %3, %18 ], [ %3, %1 ], [ %28, %25 ], [ %30, %29 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct._PerlIO, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !87
  %36 = and i32 %35, -393217
  store i32 %36, ptr %34, align 8, !tbaa !87
  ret i64 %32
}

; Function Attrs: optsize
declare i64 @PerlIOBase_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_fileno(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 13
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !82
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !43
  br label %21

15:                                               ; preds = %6
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #12
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr %0, align 8, !tbaa !46
  %19 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %18) #12
  %20 = sext i32 %19 to i64
  br label %21

21:                                               ; preds = %11, %15, %17
  %22 = phi i64 [ %20, %17 ], [ %14, %11 ], [ %16, %15 ]
  ret i64 %22
}

; Function Attrs: optsize
declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_binmode(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 26
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !82
  %9 = and i32 %8, 65280
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %8, 255
  %12 = icmp eq i32 %11, 8
  %13 = or i1 %10, %12
  %14 = and i32 %8, 16777471
  %15 = icmp eq i32 %14, 16777226
  %16 = or i1 %15, %13
  br i1 %16, label %18, label %17

17:                                               ; preds = %6, %1
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #12
  br label %27

18:                                               ; preds = %6
  %19 = and i32 %8, 2097408
  %20 = icmp eq i32 %19, 256
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.xpviv, ptr %22, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !43
  br label %27

25:                                               ; preds = %18
  %26 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #12
  br label %27

27:                                               ; preds = %21, %25, %17
  %28 = phi i64 [ 0, %17 ], [ %24, %21 ], [ %26, %25 ]
  ret i64 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_seek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = tail call ptr @Perl_newSViv(i64 noundef %1) #12
  %6 = tail call ptr @Perl_sv_2mortal(ptr noundef %5) #12
  %7 = sext i32 %2 to i64
  %8 = tail call ptr @Perl_newSViv(i64 noundef %7) #12
  %9 = tail call ptr @Perl_sv_2mortal(ptr noundef %8) #12
  %10 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 18
  %11 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %10, i32 noundef 2, ptr noundef %6, ptr noundef %9, ptr noundef null) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !82
  %16 = and i32 %15, 2097408
  %17 = icmp eq i32 %16, 256
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load ptr, ptr %11, align 8, !tbaa !84
  %20 = getelementptr inbounds %struct.xpviv, ptr %19, i64 0, i32 4
  %21 = load i64, ptr %20, align 8, !tbaa !43
  br label %24

22:                                               ; preds = %13
  %23 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %11, i32 noundef 2) #12
  br label %24

24:                                               ; preds = %3, %18, %22
  %25 = phi i64 [ %21, %18 ], [ %23, %22 ], [ -1, %3 ]
  ret i64 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_tell(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 19
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !82
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = and i32 %8, 2097664
  %13 = icmp eq i32 %12, 512
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.xpvnv, ptr %15, i64 0, i32 5
  %17 = load double, ptr %16, align 8, !tbaa !43
  br label %20

18:                                               ; preds = %11
  %19 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %4, i32 noundef 2) #12
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi double [ %17, %14 ], [ %19, %18 ]
  %22 = fptosi double %21 to i64
  br label %32

23:                                               ; preds = %6
  %24 = and i32 %8, 2097408
  %25 = icmp eq i32 %24, 256
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 8, !tbaa !84
  %28 = getelementptr inbounds %struct.xpviv, ptr %27, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !43
  br label %32

30:                                               ; preds = %23
  %31 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #12
  br label %32

32:                                               ; preds = %1, %20, %30, %26
  %33 = phi i64 [ %22, %20 ], [ %29, %26 ], [ %31, %30 ], [ -1, %1 ]
  ret i64 %33
}

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef 524288) #12
  %6 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 20
  %7 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %6, i32 noundef 2, ptr noundef %5, ptr noundef null) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !82
  %12 = and i32 %11, 2097408
  %13 = icmp eq i32 %12, 256
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load ptr, ptr %7, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.xpviv, ptr %15, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !43
  br label %22

18:                                               ; preds = %9
  %19 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %7, i32 noundef 2) #12
  br label %22

20:                                               ; preds = %3
  %21 = tail call i64 @PerlIOBase_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #12
  br label %22

22:                                               ; preds = %14, %18, %20
  %23 = phi i64 [ %21, %20 ], [ %17, %14 ], [ %19, %18 ]
  ret i64 %23
}

; Function Attrs: optsize
declare i64 @PerlIOBase_unread(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !87
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = and i32 %6, 4194304
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i64 @PerlIOBase_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #12
  br label %37

14:                                               ; preds = %9
  %15 = tail call ptr @Perl_newSV(i64 noundef %2) #12
  %16 = tail call ptr @Perl_sv_2mortal(ptr noundef %15) #12
  %17 = tail call ptr @Perl_newSViv(i64 noundef %2) #12
  %18 = tail call ptr @Perl_sv_2mortal(ptr noundef %17) #12
  %19 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 14
  %20 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %19, i32 noundef 2, ptr noundef %16, ptr noundef %18, ptr noundef null) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !82
  %25 = and i32 %24, 2097408
  %26 = icmp eq i32 %25, 256
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load ptr, ptr %20, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.xpviv, ptr %28, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !43
  br label %33

31:                                               ; preds = %22
  %32 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %20, i32 noundef 2) #12
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i64 [ %30, %27 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %36, i64 %34, i1 false)
  br label %37

37:                                               ; preds = %33, %14, %3, %12
  %38 = phi i64 [ %13, %12 ], [ 0, %3 ], [ %34, %33 ], [ 0, %14 ]
  ret i64 %38
}

; Function Attrs: optsize
declare i64 @PerlIOBase_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_write(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !87
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_newSVpvn(ptr noundef %1, i64 noundef %2) #12
  %11 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 15
  %12 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %11, i32 noundef 2, ptr noundef %10, ptr noundef null) #13
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %10) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !82
  %17 = and i32 %16, 2097408
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load ptr, ptr %12, align 8, !tbaa !84
  %21 = getelementptr inbounds %struct.xpviv, ptr %20, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !43
  br label %25

23:                                               ; preds = %14
  %24 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %12, i32 noundef 2) #12
  br label %25

25:                                               ; preds = %3, %23, %19, %9
  %26 = phi i64 [ %22, %19 ], [ %24, %23 ], [ -1, %9 ], [ 0, %3 ]
  ret i64 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @PerlIOVia_fill(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.PerlIOVia, ptr %3, i64 0, i32 16
  %10 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %9, i32 noundef 2, ptr noundef null) #13
  %11 = getelementptr inbounds %struct.PerlIOVia, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %12) #13
  store ptr null, ptr %11, align 8, !tbaa !94
  br label %15

15:                                               ; preds = %14, %8
  %16 = icmp eq ptr %10, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !82
  %20 = and i32 %19, 65280
  %21 = icmp ne i32 %20, 0
  %22 = and i32 %19, 255
  %23 = icmp eq i32 %22, 8
  %24 = or i1 %21, %23
  %25 = and i32 %19, 16777471
  %26 = icmp eq i32 %25, 16777226
  %27 = or i1 %26, %24
  br i1 %27, label %28, label %40

28:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 0, ptr %2, align 8, !tbaa !81
  %29 = and i32 %19, 2098176
  %30 = icmp eq i32 %29, 1024
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load ptr, ptr %10, align 8, !tbaa !84
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !85
  store i64 %34, ptr %2, align 8, !tbaa !81
  %35 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  br label %45

37:                                               ; preds = %28
  %38 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %10, ptr noundef nonnull %2, i32 noundef 2) #12
  %39 = load i64, ptr %2, align 8, !tbaa !81
  br label %45

40:                                               ; preds = %15, %17
  %41 = load ptr, ptr %0, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct._PerlIO, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !87
  %44 = or i32 %43, 256
  store i32 %44, ptr %42, align 8, !tbaa !87
  br label %53

45:                                               ; preds = %31, %37
  %46 = phi i64 [ %34, %31 ], [ %39, %37 ]
  %47 = phi ptr [ %36, %31 ], [ %38, %37 ]
  %48 = call ptr @Perl_newSVpvn(ptr noundef %47, i64 noundef %46) #12
  store ptr %48, ptr %11, align 8, !tbaa !94
  %49 = load ptr, ptr %48, align 8, !tbaa !84
  %50 = getelementptr inbounds %struct.xpv, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !85
  %52 = getelementptr inbounds %struct.PerlIOVia, ptr %3, i64 0, i32 4
  store i64 %51, ptr %52, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %53

53:                                               ; preds = %1, %40, %45
  %54 = phi i64 [ 0, %45 ], [ -1, %40 ], [ -1, %1 ]
  ret i64 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_flush(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 21
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null) #13
  %5 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !95
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %6) #13
  store ptr null, ptr %5, align 8, !tbaa !94
  br label %13

13:                                               ; preds = %12, %8, %1
  %14 = icmp eq ptr %4, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !82
  %18 = and i32 %17, 2097408
  %19 = icmp eq i32 %18, 256
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load ptr, ptr %4, align 8, !tbaa !84
  %22 = getelementptr inbounds %struct.xpviv, ptr %21, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !43
  br label %26

24:                                               ; preds = %15
  %25 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #12
  br label %26

26:                                               ; preds = %13, %20, %24
  %27 = phi i64 [ %23, %20 ], [ %25, %24 ], [ 0, %13 ]
  ret i64 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIOVia_get_base(ptr nocapture noundef readonly %0) #8 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !87
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %7, %1, %11
  %15 = phi ptr [ %13, %11 ], [ null, %1 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIOVia_get_ptr(ptr nocapture noundef readonly %0) #8 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !87
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = load ptr, ptr %9, align 8, !tbaa !84
  %15 = getelementptr inbounds %struct.xpv, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !85
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !95
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  br label %22

22:                                               ; preds = %7, %1, %11
  %23 = phi ptr [ %21, %11 ], [ null, %1 ], [ null, %7 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOVia_get_cnt(ptr nocapture noundef readonly %0) #8 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !87
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !95
  br label %14

14:                                               ; preds = %7, %1, %11
  %15 = phi i64 [ %13, %11 ], [ 0, %1 ], [ 0, %7 ]
  ret i64 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOVia_bufsiz(ptr nocapture noundef readonly %0) #8 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !87
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !85
  br label %15

15:                                               ; preds = %7, %1, %11
  %16 = phi i64 [ %14, %11 ], [ 0, %1 ], [ 0, %7 ]
  ret i64 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PerlIOVia_set_ptrcnt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i64 noundef %2) #9 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 4
  store i64 %2, ptr %5, align 8, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOVia_setlinebuf(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 22
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null) #13
  tail call void @PerlIOBase_setlinebuf(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @PerlIOBase_setlinebuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PerlIOVia_clearerr(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 23
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null) #13
  tail call void @PerlIOBase_clearerr(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @PerlIOBase_clearerr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_error(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 24
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !82
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !43
  br label %19

15:                                               ; preds = %6
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #12
  br label %19

17:                                               ; preds = %1
  %18 = tail call i64 @PerlIOBase_error(ptr noundef nonnull %0) #12
  br label %19

19:                                               ; preds = %11, %15, %17
  %20 = phi i64 [ %18, %17 ], [ %14, %11 ], [ %16, %15 ]
  ret i64 %20
}

; Function Attrs: optsize
declare i64 @PerlIOBase_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PerlIOVia_eof(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 25
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !82
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !43
  br label %19

15:                                               ; preds = %6
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #12
  br label %19

17:                                               ; preds = %1
  %18 = tail call i64 @PerlIOBase_eof(ptr noundef nonnull %0) #12
  br label %19

19:                                               ; preds = %11, %15, %17
  %20 = phi i64 [ %18, %17 ], [ %14, %11 ], [ %16, %15 ]
  ret i64 %20
}

; Function Attrs: optsize
declare i64 @PerlIOBase_eof(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOVia_getarg(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 12
  %6 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %5, i32 noundef 2, ptr noundef null) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PerlIOVia_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !prof !34 {
  %5 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @PerlIOBase_dup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_PerlIO__via(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #12
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_object) #12
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #12
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PerlIO_define_layer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize willreturn memory(read) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
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
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !38, i64 32}
!36 = !{!"", !37, i64 0, !38, i64 32, !38, i64 40, !38, i64 48, !42, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240}
!37 = !{!"_PerlIO", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !38, i64 24}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"long", !39, i64 0}
!43 = !{!39, !39, i64 0}
!44 = !{!45, !38, i64 16}
!45 = !{!"gp", !38, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 28, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !41, i64 64, !41, i64 67, !38, i64 72}
!46 = !{!38, !38, i64 0}
!47 = !{!48, !38, i64 24}
!48 = !{!"stackinfo", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!49 = !{!48, !38, i64 16}
!50 = !{!48, !41, i64 40}
!51 = !{!48, !41, i64 32}
!52 = !{!48, !38, i64 0}
!53 = !{!54, !38, i64 0}
!54 = !{!"av", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!55 = !{!56, !42, i64 16}
!56 = !{!"xpvav", !38, i64 0, !39, i64 8, !42, i64 16, !42, i64 24, !38, i64 32}
!57 = !{!56, !42, i64 24}
!58 = !{!41, !41, i64 0}
!59 = !{!36, !38, i64 40}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!37, !38, i64 0}
!63 = !{!36, !38, i64 72}
!64 = !{!65, !41, i64 12}
!65 = !{!"hv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!66 = !{!65, !38, i64 0}
!67 = !{!68, !42, i64 24}
!68 = !{!"xpvhv", !38, i64 0, !39, i64 8, !42, i64 16, !42, i64 24}
!69 = !{!70, !41, i64 28}
!70 = !{!"xpvhv_aux", !39, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 28, !38, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!71 = !{!45, !38, i64 8}
!72 = !{!36, !38, i64 64}
!73 = !{!74, !38, i64 0}
!74 = !{!"gv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!75 = !{!76, !41, i64 4}
!76 = !{!"hek", !41, i64 0, !41, i64 4, !39, i64 8}
!77 = !{!78, !38, i64 0}
!78 = !{!"io", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!79 = !{!80, !38, i64 40}
!80 = !{!"xpvio", !38, i64 0, !39, i64 8, !42, i64 16, !39, i64 24, !39, i64 32, !38, i64 40, !39, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !39, i64 129}
!81 = !{!42, !42, i64 0}
!82 = !{!83, !41, i64 12}
!83 = !{!"sv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!84 = !{!83, !38, i64 0}
!85 = !{!86, !42, i64 16}
!86 = !{!"xpv", !38, i64 0, !39, i64 8, !42, i64 16, !39, i64 24}
!87 = !{!37, !41, i64 16}
!88 = !{!"via.c:S_SvREFCNT_dec"}
!89 = !{!83, !41, i64 8}
!90 = !{!"via.c:S_SvREFCNT_inc"}
!91 = !{!92, !38, i64 48}
!92 = !{!"_PerlIO_funcs", !42, i64 0, !38, i64 8, !42, i64 16, !41, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216}
!93 = !{!92, !38, i64 8}
!94 = !{!36, !38, i64 48}
!95 = !{!36, !42, i64 56}
