<?php

namespace Botble\Partners\Tables;

use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\BulkChanges\CreatedAtBulkChange;
use Botble\Table\BulkChanges\NameBulkChange;
use Botble\Table\BulkChanges\StatusBulkChange;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Illuminate\Database\Eloquent\Builder;
use Botble\Partners\Models\Partners;

class PartnersTable extends TableAbstract
{

    public function setup(): void
    {
        $this
            ->model(Partners::class)
            ->addColumns([
                IdColumn::make(),
                NameColumn::make(),
                CreatedAtColumn::make(),
                StatusColumn::make(),
            ])
            ->addActions([
                DeleteAction::make()->route('partners.destroy'),
            ])
            ->addBulkAction(DeleteBulkAction::make()->permission('partners.destroy'))
            ->addBulkChanges([
                NameBulkChange::make(),
                StatusBulkChange::make(),
                CreatedAtBulkChange::make(),
            ])
            ->queryUsing(function (Builder $query) {
                return $query
                    ->select([
                        'id',
                        'name',
                        'created_at',
                        'status',
                    ]);
            });
    }

    public function getDefaultButtons(): array
    {
        return [
            'export',
            'reload',
            'create',
        ];
    }
}
