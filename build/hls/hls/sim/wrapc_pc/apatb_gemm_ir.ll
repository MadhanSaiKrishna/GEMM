; ModuleID = '/home/cs2401.03/mini1-gemm/build/hls/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_gemm_ir(float* noalias nocapture nonnull readonly "maxi" %A, float* noalias nocapture nonnull readonly "maxi" %B, float* noalias nocapture nonnull "maxi" %C, i32 %M, i32 %K, i32 %N) local_unnamed_addr #0 {
entry:
  %0 = bitcast float* %A to [6144 x float]*
  %1 = call i8* @malloc(i64 24576)
  %A_copy = bitcast i8* %1 to [6144 x float]*
  %2 = bitcast float* %B to [11520 x float]*
  %3 = call i8* @malloc(i64 46080)
  %B_copy = bitcast i8* %3 to [11520 x float]*
  %4 = bitcast float* %C to [256 x float]*
  %C_copy = alloca [256 x float], align 512
  call fastcc void @copy_in([6144 x float]* nonnull %0, [6144 x float]* %A_copy, [11520 x float]* nonnull %2, [11520 x float]* %B_copy, [256 x float]* nonnull %4, [256 x float]* nonnull align 512 %C_copy)
  call void @apatb_gemm_hw([6144 x float]* %A_copy, [11520 x float]* %B_copy, [256 x float]* %C_copy, i32 %M, i32 %K, i32 %N)
  call void @copy_back([6144 x float]* %0, [6144 x float]* %A_copy, [11520 x float]* %2, [11520 x float]* %B_copy, [256 x float]* %4, [256 x float]* %C_copy)
  tail call void @free(i8* %1)
  tail call void @free(i8* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([6144 x float]* readonly, [6144 x float]*, [11520 x float]* readonly, [11520 x float]*, [256 x float]* readonly, [256 x float]* align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a6144f32([6144 x float]* %1, [6144 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a11520f32([11520 x float]* %3, [11520 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* align 512 %5, [256 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a6144f32([6144 x float]* %dst, [6144 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [6144 x float]* %dst, null
  %1 = icmp eq [6144 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a6144f32([6144 x float]* nonnull %dst, [6144 x float]* nonnull %src, i64 6144)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a6144f32([6144 x float]* %dst, [6144 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [6144 x float]* %src, null
  %1 = icmp eq [6144 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [6144 x float], [6144 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [6144 x float], [6144 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a11520f32([11520 x float]* %dst, [11520 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [11520 x float]* %dst, null
  %1 = icmp eq [11520 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a11520f32([11520 x float]* nonnull %dst, [11520 x float]* nonnull %src, i64 11520)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a11520f32([11520 x float]* %dst, [11520 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [11520 x float]* %src, null
  %1 = icmp eq [11520 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [11520 x float], [11520 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [11520 x float], [11520 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* align 512 %dst, [256 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [256 x float]* %dst, null
  %1 = icmp eq [256 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a256f32([256 x float]* nonnull %dst, [256 x float]* nonnull %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a256f32([256 x float]* %dst, [256 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x float]* %src, null
  %1 = icmp eq [256 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [256 x float], [256 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [256 x float], [256 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([6144 x float]*, [6144 x float]* readonly, [11520 x float]*, [11520 x float]* readonly, [256 x float]*, [256 x float]* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a6144f32([6144 x float]* %0, [6144 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a11520f32([11520 x float]* %2, [11520 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %4, [256 x float]* align 512 %5)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_gemm_hw([6144 x float]*, [11520 x float]*, [256 x float]*, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([6144 x float]*, [6144 x float]* readonly, [11520 x float]*, [11520 x float]* readonly, [256 x float]*, [256 x float]* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256f32([256 x float]* %4, [256 x float]* align 512 %5)
  ret void
}

declare void @gemm_hw_stub(float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull, i32, i32, i32)

define void @gemm_hw_stub_wrapper([6144 x float]*, [11520 x float]*, [256 x float]*, i32, i32, i32) #5 {
entry:
  call void @copy_out([6144 x float]* null, [6144 x float]* %0, [11520 x float]* null, [11520 x float]* %1, [256 x float]* null, [256 x float]* %2)
  %6 = bitcast [6144 x float]* %0 to float*
  %7 = bitcast [11520 x float]* %1 to float*
  %8 = bitcast [256 x float]* %2 to float*
  call void @gemm_hw_stub(float* %6, float* %7, float* %8, i32 %3, i32 %4, i32 %5)
  call void @copy_in([6144 x float]* null, [6144 x float]* %0, [11520 x float]* null, [11520 x float]* %1, [256 x float]* null, [256 x float]* %2)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
